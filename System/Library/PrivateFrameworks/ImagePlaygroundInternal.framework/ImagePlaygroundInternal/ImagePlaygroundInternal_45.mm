uint64_t sub_1D27687EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D277B7F8();
    result = swift_unknownObjectRelease();
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_1D2768864()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v2 = __CFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v3;
      sub_1D277A35C();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D27688D8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D277B7F8();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D2768930(uint64_t a1, double a2, double a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = sub_1D2873CB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 48))
  {
    sub_1D2872668();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1D226E000, v11, v12, "magicEffectPosition is nil", v13, 2u);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v15 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 8);
    v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPathPoints;
    v17 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPathPoints);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + v16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1D27CDB58(0, *(v17 + 2) + 1, 1, v17);
      *(v3 + v16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1D27CDB58((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[16 * v20];
    *(v21 + 4) = a2;
    *(v21 + 5) = a3;
    *(v3 + v16) = v17;
    CGAffineTransformMakeScale(&v37, 1.0, -1.0);
    v36 = v37;
    CGAffineTransformTranslate(&v37, &v36, 0.0, -v15);
    v22 = MEMORY[0x1D38A2730](a1, &v37);
    v23 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxPath);
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxPath) = v22;

    sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v37);
    if (LOBYTE(v37.ty))
    {
      a = v37.a;
      b = v37.b;
      c = v37.c;
      v27 = -8.0;
      if ((*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathStartTime + 8) & 1) == 0)
      {
        v28 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathStartTime);
        v29 = *(v3 + v16);
        v30 = sub_1D2774F5C(v29, 1);
        sub_1D2870F68();
        Current = CFAbsoluteTimeGetCurrent();
        v32 = sub_1D2774FE0(v29, Current - v28);

        v33 = -v32;
        if (v30)
        {
          v33 = v32;
        }

        v27 = v33;
      }

      *&v37.d = MEMORY[0x1E69E6448];
      *&v37.a = v27;
      v34 = *&a;
      sub_1D2777178(&v37, 0x496C616974696E69, 0xEE0061697472656ELL, 1);

      __swift_destroy_boxed_opaque_existential_0(&v37);
    }

    else
    {
      sub_1D2758D34(&v37);
    }

    v35 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathStartTime;
    *v35 = 0;
    *(v35 + 8) = 1;
    *(v3 + v16) = MEMORY[0x1E69E7CC0];

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1D277B7F8();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1D2768CF8()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v39 - v6;
  sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v41);
  if (LOBYTE(v46) == 1)
  {
    v9 = v41;
    v8 = v42;
    v10 = v43;
    v11 = v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition;
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 48))
    {
      sub_1D2872668();
      v12 = sub_1D2873CA8();
      v13 = sub_1D2878A18();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1D226E000, v12, v13, "magicEffectPosition is nil", v14, 2u);
        MEMORY[0x1D38A3520](v14, -1, -1);
      }

      else
      {
      }

      (*(v2 + 8))(v7, v1);
    }

    else
    {
      v19 = *(v11 + 32);
      v18 = *(v11 + 40);
      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      v22 = *(v11 + 8);
      v41 = *v11;
      v42 = v22;
      v43 = v21;
      v44 = v20;
      v45 = v19;
      v46 = v18;
      sub_1D2776A98();
      v24 = [objc_opt_self() valueWithVFXFloat2_];
      v25 = sub_1D22BCFD0(0, &qword_1ED89CC90);
      v40 = v25;
      *v39 = v24;
      v26 = v24;
      v27 = v9;
      sub_1D2777178(v39, 0xD000000000000014, 0x80000001D28AEFF0, 1);

      __swift_destroy_boxed_opaque_existential_0(v39);
      sub_1D2776A98();
      v29 = MEMORY[0x1E69E6448];
      v30 = vaddv_f32(v28) * 0.5;
      v40 = MEMORY[0x1E69E6448];
      v39[0] = v30;
      v31 = v27;
      sub_1D2777178(v39, 0x63735F656C707061, 0xEB00000000656C61, 1);

      __swift_destroy_boxed_opaque_existential_0(v39);
      v40 = v29;
      v39[0] = v30;
      v32 = v31;
      sub_1D2777178(v39, 0x6163735F626F6C62, 0xEA0000000000656CLL, 1);

      __swift_destroy_boxed_opaque_existential_0(v39);
      v33 = sub_1D2776CA8();
      v40 = v25;
      *v39 = v33;
      v34 = v32;
      v35 = v33;
      sub_1D2777178(v39, 0x736F705F626F6C62, 0xED00006E6F697469, 1);

      __swift_destroy_boxed_opaque_existential_0(v39);
      v47.origin.x = v21;
      v47.origin.y = v20;
      v47.size.width = v19;
      v47.size.height = v18;
      Height = CGRectGetHeight(v47);
      v37 = v22;
      v40 = v29;
      v39[0] = (Height * 0.12) / v37;
      v38 = v34;
      sub_1D2777178(v39, 0xD000000000000015, 0x80000001D28AE7B0, 1);

      __swift_destroy_boxed_opaque_existential_0(v39);
      [objc_opt_self() flush];
    }
  }

  else
  {
    sub_1D2758D34(&v41);
    sub_1D2872668();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "wandNodes is nil", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_1D27691C0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v51 == 1)
  {
    v12 = aBlock;
    v45 = v48;
    v49 = MEMORY[0x1E69E6370];
    LOBYTE(aBlock) = 0;
    v13 = v47;
    sub_1D2777178(&aBlock, 0x6C43646E61577369, 0xEB000000006B6369, 1);

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    sub_1D2768CF8();
    v14 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxPath);
    if (v14)
    {
      v15 = v14;
      sub_1D276975C(v15);
    }

    v16 = MEMORY[0x1E69E6448];
    v49 = MEMORY[0x1E69E6448];
    LODWORD(aBlock) = 1065353216;
    v17 = v13;
    sub_1D2777178(&aBlock, 0xD000000000000012, 0x80000001D28AF0A0, 1);

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v49 = v16;
    LODWORD(aBlock) = 0;
    v18 = v12;
    sub_1D2777178(&aBlock, 0xD00000000000001CLL, 0x80000001D28AF050, 1);

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    if (a1)
    {
      v49 = v16;
      LODWORD(aBlock) = 0;
      v19 = v18;
      sub_1D2777178(&aBlock, 0xD000000000000017, 0x80000001D28AF030, 1);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v49 = v16;
      LODWORD(aBlock) = 0;
      v20 = v19;
      sub_1D2777178(&aBlock, 0xD00000000000001ALL, 0x80000001D28AF010, 1);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a1 & 1;
    *(v21 + 24) = v18;
    *(v21 + 32) = v17;
    v22 = v45;
    *(v21 + 40) = v45;
    *(v21 + 48) = a2;
    *(v21 + 56) = a3;
    v23 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v26 = __CFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        __break(1u);
        return;
      }

      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v27;
      v28 = v17;
      v29 = v18;
      v30 = v22;
      sub_1D2870F78();
      sub_1D277A35C();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = v17;
      v35 = v18;
      v36 = v22;
      sub_1D2870F78();
    }

    v37 = *MEMORY[0x1E6979EB8];
    v38 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v38 + 24) = *(v23 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v39 = swift_allocObject();
    v39[2] = v38;
    v39[3] = sub_1D2775FD8;
    v39[4] = v21;
    v40 = objc_opt_self();
    sub_1D2870F78();
    sub_1D2870F78();
    v41 = [v40 functionWithName_];
    v42 = objc_opt_self();
    [v42 begin];
    v50 = sub_1D2776400;
    v51 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1D23DFBA8;
    v49 = &block_descriptor_299;
    v43 = _Block_copy(&aBlock);
    sub_1D2870F78();

    [v42 setCompletionBlock_];
    _Block_release(v43);
    [v42 setAnimationDuration_];
    [v42 setAnimationTimingFunction_];
    sub_1D2775104(a1 & 1);
    [v42 commit];
  }

  else
  {
    sub_1D2758D34(&aBlock);
    sub_1D2872668();
    v31 = sub_1D2873CA8();
    v32 = sub_1D2878A18();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D226E000, v31, v32, "wandNodes is nil", v33, 2u);
      MEMORY[0x1D38A3520](v33, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_1D276975C(const CGPath *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = sub_1D2871A38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition);
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 48))
  {
    sub_1D2872668();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "magicEffectPosition is nil", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  v18 = *v14;
  v19 = v14[1];
  v20 = *v14;
  DeviceGray = CGColorSpaceCreateDeviceGray();
  if (v20 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((~*&v19 & 0x7FF0000000000000) == 0 || (*&v18 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    goto LABEL_20;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v42 = v1;
  v23 = v19;
  v24 = DeviceGray;
  v25 = __CGBitmapContextCreate_0(v20, v23, DeviceGray);
  if (v25)
  {
    v26 = v25;
    Width = CGBitmapContextGetWidth(v25);
    Height = CGBitmapContextGetHeight(v26);
    v29 = objc_opt_self();
    v30 = [v29 blackColor];
    v31 = [v30 CGColor];

    CGContextSetFillColorWithColor(v26, v31);
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v43.size.width = Width;
    v43.size.height = Height;
    CGContextFillRect(v26, v43);
    v32 = [v29 whiteColor];
    v33 = [v32 CGColor];

    CGContextSetFillColorWithColor(v26, v33);
    CGContextAddPath(v26, a1);
    (*(v11 + 104))(v13, *MEMORY[0x1E695EEB8], v10);
    sub_1D28789A8();
    (*(v11 + 8))(v13, v10);
    Image = CGBitmapContextCreateImage(v26);
    v35 = *(v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathTexture);
    *(v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathTexture) = Image;
    v36 = Image;

    sub_1D276DF3C();
  }

  else
  {
    sub_1D2872668();
    v37 = sub_1D2873CA8();
    v38 = sub_1D2878A18();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1D226E000, v37, v38, "failed to create context", v39, 2u);
      MEMORY[0x1D38A3520](v39, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    v40 = *(v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathTexture);
    *(v42 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathTexture) = 0;

    sub_1D276DF3C();
  }
}

uint64_t sub_1D2769C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (a1)
  {
    v8 = MEMORY[0x1E69E6448];
    v7[0] = 1065353216;
    sub_1D2777178(v7, 0xD000000000000016, 0x80000001D28AEA90, 0);
    a1 = __swift_destroy_boxed_opaque_existential_0(v7);
  }

  return a5(a1);
}

void sub_1D2769CA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v39 == 1)
  {
    v10 = aBlock;
    v11 = v35;
    v12 = MEMORY[0x1E69E6448];
    v13 = v36;
    v37 = MEMORY[0x1E69E6448];
    LODWORD(aBlock) = 0;
    v14 = v10;
    sub_1D2777178(&aBlock, 0xD00000000000001CLL, 0x80000001D28AF050, 1);

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    v16 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    v33 = v13;
    if (Strong)
    {
      v18 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v19 = __CFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
        return;
      }

      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v20;
      sub_1D2870F78();
      sub_1D277A35C();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D2870F78();
    }

    v24 = *MEMORY[0x1E6979EB8];
    v25 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v25 + 24) = *(v16 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = sub_1D22D79AC;
    v26[4] = v15;
    v27 = objc_opt_self();
    sub_1D2870F78();
    sub_1D2870F78();
    v28 = [v27 functionWithName_];
    v29 = objc_opt_self();
    [v29 begin];
    v38 = sub_1D2776400;
    v39 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v35 = 1107296256;
    v36 = sub_1D23DFBA8;
    v37 = &block_descriptor_268;
    v30 = _Block_copy(&aBlock);
    sub_1D2870F78();

    [v29 setCompletionBlock_];
    _Block_release(v30);
    [v29 setAnimationDuration_];
    [v29 setAnimationTimingFunction_];
    v37 = v12;
    LODWORD(aBlock) = 1065353216;
    v31 = v14;
    sub_1D2777178(&aBlock, 0xD00000000000001ALL, 0x80000001D28AEAB0, 0);

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    [v29 commit];
  }

  else
  {
    sub_1D2758D34(&aBlock);
    sub_1D2872668();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "wandNodes is nil", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void sub_1D276A104()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v33 == 1)
  {
    v6 = aBlock;
    v7 = v29;
    v8 = v30;
    v9 = MEMORY[0x1E69E6448];
    v31 = MEMORY[0x1E69E6448];
    LODWORD(aBlock) = 1065353216;
    v10 = v6;
    sub_1D2777178(&aBlock, 0xD00000000000001CLL, 0x80000001D28AF050, 1);

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v11 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_5:
      v16 = *MEMORY[0x1E6979EB8];
      v17 = swift_allocObject();
      swift_unknownObjectWeakLoadStrong();
      *(v17 + 24) = *(v11 + 24);
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v18 = swift_allocObject();
      v18[3] = 0;
      v18[4] = 0;
      v18[2] = v17;
      v19 = objc_opt_self();
      sub_1D2870F78();
      v20 = [v19 functionWithName_];
      v21 = objc_opt_self();
      [v21 begin];
      v32 = sub_1D2776400;
      v33 = v18;
      aBlock = MEMORY[0x1E69E9820];
      v29 = 1107296256;
      v30 = sub_1D23DFBA8;
      v31 = &block_descriptor_288;
      v22 = _Block_copy(&aBlock);
      sub_1D2870F78();

      [v21 setCompletionBlock_];
      _Block_release(v22);
      [v21 setAnimationDuration_];
      [v21 setAnimationTimingFunction_];
      v31 = v9;
      LODWORD(aBlock) = 0;
      v23 = v10;
      sub_1D2777178(&aBlock, 0xD000000000000017, 0x80000001D28AF030, 0);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      v31 = v9;
      LODWORD(aBlock) = 0;
      v24 = v23;
      sub_1D2777178(&aBlock, 0xD00000000000001ALL, 0x80000001D28AEAB0, 0);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      [v21 commit];

      return;
    }

    v13 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v14 = __CFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v15;
      sub_1D277A35C();
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    sub_1D2758D34(&aBlock);
    sub_1D2872668();
    v25 = sub_1D2873CA8();
    v26 = sub_1D2878A18();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1D226E000, v25, v26, "wandNodes is nil", v27, 2u);
      MEMORY[0x1D38A3520](v27, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1D276A5A4(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v36 == 1)
  {
    v13 = aBlock;
    v12 = v32;
    v14 = v33;
    v15 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_5:
      v20 = *MEMORY[0x1E6979EB8];
      v21 = swift_allocObject();
      swift_unknownObjectWeakLoadStrong();
      *(v21 + 24) = *(v15 + 24);
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v22 = swift_allocObject();
      v22[3] = 0;
      v22[4] = 0;
      v22[2] = v21;
      v23 = objc_opt_self();
      sub_1D2870F78();
      v24 = [v23 functionWithName_];
      v25 = objc_opt_self();
      [v25 begin];
      v35 = a3;
      v36 = v22;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1D23DFBA8;
      v34 = a4;
      v26 = _Block_copy(&aBlock);
      sub_1D2870F78();

      [v25 setCompletionBlock_];
      _Block_release(v26);
      [v25 setAnimationDuration_];
      [v25 setAnimationTimingFunction_];
      v34 = MEMORY[0x1E69E6448];
      *&aBlock = a1;
      v27 = v13;
      sub_1D2777178(&aBlock, 0xD000000000000017, 0x80000001D28AF030, 0);

      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      [v25 commit];

      return;
    }

    v17 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v18 = __CFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v19;
      sub_1D277A35C();
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
    sub_1D2758D34(&aBlock);
    sub_1D2872668();
    v28 = sub_1D2873CA8();
    v29 = sub_1D2878A18();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D226E000, v28, v29, "wandNodes is nil", v30, 2u);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1D276A958(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v4 = Strong;
  sub_1D2758CD8(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v13);
  if (v15)
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_1D2758D34(&v13);
    if (*(&v17 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:

    sub_1D22BD238(&v16, &qword_1EC6E1790);
LABEL_13:
    v14 = MEMORY[0x1E69E6448];
    LODWORD(v13) = 1061997773;
    sub_1D2754BC0(&v13, 11008);
    v11 = &v13;
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  sub_1D227268C(&v13, &v16);
  if (!*(&v17 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_1D227268C(&v16, v19);
  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v6 + 24))(&v13, 7680, v5, v6);
  if (!v14)
  {

    sub_1D22BD238(&v13, &qword_1EC6E1900);
    goto LABEL_12;
  }

  v7 = MEMORY[0x1E69E6448];
  if ((swift_dynamicCast() & 1) == 0 || *&v16 != 0.0)
  {

LABEL_12:
    __swift_destroy_boxed_opaque_existential_0(v19);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F500;
  *(inited + 32) = 11008;
  v9 = inited + 32;
  *(inited + 64) = v7;
  *(inited + 40) = 1061997773;
  v10 = sub_1D25D6D04(inited);
  swift_setDeallocating();
  sub_1D22BD238(v9, &unk_1EC6E1910);
  sub_1D2753044(v10, 0, 1, 0, 0.2);

  sub_1D2760BB8(a2, 0, 1, 0.2);

  v11 = v19;
  return __swift_destroy_boxed_opaque_existential_0(v11);
}

uint64_t sub_1D276ABD4()
{
  v0 = sub_1D2873CB8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(result + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v27);
  if ((v30 & 1) == 0)
  {
    sub_1D227268C(&v27, &v31);
    if (*(&v32 + 1))
    {
      goto LABEL_4;
    }

LABEL_10:

    return sub_1D22BD238(&v31, &qword_1EC6E1790);
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_1D2758D34(&v27);
  if (!*(&v32 + 1))
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_1D227268C(&v31, v34);
  v7 = v35;
  v8 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  (*(v8 + 24))(&v27, 7680, v7, v8);
  if (v28)
  {
    v9 = MEMORY[0x1E69E6448];
    if ((swift_dynamicCast() & 1) != 0 && *&v31 == 0.0)
    {
      v10 = *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectImage];
      swift_unknownObjectWeakInit();
      sub_1D2758CD8(&v5[v6], &v27);
      if (v30)
      {
        v25 = 0;
        v24 = 0u;
        v23 = 0u;
        v11 = v10;
        sub_1D2758D34(&v27);
      }

      else
      {
        sub_1D227268C(&v27, &v23);
        v12 = v10;
      }

      if (*(&v24 + 1))
      {
        sub_1D227268C(&v23, &v31);
        if ((v5[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility + 4] & 1) != 0 || *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility] != 0.0 || (v5[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget + 4] & 1) != 0 || *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget] != 0.0)
        {
          sub_1D22D7044(&v31, &v27);
          v13 = v28;
          v14 = v29;
          __swift_project_boxed_opaque_existential_1(&v27, v28);
          *(&v24 + 1) = v9;
          LODWORD(v23) = 0;
          v15 = *(v14 + 16);
          v15(&v23, 9472, 0, v13, v14);
          __swift_destroy_boxed_opaque_existential_0(&v23);
          *(&v24 + 1) = v9;
          LODWORD(v23) = 0;
          v15(&v23, 7936, 0, v13, v14);
          __swift_destroy_boxed_opaque_existential_0(&v23);
          __swift_destroy_boxed_opaque_existential_0(&v27);
          sub_1D2767524(v26, v10);
        }

        __swift_destroy_boxed_opaque_existential_0(&v31);
      }

      else
      {
        sub_1D22BD238(&v23, &qword_1EC6E1790);
        sub_1D2872668();
        v16 = sub_1D2873CA8();
        v17 = sub_1D2878A18();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_1D226E000, v16, v17, "gpNodes is nil", v18, 2u);
          MEMORY[0x1D38A3520](v18, -1, -1);
        }

        (*(v1 + 8))(v3, v0);
      }

      MEMORY[0x1D38A3650](v26);
      v19 = v35;
      v20 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v28 = v9;
      LODWORD(v27) = 0;
      (*(v20 + 8))(&v27, 7936, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(&v27);
      v21 = v35;
      v22 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v28 = v9;
      LODWORD(v27) = 0;
      (*(v22 + 8))(&v27, 6656, v21, v22);

      __swift_destroy_boxed_opaque_existential_0(&v27);
    }

    else
    {
    }
  }

  else
  {

    sub_1D22BD238(&v27, &qword_1EC6E1900);
  }

  return __swift_destroy_boxed_opaque_existential_0(v34);
}

uint64_t sub_1D276B0A0(int a1)
{
  v24 = a1;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1770);
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxEntity))
  {
    v21 = v5;
    v22 = v3;
    v23 = v2;
    v25 = sub_1D28738E8();
    sub_1D2870F78();
    v10 = 1;
    while (1)
    {
      sub_1D28738A8();
      v13 = sub_1D2873838();
      v14 = *(*(v13 - 8) + 48);
      if (v14(v9, 1, v13))
      {
        break;
      }

      sub_1D2873828();
      sub_1D22BD238(v9, &unk_1EC6E1770);
      v26 = v10;
      strcpy(v27, "EmitterFlare");
      HIBYTE(v27[6]) = 0;
      v27[7] = -5120;
      v15 = sub_1D28795C8();
      MEMORY[0x1D38A0C50](v15);

      sub_1D28737E8();

      if (!*(&v29 + 1))
      {
        goto LABEL_12;
      }

      sub_1D227268C(&v28, v31);
      if (v24)
      {
        v11 = sub_1D2873898();
        if (!v14(v16, 1, v13))
        {
          sub_1D2873818();
        }
      }

      else
      {
        v11 = sub_1D2873898();
        if (!v14(v12, 1, v13))
        {
          sub_1D2873808();
        }
      }

      v11(&v28, 0);
      __swift_destroy_boxed_opaque_existential_0(v31);
      if (++v10 == 9)
      {
      }
    }

    sub_1D22BD238(v9, &unk_1EC6E1770);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
LABEL_12:
    sub_1D22BD238(&v28, &qword_1EC6E1750);
    v17 = v21;
    sub_1D2872668();
    v18 = sub_1D2873CA8();
    v19 = sub_1D2878A18();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v10;
      _os_log_impl(&dword_1D226E000, v18, v19, "Failed to find 'EmitterFlare%ld'", v20, 0xCu);
      MEMORY[0x1D38A3520](v20, -1, -1);
    }

    return (*(v22 + 8))(v17, v23);
  }

  return result;
}

uint64_t sub_1D276B4D0(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
  v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper);
  v5 = *(v4 + 16);
  result = sub_1D2870F68();
  if (v5)
  {
    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      v8 = v7 + 1;
      result = sub_1D277520C(*(v4 + 32 + 8 * v7), a1, &v9);
      v7 = v8;
      if (v5 == v8)
      {
        v3 = v9;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D269F2EC(v3);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1D276B5B0(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, int a4)
{
  v5 = v4;
  v190 = a4;
  v206 = a3;
  v198 = a2;
  v187 = a1;
  v180 = sub_1D2877B48();
  v179 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2877B68();
  v177 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v189 = sub_1D2877BA8();
  v175 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v174 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v184 = &v165 - v11;
  v203 = sub_1D2871908();
  v171 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v202 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1920);
  MEMORY[0x1EEE9AC00](v170);
  v201 = &v165 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v182 = &v165 - v15;
  v195 = sub_1D2873CB8();
  v16 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v18 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v200 = &v165 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v197 = &v165 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v165 - v24;
  v26 = sub_1D2871988();
  v193 = *(v26 - 8);
  v27 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v28);
  v169 = &v165 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v196 = &v165 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v183 = &v165 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v165 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v181 = &v165 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v165 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v192 = &v165 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v191 = &v165 - v45;
  sub_1D2758CD8(&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController], &aBlock);
  if (v212)
  {
    v215 = 0;
    v213 = 0u;
    v214 = 0u;
    sub_1D2758D34(&aBlock);
    if (*(&v214 + 1))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D22BD238(&v213, &qword_1EC6E1790);
    sub_1D2872668();
    v50 = sub_1D2873CA8();
    v51 = sub_1D2878A18();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1D226E000, v50, v51, "gpNodes is nil", v52, 2u);
      MEMORY[0x1D38A3520](v52, -1, -1);
    }

    (*(v16 + 8))(v18, v195);
    return;
  }

  sub_1D227268C(&aBlock, &v213);
  if (!*(&v214 + 1))
  {
    goto LABEL_6;
  }

LABEL_3:
  v168 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D227268C(&v213, v216);
  v173 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper;
  v46 = *(*&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper] + 16);
  v47 = *(v193 + 16);
  v186 = v193 + 16;
  v188 = v47;
  v167 = v7;
  if (v46)
  {
    v48 = v47;
    v47(v191, v198, v26);
    v48(v192, v206, v26);
    v49 = v187;
  }

  else
  {
    v49 = v187;
    v47(v191, v187, v26);
    sub_1D2871978();
  }

  v53 = sub_1D2871938();
  if (sub_1D2871938() > 8)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v194 = v5;
  v54 = 360.0 / v53;
  sub_1D2872668();
  v188(v41, v49, v26);
  v55 = sub_1D2873CA8();
  v56 = sub_1D2878A08();
  v57 = os_log_type_enabled(v55, v56);
  v205 = v26;
  if (v57)
  {
    v58 = swift_slowAlloc();
    *v58 = 134217984;
    v59 = sub_1D2871938();
    v185 = *(v193 + 8);
    v185(v41, v205);
    *(v58 + 4) = v59;
    _os_log_impl(&dword_1D226E000, v55, v56, "attractorsIndices.count : %ld", v58, 0xCu);
    v60 = v58;
    v26 = v205;
    MEMORY[0x1D38A3520](v60, -1, -1);
  }

  else
  {
    v185 = *(v193 + 8);
    v185(v41, v26);
  }

  v61 = v36;
  v172 = v36;
  v62 = v54 * 0.0174532925;

  v63 = *(v16 + 8);
  v204 = v16 + 8;
  v63(v25, v195);
  v64 = v197;
  sub_1D2872668();
  v65 = v181;
  v66 = v188;
  v188(v181, v198, v26);
  v66(v61, v191, v26);
  v67 = v183;
  v66(v183, v206, v26);
  v68 = v196;
  v66(v196, v192, v26);
  v69 = sub_1D2873CA8();
  v70 = sub_1D2878A08();
  v71 = os_log_type_enabled(v69, v70);
  v199 = v63;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    *&aBlock = v206;
    *v72 = 136315906;
    sub_1D2775F90(&qword_1EC6E0BF0, MEMORY[0x1E6969B50]);
    LODWORD(v198) = v70;
    v73 = sub_1D28795C8();
    v166 = v69;
    v74 = v67;
    v76 = v75;
    v77 = v65;
    v78 = v185;
    v185(v77, v26);
    v79 = sub_1D23D7C84(v73, v76, &aBlock);

    *(v72 + 4) = v79;
    *(v72 + 12) = 2080;
    v80 = v172;
    v81 = sub_1D28795C8();
    v83 = v82;
    v78(v80, v26);
    v84 = sub_1D23D7C84(v81, v83, &aBlock);

    *(v72 + 14) = v84;
    *(v72 + 22) = 2080;
    v85 = sub_1D28795C8();
    v87 = v86;
    v78(v74, v26);
    v88 = sub_1D23D7C84(v85, v87, &aBlock);

    *(v72 + 24) = v88;
    *(v72 + 32) = 2080;
    v89 = v196;
    v90 = sub_1D28795C8();
    v92 = v91;
    v78(v89, v26);
    v93 = sub_1D23D7C84(v90, v92, &aBlock);

    *(v72 + 34) = v93;
    v94 = v166;
    _os_log_impl(&dword_1D226E000, v166, v198, "addedIndices : %s - adjustedAddedIndices: %s - removedIndices : %s - adjustedRemovedIndices : %s", v72, 0x2Au);
    v95 = v206;
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v95, -1, -1);
    MEMORY[0x1D38A3520](v72, -1, -1);

    v96 = v195;
    v199(v197, v195);
  }

  else
  {

    v97 = v185;
    v185(v68, v26);
    v97(v67, v26);
    v97(v172, v26);
    v97(v65, v26);
    v96 = v195;
    v63(v64, v195);
  }

  v98 = v194;
  v183 = swift_allocBox();
  v100 = v99;
  sub_1D2871978();
  v101 = v182;
  v102 = v192;
  v103 = (v188)(v182, v192, v26);
  MEMORY[0x1EEE9AC00](v103);
  v104 = v191;
  *(&v165 - 4) = v98;
  *(&v165 - 3) = v104;
  v181 = v100;
  *(&v165 - 2) = v100;
  sub_1D2678970(sub_1D27748B8, (&v165 - 6));
  v105 = sub_1D22BD238(v101, &qword_1EC6DF7F0);
  MEMORY[0x1EEE9AC00](v105);
  *(&v165 - 4) = v102;
  *(&v165 - 3) = v62;
  *(&v165 - 2) = v98;
  *(&v165 - 1) = v216;
  sub_1D2678CF0(sub_1D27748D8, (&v165 - 6));
  v206 = *&v98[v173];
  v106 = 0.0;
  if (v190)
  {
    v106 = ((v98[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError] & 1) == 0);
  }

  if (v98[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] && v98[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] != 1)
  {
    sub_1D2870F68();

    goto LABEL_23;
  }

  v107 = sub_1D2879618();
  sub_1D2870F68();

  if (v107)
  {
LABEL_23:
    sub_1D22D7044(v216, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
    type metadata accessor for VisualEffectRENodes();
    if (swift_dynamicCast())
    {
      v184 = 0;
      v182 = v213;
      *&v213 = sub_1D25D6C04(MEMORY[0x1E69E7CC0]);
      v108 = v201;
      sub_1D2871928();
      v197 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isRightToLeft;
      sub_1D2775F90(&unk_1ED8A6C50, MEMORY[0x1E6969B50]);
      v198 = (v171 + 8);
      v196 = (v206 + 32);
      v190 &= 1u;
      *&v109 = 134218754;
      v189 = v109;
      v110 = v200;
      while (1)
      {
        v116 = v202;
        sub_1D2878868();
        sub_1D2775F90(&unk_1ED8A6C70, MEMORY[0x1E6969B18]);
        v117 = v203;
        v118 = sub_1D2877F98();
        (*v198)(v116, v117);
        if (v118)
        {
          sub_1D22BD238(v108, &unk_1EC6E1920);

          v149 = v169;
          v188(v169, v181, v26);
          sub_1D275C860(v149, &v213);
          v185(v149, v26);
          v150 = sub_1D24171A8(v213);
          v151 = v182;
          sub_1D2753044(v150, 0x3FC70A3D70A3D70ALL, 0, 1, 1.0);

          sub_1D2760BB8(v151, 0x3FC70A3D70A3D70ALL, 0, 1.0);

          goto LABEL_37;
        }

        v119 = sub_1D28788B8();
        v121 = *v120;
        v119(&aBlock, 0);
        sub_1D2878878();
        sub_1D277540C(v121, v62);
        if ((v121 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v121 >= *(v206 + 16))
        {
          goto LABEL_39;
        }

        v123 = v122;
        v124 = *&v196[8 * v121];
        sub_1D2872668();
        v125 = sub_1D2873CA8();
        v126 = sub_1D2878A08();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          v207 = v128;
          *v127 = v189;
          *(v127 + 4) = v121;
          *(v127 + 12) = 2080;
          *&aBlock = sub_1D276D524;
          *(&aBlock + 1) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1930);
          v129 = sub_1D2878118();
          v131 = sub_1D23D7C84(v129, v130, &v207);

          *(v127 + 14) = v131;
          v96 = v195;
          *(v127 + 22) = 2048;
          *(v127 + 24) = v123;
          *(v127 + 32) = 1024;
          *(v127 + 34) = v190;
          _os_log_impl(&dword_1D226E000, v125, v126, "Visible index index: %ld - VFX attractor - radialLayoutAngleForBubble: %s - angle: %f - showAttractors: %{BOOL}d", v127, 0x26u);
          __swift_destroy_boxed_opaque_existential_0(v128);
          v132 = v128;
          v98 = v194;
          MEMORY[0x1D38A3520](v132, -1, -1);
          MEMORY[0x1D38A3520](v127, -1, -1);
        }

        v199(v110, v96);
        v26 = v205;
        v111 = sub_1D2755F14(v124);
        v112 = v213;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = v112;
        sub_1D24EA42C(v111 & 0xFF01, isUniquelyReferenced_nonNull_native, v123);
        v114 = aBlock;
        LOWORD(v112) = sub_1D2755514(v124);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = v114;
        sub_1D24EA42C(v112 & 0xFF01, v115, v106);
        *&v213 = aBlock;
        v108 = v201;
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }
  }

  v133 = v168;
  v188(v168, v187, v26);
  sub_1D22D7044(v216, &v213);
  v134 = v193;
  v135 = (*(v193 + 80) + 16) & ~*(v193 + 80);
  v136 = (v27 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
  v137 = (v136 + 15) & 0xFFFFFFFFFFFFFFF8;
  v205 = ((v137 + 15) & 0xFFFFFFFFFFFFFFF8);
  v138 = (v137 + 31) & 0xFFFFFFFFFFFFFFF8;
  v139 = (v138 + 43) & 0xFFFFFFFFFFFFFFF8;
  v140 = swift_allocObject();
  (*(v134 + 32))(v140 + v135, v133, v26);
  *(v140 + v136) = v206;
  *(v140 + v137) = v62;
  v141 = &v205[v140];
  *v141 = v194;
  v141[8] = v190 & 1;
  sub_1D227268C(&v213, v140 + v138);
  *(v140 + v139) = v106;
  *(v140 + ((v139 + 11) & 0xFFFFFFFFFFFFFFF8)) = v183;
  v142 = v194;
  v143 = *&v194[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v145 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v146 = __CFADD__(v145, 1);
    v147 = v145 + 1;
    if (v146)
    {
LABEL_41:
      __break(1u);
      return;
    }

    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v147;
    v148 = v142;
    sub_1D2870F78();
    sub_1D277A35C();
    swift_unknownObjectRelease();
  }

  else
  {
    v152 = v142;
    sub_1D2870F78();
  }

  v153 = swift_allocObject();
  swift_unknownObjectWeakLoadStrong();
  *(v153 + 24) = *(v143 + 24);
  v206 = v153;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v154 = swift_allocObject();
  v154[2] = v153;
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v154[3] = 0;
  v154[4] = 0;
  sub_1D2870F78();
  v204 = sub_1D2878AB8();
  v155 = v174;
  sub_1D2877B88();
  sub_1D2877BC8();
  v205 = *(v175 + 8);
  (v205)(v155, v189);
  v156 = swift_allocObject();
  v156[2] = sub_1D2776400;
  v156[3] = v154;
  v156[4] = 0x3FF0000000000000;
  v156[5] = sub_1D27748FC;
  v156[6] = v140;
  v211 = sub_1D277639C;
  v212 = v156;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v209 = sub_1D23DFBA8;
  v210 = &block_descriptor_171_0;
  v157 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();
  v158 = v176;
  sub_1D2877B58();
  v207 = MEMORY[0x1E69E7CC0];
  sub_1D2775F90(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22D5EFC();
  v159 = v178;
  v160 = v180;
  sub_1D2879088();
  v161 = v184;
  v162 = v204;
  MEMORY[0x1D38A1510](v184, v158, v159, v157);
  _Block_release(v157);

  (*(v179 + 8))(v159, v160);
  (*(v177 + 8))(v158, v167);
  (v205)(v161, v189);

  v98 = v194;
LABEL_37:
  v163 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsIndices;
  swift_beginAccess();
  (*(v193 + 24))(&v98[v163], v187, v26);
  swift_endAccess();

  v164 = v185;
  v185(v192, v26);
  v164(v191, v26);
  __swift_destroy_boxed_opaque_existential_0(v216);
}

uint64_t sub_1D276CF94(unint64_t *a1, char *a2)
{
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper;
  if (v10 >= *(*&a2[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper] + 16))
  {
    v19 = v7;
    sub_1D2872668();
    v13 = a2;
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v18[1] = v2;
      v17 = v16;
      *v16 = 134218240;
      *(v16 + 4) = v10;
      *(v16 + 12) = 2048;
      *(v16 + 14) = *(*&a2[v11] + 16);

      _os_log_impl(&dword_1D226E000, v14, v15, "Error out of range index: %ld compared to active attractors count: %ld", v17, 0x16u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    else
    {

      v14 = v13;
    }

    return (*(v6 + 8))(v9, v19);
  }

  else
  {
    result = sub_1D2871968();
    if ((result & 1) == 0)
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v10 < *(*&a2[v11] + 16))
      {
        sub_1D2871958();
        return sub_1D23BC1B0(v10);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D276D19C(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v38 = a5;
  v8 = sub_1D2873CB8();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2871988();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AttractorsMapper();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  result = sub_1D2871968();
  if ((result & 1) == 0)
  {
    sub_1D277540C(v18, a2);
    v21 = v20;
    v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper;
    sub_1D27754E0(a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper, v17);
    sub_1D277654C(v14);
    sub_1D2775544(v17);
    v23 = sub_1D2871948();
    v25 = v24;
    (*(v12 + 8))(v14, v11);
    if (v25)
    {
      sub_1D2872668();
      v26 = sub_1D2873CA8();
      v27 = sub_1D2878A18();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_1D226E000, v26, v27, "Did not find an available attractor.", v28, 2u);
        MEMORY[0x1D38A3520](v28, -1, -1);
      }

      return (*(v37 + 8))(v10, v8);
    }

    else
    {
      v29 = *(a4 + v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + v22) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_1D27CCD74(0, *(v29 + 2) + 1, 1, v29);
        *(a4 + v22) = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_1D27CCD74((v31 > 1), v32 + 1, 1, v29);
      }

      *(v29 + 2) = v32 + 1;
      *&v29[8 * v32 + 32] = v23;
      *(a4 + v22) = v29;
      v33 = v38[3];
      v34 = v38[4];
      __swift_project_boxed_opaque_existential_1(v38, v33);
      v40 = MEMORY[0x1E69E6448];
      v39[0] = v21;
      v35 = sub_1D2755F14(v23);
      (*(v34 + 8))(v39, v35 & 0xFFFFFF01, v33, v34);
      return __swift_destroy_boxed_opaque_existential_0(v39);
    }
  }

  return result;
}

void *sub_1D276D524@<X0>(void *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = *a2 * (*result + 1);
    sub_1D2876FE8();
    sub_1D2876FE8();
    result = sub_1D2876FF8();
    *a3 = v4;
  }

  return result;
}

void sub_1D276D59C(double a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char *a7)
{
  v75 = a7;
  v72 = a5;
  v11 = sub_1D2871988();
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D2873CB8();
  v13 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v62 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v62 - v16;
  v78 = sub_1D2871908();
  v17 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1920);
  v20 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - v21;
  v63 = swift_projectBox();
  sub_1D2871928();
  v23 = *(v20 + 44);
  v71 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isRightToLeft;
  v24 = sub_1D2775F90(&unk_1ED8A6C50, MEMORY[0x1E6969B50]);
  v76 = (v17 + 8);
  v68 = a4 + 32;
  v73 = (v13 + 8);
  v67 = a6 & 1;
  *&v25 = 134218754;
  v66 = v25;
  v69 = v23;
  for (i = a4; ; a4 = i)
  {
    v34 = v77;
    sub_1D2878868();
    sub_1D2775F90(&unk_1ED8A6C70, MEMORY[0x1E6969B18]);
    v35 = v78;
    v36 = sub_1D2877F98();
    (*v76)(v34, v35);
    if (v36)
    {
      goto LABEL_13;
    }

    v37 = sub_1D28788B8();
    v39 = *v38;
    v37(v81, 0);
    v40 = v24;
    sub_1D2878878();
    v41 = *(a4 + 16);
    if (v39 >= v41)
    {
      v54 = v62;
      sub_1D2872668();
      sub_1D2870F68();
      v55 = sub_1D2873CA8();
      v56 = sub_1D2878A18();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 134218240;
        *(v57 + 4) = v39;
        *(v57 + 12) = 2048;
        *(v57 + 14) = v41;

        _os_log_impl(&dword_1D226E000, v55, v56, "Error index out of bounds %ld compared to activeAttractors.count: %ld", v57, 0x16u);
        MEMORY[0x1D38A3520](v57, -1, -1);
      }

      else
      {
      }

      (*v73)(v54, v74);
LABEL_13:
      sub_1D22BD238(v22, &unk_1EC6E1920);
      v58 = v63;
      swift_beginAccess();
      v59 = v65;
      v60 = v64;
      v61 = (*(v65 + 16))(v64, v58, v11);
      MEMORY[0x1EEE9AC00](v61);
      *(&v62 - 2) = v75;
      sub_1D2678CF0(sub_1D27754C4, (&v62 - 4));
      (*(v59 + 8))(v60, v11);
      return;
    }

    sub_1D277540C(v39, a1);
    if (v39 < 0)
    {
      break;
    }

    v43 = v42;
    v44 = v11;
    v45 = *(v68 + 8 * v39);
    v46 = v79;
    sub_1D2872668();
    v47 = sub_1D2873CA8();
    v48 = sub_1D2878A08();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v80 = v50;
      *v49 = v66;
      *(v49 + 4) = v39;
      *(v49 + 12) = 2080;
      v81[0] = sub_1D276D524;
      v81[1] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1930);
      v51 = sub_1D2878118();
      v53 = sub_1D23D7C84(v51, v52, &v80);

      *(v49 + 14) = v53;
      *(v49 + 22) = 2048;
      *(v49 + 24) = v43;
      *(v49 + 32) = 1024;
      *(v49 + 34) = v67;
      _os_log_impl(&dword_1D226E000, v47, v48, "Visible index index: %ld - VFX attractor - radialLayoutAngleForBubble: %s - angle: %f - showAttractors: %{BOOL}d", v49, 0x26u);
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x1D38A3520](v50, -1, -1);
      MEMORY[0x1D38A3520](v49, -1, -1);

      (*v73)(v79, v74);
    }

    else
    {

      (*v73)(v46, v74);
    }

    v11 = v44;
    v24 = v40;
    v26 = v75;
    v27 = *(v75 + 3);
    v28 = *(v75 + 4);
    __swift_project_boxed_opaque_existential_1(v75, v27);
    v29 = MEMORY[0x1E69E6448];
    v82 = MEMORY[0x1E69E6448];
    *v81 = v43;
    v30 = sub_1D2755F14(v45);
    (*(v28 + 16))(v81, v30 & 0xFFFFFF01, 0, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v81);
    v31 = *(v26 + 3);
    v32 = *(v26 + 4);
    __swift_project_boxed_opaque_existential_1(v26, v31);
    v82 = v29;
    *v81 = a2;
    v33 = sub_1D2755514(v45);
    (*(v32 + 16))(v81, v33 & 0xFFFFFF01, 0, v31, v32);
    __swift_destroy_boxed_opaque_existential_0(v81);
  }

  __break(1u);
}

uint64_t sub_1D276DD74(uint64_t *a1, void *a2)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1D2872668();
  v9 = sub_1D2873CA8();
  v10 = sub_1D2878A08();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_1D226E000, v9, v10, "indicesToRemove index: %ld VFX attractor - showAttractors: false", v11, 0xCu);
    MEMORY[0x1D38A3520](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v12 = a2[3];
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v17 = MEMORY[0x1E69E6448];
  v16[0] = 0;
  v14 = sub_1D2755514(v8);
  (*(v13 + 16))(v16, v14 & 0xFFFFFF01, 0, v12, v13);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

void sub_1D276DF3C()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathTexture);
  if (v5)
  {
    sub_1D2758CD8(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v14);
    if (v15 == 1)
    {
      v6 = v14[0];
      v7 = v14[1];
      v8 = v14[2];
      v9 = v5;
      sub_1D274B154(v9, v8);
    }

    else
    {
      v10 = v5;
      sub_1D2758D34(v14);
      sub_1D2872668();
      v11 = sub_1D2873CA8();
      v12 = sub_1D2878A18();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1D226E000, v11, v12, "wandNodes is nil", v13, 2u);
        MEMORY[0x1D38A3520](v13, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }
  }
}

void sub_1D276E0F0(double a1, double a2)
{
  v3 = v2;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  sub_1D2758CD8(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v28);
  if (v32 != 1)
  {
    sub_1D2758D34(&v28);
    sub_1D2872668();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A18();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D226E000, v21, v22, "wandNodes is nil", v23, 2u);
      MEMORY[0x1D38A3520](v23, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    goto LABEL_12;
  }

  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = (v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition);
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition + 48))
  {
    sub_1D2872668();
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A18();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D226E000, v17, v18, "magicEffectPosition is nil", v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
      v20 = v15;
      v15 = v14;
      v14 = v13;
    }

    else
    {
      v20 = v17;
      v17 = v13;
    }

    (*(v7 + 8))(v12, v6);
LABEL_12:
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_didBegin) = 0;
    return;
  }

  v24 = v16[1];
  v25 = *v16 / v24 * (a1 - *v16 * 0.5) / *v16;
  *&v25 = v25 + v25;
  *&v26 = (v24 - a2 - v24 * 0.5) / v24 + (v24 - a2 - v24 * 0.5) / v24;
  sub_1D2749C3C(v28, v29, v30, __PAIR64__(v26, LODWORD(v25)));
  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_didBegin) == 1)
  {
    *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_didBegin) = 0;
    v31 = MEMORY[0x1E69E6370];
    LOBYTE(v28) = 1;
    v27 = v14;
    sub_1D2777178(&v28, 0x6C43646E61577369, 0xEB000000006B6369, 1);

    __swift_destroy_boxed_opaque_existential_0(&v28);
  }

  else
  {
  }
}

uint64_t type metadata accessor for VisualEffectSceneManager()
{
  result = qword_1ED89FB60;
  if (!qword_1ED89FB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D276E688()
{
  sub_1D2871DD8();
  if (v0 <= 0x3F)
  {
    sub_1D24FEC8C();
    if (v1 <= 0x3F)
    {
      sub_1D2871988();
      if (v2 <= 0x3F)
      {
        type metadata accessor for AttractorsMapper();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1D276E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D2878568();
  v5[4] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D276E940, v7, v6);
}

uint64_t sub_1D276E940()
{
  v1 = *(v0 + 24);

  sub_1D276B4D0(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D276E9AC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPoint;
  if ((*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPoint + 16) & 1) == 0)
  {
    sub_1D276E0F0(*v1, *(v1 + 8));
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldDispatchWand) = 0;
  }
}

uint64_t sub_1D276EA8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D276EAC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1D276EB14(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal24VisualEffectLoadingStateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D276EB74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D276EBD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D276EC20(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1D276EC54()
{
  result = qword_1EC6E18E8;
  if (!qword_1EC6E18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E18E8);
  }

  return result;
}

id sub_1D276ECA8()
{
  if (*(v0 + 16))
  {
    return sub_1D277B7F8();
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D276ED08(char a1, int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  HIDWORD(v38) = a2;
  v15 = sub_1D2873CB8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a8;
  *(v19 + 32) = a5;
  v39 = a6;
  *(v19 + 40) = a6;
  *(v19 + 48) = a7;
  sub_1D2758CD8(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v44)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2758D34(&aBlock);
    if (*(&v46 + 1))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D22BD238(&v45, &qword_1EC6E1790);
    sub_1D2872668();
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A18();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D226E000, v20, v21, "gpNodes is nil", v22, 2u);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    (*(v16 + 8))(v18, v15);
    sub_1D2763E28(a8, a4, a5 & 1, v39, a7);
  }

  sub_1D227268C(&aBlock, &v45);
  sub_1D2870F78();
  sub_1D2870F78();
  if (!*(&v46 + 1))
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D227268C(&v45, v48);
  if ((a1 & 1) == 0)
  {
    sub_1D27643D8(BYTE4(v38) & 1, 0, 1);
    sub_1D2763E28(a8, a4, a5 & 1, v39, a7);
    goto LABEL_17;
  }

  if (*(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

    goto LABEL_15;
  }

  v23 = sub_1D2879618();

  if (v23)
  {
LABEL_15:
    sub_1D22D7044(v48, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
    type metadata accessor for VisualEffectRENodes();
    if (!swift_dynamicCast())
    {
      goto LABEL_18;
    }

    v24 = v45;
    sub_1D27643D8(BYTE4(v38) & 1, 0x3FE0000000000000, 0);
    sub_1D2760BB8(v24, 0, 1, 0.5);
    sub_1D2763E28(a8, a4, a5 & 1, v39, a7);

LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

LABEL_18:
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1D2774770;
  *(v25 + 24) = v19;
  v26 = *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_1D2870F78();
    goto LABEL_22;
  }

  v28 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  v29 = __CFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v30;
    sub_1D2870F78();
    sub_1D277A35C();
    swift_unknownObjectRelease();
LABEL_22:
    v31 = *MEMORY[0x1E6979EB8];
    v32 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v32 + 24) = *(v26 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = sub_1D22D79AC;
    v33[4] = v25;
    v34 = objc_opt_self();
    sub_1D2870F78();
    sub_1D2870F78();
    v35 = [v34 functionWithName_];
    v36 = objc_opt_self();
    [v36 begin];
    v43 = sub_1D2776400;
    v44 = v33;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v41 = sub_1D23DFBA8;
    v42 = &block_descriptor_123;
    v37 = _Block_copy(&aBlock);
    sub_1D2870F78();

    [v36 setCompletionBlock_];
    _Block_release(v37);
    [v36 setAnimationDuration_];
    [v36 setAnimationTimingFunction_];
    sub_1D27643D8(BYTE4(v38) & 1, 0, 1);
    [v36 commit];

    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D276F31C(char a1, char a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  sub_1D2758CD8(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v40)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    sub_1D2870F78();
    sub_1D2758D34(&aBlock);
    if (*(&v42 + 1))
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_1D22BD238(&v41, &qword_1EC6E1790);
    sub_1D2872668();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "gpNodes is nil", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    v18 = (*(v11 + 8))(v13, v10);
    a4(v18);
  }

  sub_1D227268C(&aBlock, &v41);
  sub_1D2870F78();
  if (!*(&v42 + 1))
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1D227268C(&v41, v44);
  if ((a1 & 1) == 0)
  {
    v19 = sub_1D27643D8(a2 & 1, 0, 1);
    a4(v19);
    goto LABEL_17;
  }

  if (*(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

    goto LABEL_15;
  }

  v20 = sub_1D2879618();

  if (v20)
  {
LABEL_15:
    sub_1D22D7044(v44, &aBlock);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
    type metadata accessor for VisualEffectRENodes();
    if (!swift_dynamicCast())
    {
      goto LABEL_18;
    }

    v21 = v41;
    sub_1D27643D8(a2 & 1, 0x3FE0000000000000, 0);
    v22 = sub_1D2760BB8(v21, 0, 1, 0.5);
    a4(v22);

LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

LABEL_18:
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1D2774670;
  *(v23 + 24) = v14;
  v24 = *(a3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_1D2870F78();
    goto LABEL_22;
  }

  v26 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  v27 = __CFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v28;
    sub_1D2870F78();
    sub_1D277A35C();
    swift_unknownObjectRelease();
LABEL_22:
    v29 = *MEMORY[0x1E6979EB8];
    v30 = swift_allocObject();
    swift_unknownObjectWeakLoadStrong();
    *(v30 + 24) = *(v24 + 24);
    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = sub_1D22D79AC;
    v31[4] = v23;
    v32 = objc_opt_self();
    sub_1D2870F78();
    sub_1D2870F78();
    v33 = [v32 functionWithName_];
    v34 = objc_opt_self();
    [v34 begin];
    v39 = sub_1D2776400;
    v40 = v31;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v37 = sub_1D23DFBA8;
    v38 = &block_descriptor_75;
    v35 = _Block_copy(&aBlock);
    sub_1D2870F78();

    [v34 setCompletionBlock_];
    _Block_release(v35);
    [v34 setAnimationDuration_];
    [v34 setAnimationTimingFunction_];
    sub_1D27643D8(a2 & 1, 0, 1);
    [v34 commit];

    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  __break(1u);
  return result;
}

void sub_1D276F8CC(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  if (a1)
  {
    v9 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration);
    if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
    {
      sub_1D2870F78();
    }

    else
    {
      v11 = sub_1D2879618();
      sub_1D2870F78();

      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
    if (v34)
    {
      sub_1D2758D34(&aBlock);
    }

    else
    {
      sub_1D227268C(&aBlock, v29);
      sub_1D22D7044(v29, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        v12 = v28;
        sub_1D2765D3C(v9, 0);
        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v13 = swift_allocObject();
        *(v13 + 32) = 0;
        *(v13 + 40) = 0;
        *(v13 + 48) = 1;
        v14 = 1.0 / *&v9;
        *(v13 + 64) = 0;
        *(v13 + 72) = 0;
        *(v13 + 52) = v14;
        *(v13 + 56) = 0;
        *(v13 + 16) = sub_1D2774670;
        *(v13 + 24) = v8;
        swift_beginAccess();
        v15 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v15);
        if (*((*(v28 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v28 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_15:
          sub_1D2878488();
          swift_endAccess();
          sub_1D2760BB8(v12, 0, 1, *&v9);

          __swift_destroy_boxed_opaque_existential_0(v29);

          return;
        }

LABEL_23:
        sub_1D2878428();
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_0(v29);
    }

LABEL_17:
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D2774670;
    *(v12 + 24) = v8;
    v16 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_1D2870F78();
      goto LABEL_21;
    }

    v18 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v19 = __CFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v20;
      sub_1D2870F78();
      sub_1D277A35C();
      swift_unknownObjectRelease();
LABEL_21:
      v21 = *MEMORY[0x1E6979EB8];
      v22 = swift_allocObject();
      swift_unknownObjectWeakLoadStrong();
      *(v22 + 24) = *(v16 + 24);
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = sub_1D22D79AC;
      v23[4] = v12;
      v24 = objc_opt_self();
      sub_1D2870F78();
      sub_1D2870F78();
      v25 = [v24 functionWithName_];
      v26 = objc_opt_self();
      [v26 begin];
      v33 = sub_1D2776400;
      v34 = v23;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1D23DFBA8;
      v32 = &block_descriptor_156;
      v27 = _Block_copy(&aBlock);
      sub_1D2870F78();

      [v26 setCompletionBlock_];
      _Block_release(v27);
      [v26 setAnimationDuration_];
      [v26 setAnimationTimingFunction_];
      sub_1D2765D3C(0, 1);
      [v26 commit];

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_1D2870F78();
  v10 = sub_1D2765D3C(0, 1);
  a3(v10);
}

void sub_1D276FE34(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
    {
      sub_1D2870F78();
    }

    else
    {
      v11 = sub_1D2879618();
      sub_1D2870F78();

      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
    if (v36)
    {
      sub_1D2758D34(&aBlock);
    }

    else
    {
      sub_1D227268C(&aBlock, v31);
      sub_1D22D7044(v31, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        v12 = v30;
        v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration;
        sub_1D2764F68(*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration), 0);
        v13 = *(a2 + v4);
        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v14 = swift_allocObject();
        *(v14 + 32) = 0;
        *(v14 + 40) = 0;
        *(v14 + 48) = 1;
        v15 = 1.0 / v13;
        *(v14 + 64) = 0;
        *(v14 + 72) = 0;
        *(v14 + 52) = v15;
        *(v14 + 56) = 0;
        *(v14 + 16) = sub_1D2774670;
        *(v14 + 24) = v9;
        swift_beginAccess();
        v16 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v16);
        if (*((*(v30 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v30 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_15:
          sub_1D2878488();
          swift_endAccess();
          sub_1D2760BB8(v12, 0, 1, *(a2 + v4));

          __swift_destroy_boxed_opaque_existential_0(v31);

          return;
        }

LABEL_23:
        sub_1D2878428();
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_0(v31);
    }

LABEL_17:
    v17 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D2774670;
    *(v12 + 24) = v9;
    v18 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_1D2870F78();
      goto LABEL_21;
    }

    v20 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v22;
      sub_1D2870F78();
      sub_1D277A35C();
      swift_unknownObjectRelease();
LABEL_21:
      v23 = *MEMORY[0x1E6979EB8];
      v24 = swift_allocObject();
      swift_unknownObjectWeakLoadStrong();
      *(v24 + 24) = *(v18 + 24);
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = sub_1D22D79AC;
      v25[4] = v12;
      v26 = objc_opt_self();
      sub_1D2870F78();
      sub_1D2870F78();
      v27 = [v26 functionWithName_];
      v28 = objc_opt_self();
      [v28 begin];
      v35 = sub_1D2776400;
      v36 = v25;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v33 = sub_1D23DFBA8;
      v34 = &block_descriptor_220;
      v29 = _Block_copy(&aBlock);
      sub_1D2870F78();

      [v28 setCompletionBlock_];
      _Block_release(v29);
      [v28 setAnimationDuration_];
      [v28 setAnimationTimingFunction_];
      sub_1D2764F68(0, 1);
      [v28 commit];

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_1D2870F78();
  v10 = sub_1D2764F68(0, 1);
  a3(v10);
}

uint64_t sub_1D27703A4(int a1, uint64_t a2, void *a3, char a4, void (*a5)(uint64_t), uint64_t a6)
{
  v39 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v38 - v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = a5;
  *(v13 + 40) = a6;
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v40);
  if (v42)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v15 = a3;
    sub_1D2870F78();
    sub_1D2758D34(&v40);
    v16 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1D22BD238(&v43, &qword_1EC6E1790);
    v40 = 0u;
    v41 = 0u;
    goto LABEL_8;
  }

  sub_1D227268C(&v40, &v43);
  v19 = a3;
  sub_1D2870F78();
  v16 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    goto LABEL_7;
  }

LABEL_3:
  v17 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, v16);
  (*(v17 + 24))(&v40, 6400, v16, v17);
  __swift_destroy_boxed_opaque_existential_0(&v43);
  if (!*(&v41 + 1))
  {
LABEL_8:
    sub_1D22BD238(&v40, &qword_1EC6E1900);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v18 = *&v43;
    goto LABEL_10;
  }

LABEL_9:
  v18 = 0.0;
LABEL_10:
  v20 = floorf(v18 * 10.0) / 10.0;
  if (v20 < 0.4 || v20 >= 1.0)
  {
    sub_1D2870F78();
    sub_1D276FE34(a4 & 1, a3, a5, a6);
  }

  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

LABEL_20:
    sub_1D2758CD8(a2 + v14, &v40);
    if (v42)
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      sub_1D2758D34(&v40);
      if (*(&v44 + 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D227268C(&v40, &v43);
      if (*(&v44 + 1))
      {
LABEL_22:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          sub_1D2753D54();
        }

        goto LABEL_26;
      }
    }

    sub_1D22BD238(&v43, &qword_1EC6E1790);
    goto LABEL_26;
  }

  v22 = sub_1D2879618();

  if (v22)
  {
    goto LABEL_20;
  }

LABEL_26:
  v23 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratedTask;
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratedTask))
  {
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1D27755A8;
    *(v24 + 24) = v13;
    v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_delayedGeneratedCompletions;
    swift_beginAccess();
    v26 = *(a2 + v25);
    sub_1D2870F78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v25) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1D27CDB44(0, v26[2] + 1, 1, v26);
      *(a2 + v25) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_1D27CDB44((v28 > 1), v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    v30 = &v26[2 * v29];
    v30[4] = sub_1D23411A0;
    v30[5] = v24;
    *(a2 + v25) = v26;
    swift_endAccess();
  }

  else
  {
    v31 = sub_1D28785F8();
    v32 = v38;
    (*(*(v31 - 8) + 56))(v38, 1, 1, v31);
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v34 = sub_1D2878558();
    v35 = swift_allocObject();
    v36 = MEMORY[0x1E69E85E0];
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    *(v35 + 32) = v33;
    *(v35 + 40) = v18;
    *(v35 + 44) = v39 & 1;
    *(v35 + 48) = sub_1D27755A8;
    *(v35 + 56) = v13;

    *(a2 + v23) = sub_1D22AE01C(0, 0, v32, &unk_1D28A4890, v35);
  }
}

void sub_1D2770930(char a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  if (a1)
  {
    v9 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration);
    if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
    {
      sub_1D2870F78();
    }

    else
    {
      v11 = sub_1D2879618();
      sub_1D2870F78();

      if ((v11 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
    if (v34)
    {
      sub_1D2758D34(&aBlock);
    }

    else
    {
      sub_1D227268C(&aBlock, v29);
      sub_1D22D7044(v29, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        v12 = v28;
        sub_1D27648E8(1, v9, 0, 1, 1.0);
        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v13 = swift_allocObject();
        *(v13 + 32) = 0;
        *(v13 + 40) = 0;
        *(v13 + 48) = 1;
        v14 = 1.0 / *&v9;
        *(v13 + 64) = 0;
        *(v13 + 72) = 0;
        *(v13 + 52) = v14;
        *(v13 + 56) = 0;
        *(v13 + 16) = sub_1D2774670;
        *(v13 + 24) = v8;
        swift_beginAccess();
        v15 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v15);
        if (*((*(v28 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v28 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_15:
          sub_1D2878488();
          swift_endAccess();
          sub_1D2760BB8(v12, 0, 1, *&v9);

          __swift_destroy_boxed_opaque_existential_0(v29);

          return;
        }

LABEL_23:
        sub_1D2878428();
        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_0(v29);
    }

LABEL_17:
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1D2774670;
    *(v12 + 24) = v8;
    v16 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      sub_1D2870F78();
      goto LABEL_21;
    }

    v18 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
    v19 = __CFADD__(v18, 1);
    v20 = v18 + 1;
    if (!v19)
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v20;
      sub_1D2870F78();
      sub_1D277A35C();
      swift_unknownObjectRelease();
LABEL_21:
      v21 = *MEMORY[0x1E6979EB8];
      v22 = swift_allocObject();
      swift_unknownObjectWeakLoadStrong();
      *(v22 + 24) = *(v16 + 24);
      swift_unknownObjectWeakInit();
      swift_unknownObjectRelease();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = sub_1D22D79AC;
      v23[4] = v12;
      v24 = objc_opt_self();
      sub_1D2870F78();
      sub_1D2870F78();
      v25 = [v24 functionWithName_];
      v26 = objc_opt_self();
      [v26 begin];
      v33 = sub_1D2776400;
      v34 = v23;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v31 = sub_1D23DFBA8;
      v32 = &block_descriptor_234;
      v27 = _Block_copy(&aBlock);
      sub_1D2870F78();

      [v26 setCompletionBlock_];
      _Block_release(v27);
      [v26 setAnimationDuration_];
      [v26 setAnimationTimingFunction_];
      sub_1D2760560(0, v9, 0);
      sub_1D27648E8(1, 0, 1, 1, 1.0);
      [v26 commit];

      return;
    }

    __break(1u);
    goto LABEL_23;
  }

  sub_1D2870F78();
  sub_1D2760560(0, 0, 1);
  v10 = sub_1D27648E8(1, 0, 1, 1, 1.0);
  a3(v10);
}

uint64_t sub_1D2770ED8(char a1)
{
  *(v1 + 168) = a1;
  v2 = sub_1D2873CB8();
  *(v1 + 88) = v2;
  *(v1 + 96) = *(v2 - 8);
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v3 = sub_1D28716B8();
  *(v1 + 128) = v3;
  *(v1 + 136) = *(v3 - 8);
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2771024, 0, 0);
}

uint64_t sub_1D2771024()
{
  v65 = v0;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v1 = 0xEA00000000007463;
  v2 = qword_1ED8B0058;
  v3 = sub_1D2878068();

  v4 = sub_1D2878068();
  v5 = [v2 URLForResource:v3 withExtension:v4];

  if (v5)
  {
    sub_1D2871638();

    v6 = sub_1D2878068();
    v7 = sub_1D2878068();
    v8 = [v2 URLForResource:v6 withExtension:v7];

    if (v8)
    {
      v9 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = *(v0 + 136);
      v11 = *(v0 + 144);
      v13 = *(v0 + 128);
      sub_1D2871638();

      sub_1D22BCFD0(0, &qword_1ED89CC20);
      v14 = *(v12 + 16);
      v14(v11, v10, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1948);
      inited = swift_initStackObject();
      v16 = MEMORY[0x1E69DF3E8];
      *(inited + 16) = xmmword_1D287F500;
      v17 = *v16;
      *(inited + 32) = *v16;
      *(inited + 64) = v13;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 40));
      v14(boxed_opaque_existential_1, v9, v13);
      v19 = v17;
      v20 = sub_1D25DA9A4(inited);
      swift_setDeallocating();
      sub_1D22BD238(inited + 32, &unk_1EC6E1950);
      v21 = sub_1D275FA24(v11, v20);
      if (v21)
      {
        v59 = *(v0 + 160);
        v60 = *(v0 + 128);
        v61 = *(*(v0 + 136) + 8);
        v63 = v21;
        v61(*(v0 + 152), v60);
        v61(v59, v60);

        v62 = *(v0 + 8);

        return v62(v63);
      }

      sub_1D2872668();
      v22 = sub_1D2873CA8();
      v23 = sub_1D2878A18();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_1D226E000, v22, v23, "Failed to create world.", v24, 2u);
        MEMORY[0x1D38A3520](v24, -1, -1);
      }

      v26 = *(v0 + 152);
      v25 = *(v0 + 160);
      v27 = *(v0 + 128);
      v28 = *(v0 + 136);
      v29 = *(v0 + 120);
      v30 = *(v0 + 88);
      v31 = *(v0 + 96);

      (*(v31 + 8))(v29, v30);
      sub_1D2775E68();
      swift_allocError();
      swift_willThrow();
      v32 = *(v28 + 8);
      v32(v26, v27);
      v32(v25, v27);
    }

    else
    {
      sub_1D2872668();
      v45 = sub_1D2873CA8();
      v46 = sub_1D2878A18();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_1D226E000, v45, v46, "Did not find 'default.metallib'", v47, 2u);
        MEMORY[0x1D38A3520](v47, -1, -1);
      }

      v48 = *(v0 + 160);
      v49 = *(v0 + 128);
      v50 = *(v0 + 136);
      v51 = *(v0 + 112);
      v52 = *(v0 + 88);
      v53 = *(v0 + 96);

      (*(v53 + 8))(v51, v52);
      sub_1D2775E68();
      swift_allocError();
      swift_willThrow();
      (*(v50 + 8))(v48, v49);
    }
  }

  else
  {
    sub_1D2872668();
    v33 = sub_1D2873CA8();
    v34 = sub_1D2878A18();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = *(v0 + 168);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v64 = v37;
      *v36 = 136315138;
      v38 = 0xE600000000000000;
      v39 = 0x746365666645;
      if (v35 != 1)
      {
        v39 = 0x4433746365666645;
        v38 = 0xE800000000000000;
      }

      if (v35)
      {
        v40 = v39;
      }

      else
      {
        v40 = 0x65666645646E6157;
      }

      if (v35)
      {
        v1 = v38;
      }

      v42 = *(v0 + 96);
      v41 = *(v0 + 104);
      v43 = *(v0 + 88);
      v44 = sub_1D23D7C84(v40, v1, &v64);

      *(v36 + 4) = v44;
      _os_log_impl(&dword_1D226E000, v33, v34, "Did not find '%s.vfx'", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x1D38A3520](v37, -1, -1);
      MEMORY[0x1D38A3520](v36, -1, -1);

      (*(v42 + 8))(v41, v43);
    }

    else
    {
      v55 = *(v0 + 96);
      v54 = *(v0 + 104);
      v56 = *(v0 + 88);

      (*(v55 + 8))(v54, v56);
    }

    sub_1D2775E68();
    swift_allocError();
    swift_willThrow();
  }

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_1D2771748(void *a1, uint64_t a2, unsigned __int8 *a3, int a4, uint64_t a5, int a6)
{
  v7 = v6;
  v55 = a6;
  v53 = a5;
  v52 = a4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for AttractorsMapper();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a3;
  v15 = &v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_magicEffectPosition];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  v15[48] = 1;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration] = 0x3FC999999999999ALL;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isShowingError] = 0;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers] = 0;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isCreating] = 0;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingScroll] = 0;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_areAttractorsEnabled] = 1;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isRightToLeft] = 0;
  v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator;
  type metadata accessor for VisualEffectAnimationCoordinator();
  v17 = swift_allocObject();
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *&v6[v16] = v17;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectImage] = 0;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobViewScaleModifier] = 1065353216;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_blobStateScaleModifier] = 1065353216;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask] = 0;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratedTask] = 0;
  v18 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_delayedGeneratedCompletions] = MEMORY[0x1E69E7CC0];
  v19 = &v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility];
  *v19 = 0;
  v19[4] = 1;
  v20 = &v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget];
  *v20 = 0;
  v20[4] = 1;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_currentAnimatingVisibilityUUID;
  v22 = sub_1D2871818();
  (*(*(v22 - 8) + 56))(&v6[v21], 1, 1, v22);
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isInLightMode] = 0;
  v23 = &v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPoint];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = 1;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPathPoints] = v18;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_didBegin] = 0;
  v24 = &v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathStartTime];
  *v24 = 0;
  v24[8] = 1;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsColorUpdatingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1D2871978();
  v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsMapper;
  *v13 = v18;
  sub_1D2871978();
  sub_1D2871958();
  sub_1D2871958();
  sub_1D2871958();
  sub_1D2871958();
  sub_1D2871958();
  sub_1D2871958();
  sub_1D2871958();
  sub_1D2871958();
  sub_1D2775F2C(v13, &v6[v25]);
  v26 = &v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxThreadStorage];
  *v26 = 0;
  v26[8] = 1;
  *(v26 + 2) = 0x3FF8000000000000;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldReadColors] = 0;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldDispatchWand] = 0;
  v27 = &v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxAttractorNodes];
  *v27 = 0;
  *(v27 + 1) = v18;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxPath] = 0;
  *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathTexture] = 0;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] = v14 != 0;
  v6[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_shouldUseVFXRenderingDelegate] = v52;
  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_aspectRatio;
  v29 = sub_1D2871DD8();
  v30 = *(v29 - 8);
  v31 = &v6[v28];
  v32 = v53;
  (*(v30 + 16))(v31, v53, v29);
  v33 = sub_1D2879618();

  if ((v33 & 1) == 0)
  {
    if (a1)
    {
      v39 = a1;
      v38 = v39;
      if (v14)
      {
        v40 = sub_1D2755968(v39);
        if (v40)
        {
          v43 = &v7[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController];
          *(v43 + 3) = &type metadata for VisualEffectWorldNodes;
          *(v43 + 4) = &off_1F4DD3080;
          *v43 = v40;
          *(v43 + 1) = v41;
          *(v43 + 2) = v42;
          v43[40] = 0;
          goto LABEL_11;
        }
      }

      else
      {
        v44 = sub_1D274A940(v39);
        if (v44)
        {
          v47 = &v7[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController];
          *v47 = v44;
          *(v47 + 1) = v45;
          *(v47 + 2) = v46;
          v47[40] = 1;
          goto LABEL_11;
        }
      }
    }

LABEL_14:
    result = sub_1D2879398();
    __break(1u);
    return result;
  }

  if (!a2)
  {
    goto LABEL_14;
  }

  v34 = type metadata accessor for VisualEffectRENodes();
  swift_allocObject();
  v35 = sub_1D2870F78();
  v36 = sub_1D2752988(v35);
  if (!v36)
  {
    goto LABEL_14;
  }

  v56 = 0;
  v37 = &v7[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController];
  *v37 = v36;
  *(v37 + 3) = v34;
  *(v37 + 4) = &off_1F4DD2E90;
  v37[40] = 0;
  v38 = a1;
LABEL_11:
  *&v7[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world] = a1;
  *&v7[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxEntity] = a2;
  v57.receiver = v7;
  v57.super_class = ObjectType;
  sub_1D2870F78();
  v48 = v38;
  v49 = objc_msgSendSuper2(&v57, sel_init);
  if (v14)
  {
    sub_1D2761880();
  }

  sub_1D2761C30(v55 & 1, 1, 0, 0);

  (*(v30 + 8))(v32, v29);
  return v49;
}

uint64_t sub_1D2771DE0()
{
  v0 = sub_1D2879488();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1D2771E2C(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, float a5, float a6, double a7)
{
  v14 = sub_1D2873CB8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v58)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    sub_1D2870F78();
    sub_1D2758D34(&aBlock);
    if (*(&v60 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&aBlock, &v59);
    sub_1D2870F78();
    if (*(&v60 + 1))
    {
LABEL_3:
      sub_1D227268C(&v59, v62);
      v19 = v63;
      v20 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v21 = MEMORY[0x1E69E6448];
      v56 = MEMORY[0x1E69E6448];
      *&aBlock = a5;
      (*(v20 + 16))(&aBlock, 6400, 0, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      if ((a1 & 1) == 0)
      {
        v25 = v63;
        v26 = v64;
        __swift_project_boxed_opaque_existential_1(v62, v63);
        v56 = v21;
        *&aBlock = a6;
        (*(v26 + 16))(&aBlock, 6400, 0, v25, v26);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        if ((sub_1D28786D8() & 1) == 0)
        {
          a3();
        }

        goto LABEL_26;
      }

      if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
      {
      }

      else
      {
        v27 = sub_1D2879618();

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_1D22D7044(v62, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        v28 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 6400;
        v30 = inited + 32;
        *(inited + 64) = v21;
        *(inited + 40) = a6;
        v31 = sub_1D25D6D04(inited);
        swift_setDeallocating();
        sub_1D22BD238(v30, &unk_1EC6E1910);
        sub_1D2753044(v31, 0, 1, 2, a7);

        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v32 = swift_allocObject();
        *(v32 + 32) = 0;
        *(v32 + 40) = 0;
        *(v32 + 48) = 1;
        v33 = 1.0 / a7;
        *(v32 + 64) = 0;
        *(v32 + 72) = 0;
        *(v32 + 52) = v33;
        *(v32 + 56) = 0;
        *(v32 + 16) = sub_1D2776398;
        *(v32 + 24) = v18;
        swift_beginAccess();
        v34 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v34);
        if (*((v28[13] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v28[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_19:
          sub_1D2878488();
          swift_endAccess();
          sub_1D2760BB8(v28, 0, 1, a7);
LABEL_25:

LABEL_26:
          __swift_destroy_boxed_opaque_existential_0(v62);
        }

LABEL_29:
        sub_1D2878428();
        goto LABEL_19;
      }

LABEL_20:
      v35 = objc_allocWithZone(MEMORY[0x1E69793D0]);
      LODWORD(v36) = 1053609165;
      LODWORD(v37) = 1063675494;
      LODWORD(v38) = 1.0;
      LODWORD(v39) = 1.0;
      v28 = [v35 initWithControlPoints__:v36 :{v38, v37, v39}];
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1D2776398;
      *(v40 + 24) = v18;
      v41 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1D2870F78();
        goto LABEL_24;
      }

      v43 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v44 = __CFADD__(v43, 1);
      v45 = v43 + 1;
      if (!v44)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v45;
        sub_1D2870F78();
        sub_1D277A35C();
        swift_unknownObjectRelease();
LABEL_24:
        v46 = swift_allocObject();
        swift_unknownObjectWeakLoadStrong();
        *(v46 + 24) = *(v41 + 24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = sub_1D22D79AC;
        v47[4] = v40;
        v48 = objc_opt_self();
        sub_1D2870F78();
        sub_1D2870F78();
        [v48 begin];
        v57 = sub_1D2776400;
        v58 = v47;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v55 = sub_1D23DFBA8;
        v56 = &block_descriptor_108;
        v49 = _Block_copy(&aBlock);
        sub_1D2870F78();

        [v48 setCompletionBlock_];
        _Block_release(v49);
        [v48 setAnimationDuration_];
        [v48 setAnimationTimingFunction_];
        v50 = v63;
        v51 = v64;
        __swift_project_boxed_opaque_existential_1(v62, v63);
        v56 = v21;
        *&aBlock = a6;
        (*(v51 + 16))(&aBlock, 6400, 0, v50, v51);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        [v48 commit];

        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  sub_1D22BD238(&v59, &qword_1EC6E1790);
  sub_1D2872668();
  v22 = sub_1D2873CA8();
  v23 = sub_1D2878A18();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D226E000, v22, v23, "gpNodes is nil", v24, 2u);
    MEMORY[0x1D38A3520](v24, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  if ((sub_1D28786D8() & 1) == 0)
  {
    a3();
  }
}

uint64_t sub_1D27725F4(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, float a5, float a6, double a7)
{
  v14 = sub_1D2873CB8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v58)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    sub_1D2870F78();
    sub_1D2758D34(&aBlock);
    if (*(&v60 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&aBlock, &v59);
    sub_1D2870F78();
    if (*(&v60 + 1))
    {
LABEL_3:
      sub_1D227268C(&v59, v62);
      v19 = v63;
      v20 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v21 = MEMORY[0x1E69E6448];
      v56 = MEMORY[0x1E69E6448];
      *&aBlock = a5;
      (*(v20 + 16))(&aBlock, 6400, 0, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      if ((a1 & 1) == 0)
      {
        v25 = v63;
        v26 = v64;
        __swift_project_boxed_opaque_existential_1(v62, v63);
        v56 = v21;
        *&aBlock = a6;
        (*(v26 + 16))(&aBlock, 6400, 0, v25, v26);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        if ((sub_1D28786D8() & 1) == 0)
        {
          a3();
        }

        goto LABEL_26;
      }

      if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
      {
      }

      else
      {
        v27 = sub_1D2879618();

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_1D22D7044(v62, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        v28 = v59;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 6400;
        v30 = inited + 32;
        *(inited + 64) = v21;
        *(inited + 40) = a6;
        v31 = sub_1D25D6D04(inited);
        swift_setDeallocating();
        sub_1D22BD238(v30, &unk_1EC6E1910);
        sub_1D2753044(v31, 0, 1, 2, a7);

        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v32 = swift_allocObject();
        *(v32 + 32) = 0;
        *(v32 + 40) = 0;
        *(v32 + 48) = 1;
        v33 = 1.0 / a7;
        *(v32 + 64) = 0;
        *(v32 + 72) = 0;
        *(v32 + 52) = v33;
        *(v32 + 56) = 0;
        *(v32 + 16) = sub_1D2774884;
        *(v32 + 24) = v18;
        swift_beginAccess();
        v34 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v34);
        if (*((v28[13] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v28[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_19:
          sub_1D2878488();
          swift_endAccess();
          sub_1D2760BB8(v28, 0, 1, a7);
LABEL_25:

LABEL_26:
          __swift_destroy_boxed_opaque_existential_0(v62);
        }

LABEL_29:
        sub_1D2878428();
        goto LABEL_19;
      }

LABEL_20:
      v35 = objc_allocWithZone(MEMORY[0x1E69793D0]);
      LODWORD(v36) = 1053609165;
      LODWORD(v37) = 1063675494;
      LODWORD(v38) = 1.0;
      LODWORD(v39) = 1.0;
      v28 = [v35 initWithControlPoints__:v36 :{v38, v37, v39}];
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1D2774884;
      *(v40 + 24) = v18;
      v41 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1D2870F78();
        goto LABEL_24;
      }

      v43 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v44 = __CFADD__(v43, 1);
      v45 = v43 + 1;
      if (!v44)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v45;
        sub_1D2870F78();
        sub_1D277A35C();
        swift_unknownObjectRelease();
LABEL_24:
        v46 = swift_allocObject();
        swift_unknownObjectWeakLoadStrong();
        *(v46 + 24) = *(v41 + 24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = sub_1D22D79AC;
        v47[4] = v40;
        v48 = objc_opt_self();
        sub_1D2870F78();
        sub_1D2870F78();
        [v48 begin];
        v57 = sub_1D2776400;
        v58 = v47;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v55 = sub_1D23DFBA8;
        v56 = &block_descriptor_142_0;
        v49 = _Block_copy(&aBlock);
        sub_1D2870F78();

        [v48 setCompletionBlock_];
        _Block_release(v49);
        [v48 setAnimationDuration_];
        [v48 setAnimationTimingFunction_];
        v50 = v63;
        v51 = v64;
        __swift_project_boxed_opaque_existential_1(v62, v63);
        v56 = v21;
        *&aBlock = a6;
        (*(v51 + 16))(&aBlock, 6400, 0, v50, v51);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        [v48 commit];

        goto LABEL_25;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

  sub_1D22BD238(&v59, &qword_1EC6E1790);
  sub_1D2872668();
  v22 = sub_1D2873CA8();
  v23 = sub_1D2878A18();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1D226E000, v22, v23, "gpNodes is nil", v24, 2u);
    MEMORY[0x1D38A3520](v24, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  if ((sub_1D28786D8() & 1) == 0)
  {
    a3();
  }
}

uint64_t sub_1D2772DBC(char a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, float a6, float a7, double a8)
{
  v16 = sub_1D2873CB8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &aBlock);
  if (v62)
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    sub_1D2870F78();
    v21 = a5;
    sub_1D2758D34(&aBlock);
    if (*(&v64 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&aBlock, &v63);
    sub_1D2870F78();
    v25 = a5;
    if (*(&v64 + 1))
    {
LABEL_3:
      sub_1D227268C(&v63, v66);
      v22 = v67;
      v23 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v24 = MEMORY[0x1E69E6448];
      v60 = MEMORY[0x1E69E6448];
      *&aBlock = a6;
      (*(v23 + 16))(&aBlock, 6400, 0, v22, v23);
      __swift_destroy_boxed_opaque_existential_0(&aBlock);
      if ((a1 & 1) == 0)
      {
        v29 = v67;
        v30 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v60 = v24;
        *&aBlock = a7;
        (*(v30 + 16))(&aBlock, 6400, 0, v29, v30);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        sub_1D27642FC(a3, a4, a5);
LABEL_24:
        __swift_destroy_boxed_opaque_existential_0(v66);
      }

      if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
      {
      }

      else
      {
        v31 = sub_1D2879618();

        if ((v31 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_1D22D7044(v66, &aBlock);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
      type metadata accessor for VisualEffectRENodes();
      if (swift_dynamicCast())
      {
        v32 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1908);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D287F500;
        *(inited + 32) = 6400;
        v34 = inited + 32;
        *(inited + 64) = v24;
        *(inited + 40) = a7;
        v35 = sub_1D25D6D04(inited);
        swift_setDeallocating();
        sub_1D22BD238(v34, &unk_1EC6E1910);
        sub_1D2753044(v35, 0, 1, 2, a8);

        type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
        v36 = swift_allocObject();
        *(v36 + 32) = 0;
        *(v36 + 40) = 0;
        *(v36 + 48) = 1;
        v37 = 1.0 / a8;
        *(v36 + 64) = 0;
        *(v36 + 72) = 0;
        *(v36 + 52) = v37;
        *(v36 + 56) = 0;
        *(v36 + 16) = sub_1D2775698;
        *(v36 + 24) = v20;
        swift_beginAccess();
        v38 = sub_1D2870F78();
        MEMORY[0x1D38A0E30](v38);
        if (*((v32[13] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v32[13] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_17:
          sub_1D2878488();
          swift_endAccess();
          sub_1D2760BB8(v32, 0, 1, a8);
LABEL_23:

          goto LABEL_24;
        }

LABEL_27:
        sub_1D2878428();
        goto LABEL_17;
      }

LABEL_18:
      v39 = objc_allocWithZone(MEMORY[0x1E69793D0]);
      LODWORD(v40) = 1053609165;
      LODWORD(v41) = 1063675494;
      LODWORD(v42) = 1.0;
      LODWORD(v43) = 1.0;
      v32 = [v39 initWithControlPoints__:v40 :{v42, v41, v43}];
      v44 = swift_allocObject();
      *(v44 + 16) = sub_1D2775698;
      *(v44 + 24) = v20;
      v45 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1D2870F78();
        goto LABEL_22;
      }

      v47 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v48 = __CFADD__(v47, 1);
      v49 = v47 + 1;
      if (!v48)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v49;
        sub_1D2870F78();
        sub_1D277A35C();
        swift_unknownObjectRelease();
LABEL_22:
        v50 = swift_allocObject();
        swift_unknownObjectWeakLoadStrong();
        *(v50 + 24) = *(v45 + 24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        v51 = swift_allocObject();
        v51[2] = v50;
        v51[3] = sub_1D22D79AC;
        v51[4] = v44;
        v52 = objc_opt_self();
        sub_1D2870F78();
        sub_1D2870F78();
        [v52 begin];
        v61 = sub_1D2776400;
        v62 = v51;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v59 = sub_1D23DFBA8;
        v60 = &block_descriptor_206;
        v53 = _Block_copy(&aBlock);
        sub_1D2870F78();

        [v52 setCompletionBlock_];
        _Block_release(v53);
        [v52 setAnimationDuration_];
        [v52 setAnimationTimingFunction_];
        v54 = v67;
        v55 = v68;
        __swift_project_boxed_opaque_existential_1(v66, v67);
        v60 = v24;
        *&aBlock = a7;
        (*(v55 + 16))(&aBlock, 6400, 0, v54, v55);
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        [v52 commit];

        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_27;
    }
  }

  sub_1D22BD238(&v63, &qword_1EC6E1790);
  sub_1D2872668();
  v26 = sub_1D2873CA8();
  v27 = sub_1D2878A18();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1D226E000, v26, v27, "gpNodes is nil", v28, 2u);
    MEMORY[0x1D38A3520](v28, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  sub_1D27642FC(a3, a4, a5);
}

uint64_t sub_1D277358C(int a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v37 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v38);
  if (v40)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v14 = a3;
    sub_1D2870F78();
    sub_1D2758D34(&v38);
    v15 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1D22BD238(&v41, &qword_1EC6E1790);
    v38 = 0u;
    v39 = 0u;
    goto LABEL_8;
  }

  sub_1D227268C(&v38, &v41);
  v18 = a3;
  sub_1D2870F78();
  v15 = *(&v42 + 1);
  if (!*(&v42 + 1))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = v43;
  __swift_project_boxed_opaque_existential_1(&v41, v15);
  (*(v16 + 24))(&v38, 6400, v15, v16);
  __swift_destroy_boxed_opaque_existential_0(&v41);
  if (!*(&v39 + 1))
  {
LABEL_8:
    sub_1D22BD238(&v38, &qword_1EC6E1900);
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    v17 = *&v41;
    goto LABEL_10;
  }

LABEL_9:
  v17 = 0.0;
LABEL_10:
  v19 = floorf(v17 * 10.0) / 10.0;
  if (v19 < 0.4 || v19 >= 1.0)
  {
    sub_1D2781464(a3, a4, a5 & 1);
  }

  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {

LABEL_20:
    sub_1D2758CD8(a2 + v13, &v38);
    if (v40)
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      sub_1D2758D34(&v38);
      if (*(&v42 + 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D227268C(&v38, &v41);
      if (*(&v42 + 1))
      {
LABEL_22:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          sub_1D2753D54();
        }

        goto LABEL_26;
      }
    }

    sub_1D22BD238(&v41, &qword_1EC6E1790);
    goto LABEL_26;
  }

  v21 = sub_1D2879618();

  if (v21)
  {
    goto LABEL_20;
  }

LABEL_26:
  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratedTask;
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratedTask))
  {
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1D2776074;
    *(v23 + 24) = v12;
    v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_delayedGeneratedCompletions;
    swift_beginAccess();
    v25 = *(a2 + v24);
    sub_1D2870F78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_1D27CDB44(0, v25[2] + 1, 1, v25);
      *(a2 + v24) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_1D27CDB44((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    v29 = &v25[2 * v28];
    v29[4] = sub_1D27763FC;
    v29[5] = v23;
    *(a2 + v24) = v25;
    swift_endAccess();
  }

  else
  {
    v31 = sub_1D28785F8();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D2878568();
    sub_1D2870F78();
    sub_1D2870F78();
    v33 = sub_1D2878558();
    v34 = swift_allocObject();
    v35 = MEMORY[0x1E69E85E0];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    *(v34 + 32) = v32;
    *(v34 + 40) = v17;
    *(v34 + 44) = v37 & 1;
    *(v34 + 48) = sub_1D2776074;
    *(v34 + 56) = v12;

    *(a2 + v22) = sub_1D22AE01C(0, 0, v11, &unk_1D28A4990, v34);
  }
}

uint64_t sub_1D2773AF0(int a1, int a2, int a3, char *a4, uint64_t a5, void *a6)
{
  v77 = a2;
  LODWORD(v78) = a3;
  v79 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v72 - v10;
  v76 = sub_1D2871818();
  v11 = *(v76 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v76);
  v74 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v75 = &v72 - v14;
  v15 = sub_1D2873CB8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;
  v80 = v19;
  v20 = a4;
  v72 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
  sub_1D2758CD8(&a4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController], &v83);
  if (v87)
  {
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    v21 = a6;
    sub_1D2870F78();
    sub_1D2758D34(&v83);
    if (*(&v90 + 1))
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D227268C(&v83, &v89);
    v46 = a6;
    sub_1D2870F78();
    if (*(&v90 + 1))
    {
LABEL_3:
      sub_1D227268C(&v89, v92);
      v22 = 0.0;
      v23 = 0.0;
      if (v79)
      {
        v24 = v11;
        v26 = v93;
        v25 = v94;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v27 = *(v25 + 64);
        v28 = v25;
        v11 = v24;
        v23 = 1.0;
        if (v27(v26, v28))
        {
          v22 = 1.0;
        }

        else
        {
          v22 = 0.0;
        }
      }

      v29 = &a4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility];
      if ((a4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingVisibility + 4] & 1) == 0 && *v29 == v23 && (a4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget + 4] & 1) == 0 && *&a4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget] == v22)
      {
        goto LABEL_39;
      }

      if (v77)
      {
        v30 = 1.0;
      }

      else
      {
        v30 = v23;
      }

      sub_1D22D7044(v92, &v89);
      sub_1D22D7044(v92, v88);
      if ((v78 & 1) == 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v88);
        sub_1D276826C(&v89, v79 & 1, v30, v22);
        __swift_destroy_boxed_opaque_existential_0(&v89);
        sub_1D2767698(a5, a6);
LABEL_39:
        __swift_destroy_boxed_opaque_existential_0(v92);
      }

      __swift_destroy_boxed_opaque_existential_0(&v89);
      v31 = v75;
      sub_1D2871808();
      *v29 = v23;
      *(v29 + 4) = 0;
      v32 = &a4[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isAnimatingBlobToPictureTarget];
      *v32 = v22;
      *(v32 + 4) = 0;
      v33 = v11;
      v34 = *(v11 + 16);
      v35 = v73;
      v36 = v76;
      v34(v73, v31, v76);
      (*(v33 + 56))(v35, 0, 1, v36);
      v37 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_currentAnimatingVisibilityUUID;
      swift_beginAccess();
      sub_1D27745CC(v35, &v20[v37]);
      swift_endAccess();
      v38 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration;
      v39 = *&v20[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToImageDuration];
      v40 = v74;
      v34(v74, v31, v36);
      v41 = (*(v33 + 80) + 16) & ~*(v33 + 80);
      v42 = (v12 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      v78 = v33;
      (*(v33 + 32))(v43 + v41, v40, v36);
      *(v43 + v42) = v20;
      v44 = (v43 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8));
      v45 = v80;
      *v44 = sub_1D27745C4;
      v44[1] = v45;
      if (v20[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] && v20[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType] != 1)
      {
        v51 = v20;
        sub_1D2870F78();
      }

      else
      {
        v42 = sub_1D2879618();
        v50 = v20;
        sub_1D2870F78();

        if ((v42 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      sub_1D2758CD8(&v20[v72], &v83);
      if (v87)
      {
        sub_1D2758D34(&v83);
      }

      else
      {
        sub_1D227268C(&v83, v82);
        sub_1D22D7044(v82, &v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F0);
        type metadata accessor for VisualEffectRENodes();
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(v88);
          v42 = v81;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E18F8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D287F550;
          *(inited + 32) = 9472;
          *(inited + 36) = v30;
          *(inited + 40) = 7936;
          *(inited + 44) = v22;
          v53 = sub_1D25D6C04(inited);
          swift_setDeallocating();
          if (v79)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v83 = v53;
            sub_1D24EA42C(6656, isUniquelyReferenced_nonNull_native, 0.0);
            v53 = v83;
          }

          v55 = sub_1D24171A8(v53);

          sub_1D2753044(v55, 0, 1, 0, v39);

          type metadata accessor for VisualEffectRENodes.VisualEffectAnimationClosure();
          v56 = swift_allocObject();
          *(v56 + 32) = 0;
          *(v56 + 40) = 0;
          *(v56 + 48) = 1;
          v57 = 1.0 / v39;
          *(v56 + 64) = 0;
          *(v56 + 72) = 0;
          *(v56 + 52) = v57;
          *(v56 + 56) = 0;
          *(v56 + 16) = sub_1D277463C;
          *(v56 + 24) = v43;
          swift_beginAccess();
          v58 = sub_1D2870F78();
          MEMORY[0x1D38A0E30](v58);
          if (*((*(v42 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v42 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_32;
          }

          goto LABEL_42;
        }

        __swift_destroy_boxed_opaque_existential_0(v82);
      }

LABEL_34:
      v39 = *&v20[v38];
      v59 = *&v20[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        sub_1D2870F78();
        goto LABEL_38;
      }

      v61 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v62 = __CFADD__(v61, 1);
      v63 = v61 + 1;
      if (!v62)
      {
        *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v63;
        sub_1D2870F78();
        sub_1D277A35C();
        swift_unknownObjectRelease();
LABEL_38:
        v64 = *MEMORY[0x1E6979EB8];
        v65 = swift_allocObject();
        swift_unknownObjectWeakLoadStrong();
        *(v65 + 24) = *(v59 + 24);
        swift_unknownObjectWeakInit();
        swift_unknownObjectRelease();
        v66 = swift_allocObject();
        v66[2] = v65;
        v66[3] = sub_1D277463C;
        v66[4] = v43;
        v67 = objc_opt_self();
        sub_1D2870F78();
        sub_1D2870F78();
        v68 = [v67 functionWithName_];
        v69 = objc_opt_self();
        [v69 begin];
        v86 = sub_1D2776400;
        v87 = v66;
        *&v83 = MEMORY[0x1E69E9820];
        *(&v83 + 1) = 1107296256;
        v84 = sub_1D23DFBA8;
        v85 = &block_descriptor_48;
        v70 = _Block_copy(&v83);
        sub_1D2870F78();

        [v69 setCompletionBlock_];
        _Block_release(v70);
        [v69 setAnimationDuration_];
        [v69 setAnimationTimingFunction_];
        sub_1D276826C(v88, v79 & 1, v30, v22);
        __swift_destroy_boxed_opaque_existential_0(v88);
        [v69 commit];

        (*(v78 + 8))(v75, v76);

        goto LABEL_39;
      }

      __break(1u);
LABEL_42:
      sub_1D2878428();
LABEL_32:
      sub_1D2878488();
      swift_endAccess();
      sub_1D2760BB8(v42, 0, 1, v39);

      __swift_destroy_boxed_opaque_existential_0(v82);
      (*(v78 + 8))(v75, v76);
      goto LABEL_39;
    }
  }

  sub_1D22BD238(&v89, &qword_1EC6E1790);
  sub_1D2872668();
  v47 = sub_1D2873CA8();
  v48 = sub_1D2878A18();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_1D226E000, v47, v48, "gpNodes is nil", v49, 2u);
    MEMORY[0x1D38A3520](v49, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
}

uint64_t sub_1D27745CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2774678(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BDFF8;

  return sub_1D27633B0(v8, a1, v4, v5, v6, v7, v10, v9);
}

uint64_t sub_1D27747A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BDFF8;

  return sub_1D2764004(v7, a1, v4, v5, v6, v8, v10, v9);
}

uint64_t sub_1D2774888()
{
  v1 = *(v0 + 16);
  result = sub_1D28786D8();
  if ((result & 1) == 0)
  {
    return v1();
  }

  return result;
}

void sub_1D27748FC()
{
  v1 = *(sub_1D2871988() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v0 + ((v5 + 43) & 0xFFFFFFFFFFFFFFF8));

  sub_1D276D59C(v7, v11, v0 + v2, v6, v9, v10, (v0 + v5));
}

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

void sub_1D2774A1C(double a1, double a2)
{
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2758CD8(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v41);
  if (v43 == 1)
  {
    v10 = v41[0];
    v9 = v41[1];
    v11 = v41[2];
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_didBegin) = 1;
    Current = CFAbsoluteTimeGetCurrent();
    v13 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_pathStartTime;
    *v13 = Current;
    *(v13 + 8) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
      v16 = __CFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        __break(1u);
        return;
      }

      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v17;
      sub_1D277A35C();
      swift_unknownObjectRelease();
    }

    v18 = objc_opt_self();
    [v18 begin];
    sub_1D274AE70(v9);
    [v18 setAnimationDuration_];
    v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPathPoints;
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPathPoints) = MEMORY[0x1E69E7CC0];

    v20 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_wandPoint;
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 0;
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldDispatchWand) = 1;
    v21 = *(v2 + v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v19) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1D27CDB58(0, *(v21 + 2) + 1, 1, v21);
      *(v2 + v19) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1D27CDB58((v23 > 1), v24 + 1, 1, v21);
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[16 * v24];
    *(v25 + 4) = a1;
    *(v25 + 5) = a2;
    *(v2 + v19) = v21;
    v26 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
    if (v26)
    {
      v27 = [v26 rootNode];
      v28 = sub_1D2878068();
      v29 = [v27 childNodeWithName_];

      v30 = [v29 camera];
      if (v30)
      {
        [v30 setFillMode_];
      }
    }

    v31 = MEMORY[0x1E69E6448];
    v42 = MEMORY[0x1E69E6448];
    LODWORD(v41[0]) = 1065353216;
    v32 = v10;
    sub_1D2777178(v41, 0xD000000000000017, 0x80000001D28AF030, 0);

    __swift_destroy_boxed_opaque_existential_0(v41);
    v42 = v31;
    LODWORD(v41[0]) = 1065353216;
    v33 = v32;
    sub_1D2777178(v41, 0xD00000000000001ALL, 0x80000001D28AF010, 0);

    __swift_destroy_boxed_opaque_existential_0(v41);
    v42 = v31;
    LODWORD(v41[0]) = 0;
    v34 = v33;
    sub_1D2777178(v41, 0xD000000000000016, 0x80000001D28AEA90, 0);

    __swift_destroy_boxed_opaque_existential_0(v41);
    v42 = v31;
    LODWORD(v41[0]) = 0;
    v35 = v9;
    sub_1D2777178(v41, 0xD000000000000012, 0x80000001D28AF0A0, 0);

    __swift_destroy_boxed_opaque_existential_0(v41);
    v42 = v31;
    LODWORD(v41[0]) = 0;
    v36 = v34;
    sub_1D2777178(v41, 0xD00000000000001ALL, 0x80000001D28AEAB0, 0);

    __swift_destroy_boxed_opaque_existential_0(v41);
    v42 = v31;
    LODWORD(v41[0]) = 0;
    v37 = v36;
    sub_1D2777178(v41, 0xD00000000000001CLL, 0x80000001D28AF050, 0);

    __swift_destroy_boxed_opaque_existential_0(v41);
    [v18 commit];
  }

  else
  {
    sub_1D2758D34(v41);
    sub_1D2872668();
    v38 = sub_1D2873CA8();
    v39 = sub_1D2878A18();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_1D226E000, v38, v39, "wandNodes is nil", v40, 2u);
      MEMORY[0x1D38A3520](v40, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

BOOL sub_1D2774F5C(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = -v2;
    v4 = (a1 + 40);
    v5 = 0.0;
    v6 = 1;
    do
    {
      if (v3 + v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v5 = v5 + *(v4 - 1) * *(a1 + 32 + 16 * v7 + 8) * 0.5 - *v4 * *(a1 + 32 + 16 * v7) * 0.5;
      ++v6;
      v4 += 2;
    }

    while (v3 + v6 != 1);
    if (a2)
    {
      return v5 < 0.0;
    }
  }

  else
  {
    v5 = 0.0;
    if (a2)
    {
      return v5 < 0.0;
    }
  }

  return v5 > 0.0;
}

double sub_1D2774FE0(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    v5 = 0.0;
    v6 = 1;
    do
    {
      if (v6 < v3)
      {
        v7 = vsubq_f64(*v4, v4[-1]);
        v5 = v5 + sqrt(vaddvq_f64(vmulq_f64(v7, v7)));
      }

      ++v6;
      ++v4;
    }

    while (v6 - v3 != 1);
  }

  else
  {
    v5 = 0.0;
  }

  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  Width = CGRectGetWidth(v19);
  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  return v5 / (Width + CGRectGetHeight(v20)) / a2 / 2.5 * 15.0;
}

uint64_t sub_1D2775104(char a1)
{
  v1 = MEMORY[0x1E69E6448];
  v6 = MEMORY[0x1E69E6448];
  v5[0] = 1065353216;
  if (a1)
  {
    v2 = 0x80000001D28AF010;
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    sub_1D2777178(v5, 0xD000000000000017, 0x80000001D28AF030, 0);
    __swift_destroy_boxed_opaque_existential_0(v5);
    v6 = v1;
    v5[0] = 1065353216;
    v3 = 0xD000000000000016;
    v2 = 0x80000001D28AEA90;
  }

  sub_1D2777178(v5, v3, v2, 0);
  __swift_destroy_boxed_opaque_existential_0(v5);
  v6 = v1;
  v5[0] = 0;
  sub_1D2777178(v5, 0xD00000000000001ALL, 0x80000001D28AEAB0, 0);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_1D277520C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v10 = sub_1D25D0574(a1), (v11 & 1) != 0))
  {
    v12 = (*(a2 + 56) + 32 * v10);
    v13 = *v12;
    v23 = v12[1];
    v24 = v13;
    v14 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1D27CDC5C(0, *(v14 + 16) + 1, 1, v14);
      v14 = result;
      *a3 = result;
    }

    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v17 >= v16 >> 1)
    {
      result = sub_1D27CDC5C((v16 > 1), v17 + 1, 1, v14);
      v14 = result;
      *a3 = result;
    }

    *(v14 + 16) = v17 + 1;
    v18 = v14 + 32 * v17;
    v19 = v23;
    *(v18 + 32) = v24;
    *(v18 + 48) = v19;
  }

  else
  {
    sub_1D2872668();
    v20 = sub_1D2873CA8();
    v21 = sub_1D2878A18();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = a1;
      _os_log_impl(&dword_1D226E000, v20, v21, "Did not found any color at vfxIndex %ld", v22, 0xCu);
      MEMORY[0x1D38A3520](v22, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

void sub_1D277540C(uint64_t a1, double a2)
{
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = (a1 + 1) * a2;
    sub_1D2876FE8();
    sub_1D2876FE8();
    sub_1D2876FF8();
    fmod(v2 * 57.2957795, 360.0);
  }
}

uint64_t sub_1D27754E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttractorsMapper();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2775544(uint64_t a1)
{
  v2 = type metadata accessor for AttractorsMapper();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D27755B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 44);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BDFF8;

  return sub_1D2764168(v7, a1, v4, v5, v6, v8, v10, v9);
}

void sub_1D27756A4(double a1)
{
  v2 = v1;
  v4 = sub_1D2877B48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2877B68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  if ((v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldReadColors] & 1) == 0 || (v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxThreadStorage + 8] & 1) == 0 && *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxThreadStorage + 16] >= a1 - *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxThreadStorage])
  {
LABEL_22:
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxShouldDispatchWand))
    {
      sub_1D22BCFD0(0, &qword_1ED89CD50);
      v47 = v2;
      v48 = sub_1D2878AB8();
      v49 = swift_allocObject();
      *(v49 + 16) = v47;
      v69 = sub_1D2775DA0;
      v70 = v49;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v67 = sub_1D23DFBA8;
      v68 = &block_descriptor_253;
      v50 = _Block_copy(&aBlock);
      v51 = v47;
      sub_1D2877B58();
      *&v64 = MEMORY[0x1E69E7CC0];
      sub_1D2775F90(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
      sub_1D22D5EFC();
      sub_1D2879088();
      MEMORY[0x1D38A1540](0, v11, v7, v50);
      _Block_release(v50);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
    }

    return;
  }

  v52 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxThreadStorage];
  v53 = &v52 - v13;
  v55 = v11;
  v56 = v9;
  v57 = v7;
  v58 = v8;
  v59 = v5;
  v60 = v4;
  v54 = v1;
  v14 = &v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxAttractorNodes];
  os_unfair_lock_lock(&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_vfxAttractorNodes]);
  v15 = *(v14 + 1);
  sub_1D2870F68();
  os_unfair_lock_unlock(v14);
  v16 = sub_1D25DAE08(MEMORY[0x1E69E7CC0]);
  v17 = 0;
  v61 = v15 & 0xC000000000000001;
  while (v61)
  {
    v19 = MEMORY[0x1D38A1C30](v17, v15);
LABEL_10:
    v20 = v19;
    sub_1D2777570(0x6F74636172747461, 0xEE00726F6C6F4372, &v64);
    if (!v65)
    {
      goto LABEL_28;
    }

    sub_1D23C3FAC(&v64, &aBlock);
    sub_1D22BCFD0(0, &qword_1ED89CC90);
    swift_dynamicCast();
    v21 = v63;
    [v63 VFXFloat3Value];
    v62 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v16;
    v25 = sub_1D25D0574(v17);
    v26 = v16[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_26;
    }

    v29 = v24;
    if (v16[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D24EFDF4();
      }
    }

    else
    {
      sub_1D24E6754(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_1D25D0574(v17);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_29;
      }

      v25 = v30;
    }

    v32 = *&v62 * 0.7;
    v33 = *(&v62 + 1) * 0.7;
    v34 = *(&v62 + 2) * 0.7;
    v16 = aBlock;
    if (v29)
    {
      v18 = *(aBlock + 56) + 32 * v25;
      *v18 = v32;
      *(v18 + 8) = v33;
      *(v18 + 16) = v34;
      *(v18 + 24) = 0x3FD999999999999ALL;
    }

    else
    {
      *(aBlock + 8 * (v25 >> 6) + 64) |= 1 << v25;
      *(v16[6] + 8 * v25) = v17;
      v35 = v16[7] + 32 * v25;
      *v35 = v32;
      *(v35 + 8) = v33;
      *(v35 + 16) = v34;
      *(v35 + 24) = 0x3FD999999999999ALL;

      v36 = v16[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_27;
      }

      v16[2] = v38;
    }

    if (++v17 == 8)
    {

      v39 = v52;
      *v52 = a1;
      *(v39 + 8) = 0;
      v40 = sub_1D28785F8();
      v41 = v53;
      (*(*(v40 - 8) + 56))(v53, 1, 1, v40);
      sub_1D2878568();
      v42 = v54;
      v43 = v54;
      v44 = sub_1D2878558();
      v45 = swift_allocObject();
      v46 = MEMORY[0x1E69E85E0];
      v45[2] = v44;
      v45[3] = v46;
      v45[4] = v43;
      v45[5] = v16;
      v2 = v42;
      sub_1D22AE01C(0, 0, v41, &unk_1D28A48A0, v45);

      v5 = v59;
      v4 = v60;
      v7 = v57;
      v8 = v58;
      v9 = v56;
      v11 = v55;
      goto LABEL_22;
    }
  }

  if (v17 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v15 + 8 * v17 + 32);
    goto LABEL_10;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1D28796E8();
  __break(1u);
}

uint64_t sub_1D2775DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D22BDFF8;

  return sub_1D276E8A8(a1, v4, v5, v7, v6);
}

unint64_t sub_1D2775E68()
{
  result = qword_1EC6E1940;
  if (!qword_1EC6E1940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1940);
  }

  return result;
}

uint64_t sub_1D2775EBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2775F2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttractorsMapper();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2775F90(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2776020()
{
  result = qword_1EC6E1960;
  if (!qword_1EC6E1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E1960);
  }

  return result;
}

uint64_t objectdestroy_186Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D27760C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 44);
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BC8FC;

  return sub_1D2764168(v7, a1, v4, v5, v6, v8, v10, v9);
}

uint64_t objectdestroy_40Tm()
{
  v1 = sub_1D2871818();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2776258()
{
  v1 = *(sub_1D2871818() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1D2768370(v0 + v2, v4, v6, v7);
}

uint64_t objectdestroy_44Tm()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t type metadata accessor for AttractorsMapper()
{
  result = qword_1ED8A3688;
  if (!qword_1ED8A3688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2776478()
{
  sub_1D27764FC();
  if (v0 <= 0x3F)
  {
    sub_1D2871988();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D27764FC()
{
  if (!qword_1ED89CE88)
  {
    v0 = sub_1D28784C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89CE88);
    }
  }
}

uint64_t sub_1D277654C@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_1D2871988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  sub_1D2871978();
  v26 = v1;
  v17 = *(*v1 + 16);
  if (v17)
  {
    v18 = *v1 + 32;
    do
    {
      v18 += 8;
      sub_1D2871958();
      --v17;
    }

    while (v17);
  }

  v19 = *(type metadata accessor for AttractorsMapper() + 20);
  v20 = *(v3 + 16);
  v21 = v26;
  v20(v13, (v26 + v19), v2);
  v20(v7, (v21 + v19), v2);
  v20(v25, v16, v2);
  sub_1D2776788();
  sub_1D2879048();
  sub_1D2879038();
  v22 = *(v3 + 8);
  v22(v10, v2);
  return (v22)(v16, v2);
}

unint64_t sub_1D2776788()
{
  result = qword_1ED8A6C48;
  if (!qword_1ED8A6C48)
  {
    sub_1D2871988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A6C48);
  }

  return result;
}

uint64_t sub_1D2776800()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D28838F0;
  v2 = *MEMORY[0x1E696E100];
  *(inited + 32) = *MEMORY[0x1E696E100];
  type metadata accessor for CGImage(0);
  v3 = v2;
  result = sub_1D2878918();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = MEMORY[0x1E69E6530];
  v7 = *(v0 + 168);
  *(inited + 40) = v5;
  v8 = *MEMORY[0x1E696DFE8];
  *(inited + 64) = v6;
  *(inited + 72) = v8;
  v9 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E696E000];
  *(inited + 80) = 1;
  v11 = *v10;
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  *(inited + 144) = v9;
  *(inited + 120) = 1;
  v12 = v8;
  v13 = v11;
  sub_1D25D8A8C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DED20);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_1D27769D8();
  v14 = sub_1D2877E78();

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v7, 0, v14);

  v16 = *(v0 + 8);

  return v16(ThumbnailAtIndex);
}

unint64_t sub_1D27769D8()
{
  result = qword_1EC6D7570;
  if (!qword_1EC6D7570)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7570);
  }

  return result;
}

uint64_t sub_1D2776A30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2776A50(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_1D2776A98()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v5 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  v10 = CGRectGetWidth(v17) / v6;
  v18.origin.x = v5;
  v18.origin.y = v7;
  v18.size.width = v8;
  v18.size.height = v9;
  v11 = CGRectGetHeight(v18) / v6;
  sub_1D2872668();
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A08();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218496;
    *(v14 + 4) = v10;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v11;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v6;
    _os_log_impl(&dword_1D226E000, v12, v13, "EffectPosition normalizedDimensionsValue -  normalizedWidth: %f - normalizedHeight: %f - sizeDivisor: %f", v14, 0x20u);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  result = sub_1D2778FAC(0x7A696C616D726F6ELL, 0xEF68746469576465, v10);
  if (result)
  {
    return sub_1D2778FAC(0x7A696C616D726F6ELL, 0xEF68746469576465, v11);
  }

  return result;
}

id sub_1D2776CA8()
{
  v1 = v0[1].f64[0];
  v2 = v0[1].f64[1];
  v3 = v0[2].f64[0];
  v4 = v0[2].f64[1];
  v21.origin.x = v1;
  v21.origin.y = v2;
  v21.size.width = v3;
  v21.size.height = v4;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v1;
  v22.origin.y = v2;
  v22.size.width = v3;
  v22.size.height = v4;
  MidY = CGRectGetMidY(v22);
  __asm { FMOV            V2.2D, #0.5 }

  v11 = vmulq_f64(*v0, _Q2);
  _Q2.f64[0] = MidX;
  _Q2.f64[1] = MidY;
  v19 = vdivq_f64(vsubq_f64(_Q2, v11), v11);
  v12 = 0.0;
  if (sub_1D2779294(0x7A696C616D726F6ELL, 0xEB00000000586465, v19.f64[0]))
  {
    v13 = sub_1D2779294(0x7A696C616D726F6ELL, 0xEB00000000596465, v19.f64[1]);
    v14 = vcvt_f32_f64(v19);
    if (v13)
    {
      v15 = -1;
    }

    else
    {
      v15 = 0;
    }

    v12 = COERCE_DOUBLE(vand_s8(v14, vdup_n_s32(v15)));
  }

  v16 = [objc_opt_self() valueWithVFXFloat2_];

  return v16;
}

uint64_t sub_1D2776DC4()
{
  sub_1D2879168();

  v0 = sub_1D2878CB8();
  MEMORY[0x1D38A0C50](v0);

  MEMORY[0x1D38A0C50](0xD000000000000011, 0x80000001D28C1E60);
  v1 = sub_1D2878CA8();
  MEMORY[0x1D38A0C50](v1);

  return 0x657A695377656976;
}

void sub_1D2776E90(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, CGFloat a4@<D2>, CGFloat a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>)
{
  v35 = a2;
  v36 = a3;
  v12 = sub_1D2873CB8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v16 == 0.0 && v35.n128_f64[0] == 0.0;
  v18 = 0uLL;
  v19 = 0uLL;
  v20 = 0uLL;
  if (!v17)
  {
    CGAffineTransformMakeScale(&v38, 1.0, -1.0);
    CGAffineTransformTranslate(&v37, &v38, 0.0, -v36.n128_f64[0]);
    v38 = v37;
    v39.origin.x = a4;
    v39.origin.y = a5;
    v39.size.width = a6;
    v39.size.height = a7;
    v40 = CGRectApplyAffineTransform(v39, &v38);
    origin = v40.origin;
    v31 = *&v40.origin.y;
    size = v40.size;
    v32 = *&v40.size.height;
    sub_1D2872668();
    v21 = sub_1D2873CA8();
    v22 = sub_1D2878A08();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = v12;
      v24 = v23;
      v25 = COERCE_DOUBLE(swift_slowAlloc());
      v38.a = v25;
      *v24 = 136315138;
      v26 = sub_1D2878CA8();
      v28 = sub_1D23D7C84(v26, v27, &v38);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1D226E000, v21, v22, "EffectPosition init -  imageVFXRect: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(*&v25);
      MEMORY[0x1D38A3520](*&v25, -1, -1);
      MEMORY[0x1D38A3520](v24, -1, -1);

      (*(v13 + 8))(v15, v30);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    *&v18 = v35.n128_u64[0];
    *(&v18 + 1) = v36.n128_u64[0];
    *&v19 = origin.x;
    *(&v19 + 1) = v31;
    *&v20 = size.width;
    *(&v20 + 1) = v32;
  }

  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(a1 + 48) = v17;
}

uint64_t sub_1D2777178(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v34 - v15;
  v17 = [v5 graphController];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1D2878068();
    v20 = [v18 valueForKey_];

    if (v20)
    {
      sub_1D2879008();
      swift_unknownObjectRelease();
      sub_1D2777A64(&v35);
      if (a4)
      {
        v21 = objc_opt_self();
        [v21 begin];
        [v21 setAnimationDuration_];
      }

      sub_1D23C3EE4(a1, &v35);
      if (swift_dynamicCast())
      {
        v22 = v34[1];
        v23 = MEMORY[0x1E69E6448];
        *(&v36 + 1) = MEMORY[0x1E69E6448];
        *&v35 = v22;
      }

      else
      {
        sub_1D23C3EE4(a1, &v35);
        v23 = *(&v36 + 1);
      }

      __swift_project_boxed_opaque_existential_1(&v35, v23);
      v32 = sub_1D2879608();
      v33 = sub_1D2878068();
      [v18 setValue:v32 forKey:v33];
      swift_unknownObjectRelease();

      if (a4)
      {
        [objc_opt_self() commit];
      }

      return __swift_destroy_boxed_opaque_existential_0(&v35);
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      sub_1D2777A64(&v35);
      sub_1D2872668();
      sub_1D2870F68();
      v28 = sub_1D2873CA8();
      v29 = sub_1D2878A18();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v35 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_1D23D7C84(a2, a3, &v35);
        _os_log_impl(&dword_1D226E000, v28, v29, "No binding for name %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v31);
        MEMORY[0x1D38A3520](v31, -1, -1);
        MEMORY[0x1D38A3520](v30, -1, -1);
      }

      else
      {
      }

      return (*(v11 + 8))(v16, v10);
    }
  }

  else
  {
    sub_1D2872668();
    v24 = sub_1D2873CA8();
    v25 = sub_1D2878A18();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1D226E000, v24, v25, "graphController is nil", v26, 2u);
      MEMORY[0x1D38A3520](v26, -1, -1);
    }

    return (*(v11 + 8))(v14, v10);
  }
}

double sub_1D2777570@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 behaviorGraph];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 presentationObject];

    sub_1D2879008();
    swift_unknownObjectRelease();
    sub_1D2777ACC();
    if (swift_dynamicCast())
    {
      v16 = v24[1];
      v17 = sub_1D2878068();
      v18 = [v16 valueForKey_];

      if (v18)
      {
        sub_1D2879008();

        swift_unknownObjectRelease();
        return result;
      }
    }
  }

  sub_1D2872668();
  sub_1D2870F68();
  v20 = sub_1D2873CA8();
  v21 = sub_1D2878A18();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_1D23D7C84(a1, a2, v25);
    _os_log_impl(&dword_1D226E000, v20, v21, "No binding for name %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x1D38A3520](v23, -1, -1);
    MEMORY[0x1D38A3520](v22, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

uint64_t sub_1D2777800(uint64_t a1, uint64_t a2, void (*a3)(void), double a4)
{
  v8 = sub_1D2877498();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  [v12 begin];
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_43;
  v13 = _Block_copy(aBlock);
  sub_1D2870F78();

  [v12 setCompletionBlock_];
  _Block_release(v13);
  sub_1D2877478();
  sub_1D2877458();
  v15 = v14;
  sub_1D2877488();
  v17 = v16;
  sub_1D2877468();
  v19 = v18;
  [v12 setDuration_];
  v20 = objc_opt_self();
  *&a4 = v15;
  LODWORD(v21) = LODWORD(a4);
  *&v15 = v17;
  LODWORD(v22) = LODWORD(v15);
  *&v17 = v19;
  LODWORD(v23) = LODWORD(v17);
  v24 = [v20 functionWithMass:v21 stiffness:v22 damping:v23 initialVelocity:0.0];
  [v12 setTimingFunction_];

  a3();
  [v12 commit];
  return (*(v9 + 8))(v11, v8);
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2777A64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2777ACC()
{
  result = qword_1ED89CD78;
  if (!qword_1ED89CD78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED89CD78);
  }

  return result;
}

double sub_1D2777B18(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D2871F78())
  {
    v10 = sub_1D2778284();
  }

  else
  {
    v10 = sub_1D2778380();
  }

  v11 = v10;
  v12 = sub_1D277847C();
  v13 = COERCE_DOUBLE(sub_1D2778950(v11, 2.0));
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    v12 = v13;
  }

  sub_1D2872668();
  (*(v3 + 16))(v5, a1, v2);
  v16 = sub_1D2873CA8();
  v17 = sub_1D2878A38();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v6;
    v29 = v19;
    v20 = v19;
    *v18 = 134218242;
    *(v18 + 4) = v12;
    *(v18 + 12) = 2080;
    v21 = sub_1D24DC8F0();
    v22 = v2;
    v23 = v7;
    v25 = v24;
    (*(v3 + 8))(v5, v22);
    v26 = sub_1D23D7C84(v21, v25, &v29);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_1D226E000, v16, v17, "Estimating generation latency: %f for style: %s", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x1D38A3520](v20, -1, -1);
    MEMORY[0x1D38A3520](v18, -1, -1);

    (*(v23 + 8))(v9, v28);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  return v12;
}

void sub_1D2777E30(uint64_t a1, double a2)
{
  v5 = sub_1D2872008();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2873CB8();
  v32 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872668();
  (*(v6 + 16))(v8, a1, v5);
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A38();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = a1;
    v17 = v16;
    v33 = v16;
    *v15 = 134218242;
    *(v15 + 4) = a2;
    *(v15 + 12) = 2080;
    v18 = sub_1D24DC8F0();
    v29 = v9;
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = sub_1D23D7C84(v18, v20, &v33);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1D226E000, v12, v13, "Logging generation latency: %f for style: %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1D38A3520](v17, -1, -1);
    MEMORY[0x1D38A3520](v15, -1, -1);

    (*(v32 + 8))(v11, v29);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    (*(v32 + 8))(v11, v9);
  }

  if (sub_1D2871F78())
  {
    v22 = sub_1D2778284();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1D27CCF3C(0, *(v22 + 16) + 1, 1, v22);
    }

    v24 = *(v22 + 16);
    v23 = *(v22 + 24);
    if (v24 >= v23 >> 1)
    {
      v22 = sub_1D27CCF3C((v23 > 1), v24 + 1, 1, v22);
    }

    *(v22 + 16) = v24 + 1;
    *(v22 + 8 * v24 + 32) = a2;
    sub_1D2778568(v22);
  }

  else
  {
    v25 = sub_1D2778380();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D27CCF3C(0, *(v25 + 16) + 1, 1, v25);
    }

    v27 = *(v25 + 16);
    v26 = *(v25 + 24);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1D27CCF3C((v26 > 1), v27 + 1, 1, v25);
    }

    *(v25 + 16) = v27 + 1;
    *(v25 + 8 * v27 + 32) = a2;
    sub_1D27786CC(v25);
  }
}

uint64_t sub_1D27781FC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Bubble(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D2778284()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1978);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D2777A64(v7);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2778380()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1D2879008();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1978);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D2777A64(v7);
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1D277847C()
{
  if (sub_1D2871F78())
  {
    v1 = sub_1D23C75C0()[2];
    v2 = (v1 + 48);
    v3 = *(v1 + 16) + 1;
    while (--v3)
    {
      v4 = *v2;
      if (*(v2 - 2) != 0xD000000000000018 || 0x80000001D28C1210 != *(v2 - 1))
      {
        v2 += 3;
        if ((sub_1D2879618() & 1) == 0)
        {
          continue;
        }
      }

      return v4;
    }
  }

  if (sub_1D2871F78())
  {
    return *(v0 + 72);
  }

  else
  {
    return *(v0 + 64);
  }
}

void sub_1D2778568(uint64_t a1)
{
  v4 = *(v1 + 56);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = a1;
    v3 = *(a1 + 16);
    v5 = v3 >= v4;
    v6 = v3 - v4;
    if (v5)
    {
      v2 = v6;
    }

    else
    {
      v2 = 0;
    }

    sub_1D2879678();
    swift_unknownObjectRetain_n();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      swift_unknownObjectRelease();
      v7 = MEMORY[0x1E69E7CC0];
    }

    v8 = *(v7 + 16);

    if (v8 == v3 - v2)
    {
      v9 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v9)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  swift_unknownObjectRelease();
  sub_1D268E7F8(v1, v1 + 32, v2, (2 * v3) | 1);
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  sub_1D23B7BB8();
  v10 = sub_1D2878A58();
  v11 = sub_1D28783C8();

  v12 = sub_1D2878068();
  [v10 setValue:v11 forKey:v12];
}

void sub_1D27786CC(uint64_t a1)
{
  v5 = sub_1D2695B00(*(v1 + 56), a1);
  if (v4)
  {
    v6 = v4;
    v7 = v3;
    v8 = v2;
    sub_1D2879678();
    swift_unknownObjectRetain_n();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
      v9 = MEMORY[0x1E69E7CC0];
    }

    v10 = *(v9 + 16);

    if (__OFSUB__(v6 >> 1, v7))
    {
      __break(1u);
    }

    else if (v10 == (v6 >> 1) - v7)
    {
      v11 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v11)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    swift_unknownObjectRelease();
    v4 = v6;
    v3 = v7;
    v2 = v8;
  }

  sub_1D268E7F8(v5, v2, v3, v4);
LABEL_8:
  swift_unknownObjectRelease();
LABEL_9:
  sub_1D23B7BB8();
  v12 = sub_1D2878A58();
  v13 = sub_1D28783C8();

  v14 = sub_1D2878068();
  [v12 setValue:v13 forKey:v14];
}

uint64_t sub_1D2778840()
{

  return swift_deallocClassInstance();
}

double sub_1D27788C8@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 32) = 0x80000001D28B3020;
  *(v4 + 40) = 0xD000000000000022;
  *(v4 + 48) = 0x80000001D28B3040;
  *(v4 + 56) = 5;
  result = 5.0;
  *(v4 + 64) = xmmword_1D28848D0;
  *(v4 + 16) = a1;
  *(v4 + 24) = 0xD00000000000001DLL;
  *a2 = v4;
  return result;
}

uint64_t sub_1D2778950(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_32;
  }

  v4 = (a1 + 32);
  if (v2 >= 4)
  {
    v5 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    v7 = (a1 + 48);
    v6 = 0.0;
    v8 = v2 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v6 = v6 + *(v7 - 2) + *(v7 - 1) + *v7 + v7[1];
      v7 += 4;
      v8 -= 4;
    }

    while (v8);
    if (v2 == v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0.0;
  }

  v9 = v2 - v5;
  v10 = (a1 + 8 * v5 + 32);
  do
  {
    v11 = *v10++;
    v6 = v6 + v11;
    --v9;
  }

  while (v9);
LABEL_9:
  v12 = v6 / v2;
  v43 = MEMORY[0x1E69E7CC0];
  sub_1D23D8508(0, v2, 0);
  v13 = v43;
  v14 = *(v43 + 16);
  v15 = v4;
  v16 = v2;
  v17 = v14;
  do
  {
    v18 = *v15;
    v44 = v13;
    v19 = *(v13 + 24);
    v20 = v17 + 1;
    if (v17 >= v19 >> 1)
    {
      sub_1D23D8508((v19 > 1), v17 + 1, 1);
      v13 = v44;
    }

    *(v13 + 16) = v20;
    *(v13 + 8 * v17 + 32) = (v18 - v12) * (v18 - v12);
    ++v15;
    ++v17;
    --v16;
  }

  while (v16);
  v21 = v2 + v14;
  if (v2 + v14 > 3)
  {
    v22 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    v24 = (v13 + 48);
    v23 = 0.0;
    v25 = v21 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v23 = v23 + *(v24 - 2) + *(v24 - 1) + *v24 + v24[1];
      v24 += 4;
      v25 -= 4;
    }

    while (v25);
    if (v21 == v22)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v22 = 0;
    v23 = 0.0;
  }

  v26 = v20 - v22;
  v27 = (v13 + 8 * v22 + 32);
  do
  {
    v28 = *v27++;
    v23 = v23 + v28;
    --v26;
  }

  while (v26);
LABEL_20:

  v29 = sqrt(v23 / v2) * a2;
  v30 = MEMORY[0x1E69E7CC0];
  do
  {
    v33 = *v4;
    if (vabdd_f64(*v4, v12) <= v29)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D23D8508(0, *(v30 + 16) + 1, 1);
      }

      v32 = *(v30 + 16);
      v31 = *(v30 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D23D8508((v31 > 1), v32 + 1, 1);
      }

      *(v30 + 16) = v32 + 1;
      *(v30 + 8 * v32 + 32) = v33;
    }

    ++v4;
    --v2;
  }

  while (v2);
  v34 = *(v30 + 16);
  if (!v34)
  {

LABEL_32:
    *&result = 0.0;
    return result;
  }

  if (v34 > 3)
  {
    v35 = v34 & 0x7FFFFFFFFFFFFFFCLL;
    v38 = (v30 + 48);
    v36 = 0.0;
    v39 = v34 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = v36 + *(v38 - 2) + *(v38 - 1) + *v38 + v38[1];
      v38 += 4;
      v39 -= 4;
    }

    while (v39);
    if (v34 == v35)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v35 = 0;
    v36 = 0.0;
  }

  v40 = v34 - v35;
  v41 = (v30 + 8 * v35 + 32);
  do
  {
    v42 = *v41++;
    v36 = v36 + v42;
    --v40;
  }

  while (v40);
LABEL_38:

  *&result = v36 / v34;
  return result;
}

void *sub_1D2778C98(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3 || (sub_1D2396824(a1, a2) & 1) == 0 || !sub_1D2778EAC())
  {
    sub_1D2870F68();
    return v2;
  }

  v4 = sub_1D2778DF4();
  if (!v4)
  {
LABEL_13:

    return 0;
  }

  if (!*(v4 + 16))
  {

    goto LABEL_13;
  }

  result = MecabraCandidateGetSurface();
  if (result)
  {
    v6 = result;
    v2 = sub_1D28780A8();

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2778D94()
{
  if (*(v0 + 16))
  {
    MecabraRelease();
  }

  return swift_deallocClassInstance();
}

uint64_t sub_1D2778DF4()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_1D2878068();
  v2 = MecabraAnalyzeString();

  if (!v2)
  {
    return 0;
  }

  result = MecabraGetNextCandidate();
  if (result)
  {
    v4 = result;
    type metadata accessor for MecabraEngine.MecabraCandidate();
    result = swift_allocObject();
    *(result + 16) = v4;
  }

  return result;
}

uint64_t sub_1D2778EAC()
{
  v1 = *(v0 + 16);
  v2 = v1;
  if (v1 == 1)
  {
    type metadata accessor for MecabraEngine();
    v2 = swift_allocObject();
    *(v2 + 16) = MecabraCreateWithOptions();
    v3 = *(v0 + 16);
    *(v0 + 16) = v2;
    sub_1D2870F78();
    sub_1D2778F8C(v3);
  }

  sub_1D2778F9C(v1);
  return v2;
}

uint64_t sub_1D2778F30()
{
  sub_1D2778F8C(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D2778F8C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1D2778F9C(uint64_t result)
{
  if (result != 1)
  {
    return sub_1D2870F78();
  }

  return result;
}

uint64_t sub_1D2778FAC(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  if (a3 <= 0.0)
  {
    sub_1D2872668();
    sub_1D2870F68();
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A18();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1D23D7C84(a1, a2, &v23);
      *(v19 + 12) = 2048;
      *(v19 + 14) = a3;
      _os_log_impl(&dword_1D226E000, v17, v18, "%s is incorrect ('%f'). It must be more than 0 as it is a size.", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1D38A3520](v20, -1, -1);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    return 0;
  }

  if (a3 > 1.0)
  {
    sub_1D2872668();
    sub_1D2870F68();
    v13 = sub_1D2873CA8();
    v14 = sub_1D2878A18();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1D23D7C84(a1, a2, &v23);
      *(v15 + 12) = 2048;
      *(v15 + 14) = a3;
      _os_log_impl(&dword_1D226E000, v13, v14, "%s is incorrect ('%f'). It must be between less or equal to 1 as it is a normalized size.", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1D38A3520](v16, -1, -1);
      MEMORY[0x1D38A3520](v15, -1, -1);
    }

    (*(v7 + 8))(v12, v6);
    return 0;
  }

  return 1;
}

BOOL sub_1D2779294(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = fabs(a3);
  if (v10 > 1.0)
  {
    sub_1D2872668();
    sub_1D2870F68();
    v11 = sub_1D2873CA8();
    v12 = sub_1D2878A18();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1D23D7C84(a1, a2, &v17);
      *(v13 + 12) = 2048;
      *(v13 + 14) = a3;
      _os_log_impl(&dword_1D226E000, v11, v12, "%s is incorrect ('%f'). It must be between -1 and 1 as it is a normalized position.", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x1D38A3520](v14, -1, -1);
      MEMORY[0x1D38A3520](v13, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }

  return v10 <= 1.0;
}

uint64_t sub_1D2779474(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2875628();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_coveredByContent) = *(v2 + 27);
  sub_1D277A35C();
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedBySettings) = *(v2 + 24);
  sub_1D277A35C();
  v8 = v2 + *(type metadata accessor for VisualEffectViewRepresentable() + 48);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v10 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v9, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v9) = v13[15];
  }

  v11 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_reduceMotion);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_reduceMotion) = v9 & 1;
  if ((v9 & 1) != v11)
  {
    sub_1D277B5E0();
  }

  *(*v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_areAttractorsEnabled) = *(v2 + 26);
  return sub_1D2760488();
}

void *sub_1D277963C()
{
  v0 = sub_1D2874438();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  sub_1D24CC0E8(&v9 - v5);
  (*(v1 + 104))(v3, *MEMORY[0x1E697DBB8], v0);
  sub_1D2874428();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v7(v6, v0);
  return sub_1D277CB00();
}

uint64_t sub_1D27797D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D277CAB8(&qword_1ED89F080, type metadata accessor for VisualEffectViewRepresentable);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D2779868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D277CAB8(&qword_1ED89F080, type metadata accessor for VisualEffectViewRepresentable);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D27798FC()
{
  sub_1D277CAB8(&qword_1ED89F080, type metadata accessor for VisualEffectViewRepresentable);
  sub_1D2875A98();
  __break(1u);
}

void *sub_1D2779954(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = [objc_allocWithZone(MEMORY[0x1E695DFF0]) init];
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x1E69DE338];
  v31 = a1;
  v8 = [v31 window];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 windowScene];

    if (v10)
    {
      aBlock = v10;
      sub_1D22BCFD0(0, &unk_1ED89CDA8);
      v10 = sub_1D2879608();
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  v36 = sub_1D277BD88;
  v37 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D2745810;
  v35 = &block_descriptor_44;
  v12 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();

  v13 = [v6 addObserverForName:v7 object:v10 queue:0 usingBlock:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
  v2[2] = v13;
  v14 = *MEMORY[0x1E69DE358];
  v15 = [v31 window];

  if (v15)
  {
    v16 = [v15 windowScene];

    if (v16)
    {
      aBlock = v16;
      sub_1D22BCFD0(0, &unk_1ED89CDA8);
      v15 = sub_1D2879608();
    }

    else
    {
      v15 = 0;
    }
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  *(v17 + 24) = v4;
  v36 = sub_1D277BDA8;
  v37 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D2745810;
  v35 = &block_descriptor_20;
  v18 = _Block_copy(&aBlock);
  sub_1D2870F78();
  sub_1D2870F78();

  v19 = [v6 addObserverForName:v14 object:v15 queue:0 usingBlock:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
  v2[3] = v19;
  v20 = *MEMORY[0x1E696A7E0];
  v36 = sub_1D277BDB0;
  v37 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D2745810;
  v35 = &block_descriptor_23;
  v21 = _Block_copy(&aBlock);
  sub_1D2870F78();

  v22 = [v6 addObserverForName:v20 object:0 queue:0 usingBlock:v21];
  _Block_release(v21);
  v2[4] = v22;
  v23 = *MEMORY[0x1E6986A90];
  v36 = sub_1D277BDE8;
  v37 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D2745810;
  v35 = &block_descriptor_26_1;
  v24 = _Block_copy(&aBlock);
  sub_1D2870F78();

  v25 = [v6 addObserverForName:v23 object:0 queue:0 usingBlock:v24];
  _Block_release(v24);
  v2[5] = v25;
  v26 = *MEMORY[0x1E6986A98];
  v36 = sub_1D277BE20;
  v37 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1D2745810;
  v35 = &block_descriptor_29;
  v27 = _Block_copy(&aBlock);
  sub_1D2870F78();

  v28 = [v6 addObserverForName:v26 object:0 queue:0 usingBlock:v27];
  _Block_release(v27);
  v2[6] = v28;
  type metadata accessor for PerformanceMitigationNotifier();
  swift_allocObject();
  sub_1D2870F78();
  v29 = sub_1D27E0590(sub_1D277BE58, v4);

  v2[7] = v29;

  return v2;
}

uint64_t sub_1D2779F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 + 16;
  sub_1D2878568();
  v6[2] = a2;
  v6[3] = v4;
  return sub_1D239DDE8(sub_1D277BECC, v6);
}

void sub_1D2779FB8(uint64_t a1, id *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong window];
    if (v5 && (v6 = v5, v7 = [v5 windowScene], v6, v7))
    {
      if (![v7 activationState])
      {
        swift_beginAccess();
        [*a2 invalidate];
        v4[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_inactiveForALongTime] = 0;
        sub_1D277A35C();
      }
    }

    else
    {
      v7 = v4;
    }
  }
}

void sub_1D277A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v9[4] = sub_1D277BEA8;
  v9[5] = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D23B9478;
  v9[3] = &block_descriptor_41_0;
  v6 = _Block_copy(v9);
  sub_1D2870F78();

  v7 = [v5 scheduledTimerWithTimeInterval:0 repeats:v6 block:15.0];
  _Block_release(v6);
  swift_beginAccess();
  v8 = *(a2 + 16);
  *(a2 + 16) = v7;
}

void sub_1D277A238()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong window];
    if (v2 && (v3 = v2, v4 = [v2 windowScene], v3, v4))
    {
      if ([v4 activationState])
      {
        v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_inactiveForALongTime] = 1;
        sub_1D277A35C();
      }
    }

    else
    {
      v4 = v1;
    }
  }
}

void sub_1D277A308()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D277A35C();
  }
}

id sub_1D277A35C()
{
  if ((v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_inactiveForALongTime] & 1) == 0 && (v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_occluded] & 1) == 0 && (v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedBySettings] & 1) == 0)
  {
    if (*&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount])
    {
      v1 = 0;
LABEL_20:
      [v0 setPreferredFramesPerSecond_];
      goto LABEL_21;
    }

    v2 = [objc_opt_self() processInfo];
    v3 = [v2 thermalState];

    if (v3 > 1)
    {
      if (v3 == 2)
      {
        v1 = 20;
        goto LABEL_20;
      }

      if (v3 == 3)
      {
        v1 = 15;
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_15;
      }
    }

    else if (v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_performanceNotifierState] != 1)
    {
LABEL_15:
      v4 = v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_coveredByContent] == 0;
      v5 = 60;
      v6 = 30;
LABEL_16:
      if (v4)
      {
        v1 = v5;
      }

      else
      {
        v1 = v6;
      }

      goto LABEL_20;
    }

    v4 = v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_coveredByContent] == 0;
    v5 = 30;
    v6 = 20;
    goto LABEL_16;
  }

LABEL_21:

  return sub_1D277B5E0();
}

uint64_t sub_1D277A4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D2877B48();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = sub_1D2877B68();
  v11 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1ED89CD50);
  v14 = sub_1D2878AB8();
  aBlock[4] = a3;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = a4;
  v15 = _Block_copy(aBlock);
  sub_1D2870F78();
  sub_1D2877B58();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1D277CAB8(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D22D5EFC();
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v13, v10, v15);
  _Block_release(v15);

  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v17[0]);
}

void sub_1D277A740(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gpuIntensiveModalOperationInProgress) = a2;
    sub_1D277B5E0();
  }
}

void sub_1D277A7A4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872668();
  v6 = sub_1D2873CA8();
  v7 = sub_1D28789F8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v1 == 1;
    *(v8 + 8) = 1024;
    *(v8 + 10) = v1 == 2;
    _os_log_impl(&dword_1D226E000, v6, v7, "Darwin performance mitigation state: Throttle:%{BOOL}d Pause:%{BOOL}d", v8, 0xEu);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_performanceNotifierState) != v1)
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_performanceNotifierState) = v1;
      sub_1D277A35C();
    }
  }
}

void *sub_1D277A958()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];
  [v1 removeObserver_];
  [v1 removeObserver_];
  [v1 removeObserver_];
  [v1 removeObserver_];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1D277AA28()
{
  sub_1D277A958();

  return swift_deallocClassInstance();
}

id sub_1D277AB24(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_observers] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedBySettings] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedWhenNotAnimating] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_reduceMotion] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_occluded] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_inactiveForALongTime] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gpuIntensiveModalOperationInProgress] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_coveredByContent] = 0;
  v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_performanceNotifierState] = 0;
  *&v1[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount] = 0;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);
  if (v4)
  {
    type metadata accessor for GPVFXViewObservers();
    v5 = swift_allocObject();
    v6 = v4;
    sub_1D2779954(v6);

    *&v6[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_observers] = v5;
  }

  else
  {
  }

  return v4;
}

char *sub_1D277AC70(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_observers] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedBySettings] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedWhenNotAnimating] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_reduceMotion] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_occluded] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_inactiveForALongTime] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gpuIntensiveModalOperationInProgress] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_coveredByContent] = 0;
  v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_performanceNotifierState] = 0;
  *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount] = 0;
  if (a1)
  {
    v12 = sub_1D2877E78();
  }

  else
  {
    v12 = 0;
  }

  v17.receiver = v5;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, sel_initWithFrame_options_, v12, a2, a3, a4, a5);

  type metadata accessor for GPVFXViewObservers();
  v14 = swift_allocObject();
  v15 = v13;
  sub_1D2779954(v15);
  *&v15[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_observers] = v14;

  return v15;
}

uint64_t sub_1D277AFD0(uint64_t a1, void *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1D2878588();
  v13 = sub_1D28785F8();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  *(v15 + 5) = a3;
  (*(v7 + 32))(&v15[v14], v9, v6);
  v16 = a2;
  v17 = a3;
  sub_1D26D0050(0, 0, v12, &unk_1D28A4C60, v15);

  return sub_1D277C6A4(v12);
}

uint64_t sub_1D277B1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19D0);
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v6[7] = *(v8 + 64);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D277B2E8, 0, 0);
}

uint64_t sub_1D277B2E8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  [v7 prepareForRenderer:v6 progressHandler:0];
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v3 + 16))(v1, v4, v5);
  sub_1D2878568();
  v9 = v6;
  v10 = v7;
  v11 = sub_1D2878558();
  v12 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  *(v13 + 2) = v11;
  *(v13 + 3) = v14;
  *(v13 + 4) = v9;
  *(v13 + 5) = v10;
  (*(v3 + 32))(&v13[v12], v1, v5);
  sub_1D22AE01C(0, 0, v2, &unk_1D28A4C70, v13);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D277B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_1D2878568();
  v6[6] = sub_1D2878558();
  v8 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D277B534, v8, v7);
}

uint64_t sub_1D277B534()
{
  v2 = v0[3];
  v1 = v0[4];

  [v2 setWorld_];
  v0[2] = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19D0);
  sub_1D2878518();
  v4 = v0[1];

  return v4();
}

id sub_1D277B5E0()
{
  if (v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_inactiveForALongTime] & 1) != 0 || (v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_occluded] & 1) != 0 || (v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedBySettings])
  {
    v1 = 1;
  }

  else
  {
    v1 = (sub_1D277B6D4() & 1) != 0 && *&v0[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount] == 0;
  }

  v2 = [v0 world];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 clock];

    [v4 setPaused_];
  }

  return [v0 setRendersContinuously_];
}

uint64_t sub_1D277B6D4()
{
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_reduceMotion))
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_performanceNotifierState) == 2)
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gpuIntensiveModalOperationInProgress))
  {
    return 1;
  }

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_coveredByContent) == 1 && (v2 = [objc_opt_self() processInfo], v3 = objc_msgSend(v2, sel_thermalState), v2, v3 == 3))
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedWhenNotAnimating);
  }
}

id sub_1D277B7F8()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount);
  if (v5)
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_gp_isAnimatingCount) = v5 - 1;

    return sub_1D277A35C();
  }

  else
  {
    sub_1D2872668();
    v7 = sub_1D2873CA8();
    v8 = sub_1D2878A18();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D226E000, v7, v8, "Unbalanced ask for end of animation.", v9, 2u);
      MEMORY[0x1D38A3520](v9, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_1D277B970()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  if (v6)
  {
    if (*(v1 + 24))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v1 + 25);
    }

    v6[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedWhenNotAnimating] = v7;
    v13 = v6;
    sub_1D277A35C();
    v11 = v13;
  }

  else
  {
    sub_1D2872668();
    sub_1D2870F78();
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = *(v1 + 24);

      _os_log_impl(&dword_1D226E000, v8, v9, "Update of 'isPausedWhenNotAnimating' to %{BOOL}d missed", v10, 8u);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1D277BB4C()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  if (v6)
  {
    if (*(v1 + 24))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(v1 + 25);
    }

    v6[OBJC_IVAR____TtC23ImagePlaygroundInternal9GPVFXView_isPausedWhenNotAnimating] = v7;
    v13 = v6;
    sub_1D277A35C();
    v11 = v13;
  }

  else
  {
    sub_1D2872668();
    sub_1D2870F78();
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = *(v1 + 25);

      _os_log_impl(&dword_1D226E000, v8, v9, "Update of 'isBlurred' to %{BOOL}d missed", v10, 8u);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1D277BD2C()
{

  return swift_deallocClassInstance();
}

id sub_1D277BEE8()
{
  v1 = *(v0 + 16);
  [v1 vfx_setClearBackground];
  [v1 setPixelFormat_];
  [v1 vfx_setExtendedLinearSRGBColorSpace];
  [v1 setAntialiasingMode_];
  return [v1 setLowLatency_];
}

uint64_t sub_1D277BF6C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_1D2878568();
  v2[6] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D277C008, v4, v3);
}

uint64_t sub_1D277C008()
{
  if (*(v0[3] + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(v0[3] + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {
  }

  else
  {
    v1 = sub_1D2879618();

    if ((v1 & 1) == 0)
    {
      v2 = *(v0[3] + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_world);
      v0[9] = v2;
      if (v2)
      {
        v3 = type metadata accessor for GPVFXView();
        v0[10] = v3;
        v4 = objc_allocWithZone(v3);
        v5 = v2;
        v0[11] = [v4 init];
        v0[12] = sub_1D2878558();
        v7 = sub_1D28784F8();
        v0[13] = v7;
        v0[14] = v6;

        return MEMORY[0x1EEE6DFA0](sub_1D277C1AC, v7, v6);
      }
    }
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D277C1AC()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = sub_1D2878558();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1D277C2C0;
  v6 = v0[10];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v0 + 2, v3, v7, 0x6465726170657270, 0xEF293A6874697728, sub_1D277C58C, v4, v6);
}

uint64_t sub_1D277C2C0()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1D277C420, v3, v2);
}

uint64_t sub_1D277C420()
{

  *(v0 + 144) = *(v0 + 16);
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D277C494, v1, v2);
}

uint64_t sub_1D277C494()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  v4 = *(v2 + 16);
  *(v2 + 16) = v1;
  v5 = v1;

  if (*(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_shouldUseVFXRenderingDelegate) == 1)
  {
    v6 = *(v0 + 24);
    v7 = *(v0 + 144);
    [v7 setDelegate_];
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 24);

  *(*(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_animationCoordinator) + 24) = &off_1F4DD44E8;
  swift_unknownObjectWeakAssign();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D277C594(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19D0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BC8FC;

  return sub_1D277B1D8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D277C6A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_44Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D277C7EC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E19D0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D22BDFF8;

  return sub_1D277B498(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t type metadata accessor for VisualEffectViewRepresentable()
{
  result = qword_1ED89F068;
  if (!qword_1ED89F068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D277C970()
{
  type metadata accessor for VisualEffectSceneManager();
  if (v0 <= 0x3F)
  {
    sub_1D22BFAB4();
    if (v1 <= 0x3F)
    {
      sub_1D2613D28(319, &qword_1ED89E060);
      if (v2 <= 0x3F)
      {
        sub_1D24AF338();
        if (v3 <= 0x3F)
        {
          sub_1D2613D28(319, &qword_1ED89DFB0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D277CAB8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1D277CB00()
{
  v1 = v0;
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(v0 + 8))(v4);
  v8 = v7;
  v9 = *(v0 + 32);
  if (*(v1 + 40) != 1)
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v13 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v9, 0);
    v14 = *(v3 + 8);
    v14(v6, v2);
    if (v22 == 1.0)
    {
      sub_1D2574AC8(v9, 0);
      v15 = v8;
      sub_1D2878A28();
      v16 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D2273818(v9, 0);
      v14(v6, v2);
      v12 = v22;
      goto LABEL_9;
    }

    sub_1D2574AC8(v9, 0);
    v18 = v8;
    sub_1D2878A28();
    v19 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D2273818(v9, 0);
    v14(v6, v2);
    v10 = v22;
LABEL_8:
    v12 = fmin(v10, 2.0);
    goto LABEL_9;
  }

  v10 = *(v1 + 32);
  if (*&v9 != 1.0)
  {
    v17 = v7;
    goto LABEL_8;
  }

  v11 = v7;
  v12 = 1.0;
LABEL_9:
  [v8 setContentScaleFactor_];

  return v8;
}

uint64_t sub_1D277CE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v6 = sub_1D2871988();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = *(v7 + 16);
  v14(&v22 - v12, a1, v6, v11);
  sub_1D277EFE0(v13);
  v15 = swift_allocObject();
  swift_weakInit();
  (v14)(v13, a2, v6);
  (v14)(v9, v23, v6);
  v16 = *(v7 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v8 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = *(v7 + 32);
  v20(v19 + v17, v13, v6);
  v20(v19 + v18, v9, v6);
  sub_1D2870F78();
  sub_1D2758420(v3, sub_1D2783928, v19);
}

uint64_t sub_1D277D010()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
}

void sub_1D277D0C0(char a1)
{
  v2 = v1;
  sub_1D277E44C(0, 128, a1, v1, CGRectMake);
  v3 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758420(v2, sub_1D27837F4, v3);

  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image))
  {
    sub_1D277DED8(0);
  }

  else
  {
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) == 0.0)
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D28719D8();
    }

    v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize) == 0.0 && v5[1] == 0.0)
    {
      *v5 = 0.0;
      v5[1] = 0.0;
    }

    else
    {
      v6 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v6);
      sub_1D28719D8();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v7 setAnchorPoint_];
    v8 = sub_1D277E868();
    [v7 addSublayer_];

    v9 = [objc_opt_self() clearColor];
    v10 = [v9 CGColor];

    [v7 setBackgroundColor_];
    v11 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer);
    *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer) = v7;
  }
}

void *sub_1D277D41C()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image);
  v2 = v1;
  return v1;
}

uint64_t sub_1D277D4CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);
  return result;
}

double sub_1D277D5A4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D28719E8();

  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale);
  *a2 = result;
  return result;
}

void *sub_1D277D67C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState);
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState + 8);
  *a2 = v4;
  a2[1] = v5;
  return sub_1D233EDE0(v4);
}

uint64_t sub_1D277D734()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
  sub_1D28719D8();
}

uint64_t sub_1D277D804(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state;
  v7 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  v8 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);
  if (sub_1D2782EFC(v7, v8, a1, a2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }

  else
  {
    *v6 = a1;
    *(v6 + 8) = a2;
    swift_getKeyPath();
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719E8();

    result = sub_1D2782DC4(*v6, *(v6 + 8), v7, v8);
    if ((result & 1) == 0)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      return sub_1D23F5C38(*v6, *(v6 + 8));
    }
  }

  return result;
}

uint64_t sub_1D277DA0C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state;
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state);
  *v3 = a2;
  v5 = *(v3 + 8);
  *(v3 + 8) = a3;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  result = sub_1D2782DC4(*v3, *(v3 + 8), v4, v5);
  if ((result & 1) == 0)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    return sub_1D23F5C38(*v3, *(v3 + 8));
  }

  return result;
}

float sub_1D277DB34()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize);
}

void sub_1D277DBDC(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) == a1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel___rampSize) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }
}

void sub_1D277DD0C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719E8();

    v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image);
    swift_getKeyPath();
    v3 = v2;
    sub_1D28719E8();

    v4 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);
    if (v4 >> 6 && (v4 >> 6 != 2 || (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state) - 1) & 0xFFFFFFFFFFFFFFFDLL | ((*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state) != 0) + v4 + 127)))
    {
      swift_getKeyPath();
      sub_1D28719E8();

      v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__forceOpaque);
    }

    else
    {
      v5 = 1;
    }

    sub_1D2766954(v2, v5);
  }
}

void sub_1D277DED8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image;
  v5 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1D22BCFD0(0, &qword_1ED89CC78);
  v6 = v5;
  v7 = a1;
  v8 = sub_1D2878D78();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
  v11 = v7;

  v12 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758420(v2, sub_1D278379C, v12);
}

uint64_t sub_1D277E0B8(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__image) = a2;
  v4 = a2;

  v5 = swift_allocObject();
  swift_weakInit();
  sub_1D2870F78();
  sub_1D2758420(a1, sub_1D278392C, v5);
}

uint64_t sub_1D277E1DC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return *(v2 + *a2);
}

uint64_t sub_1D277E27C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1D277E330(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }

  return result;
}

void sub_1D277E44C(unint64_t a1, int a2, char a3, uint64_t a4, void (*a5)(void))
{
  HIDWORD(v20) = a2;
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v13 = sub_1D2878A58();
  v14 = sub_1D2878068();
  v15 = [v13 BOOLForKey_];

  if ((v15 & 1) == 0)
  {
    swift_getKeyPath();
    v21 = a4;
    sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
    sub_1D28719E8();

    if (*(a4 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__vfxLoadingState) == 2)
    {
      sub_1D2872668();
      v16 = sub_1D2873CA8();
      v17 = sub_1D2878A18();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D226E000, v16, v17, "set state to 'idle' - sceneManager is nil", v18, 2u);
        MEMORY[0x1D38A3520](v18, -1, -1);

        (*(v10 + 8))(v12, v9);
        sub_1D233EE24(2);
      }

      else
      {

        (*(v10 + 8))(v12, v9);
      }
    }

    else
    {
      v19 = swift_allocObject();
      swift_weakInit();
      sub_1D27587B4(a4, v19, a3 & 1, a5, 0, a1, SHIDWORD(v20));
    }
  }
}

uint64_t sub_1D277E748(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1D277E868();

    [v2 setContents_];
  }

  sub_1D2758CD8(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, v6);
  if (v7)
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1D2758D34(v6);
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
LABEL_5:
      v4 = v10;
      __swift_project_boxed_opaque_existential_1(&v8, v3);
      (*(v4 + 48))(v3, v4);
      return __swift_destroy_boxed_opaque_existential_0(&v8);
    }
  }

  else
  {
    sub_1D227268C(v6, &v8);
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      goto LABEL_5;
    }
  }

  return sub_1D22BD238(&v8, &qword_1EC6E1790);
}

id sub_1D277E868()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v4 setAnchorPoint_];
    v5 = [objc_opt_self() clearColor];
    v6 = [v5 CGColor];

    [v4 setBackgroundColor_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1D277E954(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) == a1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }
}

void sub_1D277EA74(double a1, double a2)
{
  v3 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize);
  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize) == a1 && *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D277EC00(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_isForStickers);
    v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers);
    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isForStickers) = v3;
    if (v3 != v4)
    {
      sub_1D2761250();
    }
  }

  return result;
}

uint64_t sub_1D277EC84(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_attractorsColorUpdatingDelegate;
    swift_unknownObjectWeakLoadStrong();
    v4 = *(v3 + 8);

    *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_attractorsColorUpdatingDelegate + 8) = v4;
    swift_unknownObjectWeakAssign();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D277ED24@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices;
  swift_beginAccess();
  v4 = sub_1D2871988();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1D277EE1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices;
  swift_beginAccess();
  v5 = sub_1D2871988();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1D277EF14(uint64_t a1)
{
  v2 = sub_1D2871988();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1D277EFE0(v5);
}

uint64_t sub_1D277EFE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D278307C(&qword_1ED8A6C68, MEMORY[0x1E6969B50]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D277F260(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices;
  swift_beginAccess();
  v5 = sub_1D2871988();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1D277F2FC()
{
  v0 = sub_1D2871988();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v23 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - v5;
  v22 = &v21 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  sub_1D2871978();
  sub_1D2871978();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(v1 + 16);
  v13(v6, v11, v0);
  v13(&v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v0);
  v14 = *(v1 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v2 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = *(v1 + 32);
  v18(v17 + v15, v22, v0);
  v18(v17 + v16, v23, v0);
  sub_1D2870F78();
  sub_1D2758420(v24, sub_1D2783078, v17);

  v19 = *(v1 + 8);
  v19(v9, v0);
  v19(v11, v0);
}

uint64_t sub_1D277F560(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4)
{
  v7 = sub_1D2871988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v29 = a3;
    v30 = a1;
    v31 = a4;
    swift_getKeyPath();
    v28 = v10;
    v32 = v13;
    v34 = v15;
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719E8();

    v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__attractorsIndices;
    swift_beginAccess();
    v17 = *(v8 + 16);
    v17(v32, v15 + v16, v7);
    swift_getKeyPath();
    v33 = v15;
    sub_1D28719E8();

    v18 = v28;
    v17(v28, v15 + v16, v7);
    v19 = sub_1D2871938();
    v20 = *(v8 + 8);
    v28 = v7;
    v20(v18, v7);
    if (v19 < 1)
    {
      v24 = 0;
      v23 = v29;
    }

    else
    {
      swift_getKeyPath();
      v33 = v15;
      sub_1D28719E8();

      v21 = v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state;
      v22 = *(v15 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8);
      v23 = v29;
      if (v22 >> 6 && (v22 >> 6 != 2 || (*v21 - 1) & 0xFFFFFFFFFFFFFFFDLL | ((*v21 != 0) + v22 + 127)))
      {
        v24 = 0;
      }

      else
      {
        v25 = v29;
        swift_getKeyPath();
        v33 = v15;
        sub_1D28719E8();

        v23 = v25;
        v24 = *v21 != 3 || *(v21 + 8) != 128;
      }
    }

    v27 = v32;
    sub_1D276B5B0(v32, v23, v31, v24);

    return (v20)(v27, v28);
  }

  return result;
}

uint64_t sub_1D277F8B4(char *a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5, unint64_t a6, unsigned __int8 a7)
{
  v79 = a5;
  v80 = a4;
  v11 = sub_1D2873CB8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v71 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v77 = v15;
    v78 = v12;
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0);
    v20 = sub_1D2878A58();
    v21 = sub_1D2878068();
    v22 = [v20 BOOLForKey_];

    if (v22)
    {
      swift_getKeyPath();
      *&v81 = v19;
      sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
      sub_1D28719E8();

      if (*(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8) < 0x40u)
      {
      }

      sub_1D2758CD8(&a1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController], &v81);
      if (v83)
      {
        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        sub_1D2758D34(&v81);
        v23 = *(&v85 + 1);
        if (*(&v85 + 1))
        {
LABEL_8:
          v24 = v86;
          __swift_project_boxed_opaque_existential_1(&v84, v23);
          v82 = MEMORY[0x1E69E6448];
          LODWORD(v81) = 0;
          (*(v24 + 16))(&v81, 6400, 0, v23, v24);
          __swift_destroy_boxed_opaque_existential_0(&v81);
          __swift_destroy_boxed_opaque_existential_0(&v84);
LABEL_31:
          v48 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1D276ED08(a3 & 1, 0, a1, v48, a3 & 1, CGRectMake, 0, 3.0);

          sub_1D277D804(0x4008000000000000, 0);
        }
      }

      else
      {
        sub_1D227268C(&v81, &v84);
        v23 = *(&v85 + 1);
        if (*(&v85 + 1))
        {
          goto LABEL_8;
        }
      }

      sub_1D22BD238(&v84, &qword_1EC6E1790);
      goto LABEL_31;
    }

    v75 = a3;
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    v28 = v79;
    v27 = v80;
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v28;
    v76 = v25;
    sub_1D2870F78();
    sub_1D2870F78();
    sub_1D2872668();
    v29 = sub_1D2873CA8();
    v30 = sub_1D28789F8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v72 = v19;
      v32 = v31;
      v33 = swift_slowAlloc();
      v73 = v11;
      v34 = v33;
      *&v81 = v33;
      *v32 = 136315138;
      v35 = sub_1D27809A8(a6, a7);
      v74 = v26;
      v37 = sub_1D23D7C84(v35, v36, &v81);
      v26 = v74;

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1D226E000, v29, v30, "EffectViewModel updateToState: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v38 = v34;
      v11 = v73;
      MEMORY[0x1D38A3520](v38, -1, -1);
      v39 = v32;
      v19 = v72;
      MEMORY[0x1D38A3520](v39, -1, -1);
    }

    v40 = *(v78 + 8);
    v40(v17, v11);
    if (!(a7 >> 6))
    {

      v42 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible);
      v73 = v11;
      v43 = a7;
      if (v42)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v71 - 2) = v19;
        *(&v71 - 8) = 0;
        *&v81 = v19;
        sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
        sub_1D28719D8();
      }

      else
      {
        *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible) = 0;
      }

      v49 = swift_allocObject();
      *(v49 + 16) = sub_1D2783034;
      *(v49 + 24) = v26;
      v50 = v26;
      v51 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController;
      sub_1D2758CD8(&a1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController], &v81);
      v74 = v50;
      if (v83)
      {
        v86 = 0;
        v84 = 0u;
        v85 = 0u;
        swift_retain_n();
        sub_1D2758D34(&v81);
      }

      else
      {
        sub_1D227268C(&v81, &v84);
        swift_retain_n();
      }

      v52 = *(&v85 + 1);
      if (*(&v85 + 1))
      {
        v53 = v86;
        __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
        v82 = MEMORY[0x1E69E6448];
        LODWORD(v81) = 0;
        (*(v53 + 16))(&v81, 6400, 0, v52, v53);
        __swift_destroy_boxed_opaque_existential_0(&v81);
        __swift_destroy_boxed_opaque_existential_0(&v84);
      }

      else
      {
        sub_1D22BD238(&v84, &qword_1EC6E1790);
      }

      if (*&a6 <= 10.0)
      {
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1D2870F78();
        sub_1D276ED08(v75 & 1, v43 & 1, a1, v56, v75 & 1, sub_1D22D79AC, v49, *&a6);

        a7 = v43;
      }

      else
      {
        if (v43)
        {
          if (*&a1[OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_transitionToGeneratingTask])
          {
            sub_1D2870F78();
            sub_1D28786B8();
          }

          v55 = v74;
          sub_1D2870F78();
          sub_1D276F31C(v75 & 1, 1, a1, sub_1D2783034, v55);
        }

        else
        {
          v57 = swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1D2758CD8(&a1[v51], &v81);
          if (v83)
          {
            v86 = 0;
            v84 = 0u;
            v85 = 0u;
            swift_retain_n();
            sub_1D2758D34(&v81);
          }

          else
          {
            sub_1D227268C(&v81, &v84);
            swift_retain_n();
          }

          v62 = *(&v85 + 1);
          sub_1D22BD238(&v84, &qword_1EC6E1790);
          if (v62)
          {
            sub_1D27643D8(0, 0, 1);
          }

          else
          {
            v64 = v77;
            sub_1D2872668();
            v65 = sub_1D2873CA8();
            v66 = sub_1D2878A18();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = swift_slowAlloc();
              *v67 = 0;
              _os_log_impl(&dword_1D226E000, v65, v66, "gpNodes is nil", v67, 2u);
              MEMORY[0x1D38A3520](v67, -1, -1);

              v68 = v77;
            }

            else
            {

              v68 = v64;
            }

            v40(v68, v73);
          }

          sub_1D276319C(*&a6, v57, v75 & 1, sub_1D22D79AC, v49);
        }

        a7 = v43;
      }

      goto LABEL_69;
    }

    if (a7 >> 6 == 1)
    {
      sub_1D27648E8(BYTE4(a6) & 1, 0, 1, 1, *&a6);
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        sub_1D277F2FC();
      }

      v80(Strong);

      goto LABEL_69;
    }

    v45 = v75;
    if (__PAIR128__(-128, 1) >= __PAIR128__(a7, a6))
    {
      if (!(a6 | a7 ^ 0x80))
      {

        if (*(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible))
        {
          v54 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v54);
          *(&v71 - 2) = v19;
          *(&v71 - 8) = 0;
          *&v81 = v19;
          sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
          sub_1D28719D8();

          v45 = v75;
        }

        else
        {
          *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible) = 0;
        }

        sub_1D2762B40((*(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel_isForStickers) & 1) == 0, v45 & 1, 0);
        goto LABEL_69;
      }

      sub_1D2870F78();
      sub_1D276F8CC(v45 & 1, a1, sub_1D2783034, v26);

      v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent;
      v60 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);
      if (v60 != 1)
      {
        goto LABEL_62;
      }
    }

    else if (a7 == 128 && a6 == 2)
    {

      sub_1D2870F78();
      v58 = a1;
      sub_1D27703A4(v45 & 1, v58, v58, v45 & 1, sub_1D2783034, v26);

      v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent;
      v60 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);
      if (v60 != 1)
      {
LABEL_62:
        v63 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v63);
        *(&v71 - 2) = v19;
        *(&v71 - 8) = 1;
        *&v81 = v19;
        sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
        sub_1D2870F78();
        sub_1D28719D8();

        goto LABEL_69;
      }
    }

    else
    {
      if (a7 == 128 && a6 == 3)
      {

        sub_1D2870F78();
        sub_1D2770930(v45 & 1, a1, sub_1D2783034, v26);

LABEL_69:
        swift_getKeyPath();
        *&v84 = v19;
        sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
        sub_1D28719E8();

        if (!sub_1D2782DC4(a6, a7, *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state), *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__state + 8)))
        {
          if (a6)
          {
            v69 = 0;
          }

          else
          {
            v69 = a7 == 128;
          }

          v70 = !v69;
          sub_1D2780CD4(a1, 0, v70);
        }

        sub_1D277D804(a6, a7);
      }

      v61 = swift_allocObject();
      *(v61 + 16) = sub_1D2783034;
      *(v61 + 24) = v26;
      sub_1D2870F78();
      sub_1D2766134(sub_1D22D79AC, v61);

      v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent;
      v60 = *(v19 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__isCoveredByContent);
      if (v60 != 1)
      {
        goto LABEL_62;
      }
    }

    *(v19 + v59) = v60;
    goto LABEL_69;
  }

  return result;
}

uint64_t sub_1D2780934(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_1D277F2FC();
  }

  return a2(Strong);
}

unint64_t sub_1D27809A8(unint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0x69746172656E6567, 0xEC0000002820676ELL);
    sub_1D28787A8();
    MEMORY[0x1D38A0C50](0x646C6F486E6F202CLL, 0xEA0000000000203ALL);
    if (a2)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (a2)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    MEMORY[0x1D38A0C50](v8, v9);

    v6 = 41;
    v7 = 0xE100000000000000;
    goto LABEL_17;
  }

  if (a2 >> 6 == 1)
  {
    sub_1D2879168();
    MEMORY[0x1D38A0C50](0x7463617265746E69, 0xED00002820676E69);
    sub_1D28787C8();
    MEMORY[0x1D38A0C50](0x206E692029, 0xE500000000000000);
    if ((a1 & 0x100000000) != 0)
    {
      v4 = 0x72616C7563726963;
    }

    else
    {
      v4 = 0x75676E6174636572;
    }

    if ((a1 & 0x100000000) != 0)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB0000000072616CLL;
    }

    MEMORY[0x1D38A0C50](v4, v5);

    v6 = 0x65646F6D20;
    v7 = 0xE500000000000000;
LABEL_17:
    MEMORY[0x1D38A0C50](v6, v7);
    return 0;
  }

  v11 = 1701602409;
  v12 = a2 == 128 && a1 == 3;
  v13 = 0x72616C7563726963;
  if (!v12)
  {
    v13 = 0x6E696C6163737075;
  }

  if (a2 == 128 && a1 == 2)
  {
    v13 = 0xD000000000000012;
  }

  if (a1 | a2 ^ 0x80)
  {
    v11 = 0xD000000000000015;
  }

  if (__PAIR128__(-128, 1) >= __PAIR128__(a2, a1))
  {
    return v11;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_1D2780C70(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  sub_1D2870F78();
  sub_1D276FE34(a2, a1, a3, a4);
}

uint64_t sub_1D2780CD4(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v46 = a3;
  v47 = a2;
  v6 = sub_1D2871DD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v48 = v3;
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  v10 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__imageSize + 8);
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_aspectRatio;
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v11, v6);
  sub_1D2871DA8();
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  if (v10 != 0.0 || v10 * v13 != 0.0)
  {
    swift_getKeyPath();
    *&v48 = v4;
    sub_1D28719E8();

    swift_getKeyPath();
    *&v48 = v4;
    sub_1D28719E8();

    v15 = objc_opt_self();
    [v15 begin];
    [v15 setDisableActions_];
    v16 = sub_1D27818B4();
    [v16 bounds];
    [v16 setBounds_];

    v45 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer;
    v17 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer);
    v18 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_isInLightMode);
    v19 = objc_opt_self();
    v20 = v17;
    v21 = &selRef_whiteColor;
    if (!v18)
    {
      v21 = &selRef_clearColor;
    }

    v22 = [v19 *v21];
    v23 = [v22 CGColor];

    [v20 setBackgroundColor_];
    v24 = sub_1D277E868();
    [v24 bounds];
    [v24 setBounds_];

    v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer;
    v26 = *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___imageLayer);
    swift_getKeyPath();
    *&v48 = v4;
    v27 = v26;
    sub_1D28719E8();

    [v27 setPosition_];

    v28 = *(v4 + v25);
    v29 = v47;
    if (v47)
    {
      type metadata accessor for CGImage(0);
      *(&v52 + 1) = v30;
      *&v51 = v29;
      sub_1D23C3FAC(&v51, &v48);
      v31 = v28;
    }

    else
    {
      v51 = 0u;
      v52 = 0u;
      if ([v28 contents])
      {
        sub_1D2879008();
        swift_unknownObjectRelease();
      }

      else
      {
        v54 = 0u;
        v55 = 0u;
      }

      v48 = v54;
      v49 = v55;
      if (*(&v52 + 1))
      {
        sub_1D22BD238(&v51, &qword_1EC6E1900);
      }
    }

    v32 = *(&v49 + 1);
    if (*(&v49 + 1))
    {
      v33 = __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      v34 = *(v32 - 8);
      MEMORY[0x1EEE9AC00](v33);
      v36 = &v44 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v34 + 16))(v36);
      v37 = v29;
      v38 = sub_1D2879608();
      (*(v34 + 8))(v36, v32);
      __swift_destroy_boxed_opaque_existential_0(&v48);
    }

    else
    {
      v39 = v29;
      v38 = 0;
    }

    [v28 setContents_];

    swift_unknownObjectRelease();
    [v15 commit];
    sub_1D2758CD8(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_nodesController, &v48);
    if (v50)
    {
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      sub_1D2758D34(&v48);
      v40 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
LABEL_17:
        v41 = v53;
        __swift_project_boxed_opaque_existential_1(&v51, v40);
        v42 = *(v4 + v45);
        swift_getKeyPath();
        *&v48 = v4;
        sub_1D278307C(&qword_1ED8A0CA8, type metadata accessor for AbstractEffectViewModel);
        v43 = v42;
        sub_1D28719E8();

        (*(v41 + 56))(v43, v46 & 1, v40, v41, *(v4 + OBJC_IVAR____TtC23ImagePlaygroundInternal23AbstractEffectViewModel__displayScale));

        return __swift_destroy_boxed_opaque_existential_0(&v51);
      }
    }

    else
    {
      sub_1D227268C(&v48, &v51);
      v40 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        goto LABEL_17;
      }
    }

    return sub_1D22BD238(&v51, &qword_1EC6E1790);
  }

  return result;
}

uint64_t sub_1D27813D0(void *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a1;
    sub_1D2870F78();
    sub_1D277358C(a3 & 1, v7, v7, v6, a3 & 1);
  }

  return result;
}

uint64_t sub_1D2781464(void *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  if (*(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) && *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24VisualEffectSceneManager_effectType) != 1)
  {
    sub_1D2870F78();
    v17 = a1;

    if (a3)
    {
LABEL_5:
      v12 = sub_1D28785F8();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      sub_1D2878568();
      sub_1D2870F78();
      v13 = sub_1D2878558();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = sub_1D27837FC;
      v14[5] = v9;
      sub_1D22AE01C(0, 0, v8, &unk_1D28A5058, v14);
    }
  }

  else
  {
    v10 = sub_1D2879618();
    sub_1D2870F78();
    v11 = a1;

    if (v10 & 1) != 0 && (a3)
    {
      goto LABEL_5;
    }
  }

  sub_1D2767810(1, 0, 1, a1);
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible[0];
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible[0]) == 1)
  {

    *(a2 + v18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v20[-2] = a2;
    LOBYTE(v20[-1]) = 1;
    v20[1] = a2;
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2781784(void *a1, uint64_t a2)
{
  result = sub_1D2767810(1, 0, 1, a1);
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible[0]) == 1)
  {
    *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__isImageVisible[0]) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
    sub_1D28719D8();
  }

  return result;
}

id sub_1D27818B4()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer;
  v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel____lazy_storage___layer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
    [v4 setAnchorPoint_];
    v5 = sub_1D277E868();
    [v4 addSublayer_];

    v6 = [objc_opt_self() clearColor];
    v7 = [v6 CGColor];

    [v4 setBackgroundColor_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

double sub_1D27819C0()
{
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset);
}

double sub_1D2781A68@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D278307C(&qword_1ED8A3F70, type metadata accessor for EffectViewModel);
  sub_1D28719E8();

  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal15EffectViewModel__currentOffset);
  *a2 = result;
  return result;
}