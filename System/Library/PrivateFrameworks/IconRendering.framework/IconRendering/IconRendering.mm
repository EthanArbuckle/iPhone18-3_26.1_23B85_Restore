id ICRIconLayer.init(data:)(uint64_t a1, unint64_t a2)
{
  sub_1B15C0D30(a1, a2);
  if (qword_1EDB2FBE8 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDB32798;
  v7 = qword_1EDB32798;
  sub_1B15C114C(a1, a2, v6, v12);
  if (v3)
  {
    sub_1B15C27E4(a1, a2);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B15C283C(v12, v11);
    v8 = [objc_allocWithZone(ICRFinalizedIcon) init];
    v9 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
    swift_beginAccess();
    sub_1B15DA08C(v11, v8 + v9);
    swift_endAccess();
    v2 = [v2 initWithFinalizedIcon_];

    sub_1B15C27E4(a1, a2);
    sub_1B15C2874(v12);
  }

  return v2;
}

{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1B1619BC8();
  v10[0] = 0;
  v6 = [v4 initWithData:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1B1619B38();

    swift_willThrow();
  }

  sub_1B15C27E4(a1, a2);
  return v6;
}

id sub_1B15C0BE8()
{
  bzero(&v0[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon], 0x778uLL);
  v1 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig;
  if (qword_1EDB2FB50 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDB2FB68;
  v3 = &v0[v1];
  v4 = xmmword_1EDB2FB58;
  *(v3 + 16) = 1;
  v3[34] = 0;
  *(v3 + 40) = xmmword_1B161E0A0;
  *(v3 + 28) = 513;
  *(v3 + 8) = 0;
  *(v3 + 9) = 0;
  *v3 = 0x3FF0000000000000;
  *(v3 + 8) = v4;
  *(v3 + 3) = v2;
  v5 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters;
  sub_1B15C0D28(__src);
  memcpy(&v0[v5], __src, 0x653uLL);
  v6 = &v0[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_displayScaleOverride];
  *v6 = 0;
  v6[8] = 1;
  v0[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_hasSetUp] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ICRIconRenderingLayer();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1B15C0D30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B15C0D84(uint64_t a1)
{
  v3 = [v1 layers];
  v4 = sub_1B1619EF8();
  if (*(v4 + 16))
  {
    sub_1B15C10F0(v4 + 32, v36);

    sub_1B15C17B0(0, &unk_1EDB2FBC0);
    if (swift_dynamicCast())
    {
      result = [v28[0] cgColor];
      if (result)
      {
        v6 = result;

        RBColorFromCGColor2();
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        *a1 = v8;
        *(a1 + 8) = v10;
        *(a1 + 16) = v12;
        *(a1 + 24) = v14;
        *(a1 + 96) = 0;
LABEL_22:
        __swift_destroy_boxed_opaque_existential_0(v36);
        return 1;
      }

      __break(1u);
    }

    else
    {

      sub_1B15C17B0(0, &unk_1EDB2FAE0);
      if (swift_dynamicCast())
      {
        v20 = v35;
        sub_1B15C189C(v20, v28);
        v21 = v34;
        if (v34 <= 0xFDu)
        {

          v23 = v31;
          *(a1 + 32) = v30;
          *(a1 + 48) = v23;
          v24 = v33;
          *(a1 + 64) = v32;
          *(a1 + 80) = v24;
          v25 = v29;
          *a1 = *v28;
          *(a1 + 16) = v25;
        }

        else
        {
          if (qword_1EDB30338 != -1)
          {
            swift_once();
          }

          v26 = *&qword_1EDB30350;
          v27 = xmmword_1EDB30340;

          v21 = 0;
          *a1 = v27;
          *(a1 + 16) = v26;
        }

        *(a1 + 96) = v21;
        goto LABEL_22;
      }

      if (qword_1EDB2F420 != -1)
      {
        swift_once();
      }

      v22 = *algn_1EB752D50;
      *a1 = xmmword_1EB752D40;
      *(a1 + 16) = v22;
      *(a1 + 96) = 0;
      __swift_destroy_boxed_opaque_existential_0(v36);
      return 0;
    }
  }

  else
  {

    if (qword_1EB752580 != -1)
    {
      swift_once();
    }

    v15 = sub_1B1619D18();
    __swift_project_value_buffer(v15, qword_1EB752A58);
    v16 = sub_1B1619CF8();
    v17 = sub_1B161A088();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1B15BF000, v16, v17, "missing chiclet layer", v18, 2u);
      MEMORY[0x1B2730CA0](v18, -1, -1);
    }

    if (qword_1EDB30338 != -1)
    {
      swift_once();
    }

    result = 0;
    v19 = *&qword_1EDB30350;
    *a1 = xmmword_1EDB30340;
    *(a1 + 16) = v19;
    *(a1 + 96) = 0;
  }

  return result;
}

uint64_t sub_1B15C10F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B15C114C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v55 = a1;
  v56[239] = *MEMORY[0x1E69E9840];
  v6 = sub_1B1619C68();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  v50 = a4;
  *(a4 + 1880) = 0u;
  *(a4 + 1896) = 0u;
  v54 = a4 + 1880;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v53 = v13;
  if (qword_1EDB2F640 != -1)
  {
    swift_once();
  }

  v14 = sub_1B1619C98();
  __swift_project_value_buffer(v14, qword_1EDB2F648);
  sub_1B1619C88();
  sub_1B1619C38();
  v15 = sub_1B1619C88();
  v16 = sub_1B161A0A8();
  if (sub_1B161A0F8())
  {
    v17 = swift_slowAlloc();
    v51 = v6;
    v18 = a2;
    v19 = v17;
    *v17 = 0;
    v20 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v15, v16, v20, "Deserializing", "", v19, 2u);
    v21 = v19;
    a2 = v18;
    v6 = v51;
    MEMORY[0x1B2730CA0](v21, -1, -1);
  }

  (*(v7 + 16))(v10, v12, v6);
  sub_1B1619CD8();
  swift_allocObject();
  v22 = sub_1B1619CC8();
  (*(v7 + 8))(v12, v6);
  v23 = v55;
  v24 = sub_1B1619BC8();
  v25 = [v24 bytes];
  v26 = v24;
  v27 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v28 = 0;
    if (v27 != 2)
    {
      goto LABEL_14;
    }

    v30 = *(v23 + 16);
    v29 = *(v23 + 24);
    v28 = v29 - v30;
    if (!__OFSUB__(v29, v30))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v27)
  {
    v28 = BYTE6(a2);
    goto LABEL_14;
  }

  if (__OFSUB__(HIDWORD(v23), v23))
  {
    __break(1u);
  }

  v28 = HIDWORD(v23) - v23;
LABEL_14:
  v51 = v22;
  v31 = objc_allocWithZone(MEMORY[0x1E6999370]);
  v56[0] = 0;
  v32 = [v31 initWithBytes:v25 length:v28 error:v56];
  if (!v32)
  {
    v42 = v56[0];
    sub_1B1619B38();

    swift_willThrow();
LABEL_20:

    sub_1B15E9AE4(v51, v53);
    sub_1B15C27E4(v23, a2);

    return sub_1B15C1750(v54, &qword_1EB752A88);
  }

  v33 = v32;
  v34 = v56[0];
  v35 = [v33 defaultIconLayerStack];
  if (!v35)
  {
    sub_1B15F1670();
    swift_allocError();
    swift_willThrow();

    v24 = v33;
    goto LABEL_20;
  }

  v36 = v35;
  v37 = [v35 name];
  v49 = a2;
  if (v37)
  {
    v38 = v37;
    v39 = sub_1B1619D98();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v44 = v53;
  *(v53 + 16) = v39;
  *(v44 + 24) = v41;
  v45 = MEMORY[0x1B2730550]();
  v48 = v52;
  v46 = v36;

  sub_1B15E9E2C(v46);
  objc_autoreleasePoolPop(v45);
  v47 = v54;
  sub_1B15C1750(v54, &qword_1EB752A88);
  memcpy(v50, v56, 0x778uLL);
  v56[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752BC0);

  v56[0] = v24;
  v56[1] = v33;
  sub_1B15F16C4(v56, v47);
  sub_1B15E9AE4(v51, v44);

  sub_1B15C27E4(v55, v49);
}

uint64_t sub_1B15C167C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B15C16B4(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1B15C1750(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B15C17B0(uint64_t a1, unint64_t *a2)
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

IconRendering::FinalizedIcon::ScaledSize __swiftcall FinalizedIcon.ScaledSize.init(points:scale:)(CGSize points, Swift::Int scale)
{
  v3 = scale * points.width;
  if (v3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = scale * points.height;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *v2 = v3;
  v2[1] = v4;
  v2[2] = scale;
LABEL_13:
  result.pixels.width = scale;
  return result;
}

void sub_1B15C189C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  [a1 gradientStartPoint];
  v5 = v4;
  v7 = v6;
  [v2 gradientEndPoint];
  v10 = v7 == v9 && v5 == v8;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    [v2 gradientStartPoint];
    v16 = v15;
    v12 = v17;
    [v2 gradientEndPoint];
    v13 = v18;
    v14 = v19;
    v11 = v16;
  }

  v20 = [v2 gradientType];
  if (v20 == 2)
  {
    if (qword_1EB752580 != -1)
    {
      swift_once();
    }

    v43 = sub_1B1619D18();
    __swift_project_value_buffer(v43, qword_1EB752A58);
    v44 = sub_1B1619CF8();
    v45 = sub_1B161A088();
    if (!os_log_type_enabled(v44, v45))
    {
      goto LABEL_50;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_1B15BF000, v44, v45, "radial gradients are not supported", v46, 2u);
LABEL_49:
    MEMORY[0x1B2730CA0](v46, -1, -1);
LABEL_50:

LABEL_52:
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v58 = -2;
    goto LABEL_53;
  }

  if (v20 != 1)
  {
    if (!v20)
    {
      v21 = [v2 colors];
      v22 = MEMORY[0x1E69E7CA0];
      v23 = sub_1B1619EF8();

      if (*(v23 + 16))
      {
        sub_1B15C10F0(v23 + 32, &v82);
      }

      else
      {

        v82 = 0u;
        v83 = 0u;
      }

      sub_1B15C5AB4(&v82, &v80);
      if (v81)
      {
        sub_1B15C2260(&v80, v77);
        sub_1B15C10F0(v77, v76);
        sub_1B15C5B24(v76, v78);
        __swift_destroy_boxed_opaque_existential_0(v77);
        sub_1B15C1750(&v82, &qword_1EB752A88);
        if ((v79 & 1) == 0)
        {
          v73 = v78[0];
          v75 = v78[1];

          LOBYTE(v82) = v10;
          v58 = 64;
          v54 = v11;
          v55 = v12;
          v56 = v13;
          v57 = v14;
          v11 = v10;
          goto LABEL_42;
        }
      }

      else
      {
        sub_1B15C1750(&v82, &qword_1EB752A88);
      }

      if (qword_1EB752580 != -1)
      {
        swift_once();
      }

      v66 = sub_1B1619D18();
      __swift_project_value_buffer(v66, qword_1EB752A58);
      v2 = v2;
      v44 = sub_1B1619CF8();
      v48 = sub_1B161A088();

      if (os_log_type_enabled(v44, v48))
      {
        v46 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v78[0] = v49;
        *v46 = 136315138;
        v67 = [v2 colors];
        v68 = sub_1B1619EF8();

        v69 = MEMORY[0x1B272FA30](v68, v22 + 8);
        v71 = v70;

        v72 = sub_1B15E4764(v69, v71, v78);

        *(v46 + 4) = v72;
        v53 = "invalid automatic gradient colors: %s";
        goto LABEL_48;
      }

LABEL_51:

      goto LABEL_52;
    }

    if (qword_1EB752580 != -1)
    {
      swift_once();
    }

    v47 = sub_1B1619D18();
    __swift_project_value_buffer(v47, qword_1EB752A58);
    v2 = v2;
    v44 = sub_1B1619CF8();
    v48 = sub_1B161A088();

    if (!os_log_type_enabled(v44, v48))
    {
      goto LABEL_51;
    }

    v46 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v78[0] = v49;
    *v46 = 136315138;
    *&v82 = [v2 gradientType];
    type metadata accessor for CUINamedGradientType(0);
    v50 = sub_1B1619DD8();
    v52 = sub_1B15E4764(v50, v51, v78);

    *(v46 + 4) = v52;
    v53 = "unsupported gradient type: %s";
LABEL_48:
    _os_log_impl(&dword_1B15BF000, v44, v48, v53, v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x1B2730CA0](v49, -1, -1);
    goto LABEL_49;
  }

  v24 = [v2 colors];
  v25 = MEMORY[0x1E69E7CA0];
  v26 = sub_1B1619EF8();

  v27 = *(v26 + 16);
  if (v27)
  {
    v74 = v11;
    v28 = v26 + 32;
    v29 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B15C10F0(v28, v78);
      sub_1B15C10F0(v78, &v82);
      __swift_project_boxed_opaque_existential_0(&v82, *(&v83 + 1));
      v30 = sub_1B161A438();
      v31 = CFGetTypeID(v30);
      swift_unknownObjectRelease();
      if (v31 == CGColorGetTypeID())
      {
        sub_1B15C10F0(&v82, &v80);
        type metadata accessor for CGColor(0);
        swift_dynamicCast();
        RBColorFromCGColor2();
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        __swift_destroy_boxed_opaque_existential_0(v78);
        __swift_destroy_boxed_opaque_existential_0(&v82);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1B15C2148(0, *(v29 + 2) + 1, 1, v29);
        }

        v41 = *(v29 + 2);
        v40 = *(v29 + 3);
        if (v41 >= v40 >> 1)
        {
          v29 = sub_1B15C2148((v40 > 1), v41 + 1, 1, v29);
        }

        *(v29 + 2) = v41 + 1;
        v42 = &v29[32 * v41];
        v42[4] = v33;
        v42[5] = v35;
        v42[6] = v37;
        v42[7] = v39;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v78);
        __swift_destroy_boxed_opaque_existential_0(&v82);
      }

      v28 += 32;
      --v27;
    }

    while (v27);

    v11 = v74;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  if (*(v29 + 2) != 2)
  {

    if (qword_1EB752580 != -1)
    {
      swift_once();
    }

    v59 = sub_1B1619D18();
    __swift_project_value_buffer(v59, qword_1EB752A58);
    v2 = v2;
    v44 = sub_1B1619CF8();
    v48 = sub_1B161A088();

    if (!os_log_type_enabled(v44, v48))
    {
      goto LABEL_51;
    }

    v46 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v78[0] = v49;
    *v46 = 136315138;
    v60 = [v2 colors];
    v61 = sub_1B1619EF8();

    v62 = MEMORY[0x1B272FA30](v61, v25 + 8);
    v64 = v63;

    v65 = sub_1B15E4764(v62, v64, v78);

    *(v46 + 4) = v65;
    v53 = "gradient needs two colors: %s";
    goto LABEL_48;
  }

  v73 = *(v29 + 2);
  v75 = *(v29 + 3);
  v54 = *(v29 + 8);
  v55 = *(v29 + 9);
  v56 = *(v29 + 10);
  v57 = *(v29 + 11);

  v58 = v10 | 0x80;
LABEL_42:
  *a2 = v73;
  *(a2 + 16) = v75;
  *(a2 + 32) = v54;
  *(a2 + 40) = v55;
  *(a2 + 48) = v56;
  *(a2 + 56) = v57;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v13;
  *(a2 + 88) = v14;
LABEL_53:
  *(a2 + 96) = v58;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_1B15C2148(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

_OWORD *sub_1B15C2260(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B15C22A0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B15C2374();
  if (result >= 951)
  {
    v7 = [v1 hasSpecular];
    sub_1B15C246C([v1 shadowStyle], &v13);
    v8 = v13;
    [v1 shadowOpacity];
    v11 = v9;
    [v1 translucency];
    v12 = v10;
    result = [v1 blurStrength];
    *&v4 = v11;
    v6 = v7 | (v8 << 8);
    *(&v4 + 1) = v12;
  }

  else
  {
    v4 = xmmword_1B161CDD0;
    v5 = 0;
    v6 = 1;
  }

  *a1 = v6;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1B15C2374()
{
  v1 = sub_1B1619D68();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1B161A128();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_1B15C1750(v7, &qword_1EB752A88);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  result = v4;
  if (v4 <= 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

void sub_1B15C246C(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 >= 4)
  {
    if (qword_1EB752580 != -1)
    {
      swift_once();
    }

    v5 = sub_1B1619D18();
    __swift_project_value_buffer(v5, qword_1EB752A58);
    v6 = sub_1B1619CF8();
    v7 = sub_1B161A088();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_1B15BF000, v6, v7, "Unrecognized CUIShadowStyle with rawValue %ld", v8, 0xCu);
      MEMORY[0x1B2730CA0](v8, -1, -1);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x3020001u >> (8 * a1);
  }

  *a2 = v4;
}

void sub_1B15C2584(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 < 0x1C && ((0xC00FFFFu >> a1) & 1) != 0)
  {
    v4 = byte_1B161CFB2[a1];
  }

  else
  {
    if (qword_1EB752580 != -1)
    {
      swift_once();
    }

    v5 = sub_1B1619D18();
    __swift_project_value_buffer(v5, qword_1EB752A58);
    v6 = sub_1B1619CF8();
    v7 = sub_1B161A088();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_1B15BF000, v6, v7, "unsupported CGBlendMode with raw value %d", v8, 8u);
      MEMORY[0x1B2730CA0](v8, -1, -1);
    }

    v4 = 0;
  }

  *a2 = v4;
}

void sub_1B15C26A4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1B15C71A8(a1, a2 & 1);
  }
}

char *sub_1B15C26BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B15C27E4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1B15C28A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B98);
    v3 = sub_1B161A308();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B15C37C0(v4, &v11, &qword_1EB752B60);
      v5 = v11;
      result = sub_1B15C29CC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B15C2260(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B15C29CC(uint64_t a1)
{
  sub_1B1619D98();
  sub_1B161A4B8();
  sub_1B1619DF8();
  v2 = sub_1B161A4F8();

  return sub_1B15C2A60(a1, v2);
}

unint64_t sub_1B15C2A60(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1B1619D98();
      v8 = v7;
      if (v6 == sub_1B1619D98() && v8 == v9)
      {
        break;
      }

      v11 = sub_1B161A448();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1B15C2B78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall ICRIconLayer.layoutSublayers()()
{
  v18.super_class = ICRIconLayer;
  objc_msgSendSuper2(&v18, sel_layoutSublayers);
  v1 = [v0 sublayers];
  if (!v1 || (v2 = v1, sub_1B15C17B0(0, &qword_1EDB2F358), v3 = sub_1B1619EF8(), v2, v17 = *&v0[OBJC_IVAR___ICRIconLayer_iconLayer], MEMORY[0x1EEE9AC00](v4), v16[2] = &v17, v6 = v5, LOBYTE(v2) = sub_1B1606840(sub_1B1606DBC, v16, v3), v6, , (v2 & 1) == 0))
  {
    [v0 addSublayer_];
    [v0 setAllowsGroupBlending_];
    [v0 setAllowsGroupOpacity_];
  }

  v7 = OBJC_IVAR___ICRIconLayer_iconLayer;
  v8 = *&v0[OBJC_IVAR___ICRIconLayer_iconLayer];
  [v0 bounds];
  [v8 setFrame_];

  v9 = *&v0[v7];
  [v0 contentsScale];
  [v9 setContentsScale_];

  v10 = *&v0[v7];
  [v0 rasterizationScale];
  [v10 setRasterizationScale_];

  v11 = *&v0[v7];
  v12 = &v0[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  swift_beginAccess();
  v13 = *(v12 + 8);
  v14 = *v12;
  if (v13)
  {
    v14 = 0.0;
  }

  v15 = &v11[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_displayScaleOverride];
  *v15 = v14;
  *(v15 + 8) = v13;
  [v11 setNeedsDisplay];
  sub_1B15C2EEC();
}

uint64_t sub_1B15C2EEC()
{
  v1 = OBJC_IVAR___ICRIconLayer_iconLayer;
  [*(v0 + OBJC_IVAR___ICRIconLayer_iconLayer) setDevice_];
  v2 = *(v0 + v1);
  sub_1B15C2FC4(v2);
  v3 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon;
  swift_beginAccess();
  sub_1B1606F64(v5, v2 + v3, &qword_1EB752B28);
  swift_endAccess();
  [v2 setNeedsDisplay];

  return sub_1B15C1750(v5, &qword_1EB752B28);
}

void sub_1B15C2FC4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B15C37C0(v1 + v4, v68, &qword_1EB752F20);
  if (v69 == 255)
  {
    bzero(v3, 0x778uLL);
    return;
  }

  if (v69)
  {
    v27 = v3;
    v54 = *&v68[96];
    v55 = *&v68[112];
    v56 = *&v68[128];
    v57 = *&v68[144];
    v50 = *&v68[32];
    v51 = *&v68[48];
    v52 = *&v68[64];
    v53 = *&v68[80];
    v48 = *v68;
    v49 = *&v68[16];
    v5 = *(v1 + OBJC_IVAR___ICRIconLayer__iconStyle + 16);
    v58 = *(v1 + OBJC_IVAR___ICRIconLayer__iconStyle);
    v59 = v5;
    v60 = *(v1 + OBJC_IVAR___ICRIconLayer__iconStyle + 32);
    v61 = *(v1 + OBJC_IVAR___ICRIconLayer__iconStyle + 48);
    v26 = OBJC_IVAR___ICRIconLayer_iconLayer;
    memcpy(v62, (*(v1 + OBJC_IVAR___ICRIconLayer_iconLayer) + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters), 0x653uLL);
    sub_1B15C0D28(v63);
    memcpy(&v39[5], v63, 0x653uLL);
    v34[6] = v54;
    v34[7] = v55;
    v34[8] = v56;
    v34[9] = v57;
    v34[2] = v50;
    v34[3] = v51;
    v34[4] = v52;
    v34[5] = v53;
    v34[0] = v48;
    v34[1] = v49;
    __dst[0] = v58;
    __dst[1] = v59;
    __dst[2] = v60;
    LOWORD(__dst[3]) = v61;
    sub_1B15C37C0(v62, v35, &qword_1EB752A78);
    v6 = v1;
    sub_1B15C76B8(__dst, v35);
    sub_1B15C927C(&v48);
    v65[2] = *&v35[48];
    v65[1] = *&v35[32];
    v65[5] = *&v35[96];
    v65[6] = *&v35[112];
    v66 = *&v35[128];
    v67 = *&v35[144];
    v65[3] = *&v35[64];
    v65[4] = *&v35[80];
    v64 = *v35;
    v65[0] = *&v35[16];
    if (*&v35[8])
    {
      v7 = v64;
    }

    else
    {
      v7 = 7104878;
    }

    if (*(&v64 + 1))
    {
      v8 = *(&v64 + 1);
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v45 = *(&v65[4] + 8);
    v46 = *(&v65[5] + 8);
    v47 = BYTE8(v65[6]);
    v41 = *(v65 + 8);
    v42 = *(&v65[1] + 8);
    v43 = *(&v65[2] + 8);
    v44 = *(&v65[3] + 8);
    v9 = v66;

    sub_1B15C927C(&v64);
    v10 = *(&v66 + 1);
    v11 = v67;
    v12 = v65[0];
    *(v40 + 7) = v58;
    *(&v40[1] + 7) = v59;
    *(&v40[2] + 7) = v60;
    *(&v40[3] + 7) = v61;
    memcpy(v37, &v39[5], 0x653uLL);
    sub_1B15C1750(v37, &qword_1EB752A78);
    memcpy(&v39[5], v62, 0x653uLL);
    *&v38[64] = v44;
    *&v38[80] = v45;
    *&v38[96] = v46;
    *&v38[16] = v41;
    *&v38[32] = v42;
    *v38 = v7;
    *&v38[8] = v8;
    v38[112] = v47;
    *&v38[48] = v43;
    *&v38[120] = v9;
    *&v38[128] = v10;
    *&v38[136] = v11;
    v38[144] = v12;
    *&v38[145] = v40[0];
    *&v38[161] = v40[1];
    *&v38[177] = v40[2];
    *&v38[186] = *(&v40[2] + 9);
    v38[202] = 0;
    memcpy(&v38[203], v39, 0x658uLL);
    sub_1B1604AE8(v36);
    v13 = v36[0];
    v14 = v36[1];
    v15 = v36[2];
    v16 = *(v6 + v26);
    v17 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon;
    swift_beginAccess();
    sub_1B15C37C0(v16 + v17, v35, &qword_1EB752B28);
    v18 = *(v6 + OBJC_IVAR___ICRIconLayer__device);
    *(&v34[117] + 8) = 0u;
    *(&v34[118] + 8) = 0u;
    sub_1B15C37C0(v35, __src, &qword_1EB752B28);
    if (__src[3])
    {
      memcpy(__dst, __src, 0x778uLL);
      v19 = *&__dst[117];
      if (*&__dst[117])
      {
        if (v18)
        {
          sub_1B15C17B0(0, &qword_1EB752AB8);
          v20 = v18;
          v21 = v19;
          v22 = sub_1B161A0E8();

          if (v22)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        if (!v18)
        {
          v20 = 0;
LABEL_22:
          sub_1B15C1750(&v34[117] + 8, &qword_1EB752A88);
          sub_1B15C283C(__dst, v34);
          memcpy(__src, v38, 0x723uLL);
          v29 = v13;
          v30 = v14;
          FinalizedIcon.update(from:pixelSize:)(__src);

          sub_1B15C1750(v35, &qword_1EB752B28);
          sub_1B15C2874(__dst);
          sub_1B15C5328(v38);
          goto LABEL_23;
        }

        v25 = v18;
      }

      sub_1B15C2874(__dst);
    }

    else
    {
      v24 = v18;
      sub_1B15C1750(__src, &qword_1EB752B28);
    }

    memcpy(__src, v38, 0x723uLL);
    v29 = v13;
    v30 = v14;
    v31 = v15;
    sub_1B15C79C0(__src);
    sub_1B15C1750(v35, &qword_1EB752B28);
    sub_1B15C1750(&v34[117] + 8, &qword_1EB752A88);
    memcpy(v34, __dst, 0x778uLL);
LABEL_23:
    v23 = v27;
    goto LABEL_24;
  }

  memcpy(v35, v68, sizeof(v35));
  sub_1B15C283C(v35, v34);
  memcpy(__src, &v34[2], 0x723uLL);
  memcpy(v28, &v34[2], 0x723uLL);
  sub_1B15C3828(__src, __dst);
  sub_1B15C38D4(v28, v1);
  *v38 = v34[0];
  FinalizedIcon.update(from:pixelSize:)(v28);
  sub_1B15C2874(v35);
  memcpy(__dst, v28, 0x723uLL);
  sub_1B15C5328(__dst);
  v23 = v3;
LABEL_24:
  memcpy(v23, v34, 0x778uLL);
}

uint64_t sub_1B15C3784(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 1913))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1912);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B15C37C0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B15C3860(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    bzero(a1, 0x779uLL);
    *a1 = v5;
    if (a3 >= 0xFF)
    {
      *(a1 + 1913) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 1913) = 0;
    }

    if (a2)
    {
      *(a1 + 1912) = -a2;
    }
  }
}

void sub_1B15C38D4(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 168);
  oslog = *(a1 + 160);
  v4 = *(a1 + 176);
  v3 = *(a1 + 184);
  v5 = *(a1 + 192);
  v6 = *(a1 + 200);
  v7 = (a2 + OBJC_IVAR___ICRIconLayer__iconStyle);
  v25 = *(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 16);
  v23 = *(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 24);
  v24 = *(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 32);
  v26 = *(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 40);
  v27 = *(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 8);
  v8 = *(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 48);
  v9 = *(a1 + 153) == 0;
  if (*(a1 + 153))
  {
    v10 = 1802658148;
  }

  else
  {
    v10 = 0x746867696CLL;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (*(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 1))
  {
    v12 = 1802658148;
  }

  else
  {
    v12 = 0x746867696CLL;
  }

  if (*(a2 + OBJC_IVAR___ICRIconLayer__iconStyle + 1))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {

    if (v6)
    {
LABEL_19:
      if (v4 | v28 | oslog | v3 | v5)
      {
        if ((v8 & 1) == 0 || !(v23 | v25 | v27 | v24 | v26))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v8)
        {
          v19 = (v23 | v25 | v27 | v24 | v26) == 0;
        }

        else
        {
          v19 = 0;
        }

        if (!v19)
        {
          goto LABEL_30;
        }
      }

LABEL_25:
      v16 = *v7;
      v17 = v7[1];
      v18 = v7[2];
      *(a1 + 200) = *(v7 + 24);
      *(a1 + 184) = v18;
      *(a1 + 168) = v17;
      *(a1 + 152) = v16;
      return;
    }
  }

  else
  {
    v15 = sub_1B161A448();

    if ((v15 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v6)
    {
      goto LABEL_19;
    }
  }

  if (!v8)
  {
    goto LABEL_25;
  }

LABEL_30:
  if (qword_1EB752618 != -1)
  {
    swift_once();
  }

  v20 = sub_1B1619D18();
  __swift_project_value_buffer(v20, qword_1EB752F00);
  osloga = sub_1B1619CF8();
  v21 = sub_1B161A088();
  if (os_log_type_enabled(osloga, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1B15BF000, osloga, v21, "attempting to change iconStyle on a layer displaying an icon finalized with a different style that would require rebaking! ignoring.", v22, 2u);
    MEMORY[0x1B2730CA0](v22, -1, -1);
  }
}

uint64_t sub_1B15C3B5C(uint64_t a1)
{
  v1 = *(a1 + 360);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t FinalizedIcon.update(from:pixelSize:)(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v3 = v1;
  v5 = v4;
  v6 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B38);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v100 - v12;
  v14 = sub_1B1619C68();
  v116 = *(v14 - 8);
  v117 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v114 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v100 - v17;
  memcpy(v150, v6, 0x723uLL);
  v148[0] = *v5;
  sub_1B15C4F18(v148);
  v18 = *(v3 + 16);
  if (v149[0] != *v3)
  {
    memcpy(v148, v150, 0x723uLL);
    *v147 = v149[0];
    *&v147[16] = v18;
    v29 = *(v3 + 1872);
    sub_1B15C3828(v150, v149);
    v30 = v29;
    sub_1B15C79C0(v148);
    v31 = v3;
    return sub_1B15DA08C(v149, v31);
  }

  v101 = v7;
  v102 = v13;
  v113 = v149[0];
  v103 = v11;
  v104 = v9;
  v105 = v10;
  v111 = *(&v150[10] + 1);
  v112 = *&v150[10];
  v19 = v150[11];
  v20 = *&v150[12];
  v21 = BYTE8(v150[12]);
  v22 = *(v3 + 185);
  v23 = *(v3 + 192);
  v108 = *(v3 + 200);
  v106 = *(v3 + 208);
  v107 = *(v3 + 216);
  v109 = *(v3 + 224);
  v110 = v23;
  v118 = v3;
  v24 = *(v3 + 232);
  if (BYTE9(v150[9]))
  {
    v25 = 1802658148;
  }

  else
  {
    v25 = 0x746867696CLL;
  }

  if (BYTE9(v150[9]))
  {
    v26 = 0xE400000000000000;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  if (v22)
  {
    v27 = 1802658148;
  }

  else
  {
    v27 = 0x746867696CLL;
  }

  if (v22)
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  if (v25 == v27 && v26 == v28)
  {
  }

  else
  {
    v32 = sub_1B161A448();

    if ((v32 & 1) == 0)
    {
      goto LABEL_46;
    }
  }

  if ((v21 & 1) == 0)
  {
    if (!v24)
    {
      goto LABEL_25;
    }

LABEL_46:
    memcpy(v148, v150, 0x723uLL);
    *v147 = v113;
    *&v147[16] = v18;
    v51 = v118;
    v52 = *(v118 + 1872);
    sub_1B15C3828(v150, v149);
    v53 = v52;
    sub_1B15C79C0(v148);
    v31 = v51;
    return sub_1B15DA08C(v149, v31);
  }

  if (v19 | v111 | v112 | *(&v19 + 1) | v20)
  {
    if ((v24 & 1) == 0 || !(v106 | v108 | v110 | v107 | v109))
    {
      goto LABEL_46;
    }
  }

  else if (!v24 || v106 | v108 | v110 | v107 | v109)
  {
    goto LABEL_46;
  }

LABEL_25:
  if (qword_1EB7525B0 != -1)
  {
    swift_once();
  }

  v33 = sub_1B1619C98();
  __swift_project_value_buffer(v33, qword_1EB752AF8);
  sub_1B1619C88();
  v34 = v115;
  sub_1B1619C38();
  sub_1B15C3828(v150, v149);
  v35 = sub_1B1619C88();
  v36 = sub_1B161A0A8();
  sub_1B15C5328(v150);
  if (sub_1B161A0F8())
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v149[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1B15E4764(*&v150[0], *(&v150[0] + 1), v149);
    v39 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v35, v36, v39, "Incremental Update", "%s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1B2730CA0](v38, -1, -1);
    MEMORY[0x1B2730CA0](v37, -1, -1);
  }

  v41 = v117;
  v40 = v118;
  v42 = v116;
  (*(v116 + 16))(v114, v34, v117);
  sub_1B1619CD8();
  swift_allocObject();
  v43 = sub_1B1619CC8();
  (*(v42 + 8))(v34, v41);
  memcpy(v146, &v150[13], 0x653uLL);
  memcpy(v147, &v150[13], sizeof(v147));
  p_cache = _TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource.cache;
  if (sub_1B15C3B5C(v147) == 1)
  {
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    v45 = byte_1EDB2FD28;
  }

  else
  {
    v45 = v146[37];
  }

  memcpy(v141, v40 + 240, 0x128uLL);
  v46 = v40[536];
  memcpy(v148, v40 + 537, 0x52AuLL);
  memcpy(v149, v40 + 240, 0x128uLL);
  BYTE8(v149[18]) = v46;
  memcpy(&v149[18] + 9, v40 + 537, 0x52AuLL);
  if (sub_1B15C3B5C(v149) == 1)
  {
    memcpy(v144, v141, 0x128uLL);
    v144[296] = v46;
    memcpy(v145, v148, sizeof(v145));
    v47 = v118;
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    v48 = byte_1EDB2FD28;
    sub_1B15C1750(v144, &qword_1EB752A78);
    if ((v45 & 1) != v48)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v49 = v45 ^ v46;
    v47 = v118;
    if (v49)
    {
LABEL_78:
      memcpy(v149, v150, 0x723uLL);
      v148[0] = v113;
      v75 = sub_1B15C5358(v148);
      if (v75)
      {
        v76 = v75;
      }

      else
      {
      }

      *(v47 + 24) = v76;
      goto LABEL_82;
    }
  }

  memcpy(v148, v146, 0x653uLL);
  if (sub_1B15C3B5C(v148) == 1)
  {
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    v50 = *&qword_1EDB2FD30;
  }

  else
  {
    v50 = *&v146[38];
  }

  memcpy(v139, (v47 + 240), 0x130uLL);
  v55 = *(v47 + 544);
  memcpy(v140, (v47 + 552), 0x51BuLL);
  memcpy(v149, (v47 + 240), 0x130uLL);
  *&v149[19] = v55;
  memcpy(&v149[19] + 8, (v47 + 552), 0x51BuLL);
  if (sub_1B15C3B5C(v149) == 1)
  {
    memcpy(v141, v139, sizeof(v141));
    v142 = v55;
    memcpy(v143, v140, sizeof(v143));
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    v55 = *&qword_1EDB2FD30;
    sub_1B15C1750(v141, &qword_1EB752A78);
  }

  if (v50 != v55)
  {
    goto LABEL_78;
  }

  v56 = &v122;
  memcpy(v140, v146, 0x653uLL);
  if (sub_1B15C3B5C(v140) != 1)
  {
    v57 = v146;
    goto LABEL_58;
  }

  if (qword_1EDB2FBF8 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    memcpy(v149, &unk_1EDB2FC00, 0x653uLL);
    sub_1B15C51D0(v149, v138);
    v57 = v149;
LABEL_58:
    memcpy(v139, v57, 0x653uLL);
    sub_1B15C37C0(v146, v149, &qword_1EB752A78);
    sub_1B15C5664(v139);
    v122 = *&v139[165];
    v123 = *&v139[167];
    v124 = *&v139[169];
    *(v56 + 41) = *(&v139[170] + 1);
    memcpy(v137, (v47 + 240), 0x653uLL);
    memcpy(v138, (v47 + 240), 0x653uLL);
    if (sub_1B15C3B5C(v138) == 1)
    {
      if (p_cache[383] != -1)
      {
        swift_once();
      }

      memcpy(v149, &unk_1EDB2FC00, 0x653uLL);
      sub_1B15C51D0(v149, v135);
      v58 = v149;
    }

    else
    {
      v58 = v137;
    }

    memcpy(v136, v58, 0x653uLL);
    sub_1B15C37C0(v137, v149, &qword_1EB752A78);
    sub_1B15C5664(v136);
    v149[0] = *&v136[165];
    v149[1] = *&v136[167];
    v149[2] = *&v136[169];
    *(&v149[2] + 9) = *(&v136[170] + 1);
    if (!_s13IconRendering22ICRRenderingParametersV6ShadowV2eeoiySbAE_AEtFZ_0(&v122, v149))
    {
      goto LABEL_78;
    }

    if (*&v150[8] != *(v47 + 160))
    {
      goto LABEL_78;
    }

    if (*(&v150[8] + 1) != *(v47 + 168))
    {
      goto LABEL_78;
    }

    v59 = *(v47 + 152);
    if (!v59 || *(*(v47 + 24) + 16) != *(v59 + 16) || !*(&v150[7] + 1))
    {
      goto LABEL_78;
    }

    v116 = *(&v150[7] + 1);
    v117 = (v47 + 24);
    *&v149[0] = *(&v150[7] + 1);
    *&v135[0] = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B40);
    sub_1B15CE538(&qword_1EDB2FB18, &qword_1EB752B40);
    v60 = v102;
    sub_1B1619D48();
    v61 = v104;
    (*(v103 + 16))(v104, v60, v105);
    v62 = *(v101 + 36);
    sub_1B15CE538(&qword_1EDB2FAD0, &qword_1EB752B38);
    sub_1B161A028();
    sub_1B161A038();
    if (*&v61[v62] != *&v149[0])
    {
      break;
    }

    v63 = v104;
LABEL_71:
    sub_1B15C1750(v63, &qword_1EB752B30);
    v64 = *(v116 + 16);
    if (!v64)
    {
LABEL_84:
      (*(v103 + 8))(v102, v105);
      v47 = v118;
LABEL_82:
      v149[4] = v150[5];
      v149[5] = v150[6];
      LOBYTE(v149[6]) = v150[7];
      v149[0] = v150[1];
      v149[1] = v150[2];
      v149[3] = v150[4];
      v149[2] = v150[3];
      *(v47 + 1864) = sub_1B15E10C0();
      memcpy(v149, (v47 + 32), 0x723uLL);
      sub_1B15C3828(v150, v148);
      sub_1B15C5328(v149);
      memcpy((v47 + 32), v150, 0x723uLL);
      sub_1B15E1770(v43, v150, "Incremental Update");
    }

    v65 = 0;
    v56 = 0;
    p_cache = *v117;
    v47 = v116 + 32;
    v66 = (v64 - 1);
    while (1)
    {
      v149[0] = *v47;
      v67 = *(v47 + 16);
      v68 = *(v47 + 32);
      v69 = *(v47 + 48);
      *&v149[4] = *(v47 + 64);
      v149[3] = v69;
      v149[2] = v68;
      v149[1] = v67;
      sub_1B15C7FBC(v149, &v122);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        p_cache = sub_1B15CEC20(p_cache);
      }

      v70 = p_cache[2];
      sub_1B15CA744(v149);
      if (v56 >= v70)
      {
        break;
      }

      v71 = &p_cache[v65];
      v72 = *(&v149[0] + 1);
      v73 = v149[1];
      v74 = *(&v149[2] + 8);
      *(v71 + 2) = *(&v149[1] + 8);
      *(v71 + 3) = v74;
      v71[64] = v73;
      *(v71 + 9) = v72;
      if (v66 == v56)
      {
        *v117 = p_cache;
        goto LABEL_84;
      }

      v65 += 22;
      v47 += 72;
      v56 = (v56 + 1);
    }

    __break(1u);
LABEL_97:
    swift_once();
  }

  while (1)
  {
    v77 = sub_1B161A058();
    v79 = v78[1];
    *v134 = *v78;
    *&v134[16] = v79;
    v81 = v78[3];
    v80 = v78[4];
    v82 = v78[2];
    *&v134[74] = *(v78 + 74);
    *&v134[48] = v81;
    *&v134[64] = v80;
    *&v134[32] = v82;
    sub_1B15C37C0(v134, v149, &qword_1EB752B48);
    v77(&v122, 0);
    sub_1B161A048();
    v83 = *v134;
    if (v134[89])
    {
      break;
    }

    memcpy(v149, v150, 0x723uLL);
    v120[2] = *&v134[40];
    v120[3] = *&v134[56];
    v121 = *&v134[72];
    v120[0] = *&v134[8];
    v120[1] = *&v134[24];
    v119[11] = v113;
    v133[0] = *v134;
    v133[1] = *&v134[16];
    v97 = *&v134[32];
    v98 = *&v134[48];
    v99 = *&v134[64];
    *(v56 + 250) = *&v134[74];
    v133[3] = v98;
    v133[4] = v99;
    v133[2] = v97;
    sub_1B15C37C0(v133, v119, &qword_1EB752B50);
    sub_1B15C8018(v120);
    result = sub_1B15C1750(v134, &qword_1EB752B48);
    v119[4] = v126;
    v119[5] = v127;
    v119[2] = v124;
    v119[3] = v125;
    v119[9] = v131;
    v119[10] = v132;
    v119[7] = v129;
    v119[8] = v130;
    v119[6] = v128;
    v119[0] = v122;
    v119[1] = v123;
    if (*(*v117 + 16) < v83)
    {
      goto LABEL_99;
    }

    if ((v83 & 0x8000000000000000) != 0)
    {
      goto LABEL_100;
    }

    v135[8] = v130;
    v135[9] = v131;
    v135[10] = v132;
    v135[4] = v126;
    v135[5] = v127;
    v135[6] = v128;
    v135[7] = v129;
    v135[0] = v122;
    v135[1] = v123;
    v135[2] = v124;
    v135[3] = v125;
    sub_1B15E66A4(v83, v83, v135);
    sub_1B15CE4CC(v119);
    sub_1B15C1750(v134, &qword_1EB752B48);
LABEL_87:
    v63 = v104;
    sub_1B161A038();
    if (*(v63 + v62) == *&v149[0])
    {
      goto LABEL_71;
    }
  }

  v84 = v117;
  v85 = *v117;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B15CEC20(v85);
    v85 = result;
  }

  v86 = *(v85 + 16);
  if (v83 < v86)
  {
    v87 = v86 - 1;
    v88 = (v85 + 176 * v83);
    v89 = v88[2];
    v90 = v88[3];
    v149[2] = v88[4];
    v149[1] = v90;
    v149[0] = v89;
    v91 = v88[5];
    v92 = v88[6];
    v93 = v88[7];
    v149[6] = v88[8];
    v149[5] = v93;
    v149[4] = v92;
    v149[3] = v91;
    v94 = v88[9];
    v95 = v88[10];
    v96 = v88[11];
    v149[10] = v88[12];
    v149[9] = v96;
    v149[8] = v95;
    v149[7] = v94;
    memmove(v88 + 2, v88 + 13, 176 * (v87 - v83));
    *(v85 + 16) = v87;
    sub_1B15C1750(v134, &qword_1EB752B48);
    sub_1B15CE4CC(v149);
    *v84 = v85;
    goto LABEL_87;
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
  return result;
}

uint64_t sub_1B15C4F18(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v1 + 152);
  result = memcpy(v25, (v1 + 208), 0x653uLL);
  if (qword_1EDB30368 != -1)
  {
    result = swift_once();
  }

  if (v5 == qword_1EDB32768 && v6 == unk_1EDB32770)
  {
    *v4 = vdupq_n_s64(1uLL);
    return result;
  }

  memcpy(__dst, (v1 + 208), 0x653uLL);
  if (sub_1B15C3B5C(__dst) != 1)
  {
    v10 = v25;
    goto LABEL_12;
  }

  if (qword_1EDB2FBF8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    memcpy(v22, &unk_1EDB2FC00, 0x653uLL);
    sub_1B15C51D0(v22, v23);
    v10 = v22;
LABEL_12:
    memcpy(v23, v10, 0x653uLL);
    v11 = v5;
    v12 = v6;
    v13 = v23[45];
    if (*(v23[45] + 16) && (v14 = sub_1B15C522C(v7), (v15 & 1) != 0))
    {
      v16 = *(v13 + 56) + 888 * v14;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      sub_1B15C37C0(v25, v22, &qword_1EB752A78);
      result = sub_1B15C5664(v23);
      if ((v18 & 1) == 0)
      {
        if (v11 / v17 <= v12)
        {
          v12 = v11 / v17;
        }

        goto LABEL_21;
      }
    }

    else
    {
      sub_1B15C37C0(v25, v22, &qword_1EB752A78);
      result = sub_1B15C5664(v23);
    }

    if (v12 >= v11)
    {
      v12 = v5;
    }

    v17 = 1.0;
LABEL_21:
    v19 = v12 * v17;
    if (COERCE__INT64(fabs(v12 * v17)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v19 <= -9.22337204e18)
    {
      goto LABEL_33;
    }

    if (v19 >= 9.22337204e18)
    {
      goto LABEL_34;
    }

    v20 = v19;
    if (v19 <= 1)
    {
      v20 = 1;
    }

    if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    if (v12 <= -9.22337204e18)
    {
      goto LABEL_36;
    }

    if (v12 < 9.22337204e18)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v21 = v12;
  if (v12 <= 1)
  {
    v21 = 1;
  }

  v4->i64[0] = v20;
  v4->i64[1] = v21;
  return result;
}

unint64_t sub_1B15C522C(unsigned __int8 a1)
{
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](a1);
  v2 = sub_1B161A4F8();

  return sub_1B15C55F4(a1, v2);
}

uint64_t sub_1B15C5298(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1912))
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

uint64_t sub_1B15C52E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1619))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 360);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B15C5358(uint64_t a1)
{
  v28 = *MEMORY[0x1EEE9AC00](a1);
  v3 = *(v1 + 15);
  v74 = *(v1 + 14);
  v4 = v1[5];
  v71 = v1[4];
  v72 = v4;
  v73 = v1[6];
  v5 = v1[1];
  v67 = *v1;
  v68 = v5;
  v6 = v1[3];
  v69 = v1[2];
  v70 = v6;
  memcpy(__dst, v1 + 8, sizeof(__dst));
  if (!v3)
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v75 = MEMORY[0x1E69E7CC0];
  result = sub_1B15C92D0(0, v7, 0);
  if (*(v3 + 16))
  {
    v10 = 0;
    v8 = v75;
    v11 = v3 + 32;
    while (1)
    {
      v64[0] = *v11;
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
      v14 = *(v11 + 48);
      v65 = *(v11 + 64);
      v64[3] = v14;
      v64[2] = v13;
      v64[1] = v12;
      v47 = v71;
      v48 = v72;
      v49 = v73;
      v43 = v67;
      v44 = v68;
      v45 = v69;
      v46 = v70;
      v50 = v74;
      v51 = v3;
      memcpy(v52, __dst, sizeof(v52));
      v15 = *(v11 + 48);
      v41[2] = *(v11 + 32);
      v41[3] = v15;
      v42 = *(v11 + 64);
      v16 = *(v11 + 16);
      v41[0] = *v11;
      v41[1] = v16;
      v40 = v28;
      sub_1B15C7FBC(v64, &v29);
      sub_1B15C8018(v41);
      if (v2)
      {
        break;
      }

      result = sub_1B15CA744(v64);
      v33 = v57;
      v34 = v58;
      v30 = v54;
      v31 = v55;
      v32 = v56;
      v38 = v62;
      v39 = v63;
      v35 = v59;
      v36 = v60;
      v37 = v61;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      v29 = v53;
      v75 = v8;
      if (v18 >= v17 >> 1)
      {
        result = sub_1B15C92D0((v17 > 1), v18 + 1, 1);
        v8 = v75;
      }

      *(v8 + 16) = v18 + 1;
      v19 = (v8 + 176 * v18);
      v20 = v29;
      v21 = v31;
      v19[3] = v30;
      v19[4] = v21;
      v19[2] = v20;
      v22 = v32;
      v23 = v33;
      v24 = v35;
      v19[7] = v34;
      v19[8] = v24;
      v19[5] = v22;
      v19[6] = v23;
      v25 = v36;
      v26 = v37;
      v27 = v39;
      v19[11] = v38;
      v19[12] = v27;
      v19[9] = v25;
      v19[10] = v26;
      if (v7 - 1 == v10)
      {
        return v8;
      }

      v11 += 72;
      if (++v10 >= *(v3 + 16))
      {
        goto LABEL_14;
      }
    }

    sub_1B15CA744(v64);

    return v8;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_1B15C55F4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

BOOL _s13IconRendering22ICRRenderingParametersV6ShadowV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 48) == *(a2 + 48) && *(a1 + 40) == *(a2 + 40))
  {
    return *(a1 + 56) == *(a2 + 56);
  }

  return result;
}

id sub_1B15C5790()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_hasSetUp) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_hasSetUp) = 1;
    v2 = [objc_opt_self() currentEnvironment];
    sub_1B15FAE80();

    LODWORD(v3) = 2139095040;
    [v1 setDisplayHeadroomLimit_];
    [v1 setHDRMode_];
    [v1 setColorMode_];
    [v1 setPromotesFramebuffer_];
    [v1 setOpaque_];
  }

  v4 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon;
  swift_beginAccess();
  sub_1B15C37C0(v1 + v4, __src, &qword_1EB752B28);
  if (!__src[3])
  {
    sub_1B15C1750(__src, &qword_1EB752B28);
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  memcpy(__dst, __src, sizeof(__dst));
  v5 = __dst[24];
  v6 = __dst[25];
  v7 = __dst[26];
  v8 = __dst[27];
  v9 = __dst[28];
  v10 = LOBYTE(__dst[29]);
  sub_1B15C2874(__dst);
  if (v10 == 1 && !(v7 | v6 | v5 | v8 | v9) || (*(v1 + OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 33) & 1) != 0)
  {
    goto LABEL_9;
  }

  v11 = *MEMORY[0x1E6979D18];
LABEL_10:
  [v1 setCompositingFilter_];
  swift_unknownObjectRelease();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ICRIconRenderingLayer();
  return objc_msgSendSuper2(&v13, sel_display);
}

void sub_1B15C5990(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1B15C5A0C(void *a1, void (*a2)(void))
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  v6 = a1;
  a2();
}

uint64_t sub_1B15C5AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B15C5B24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = sub_1B161A438();
  v5 = CFGetTypeID(v4);
  swift_unknownObjectRelease();
  TypeID = CGColorGetTypeID();
  if (v5 == TypeID)
  {
    sub_1B15C10F0(a1, v19);
    type metadata accessor for CGColor(0);
    swift_dynamicCast();
    RBColorFromCGColor2();
    v16 = v11;
    v17 = v10;
    v14 = v13;
    v15 = v12;

    result = __swift_destroy_boxed_opaque_existential_0(a1);
    v8 = vcvtq_f64_f32(__PAIR64__(v16, v17));
    v9 = vcvtq_f64_f32(__PAIR64__(v14, v15));
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_0(a1);
    v8 = 0uLL;
    v9 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  *(a2 + 32) = v5 != TypeID;
  return result;
}

CGColorSpaceRef sub_1B15C5C3C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v3 = *(v1 + 5296);
  v4 = *(v1 + 5448);
  v5 = *(v1 + 5456);
  v6 = *(v1 + 5464);
  v7 = *(v1 + 5472);
  v100.origin.x = v4;
  v100.origin.y = v5;
  v100.size.width = v6;
  v100.size.height = v7;
  MidX = CGRectGetMidX(v100);
  v101.origin.x = v4;
  v101.origin.y = v5;
  v101.size.width = v6;
  v90 = v7;
  v101.size.height = v7;
  [v3 translateByX:MidX Y:CGRectGetMidY(v101)];
  v9 = *(v1 + 5480);
  [v3 scaleByX:v9 Y:v9];
  v10 = *(v1 + 5344);
  v11 = *(v1 + 5352);
  v12 = *(v1 + 5360);
  v13 = *(v1 + 5368);
  v102.origin.x = v10;
  v102.origin.y = v11;
  v102.size.width = v12;
  v102.size.height = v13;
  v14 = -CGRectGetMidX(v102);
  v103.origin.x = v10;
  v103.origin.y = v11;
  v103.size.width = v12;
  v103.size.height = v13;
  [v3 translateByX:v14 Y:-CGRectGetMidY(v103)];
  if (*(v1 + 1720) == 1)
  {
    LODWORD(v15) = 1067030938;
    [v3 addContentHeadroom_];
  }

  v16 = v1 + 1720;
  v17 = *(v1 + 33);
  v18 = *(v1 + 57);
  if (v18 == 2)
  {
    if (*(v1 + 56) & 1) != 0 || *(v1 + 48) <= 0.0 || ((v17 ^ 1))
    {
      goto LABEL_24;
    }
  }

  else if ((v18 & 1) == 0)
  {
    goto LABEL_24;
  }

  v88 = v13;
  v85 = v12;
  v19 = v11;
  v20 = v10;
  [v3 save];
  v22 = (v1 + 1976);
  v23 = (v1 + 1944);
  v24 = (v1 + 1880);
  v25 = (v1 + 1912);
  if (*(v1 + 6433) != 2)
  {
    v22 = (v1 + 1968);
    v25 = (v1 + 1904);
    v23 = (v1 + 1936);
    v24 = (v1 + 1872);
  }

  v26 = (v1 + 1992);
  v27 = (v1 + 1960);
  v28 = (v1 + 1928);
  v29 = (v1 + 1896);
  if (*(v1 + 6433))
  {
    v26 = (v1 + 1984);
    v28 = (v1 + 1920);
    v27 = (v1 + 1952);
    v29 = (v1 + 1888);
  }

  if (*(v1 + 6433) <= 1u)
  {
    v30 = v26;
  }

  else
  {
    v30 = v22;
  }

  if (*(v1 + 6433) <= 1u)
  {
    v31 = v28;
  }

  else
  {
    v31 = v25;
  }

  if (*(v1 + 6433) <= 1u)
  {
    v23 = v27;
    v24 = v29;
  }

  v32 = v9;
  v33 = v6;
  *&v21 = *v24;
  [v3 addShadowStyleWithRadius:34 offset:*v31 color:*v23 mode:{*v30, 0.0, 0.0, 0.0, v21}];
  v34 = *(v1 + 5304);
  v35 = *(v1 + 5312);
  v36 = *(v1 + 5408);
  v96 = *(v1 + 5392);
  v97 = v36;
  v98 = *(v1 + 5424);
  v99 = *(v1 + 5440);
  if (qword_1EDB30338 != -1)
  {
    swift_once();
  }

  v37 = *&xmmword_1EDB30340;
  v38 = *(&xmmword_1EDB30340 + 1);
  v39 = *&qword_1EDB30350;
  v40 = unk_1EDB30358;
  sub_1B160E3D0(v35, *&xmmword_1EDB30340);
  *&v41 = v37;
  *&v42 = v38;
  *&v43 = v39;
  *&v44 = v40;
  [v34 setColor:3 colorSpace:{v41, v42, v43, v44}];
  LODWORD(v45) = 1.0;
  [v3 drawShape:v35 fill:v34 alpha:0 blendMode:v45];
  [v35 setRenderingMode_];
  [v3 restore];
  v6 = v33;
  v9 = v32;
  v10 = v20;
  v11 = v19;
  v12 = v85;
  v13 = v88;
LABEL_24:
  if ((*(v1 + 3322) & 1) == 0)
  {
    v46 = *(v1 + 5312);
    v47 = *(v1 + 5408);
    v93[111] = *(v1 + 5392);
    v93[112] = v47;
    v94 = *(v1 + 5424);
    v95 = *(v1 + 5440);
    sub_1B160E3D0(v46, *&v94);
    LODWORD(v48) = 1.0;
    [v3 clipShape:v46 alpha:0 mode:v48];
  }

  [v3 beginLayerWithFlags_];
  v49 = &selRef_gradientStartPoint;
  if (*(v1 + 5241) != 1 || *(v1 + 5288) == 1)
  {
    sub_1B15F8F7C(v1);
    goto LABEL_33;
  }

  v82 = *(v1 + 5264);
  v86 = *(v1 + 5248);
  v51 = *(v1 + 5280);
  [v3 save];
  *&v52 = v51;
  [v3 addSaturationFilterWithAmount_];
  if (qword_1EDB30338 != -1)
  {
    swift_once();
  }

  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F198]);
  if (result)
  {

    RBColorAdd();
    *v93 = v54;
    *(v93 + 1) = v55;
    *&v93[1] = v56;
    *(&v93[1] + 1) = v57;
    *v91 = v86;
    *&v91[16] = v82;
    sub_1B16112DC(v93, v91, v3);
    [v3 beginLayerWithFlags_];
    sub_1B15F8F7C(v1);
    LODWORD(v58) = 1.0;
    [v3 drawLayerWithAlpha:0 blendMode:v58];
    [v3 restore];
LABEL_33:
    if (*(v1 + 32) != 1)
    {
      goto LABEL_38;
    }

    v59 = *(v1 + 40);
    v84 = v17;
    v83 = v1 + 1720;
    if ((v59 & 2) != 0)
    {
      v89 = *(v1 + 40);
      v60 = *(v1 + 5392);
      v61 = *(v2 + 5400);
      v62 = *(v2 + 5408);
      v63 = *(v2 + 5416);
      v64 = *(v2 + 5424);
      v65 = *(v2 + 5432);
      v87 = *(v2 + 5440);
      memcpy(v92, (v2 + 80), 0x653uLL);
      memcpy(&v91[7], (v2 + 80), 0x653uLL);
      v66 = *(v2 + 5560);
      v93[0] = *(v2 + 5544);
      v93[1] = v66;
      *&v93[2] = v10;
      *(&v93[2] + 1) = v11;
      *&v93[3] = v12;
      *(&v93[3] + 1) = v13;
      *&v93[4] = v6;
      *(&v93[4] + 1) = v90;
      *&v93[5] = v9;
      *(&v93[5] + 1) = v60;
      *&v93[6] = v61;
      *(&v93[6] + 1) = v62;
      *&v93[7] = v63;
      *(&v93[7] + 1) = v64;
      *&v93[8] = v65;
      BYTE8(v93[8]) = v87;
      memcpy(&v93[8] + 9, v91, 0x65AuLL);
      sub_1B15FA578(v60, v61, v62, v63, v64, v65, v87);
      sub_1B15CC740(v92, v91);
      if (qword_1EDB2FB20 != -1)
      {
        swift_once();
      }

      v67 = memcpy(v91, v93, sizeof(v91));
      MEMORY[0x1EEE9AC00](v67);
      v68 = sub_1B15DFCA8(v91, sub_1B15FA598);
      LODWORD(v69) = 1.0;
      [v3 drawLayerByReference:v68 alpha:27 blendMode:2 flags:v69];
      swift_unknownObjectRelease();
      sub_1B15CD088(v93);
      v17 = v84;
      v16 = v83;
      v49 = &selRef_gradientStartPoint;
      if ((v89 & 4) == 0)
      {
LABEL_36:
        if (v17)
        {
LABEL_37:
          sub_1B15F92A0();
        }

LABEL_38:
        LODWORD(v50) = 1.0;
        return [v3 v49[63]];
      }
    }

    else if ((v59 & 4) == 0)
    {
      goto LABEL_36;
    }

    sub_1B16193C8();
    v70 = *(v2 + 5392);
    v71 = *(v2 + 5400);
    v72 = *(v2 + 5408);
    v73 = *(v2 + 5416);
    v74 = *(v2 + 5424);
    v75 = *(v2 + 5432);
    v76 = *(v16 + 3720);
    memcpy(v92, (v2 + 80), 0x653uLL);
    memcpy(&v91[7], (v2 + 80), 0x653uLL);
    v77 = *(v2 + 16);
    v93[0] = *v2;
    v93[1] = v77;
    *&v93[2] = v10;
    *(&v93[2] + 1) = v11;
    *&v93[3] = v12;
    *(&v93[3] + 1) = v13;
    *&v93[4] = v6;
    *(&v93[4] + 1) = v90;
    *&v93[5] = v9;
    *(&v93[5] + 1) = v70;
    *&v93[6] = v71;
    *(&v93[6] + 1) = v72;
    *&v93[7] = v73;
    *(&v93[7] + 1) = v74;
    *&v93[8] = v75;
    BYTE8(v93[8]) = v76;
    memcpy(&v93[8] + 9, v91, 0x65AuLL);
    sub_1B15FA578(v70, v71, v72, v73, v74, v75, v76);
    sub_1B15CC740(v92, v91);
    if (qword_1EDB2FB20 != -1)
    {
      swift_once();
    }

    v78 = memcpy(v91, v93, sizeof(v91));
    MEMORY[0x1EEE9AC00](v78);
    v79 = sub_1B15DFB9C(v91, sub_1B15FA58C);
    v91[0] = *(v83 + 3808);
    v80 = sub_1B15CC72C();
    LODWORD(v81) = 1.0;
    [v3 drawLayerByReference:v79 alpha:v80 blendMode:2 flags:v81];
    swift_unknownObjectRelease();
    sub_1B15CD088(v93);
    v49 = &selRef_gradientStartPoint;
    if (!v84)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B15C6590(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon;
  swift_beginAccess();
  sub_1B15C37C0(&v1[v4], __src, &qword_1EB752B28);
  if (!__src[3])
  {
    return sub_1B15C1750(__src, &qword_1EB752B28);
  }

  memcpy(v34, __src, sizeof(v34));
  v5 = &v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_displayScaleOverride];
  v6 = 1.0;
  if ((v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_displayScaleOverride + 8] & 1) == 0)
  {
    v7 = *v5;
    [v1 contentsScale];
    v6 = v7 / v8;
  }

  [v3 scaleByX:v6 Y:v6];
  v9 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  v11 = v3;
  [v1 bounds];
  x = v35.origin.x;
  y = v35.origin.y;
  width = v35.size.width;
  height = v35.size.height;
  CGRectGetMinX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  CGRectGetMinY(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  CGRectGetWidth(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v16 = CGRectGetHeight(v38);
  if (v5[1])
  {
    [v1 contentsScale];
  }

  v18 = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v31 = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
  v19 = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v30[1] = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v20 = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
  v30[2] = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
  v32 = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
  v30[0] = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  v23 = v19;
  v24 = v20;
  v21 = v31;
  v25 = v18;
  *&v26[10] = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 58];
  *&v26[24] = *&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 72];
  if (BYTE8(v31))
  {
    v21 = 0;
  }

  v29 = 0;
  *v26 = v21;
  v26[8] = 0;
  v26[9] = BYTE9(v31) & 1;
  memcpy(__dst, &v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], 0x653uLL);
  memcpy(v22, &v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], sizeof(v22));
  sub_1B15F354C(v30, __src);
  sub_1B15C37C0(__dst, __src, &qword_1EB752A78);
  sub_1B15F8270(v11);

  memcpy(__src, v22, 0x653uLL);
  sub_1B15C1750(__src, &qword_1EB752A78);
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = *v26;
  v28[4] = *&v26[16];
  v28[0] = v23;
  sub_1B15FA510(v28);
  return sub_1B15C2874(v34);
}

uint64_t get_enum_tag_for_layout_string_13IconRendering7TextureVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B15C6AE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1912) = 1;
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

    *(result + 1912) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double ICRRenderingParameters.chicletCornerRadius(on:globalConfig:)(unsigned __int8 *a1)
{
  v2 = *(v1 + 328);
  v3 = *(v1 + 360);
  if (*(v3 + 16))
  {
    v4 = sub_1B15C522C(*a1);
    if (v5)
    {
      v6 = *(v3 + 56) + 888 * v4;
      if (!*(v6 + 8))
      {
        return *v6;
      }
    }
  }

  return v2;
}

id sub_1B15C6D9C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_1B15C6E00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a6;
  v9 = a1;
  v10 = sub_1B15D8950(a3);

  return v10;
}

void sub_1B15C6EC4(uint64_t a1@<X8>)
{
  v3 = [v1 gradient];
  if (v3)
  {
    sub_1B15C189C(v3, v17);
    v4 = v17[5];
    *(a1 + 64) = v17[4];
    *(a1 + 80) = v4;
    *(a1 + 96) = v18;
    v5 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v5;
    v6 = v17[3];
    *(a1 + 32) = v17[2];
    *(a1 + 48) = v6;
  }

  else
  {
    v7 = [v1 color];
    if (v7)
    {
      v8 = v7;
      RBColorFromCGColor2();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      *a1 = v10;
      *(a1 + 8) = v12;
      *(a1 + 16) = v14;
      *(a1 + 24) = v16;
      *(a1 + 96) = 0;
    }

    else
    {
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = -2;
    }
  }
}

uint64_t sub_1B15C6FC4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0xD000000000000014 && 0x80000001B1621920 == a2 || (sub_1B161A448() & 1) != 0)
  {

    return 2;
  }

  if (a1 == 0xD000000000000018 && 0x80000001B1621900 == a2 || (sub_1B161A448() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001B16218E0 == a2)
  {

    return 1;
  }

  v5 = sub_1B161A448();

  return (v5 & 1) != 0;
}

void sub_1B15C7114(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 24);
  if (v6() == 0.0)
  {
    v7 = 0;
    v8 = xmmword_1B161CDB0;
    v9 = 0;
  }

  else
  {
    (v6)(a1, a2);
    v8 = xmmword_1B161CDC0;
    v7 = 0x3FE0000000000000;
  }

  *a3 = v8;
  *(a3 + 16) = v7;
  *(a3 + 24) = v9;
}

void sub_1B15C71A8(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B15C71D0()
{
  v1 = [v0 appearance];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1B1619D98();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return sub_1B15C6FC4(v3, v5);
}

char *sub_1B15C7248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752708);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B15C7370(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = 0;
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v2 = 1;
        goto LABEL_34;
      }

      v3 = a2;
      if (qword_1EB752630 != -1)
      {
        swift_once();
      }

      v9 = sub_1B1619D18();
      __swift_project_value_buffer(v9, qword_1EB7530B8);
      v5 = sub_1B1619CF8();
      v6 = sub_1B161A088();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_33;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
    }

    else
    {
      if (a1 == 7)
      {
        goto LABEL_34;
      }

      if (a1 != 8)
      {
        if (a1 != 9)
        {
          goto LABEL_28;
        }

        goto LABEL_34;
      }

      v3 = a2;
      if (qword_1EB752630 != -1)
      {
        swift_once();
      }

      v10 = sub_1B1619D18();
      __swift_project_value_buffer(v10, qword_1EB7530B8);
      v5 = sub_1B1619CF8();
      v6 = sub_1B161A088();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_33;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
    }

LABEL_27:
    v11 = v6;
    v12 = v5;
    v13 = v7;
    v14 = 2;
LABEL_32:
    _os_log_impl(&dword_1B15BF000, v12, v11, v8, v13, v14);
    MEMORY[0x1B2730CA0](v7, -1, -1);
LABEL_33:

    v2 = 0;
    a2 = v3;
    goto LABEL_34;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v2 = 2;
    }
  }

  else if ((a1 - 1) >= 2)
  {
    if (!a1)
    {
      v3 = a2;
      if (qword_1EB752630 != -1)
      {
        swift_once();
      }

      v4 = sub_1B1619D18();
      __swift_project_value_buffer(v4, qword_1EB7530B8);
      v5 = sub_1B1619CF8();
      v6 = sub_1B161A088();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_33;
      }

      v7 = swift_slowAlloc();
      *v7 = 0;
      goto LABEL_27;
    }

LABEL_28:
    v3 = a2;
    if (qword_1EB752630 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1619D18();
    __swift_project_value_buffer(v16, qword_1EB7530B8);
    v5 = sub_1B1619CF8();
    v17 = sub_1B161A088();
    if (!os_log_type_enabled(v5, v17))
    {
      goto LABEL_33;
    }

    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    v11 = v17;
    v12 = v5;
    v13 = v7;
    v14 = 12;
    goto LABEL_32;
  }

LABEL_34:
  *a2 = v2;
}

uint64_t sub_1B15C76B8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v2[7];
  v48 = v2[6];
  v49 = v10;
  v11 = v2[9];
  v50 = v2[8];
  v51 = v11;
  v12 = v2[3];
  v44 = v2[2];
  v45 = v12;
  v13 = v2[5];
  v46 = v2[4];
  v47 = v13;
  v14 = v2[1];
  v42 = *v2;
  v43 = v14;
  if (v9 != 1 || v6 | v5 | v4 | v7 | v8)
  {
    v15 = v2[7];
    a2[6] = v2[6];
    a2[7] = v15;
    v16 = v2[9];
    a2[8] = v2[8];
    a2[9] = v16;
    v17 = v2[3];
    a2[2] = v2[2];
    a2[3] = v17;
    v18 = v2[5];
    a2[4] = v2[4];
    a2[5] = v18;
    v19 = *v2;
    v20 = v2[1];
LABEL_4:
    *a2 = v19;
    a2[1] = v20;
    return sub_1B15C9220(&v42, v41);
  }

  if ((v3 & 1) == 0)
  {
    v22 = *(&v51 + 1);
    if (*(&v51 + 1))
    {
      v23 = a2;
      if (qword_1EDB2F5D0 != -1)
      {
        swift_once();
      }

      v24 = sub_1B1619D18();
      __swift_project_value_buffer(v24, qword_1EDB2F5D8);
      sub_1B15C9220(&v42, v41);
      v25 = sub_1B1619CF8();
      v26 = sub_1B161A088();
      sub_1B15C927C(&v42);
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v41[0] = v28;
        *v27 = 136315394;
        if (*(&v42 + 1))
        {
          v29 = v42;
        }

        else
        {
          v29 = 0x64656D616E6E753CLL;
        }

        if (*(&v42 + 1))
        {
          v30 = *(&v42 + 1);
        }

        else
        {
          v30 = 0xE90000000000003ELL;
        }

        v31 = sub_1B15E4764(v29, v30, v41);

        *(v27 + 4) = v31;
        *(v27 + 12) = 2080;
        v32 = 0x80000001B16217D0;
        v33 = 0xD000000000000017;
        if (v22 == 2)
        {
          v33 = 0x656C6261746E6974;
          v32 = 0xE800000000000000;
        }

        if (v22 == 1)
        {
          v34 = 1802658148;
        }

        else
        {
          v34 = v33;
        }

        if (v22 == 1)
        {
          v35 = 0xE400000000000000;
        }

        else
        {
          v35 = v32;
        }

        v36 = sub_1B15E4764(v34, v35, v41);

        *(v27 + 14) = v36;
        _os_log_impl(&dword_1B15BF000, v25, v26, "Attempting to use icon %s designed for %s in light mode", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2730CA0](v28, -1, -1);
        MEMORY[0x1B2730CA0](v27, -1, -1);
      }

      a2 = v23;
    }

    v37 = v49;
    a2[6] = v48;
    a2[7] = v37;
    v38 = v51;
    a2[8] = v50;
    a2[9] = v38;
    v39 = v45;
    a2[2] = v44;
    a2[3] = v39;
    v40 = v47;
    a2[4] = v46;
    a2[5] = v40;
    v19 = v42;
    v20 = v43;
    goto LABEL_4;
  }

  return Icon.adaptedForDarkMode()(a2);
}

uint64_t sub_1B15C79C0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v51 = v2;
  v4 = v3;
  v5 = v1;
  v7 = v6;
  v8 = sub_1B1619C68();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v45[-v13];
  memcpy(v56, v5, 0x723uLL);
  v15 = *v4;
  v49 = v4[1];
  v50 = v15;
  v16 = v4[2];
  *(v7 + 1880) = 0u;
  *(v7 + 1896) = 0u;
  if (qword_1EB7525B0 != -1)
  {
    swift_once();
  }

  v17 = sub_1B1619C98();
  __swift_project_value_buffer(v17, qword_1EB752AF8);
  sub_1B1619C88();
  sub_1B1619C38();
  sub_1B15C3828(v56, v55);
  v18 = sub_1B1619C88();
  v19 = sub_1B161A0A8();
  sub_1B15C5328(v56);
  if (sub_1B161A0F8())
  {
    v20 = swift_slowAlloc();
    v46 = v19;
    v21 = v20;
    v22 = swift_slowAlloc();
    v48 = v7;
    v23 = v22;
    *v55 = v22;
    *v21 = 136315138;
    v24 = *&v56[0];
    v47 = v14;
    v25 = v9;
    v26 = v12;
    v27 = v16;
    v28 = v8;
    v29 = *(&v56[0] + 1);

    v30 = sub_1B15E4764(v24, v29, v55);
    v8 = v28;
    v16 = v27;
    v12 = v26;
    v9 = v25;
    v14 = v47;

    *(v21 + 4) = v30;
    v31 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v18, v46, v31, "Initial Bake", "%s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v32 = v23;
    v7 = v48;
    MEMORY[0x1B2730CA0](v32, -1, -1);
    MEMORY[0x1B2730CA0](v21, -1, -1);
  }

  (*(v9 + 16))(v12, v14, v8);
  sub_1B1619CD8();
  swift_allocObject();
  v33 = sub_1B1619CC8();
  (*(v9 + 8))(v14, v8);
  memcpy(v55, v56, sizeof(v55));
  v53 = v50;
  v54 = v49;
  sub_1B15C4F18(&v53);
  v34 = v52[0];
  v35 = v52[1];
  *v7 = v52[0];
  *(v7 + 8) = v35;
  *(v7 + 16) = v16;
  memcpy((v7 + 32), v56, 0x723uLL);
  memcpy(v55, v56, sizeof(v55));
  v53 = v34;
  v54 = v35;
  sub_1B15C3828(v56, v52);
  v36 = v51;
  v37 = sub_1B15C5358(&v53);
  if (!v37)
  {
    if (qword_1EB7525A8 != -1)
    {
      swift_once();
    }

    v39 = sub_1B1619D18();
    __swift_project_value_buffer(v39, qword_1EB752AE0);
    v40 = sub_1B1619CF8();
    v41 = sub_1B161A088();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v7;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1B15BF000, v40, v41, "Attempting to construct an icon without layers set in the configuration!", v43, 2u);
      v44 = v43;
      v7 = v42;
      MEMORY[0x1B2730CA0](v44, -1, -1);
    }

    v37 = MEMORY[0x1E69E7CC0];
  }

  *(v7 + 24) = v37;
  *(v7 + 1872) = v36;
  *&v55[64] = v56[5];
  *&v55[80] = v56[6];
  v55[96] = v56[7];
  *v55 = v56[1];
  *&v55[16] = v56[2];
  *&v55[48] = v56[4];
  *&v55[32] = v56[3];
  *(v7 + 1864) = sub_1B15E10C0();
  sub_1B15E1770(v33, v56, "Initial Bake");
  sub_1B15C5328(v56);
}

void sub_1B15C8018(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v216 = v2;
  v5 = v4;
  v7 = v6;
  v235 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v271[0] = *(v3 + 17);
  *(v271 + 3) = *(v3 + 20);
  v10 = *(v3 + 24);
  v227 = *(v3 + 32);
  v228 = v10;
  v11 = *(v3 + 40);
  v225 = *(v3 + 48);
  v226 = v11;
  v215 = *(v3 + 56);
  v12 = *(v3 + 57);
  *(v270 + 7) = *(v3 + 64);
  v270[0] = v12;
  v14 = *v13;
  v232 = v13[1];
  v233 = v14;
  memcpy(v261, v1, sizeof(v261));
  v15 = objc_allocWithZone(MEMORY[0x1E69C70A8]);
  v221 = v5;
  v16 = [v15 init];
  v17 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v272 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  if (v5)
  {
    [v16 setProfile_];
  }

  LODWORD(v237.f64[0]) = v261[201];
  v220 = v261[200];
  v208 = v7;
  v213 = *&v261[168];
  v214 = *&v261[160];
  v211 = *&v261[192];
  v212 = *&v261[184];
  v210 = *&v261[176];
  if ((v261[200] & 1) != 0 && !(*&v261[176] | *&v261[168] | *&v261[160] | *&v261[184] | *&v261[192]))
  {
    v194 = v16;
    v195 = v17;
    v196 = v272;
  }

  else
  {
    v18 = v16;
    v19 = v17;
    v20 = v272;
    LODWORD(v21) = 1.0;
    [v18 addGrayscaleFilterWithAmount_];
  }

  v22 = *(v235 + 16);
  v234 = v5;
  v218 = v9;
  if (v22)
  {
    v23 = (v235 + 112);
    do
    {
      v24 = *(v23 - 5);
      v25 = *(v23 - 4);
      v26 = *(v23 - 3);
      v268[3] = *(v23 - 2);
      v268[2] = v26;
      v268[1] = v25;
      v268[0] = v24;
      v27 = *(v23 - 1);
      v28 = *v23;
      v29 = v23[1];
      v268[7] = v23[2];
      v268[6] = v29;
      v268[5] = v28;
      v268[4] = v27;
      v30 = v23[3];
      v31 = v23[4];
      v32 = v23[5];
      v269 = *(v23 + 48);
      v268[10] = v32;
      v268[9] = v31;
      v268[8] = v30;
      v33 = *v268;
      if (*v268 > 0.0)
      {
        v34 = v23[5];
        v266[4] = v23[4];
        v266[5] = v34;
        v267 = *(v23 + 96);
        v35 = v23[1];
        v266[0] = *v23;
        v266[1] = v35;
        v36 = v23[2];
        v266[3] = v23[3];
        v266[2] = v36;
        v37 = HIBYTE(v269) != 2;
        v38 = HIBYTE(v269) ^ LOBYTE(v237.f64[0]);
        v39 = dword_1B161DA18[SBYTE8(v268[0])];
        sub_1B15C9418(v268, v251);
        sub_1B15C3828(v261, v251);
        sub_1B160F80C(v266, v39, v16, v17, v272, v268, v37 & v38, v261, v33, 0.0, 0, v266);
        sub_1B15C5328(v261);
        sub_1B15CB1E8(v268);
      }

      v23 = (v23 + 184);
      --v22;
    }

    while (v22);

    v5 = v234;
  }

  else
  {
  }

  [v16 boundingRect];
  v40 = 0.0;
  v222 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  if (!CGRectIsEmpty(v273))
  {
    [v16 boundingRect];
    v43 = v8;
    x = v274.origin.x;
    y = v274.origin.y;
    width = v274.size.width;
    height = v274.size.height;
    v48 = 1.0 / *&v261[128];
    v49 = 1.0 / *&v261[136];
    v40 = v48 * CGRectGetMinX(v274);
    v275.origin.x = x;
    v275.origin.y = y;
    v275.size.width = width;
    v275.size.height = height;
    v222 = v49 * CGRectGetMinY(v275);
    v276.origin.x = x;
    v276.origin.y = y;
    v276.size.width = width;
    v276.size.height = height;
    v41 = v48 * CGRectGetWidth(v276);
    v277.origin.x = x;
    v8 = v43;
    v277.origin.y = y;
    v277.size.width = width;
    v277.size.height = height;
    v42 = v49 * CGRectGetHeight(v277);
  }

  v230 = v17;
  v231 = v16;
  v50 = v235;
  v51 = *(v235 + 16);
  if (v51)
  {
    v52 = 0;
    v53 = v235 + 32;
    v54 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v55 = *(v50 + 16);
      v56 = (v53 + 184 * v52);
      v57 = v52;
      while (1)
      {
        if (v57 >= v55)
        {
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v58 = *v56;
        v59 = v56[1];
        v60 = v56[3];
        v251[2] = v56[2];
        v251[3] = v60;
        v251[0] = v58;
        v251[1] = v59;
        v61 = v56[4];
        v62 = v56[5];
        v63 = v56[7];
        v251[6] = v56[6];
        v251[7] = v63;
        v251[4] = v61;
        v251[5] = v62;
        v64 = v56[8];
        v65 = v56[9];
        v66 = v56[10];
        LOWORD(v251[11]) = *(v56 + 88);
        v251[9] = v65;
        v251[10] = v66;
        v251[8] = v64;
        v52 = v57 + 1;
        if (BYTE9(v251[1]))
        {
          break;
        }

        v56 = (v56 + 184);
        ++v57;
        if (v51 == v52)
        {
          goto LABEL_29;
        }
      }

      sub_1B15C9418(v251, &v252);
      v249 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B15CB364(0, *(v54 + 16) + 1, 1);
        v54 = v249;
      }

      v68 = *(v54 + 16);
      v67 = *(v54 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_1B15CB364((v67 > 1), v68 + 1, 1);
        v54 = v249;
      }

      *(v54 + 16) = v68 + 1;
      v69 = v54 + 184 * v68;
      v70 = v251[0];
      v71 = v251[1];
      v72 = v251[3];
      *(v69 + 64) = v251[2];
      *(v69 + 80) = v72;
      *(v69 + 32) = v70;
      *(v69 + 48) = v71;
      v73 = v251[4];
      v74 = v251[5];
      v75 = v251[7];
      *(v69 + 128) = v251[6];
      *(v69 + 144) = v75;
      *(v69 + 96) = v73;
      *(v69 + 112) = v74;
      v76 = v251[8];
      v77 = v251[9];
      v78 = v251[10];
      *(v69 + 208) = v251[11];
      *(v69 + 176) = v77;
      *(v69 + 192) = v78;
      *(v69 + 160) = v76;
      v5 = v234;
      v50 = v235;
      if (v51 - 1 != v57)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v54 = MEMORY[0x1E69E7CC0];
  }

LABEL_29:
  *&v229 = v54;
  v79 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v80 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v81 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  if (v5)
  {
    [v79 setProfile_];
  }

  v82 = *(v229 + 16);
  v207 = v51;
  v223 = v81;
  v224 = v79;
  v219 = v80;
  if (v82)
  {
    v83 = (v229 + 32);
    *&v236 = v79;
    v84 = v80;
    v85 = v81;
    do
    {
      v86 = *v83;
      v87 = v83[1];
      v88 = v83[2];
      v264[3] = v83[3];
      v264[2] = v88;
      v264[1] = v87;
      v264[0] = v86;
      v89 = v83[4];
      v90 = v83[5];
      v91 = v83[6];
      v264[7] = v83[7];
      v264[6] = v91;
      v264[5] = v90;
      v264[4] = v89;
      v92 = v83[8];
      v93 = v83[9];
      v94 = v83[10];
      v265 = *(v83 + 88);
      v264[10] = v94;
      v264[9] = v93;
      v264[8] = v92;
      sub_1B15C9418(v264, v251);
      if (qword_1EDB30338 != -1)
      {
        swift_once();
      }

      v262[0] = xmmword_1EDB30340;
      v262[1] = *&qword_1EDB30350;
      v263 = 0;
      v95 = HIBYTE(v265) != 2;
      v96 = HIBYTE(v265) ^ LOBYTE(v237.f64[0]);
      v97 = dword_1B161DA18[SBYTE8(v264[0])];
      sub_1B15C3828(v261, v251);
      sub_1B15C9418(v264, v251);
      sub_1B160F80C(v262, v97, v236, v84, v85, v264, v95 & v96, v261, 1.0, 0.0, 1u, v262);
      sub_1B15C5328(v261);
      sub_1B15CB1E8(v264);
      sub_1B15CB1E8(v264);
      v83 = (v83 + 184);
      --v82;
    }

    while (v82);

    v81 = v223;
    v79 = v224;
  }

  else
  {
    v98 = v81;
  }

  v99 = v41;
  v217 = v8;

  v100 = *(v229 + 16);

  v101 = v40;
  if (v100)
  {
    [v79 boundingRect];
    v103 = v102;
    v105 = v104;
    v107 = v106;
    v109 = v108;
    __asm { FMOV            V1.2D, #1.0 }

    v237 = vdivq_f64(_Q1, *&v261[128]);
    _Q1.f64[0] = v105;
    *&v115 = CGRectGetMinX(*&v102);
    v236 = v115;
    *&v115 = v103;
    v116 = v105;
    v117 = v107;
    v118 = v109;
    *&v119 = CGRectGetMinY(*&v115);
    v229 = v119;
    *&v119 = v103;
    v120 = v105;
    v121 = v107;
    v122 = v109;
    v209.f64[0] = CGRectGetWidth(*&v119);
    v278.origin.x = v103;
    v278.origin.y = v105;
    v278.size.width = v107;
    v278.size.height = v109;
    v123 = CGRectGetHeight(v278);
    v124.f64[0] = v209.f64[0];
    v124.f64[1] = v123;
    *&v125.f64[0] = v236;
    *&v125.f64[1] = v229;
    v209 = vmulq_f64(v237, v125);
    v126 = vmulq_f64(v237, v124);
  }

  else
  {
    v126 = 0uLL;
    v209 = 0u;
  }

  v206 = v126;
  v279.origin.x = v101;
  v279.origin.y = v222;
  v279.size.width = v99;
  v279.size.height = v42;
  v127 = floor(CGRectGetMinX(v279) * v233);
  v280.origin.x = v101;
  v280.origin.y = v222;
  v280.size.width = v99;
  v280.size.height = v42;
  v128 = floor(CGRectGetMinY(v280) * v232);
  v281.origin.x = v101;
  v281.origin.y = v222;
  v281.size.width = v99;
  v281.size.height = v42;
  v237.f64[0] = v233;
  v129 = ceil(CGRectGetMaxX(v281) * v233);
  v282.origin.x = v101;
  v282.origin.y = v222;
  v282.size.width = v99;
  v282.size.height = v42;
  v130 = fmax(v129 - v127, 1.0);
  v131 = fmax(ceil(CGRectGetMaxY(v282) * v232) - v128, 1.0);
  v283.origin.x = v127;
  v283.origin.y = v128;
  v283.size.width = v130;
  v283.size.height = v131;
  *&v236 = CGRectGetMinX(v283);
  v284.origin.x = v127;
  v284.origin.y = v128;
  v284.size.width = v130;
  v284.size.height = v131;
  *&v229 = CGRectGetMinY(v284);
  v285.origin.x = v127;
  v285.origin.y = v128;
  v285.size.width = v130;
  v285.size.height = v131;
  v222 = CGRectGetWidth(v285);
  v286.origin.x = v127;
  v286.origin.y = v128;
  v286.size.width = v130;
  v286.size.height = v131;
  v132 = CGRectGetHeight(v286);
  v287.origin.x = v127;
  v287.origin.y = v128;
  v287.size.width = v130;
  v287.size.height = v131;
  v133 = CGRectGetWidth(v287);
  if ((*&v133 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v133 <= -9.22337204e18)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (v133 >= 9.22337204e18)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v288.origin.x = v127;
  v288.origin.y = v128;
  v288.size.width = v130;
  v288.size.height = v131;
  v135 = CGRectGetHeight(v288);
  if ((*&v135 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v135 <= -9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v135 >= 9.22337204e18)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return;
  }

  v136 = 1.0 / v232;
  v137 = 1.0 / v237.f64[0] * *&v236;
  v138 = v136 * *&v229;
  v139 = 1.0 / v237.f64[0] * v222;
  v140 = v136 * v132;
  v141 = 16;
  v205 = v100;
  if (v220)
  {
    v142 = v210 | v213 | v214 | v212 | v211;
    if (v142)
    {
      v141 = 16;
    }

    else
    {
      v141 = 1;
    }

    if (v142)
    {
      v143 = 0;
    }

    else
    {
      v143 = 14;
    }
  }

  else
  {
    v143 = 0;
  }

  v144 = v135;
  MEMORY[0x1EEE9AC00](v134);
  v204[2] = 1.0 / v237.f64[0] * *&v236;
  v204[3] = v138;
  v204[4] = 1.0 / v237.f64[0] * v222;
  v204[5] = v140;
  *&v204[6] = v233;
  *&v204[7] = v232;
  *&v204[8] = v261;
  *&v204[9] = v231;
  *&v204[10] = v230;
  *&v204[11] = v272;
  v145 = [objc_opt_self() currentEnvironment];
  sub_1B15FAE80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B58);
  v146 = swift_allocObject();
  v147 = *MEMORY[0x1E69C7198];
  *(v146 + 32) = *MEMORY[0x1E69C7198];
  v148 = MEMORY[0x1E69E72F0];
  *(v146 + 16) = xmmword_1B161D4A0;
  *(v146 + 40) = v143;
  v149 = *MEMORY[0x1E69C71A0];
  *(v146 + 64) = v148;
  *(v146 + 72) = v149;
  *(v146 + 80) = v141;
  v150 = *MEMORY[0x1E69C7190];
  *(v146 + 104) = v148;
  *(v146 + 112) = v150;
  *(v146 + 144) = MEMORY[0x1E69E6530];
  *(v146 + 120) = 2;
  v151 = v147;
  v152 = v149;
  v153 = v150;
  v154 = sub_1B15C28A4(v146);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v155 = *MEMORY[0x1E69C71B0];
  *(&v251[1] + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v251[0]) = 1;
  sub_1B15C2260(v251, &v252);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v249 = v154;
  sub_1B15E4D0C(&v252, v155, isUniquelyReferenced_nonNull_native);
  if (!v234)
  {
    v221 = [objc_opt_self() sharedDevice];
  }

  type metadata accessor for RBImageRendererProperty(0);
  sub_1B15E6778();
  v157 = sub_1B1619D28();

  v158 = swift_allocObject();
  *(v158 + 16) = sub_1B15E6C78;
  *(v158 + 24) = v204;
  v159 = swift_allocObject();
  *(v159 + 16) = sub_1B15E7034;
  *(v159 + 24) = v158;
  *&v251[2] = sub_1B15E7038;
  *(&v251[2] + 1) = v159;
  *&v251[0] = MEMORY[0x1E69E9820];
  *(&v251[0] + 1) = 1107296256;
  *&v251[1] = sub_1B15C5990;
  *(&v251[1] + 1) = &block_descriptor_54;
  v160 = _Block_copy(v251);

  v161 = [v221 renderImageInRect:v157 options:v160 renderer:{0.0, 0.0, v133, v144}];
  swift_unknownObjectRelease();

  _Block_release(v160);
  LOBYTE(v157) = swift_isEscapingClosureAtFileLocation();

  if (v157)
  {
    goto LABEL_84;
  }

  if (v161)
  {
    memcpy(v251, v261, 0x723uLL);
    *&v252 = v235;
    *(&v252 + 1) = v217;
    v253 = v218;
    *v254 = v271[0];
    *&v254[3] = *(v271 + 3);
    v255 = v228;
    v256 = v227;
    v257 = v226;
    v258 = v225;
    v259 = v215;
    v260[0] = v270[0];
    *(v260 + 7) = *(v270 + 7);
    v249 = v233;
    v250 = v232;
    v162 = v234;
    v163 = v216;
    v164 = sub_1B15C9474(&v252);
    if (v163)
    {
    }

    else
    {
      v167 = v164;
      v168 = v165;
      v169 = v207;
      if (v207)
      {
        *&v229 = v166;
        v170 = 0;
        v171 = v235;
        v172 = (v235 + 32);
        v174 = v227;
        v173 = v228;
        v176 = v225;
        v175 = v226;
        v237.f64[0] = v139;
        *&v236 = v137;
        while (1)
        {
          if (v170 >= *(v171 + 16))
          {
            goto LABEL_77;
          }

          v177 = *v172;
          v178 = v172[1];
          v179 = v172[3];
          v251[2] = v172[2];
          v251[3] = v179;
          v251[0] = v177;
          v251[1] = v178;
          v180 = v172[4];
          v181 = v172[5];
          v182 = v172[7];
          v251[6] = v172[6];
          v251[7] = v182;
          v251[4] = v180;
          v251[5] = v181;
          v183 = v172[8];
          v184 = v172[9];
          v185 = v172[10];
          LOWORD(v251[11]) = *(v172 + 88);
          v251[9] = v184;
          v251[10] = v185;
          v251[8] = v183;
          if (BYTE8(v251[1]))
          {
            if (BYTE8(v251[1]) == 1)
            {
              if (BYTE8(v251[4]))
              {
                break;
              }

              v186 = *&v251[4];
              v187 = *(&v251[3] + 1);
              v188 = *&v251[3];
              v189 = *(&v251[2] + 1);
              v190 = *&v261[128];
              v191 = *&v261[136];
              sub_1B15C9418(v251, &v252);
              v291.origin.x = 0.0;
              v291.origin.y = 0.0;
              v289.origin.x = v189;
              v289.origin.y = v188;
              v289.size.width = v187;
              v289.size.height = v186;
              v291.size.width = v190;
              v291.size.height = v191;
              v290 = CGRectIntersection(v289, v291);
              v292.origin.x = v189;
              v137 = *&v236;
              v292.origin.y = v188;
              v139 = v237.f64[0];
              v292.size.width = v187;
              v292.size.height = v186;
              v192 = CGRectEqualToRect(v290, v292);
              sub_1B15CB1E8(v251);
              v176 = v225;
              v175 = v226;
              v174 = v227;
              v173 = v228;
              if (v192)
              {
                break;
              }
            }
          }

          ++v170;
          v172 = (v172 + 184);
          v171 = v235;
          if (v169 == v170)
          {
            v193 = 1;
            goto LABEL_74;
          }
        }

        v193 = 0;
LABEL_74:
        v162 = v234;
        v166 = v229;
        goto LABEL_75;
      }

      v193 = 1;
      v174 = v227;
      v173 = v228;
      v176 = v225;
      v175 = v226;
LABEL_75:
      *&v238 = v173;
      *(&v238 + 1) = v174;
      *&v239 = v175;
      *(&v239 + 1) = v176;
      LOBYTE(v240) = v218;
      *(&v240 + 1) = v217;
      LOBYTE(v241) = v193;
      *(&v241 + 1) = v161;
      *&v242 = v137;
      *(&v242 + 1) = v138;
      *&v243 = v139;
      *(&v243 + 1) = v140;
      v244 = v209;
      v245 = v206;
      LOBYTE(v246) = v205 == 0;
      *(&v246 + 1) = v167;
      *&v247 = v168;
      *(&v247 + 1) = v166;
      v248 = xmmword_1B161D4B0;
      *&v252 = v233;
      *(&v252 + 1) = v232;
      memcpy(v251, v261, 0x723uLL);
      v197 = v161;
      sub_1B15CA72C(v167, v168);
      sub_1B15E205C(v162);

      sub_1B15C26A4(v167, v168);
      v198 = v247;
      v199 = v208;
      v208[8] = v246;
      v199[9] = v198;
      v199[10] = v248;
      v200 = v243;
      v199[4] = v242;
      v199[5] = v200;
      v201 = v245;
      v199[6] = v244;
      v199[7] = v201;
      v202 = v239;
      *v199 = v238;
      v199[1] = v202;
      v203 = v241;
      v199[2] = v240;
      v199[3] = v203;
    }
  }

  else
  {
    sub_1B15E6CB0();
    swift_allocError();
    swift_willThrow();
  }
}

char *sub_1B15C92D0(char *a1, int64_t a2, char a3)
{
  result = sub_1B15C92F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B15C92F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B15C9474(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v168 = v4;
  v6 = v5;
  LODWORD(v212) = v7;
  v8 = v3;
  v9 = sub_1B1619BF8();
  v162 = *(v9 - 8);
  v163 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v164 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v8;
  v12 = v6[1];
  v166 = *v6;
  memcpy(v196, v1, 0x723uLL);
  v13 = *(v11 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  v165 = v12;
  if (v13)
  {
    v15 = 0;
    v16 = (v11 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    do
    {
      v18 = *(v11 + 16);
      v19 = v16 + 184 * v15;
      v20 = v15;
      while (1)
      {
        if (v20 >= v18)
        {
          __break(1u);
          goto LABEL_70;
        }

        v21 = *v19;
        v22 = *(v19 + 1);
        v23 = *(v19 + 3);
        *&v182[32] = *(v19 + 2);
        *&v182[48] = v23;
        *v182 = v21;
        *&v182[16] = v22;
        v24 = *(v19 + 4);
        v25 = *(v19 + 5);
        v26 = *(v19 + 7);
        *&v182[96] = *(v19 + 6);
        *&v182[112] = v26;
        *&v182[64] = v24;
        *&v182[80] = v25;
        v27 = *(v19 + 8);
        v28 = *(v19 + 9);
        v29 = *(v19 + 10);
        *&v182[176] = *(v19 + 88);
        *&v182[144] = v28;
        *&v182[160] = v29;
        *&v182[128] = v27;
        v15 = (v20 + 1);
        if (v182[25])
        {
          break;
        }

        v19 += 184;
        v20 = (v20 + 1);
        if (v13 == v15)
        {
          goto LABEL_15;
        }
      }

      v170 = v16;
      v30 = v17;
      sub_1B15C9418(v182, &v200);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v30;
      *&v197 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B15CB364(0, v30[2] + 1, 1);
        v17 = v197;
      }

      v33 = v17[2];
      v32 = v17[3];
      if (v33 >= v32 >> 1)
      {
        sub_1B15CB364((v32 > 1), v33 + 1, 1);
        v14 = MEMORY[0x1E69E7CC0];
        v17 = v197;
      }

      v17[2] = v33 + 1;
      v34 = &v17[23 * v33];
      v35 = *v182;
      v36 = *&v182[16];
      v37 = *&v182[48];
      *(v34 + 4) = *&v182[32];
      *(v34 + 5) = v37;
      *(v34 + 2) = v35;
      *(v34 + 3) = v36;
      v38 = *&v182[64];
      v39 = *&v182[80];
      v40 = *&v182[112];
      *(v34 + 8) = *&v182[96];
      *(v34 + 9) = v40;
      *(v34 + 6) = v38;
      *(v34 + 7) = v39;
      v41 = *&v182[128];
      v42 = *&v182[144];
      v43 = *&v182[160];
      *(v34 + 104) = *&v182[176];
      *(v34 + 11) = v42;
      *(v34 + 12) = v43;
      *(v34 + 10) = v41;
      v12 = v165;
      v16 = v170;
    }

    while ((v13 - 1) != v20);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  v44 = v17[2];
  if (!v44)
  {

    return 0;
  }

  v169 = v17;
  if (v212)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526E8);
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_1B161BDD0;
    v45 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    v46 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
    v47 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
    if (v168)
    {
      [v45 setProfile_];
    }

    v2 = v196[16];
    v48 = v196[17];
    v49 = v166 / v196[16];
    v50 = v45;
    v170 = v46;
    v167 = v47;
    [v50 scaleByX:v49 Y:v12 / v48];
    v51 = v169;
    v52 = v169[2];
    if (v52 < 2)
    {
      if (!v52)
      {
        LOBYTE(v20) = 1;
LABEL_42:

        v92 = v167;

        v93 = v170;
        v94 = v212;
        *(v212 + 32) = v50;
        *(v94 + 40) = v93;
        *(v94 + 48) = v92;
        *(v94 + 56) = v20 & 1;
        goto LABEL_43;
      }
    }

    else
    {
      [v50 beginLayerWithFlags_];
      v51 = v169;
    }

    v79 = 4;
    v11 = &xmmword_1EDB30340;
    v161 = v52;
    LOBYTE(v20) = 1;
    do
    {
      v80 = *&v51[v79];
      v81 = *&v51[v79 + 2];
      v82 = *&v51[v79 + 4];
      v203 = *&v51[v79 + 6];
      v202 = v82;
      v201 = v81;
      v200 = v80;
      v83 = *&v51[v79 + 8];
      v84 = *&v51[v79 + 10];
      v85 = *&v51[v79 + 12];
      v207 = *&v51[v79 + 14];
      v206 = v85;
      v205 = v84;
      v204 = v83;
      v86 = *&v51[v79 + 16];
      v87 = *&v51[v79 + 18];
      v88 = *&v51[v79 + 20];
      v211 = v51[v79 + 22];
      v210 = v88;
      v209 = v87;
      v208 = v86;
      if (v20)
      {
        sub_1B15C9418(&v200, v182);
        if (qword_1EDB30338 != -1)
        {
          swift_once();
        }

        LOBYTE(v46) = v46 & 1;
        v197 = xmmword_1EDB30340;
        v198 = *&qword_1EDB30350;
        v199 = v46;
        v89 = HIBYTE(v211) != 2;
        v90 = HIBYTE(v211) ^ BYTE1(v196[25]);
        v91 = dword_1B161DA18[SBYTE8(v200)];
        sub_1B15C9418(&v200, v182);
        sub_1B15C3828(v196, v182);
        LOBYTE(v20) = sub_1B160F80C(&v197, v91, v50, v170, v167, &v200, v89 & v90, v196, 1.0, 0.0, 1u, &v197);
        sub_1B15C5328(v196);
        sub_1B15CB1E8(&v200);
        sub_1B15CB1E8(&v200);
        v51 = v169;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      v79 += 23;
      --v52;
    }

    while (v52);
    if (v161 >= 2)
    {
      LODWORD(v86) = 1.0;
      [v50 drawLayerWithAlpha:0 blendMode:*&v86];
    }

    goto LABEL_42;
  }

  v172 = v14;
  sub_1B15D54A8(0, v44, 0);
  v212 = v172;
  v2 = v196[16];
  v54 = v166 / v196[16];
  v11 = 32;
  LODWORD(v167) = BYTE1(v196[25]);
  v55 = v12 / v196[17];
  do
  {
    v56 = *(v169 + v11);
    v57 = *(v169 + v11 + 16);
    v58 = *(v169 + v11 + 32);
    v203 = *(v169 + v11 + 48);
    v202 = v58;
    v201 = v57;
    v200 = v56;
    v59 = *(v169 + v11 + 64);
    v60 = *(v169 + v11 + 80);
    v61 = *(v169 + v11 + 96);
    v207 = *(v169 + v11 + 112);
    v206 = v61;
    v205 = v60;
    v204 = v59;
    v62 = *(v169 + v11 + 128);
    v63 = *(v169 + v11 + 144);
    v64 = *(v169 + v11 + 160);
    v211 = *(v169 + v11 + 176);
    v210 = v64;
    v209 = v63;
    v208 = v62;
    v65 = objc_allocWithZone(MEMORY[0x1E69C70A8]);
    sub_1B15C9418(&v200, v182);
    v66 = [v65 init];
    v67 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
    v68 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
    if (v168)
    {
      [v66 setProfile_];
    }

    v170 = v44;
    v69 = v66;
    v20 = v67;
    v70 = v68;
    [v69 scaleByX:v54 Y:v55];
    if (qword_1EDB30338 != -1)
    {
      swift_once();
    }

    v197 = xmmword_1EDB30340;
    v198 = *&qword_1EDB30350;
    v199 = 0;
    v71 = HIBYTE(v211) != 2;
    v72 = HIBYTE(v211) ^ v167;
    v73 = dword_1B161DA18[SBYTE8(v200)];
    sub_1B15C3828(v196, v182);
    sub_1B15C9418(&v200, v182);
    v74 = sub_1B160F80C(&v197, v73, v69, v20, v70, &v200, v71 & v72, v196, 1.0, 0.0, 1u, &v197);
    sub_1B15C5328(v196);
    sub_1B15CB1E8(&v200);

    sub_1B15CB1E8(&v200);
    v75 = v212;
    v172 = v212;
    v77 = *(v212 + 16);
    v76 = *(v212 + 24);
    if (v77 >= v76 >> 1)
    {
      sub_1B15D54A8((v76 > 1), v77 + 1, 1);
      v75 = v172;
    }

    *(v75 + 16) = v77 + 1;
    v212 = v75;
    v78 = v75 + 32 * v77;
    *(v78 + 32) = v69;
    *(v78 + 40) = v20;
    *(v78 + 48) = v70;
    *(v78 + 56) = v74 & 1;
    v11 += 184;
    v44 = (v170 - 1);
  }

  while (v170 != 1);

LABEL_43:
  memcpy(v182, &v196[26], sizeof(v182));
  v95 = LOBYTE(v196[63]);
  *v184 = *(&v196[63] + 1);
  *&v184[3] = HIDWORD(v196[63]);
  v96 = *&v196[64];
  memcpy(v186, &v196[65], sizeof(v186));
  v183 = LOBYTE(v196[63]);
  v185 = v196[64];
  if (sub_1B15C3B5C(v182) == 1)
  {
    v13 = v165;
    if (qword_1EDB2FBF8 != -1)
    {
LABEL_70:
      swift_once();
    }

    if (byte_1EDB2FD28)
    {
      v96 = qword_1EDB2FD30;
      goto LABEL_48;
    }

    goto LABEL_58;
  }

  v13 = v165;
  if ((v95 & 1) == 0)
  {
LABEL_58:
    v172 = v166;
    *&v173 = v13;
    sub_1B15E3DEC(&v172, v212, v168);
    v53 = v117;

    return v53;
  }

LABEL_48:
  v97 = sub_1B1619BE8();
  v98 = v166 + 2;
  if (__OFADD__(v166, 2))
  {
    __break(1u);
    goto LABEL_72;
  }

  if (__OFADD__(v13, 2))
  {
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_55:
    v187[0] = v98;
    v106 = v170;
    v187[1] = v170;
    v188 = xmmword_1B161D4C0;
    v189 = v20;
    v190 = 4;
    v191 = 3;
    v192 = v11;
    v193 = 0;
    v194 = v13;
    v195 = 7;
    v53 = sub_1B1616D24(v187);
    v107 = v165;
    if (v53)
    {
      v108 = [objc_allocWithZone(MEMORY[0x1E69C70C8]) initWithDevice_];
      [v108 setSize_];
      [v108 setPixelFormat_];
      v109 = *(v53 + 2);
      v110 = *(v53 + 13);
      if (v110 < 0)
      {
      }

      else
      {
        v111 = *(v53 + 12);
        v112 = *(v53 + 9);
        v113 = *(v53 + 24);
        v114 = *(v53 + 40);
        v115 = *(v53 + 56);
        v177 = *(v53 + 5);
        v116 = v177;
        v172 = v109;
        v173 = v113;
        v174 = v114;
        v175 = v115;
        v176 = v112;
        v178 = v111;
        v179 = v110;
        sub_1B15C37C0(&v172, v171, &qword_1EB752B80);
      }

      v138 = *(v111 + 88);
      swift_unknownObjectRetain();

      [v108 setTexture_];
      swift_unknownObjectRelease();
      [v108 setBackgroundGPUPriority_];
      v139 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
      [v139 setProfile_];
      v140 = objc_allocWithZone(MEMORY[0x1E69C70D8]);
      v141 = v139;
      v142 = [v140 init];
      v143 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
      sub_1B15E5E9C(v141, v142, v143, v212, v168, v166, v107, v2, *&v96);

      v144 = swift_allocObject();
      *(v144 + 16) = v108;
      type metadata accessor for HardwareTexture.Tracker();
      v145 = swift_allocObject();
      v146 = v108;
      swift_defaultActor_initialize();
      *(v145 + 112) = 0;
      *(v145 + 120) = MEMORY[0x1E69E7CC0];
      *(v145 + 128) = sub_1B15E7018;
      *(v145 + 136) = v144;
      v147 = swift_allocObject();
      swift_weakInit();
      *(&v174 + 1) = sub_1B15E7004;
      *&v175 = v147;
      v172 = MEMORY[0x1E69E9820];
      *&v173 = 1107296256;
      *(&v173 + 1) = sub_1B15E703C;
      *&v174 = &block_descriptor_74;
      v148 = _Block_copy(&v172);

      [v146 setCompletedHandler_];
      _Block_release(v148);
      v149 = *(v53 + 2);
      v150 = *(v53 + 13);
      if (v150 < 0)
      {
      }

      else
      {
        v151 = *(v53 + 12);
        v152 = *(v53 + 9);
        v153 = *(v53 + 24);
        v154 = *(v53 + 40);
        v155 = *(v53 + 56);
        v177 = *(v53 + 5);
        v156 = v177;
        v172 = v149;
        v173 = v153;
        v174 = v154;
        v175 = v155;
        v176 = v152;
        v178 = v151;
        v179 = v150;
        sub_1B15C37C0(&v172, v171, &qword_1EB752B80);
      }

      *(v151 + 104) = v145;

      v157 = v141;
      [v146 renderDisplayList:v157 flags:2];
      swift_bridgeObjectRelease_n();
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    goto LABEL_67;
  }

  v170 = (v13 + 2);
  v169 = &v160;
  if (v13 >= v166)
  {
    v99 = v166;
  }

  else
  {
    v99 = v13;
  }

  v2 = v99 * 0.2;
  v181 = 1;
  v180 = 1;
  MEMORY[0x1EEE9AC00](v97);
  v100 = v168;
  *(&v160 - 6) = v212;
  *(&v160 - 5) = v100;
  *(&v160 - 4) = v2;
  *(&v160 - 3) = v101;
  v158 = v13;
  v159 = v96;
  v102 = objc_opt_self();
  v103 = v100;

  v104 = [v102 currentEnvironment];
  sub_1B15FAE80();

  if (v100)
  {
    LOBYTE(v20) = v181;
    LOBYTE(v11) = v180;
    v105 = qword_1EDB2FAA8;
    v13 = v103;
    if (v105 == -1)
    {
      goto LABEL_55;
    }

    goto LABEL_73;
  }

  v118 = RBColorModeMake();
  v119 = [v102 currentEnvironment];
  sub_1B15FAE80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B58);
  v120 = swift_allocObject();
  v121 = *MEMORY[0x1E69C7198];
  *(v120 + 32) = *MEMORY[0x1E69C7198];
  v122 = MEMORY[0x1E69E72F0];
  *(v120 + 16) = xmmword_1B161D4A0;
  *(v120 + 40) = v118;
  v123 = *MEMORY[0x1E69C71A0];
  *(v120 + 64) = v122;
  *(v120 + 72) = v123;
  *(v120 + 80) = 0;
  v124 = *MEMORY[0x1E69C7190];
  *(v120 + 104) = v122;
  *(v120 + 112) = v124;
  *(v120 + 144) = MEMORY[0x1E69E6530];
  *(v120 + 120) = 2;
  v125 = v121;
  v126 = v123;
  v127 = v124;
  v128 = sub_1B15C28A4(v120);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v129 = *MEMORY[0x1E69C71B0];
  *&v174 = MEMORY[0x1E69E6370];
  LOBYTE(v172) = 1;
  sub_1B15C2260(&v172, v171);
  v130 = swift_isUniquelyReferenced_nonNull_native();
  v187[0] = v128;
  sub_1B15E4D0C(v171, v129, v130);
  v131 = [objc_opt_self() sharedDevice];
  v132 = v170;
  type metadata accessor for RBImageRendererProperty(0);
  sub_1B15E6778();
  v133 = sub_1B1619D28();

  v134 = swift_allocObject();
  *(v134 + 16) = sub_1B15E6D04;
  *(v134 + 24) = &v160 - 8;
  v135 = swift_allocObject();
  *(v135 + 16) = sub_1B15E7034;
  *(v135 + 24) = v134;
  *(&v174 + 1) = sub_1B15E7038;
  *&v175 = v135;
  v172 = MEMORY[0x1E69E9820];
  *&v173 = 1107296256;
  *(&v173 + 1) = sub_1B15C5990;
  *&v174 = &block_descriptor_65;
  v136 = _Block_copy(&v172);

  v53 = [v131 renderImageInRect:v133 options:v136 renderer:{0.0, 0.0, v98, v132}];

  _Block_release(v136);
  LOBYTE(v131) = swift_isEscapingClosureAtFileLocation();

  if ((v131 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
LABEL_67:
    (*(v162 + 8))(v164, v163);
    return v53;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B15CA6B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B15CA6E8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1B15CA72C(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_1B15CB4C4(result, a2 & 1);
  }

  return result;
}

CGColorRef sub_1B15CA8A0()
{
  v42[4] = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 96);
  if (!(v5 >> 6))
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E6999398]) init];
    v39[0] = v2;
    v39[1] = v1;
    v39[2] = v4;
    v39[3] = v3;
    if (qword_1EDB2FB28 != -1)
    {
      swift_once();
    }

    result = CGColorCreate(qword_1EDB32780, v39);
    if (result)
    {
      v22 = result;
      [v11 setCGColor_];
LABEL_28:

      return v11;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v37 = *(v0 + 16);
  v38 = *(v0 + 24);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 64);
  if (v5 >> 6 == 1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69993B0]) init];
    [v11 setGradientType_];
    v12 = v7;
    v13 = v6;
    if (v10)
    {
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
    }

    else
    {
      v14 = v9;
    }

    if (v10)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = v8;
    }

    [v11 setGradientStartPoint_];
    [v11 setGradientEndPoint_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C28);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B161BDD0;
    components[0] = v2;
    components[1] = v1;
    components[2] = v37;
    components[3] = v38;
    if (qword_1EDB2FB28 != -1)
    {
      swift_once();
    }

    result = CGColorCreate(qword_1EDB32780, components);
    if (result)
    {
      v18 = result;
      type metadata accessor for CGColor(0);
      *(v16 + 56) = v19;
      *(v16 + 32) = v18;
      v20 = sub_1B1619EE8();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C30);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B161DA80;
      sub_1B15C17B0(0, &qword_1EDB2F498);
      *(v21 + 32) = sub_1B161A0D8();
LABEL_27:
      v22 = sub_1B1619EE8();

      [v11 setColors:v20 andStops:v22];

      goto LABEL_28;
    }

    __break(1u);
    goto LABEL_30;
  }

  v36 = *(v0 + 40);
  v23 = *(v0 + 80);
  v24 = *(v0 + 88);
  v25 = *(v0 + 72);
  v26 = (*(v0 + 65) << 8) | ((*(v0 + 69) | (*(v0 + 71) << 16)) << 40) | v10;
  v11 = [objc_allocWithZone(MEMORY[0x1E69993B0]) init];
  [v11 setGradientType_];
  v27 = *&v26;
  if (v5)
  {
    v27 = 0.0;
    v28 = 0.0;
  }

  else
  {
    v28 = v25;
  }

  if (v5)
  {
    v23 = 0.0;
    v24 = 0.0;
  }

  [v11 setGradientStartPoint_];
  [v11 setGradientEndPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C28);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B161CC80;
  v42[0] = v2;
  v42[1] = v1;
  v42[2] = v37;
  v42[3] = v38;
  if (qword_1EDB2FB28 != -1)
  {
    swift_once();
  }

  v30 = qword_1EDB32780;
  result = CGColorCreate(qword_1EDB32780, v42);
  if (!result)
  {
    goto LABEL_31;
  }

  v31 = result;
  v32 = v7;
  type metadata accessor for CGColor(0);
  v34 = v33;
  *(v29 + 56) = v33;
  *(v29 + 32) = v31;
  v41[0] = v32;
  v41[1] = v36;
  v41[2] = v9;
  v41[3] = v8;
  result = CGColorCreate(v30, v41);
  if (result)
  {
    *(v29 + 88) = v34;
    *(v29 + 64) = result;
    v20 = sub_1B1619EE8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C30);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B161DA70;
    sub_1B15C17B0(0, &qword_1EDB2F498);
    *(v35 + 32) = sub_1B161A0D8();
    *(v35 + 40) = sub_1B161A0D8();
    goto LABEL_27;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t FinalizedIcon.renderedIcon(with:)(_OWORD *a1)
{
  v2 = *(v1 + 2);
  v4 = *v1;
  v5 = v2;
  return FinalizedIcon.renderedIcon(at:with:)(&v4, a1);
}

uint64_t sub_1B15CAEF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1608) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 1618) = 0;
    *(result + 1616) = 0;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1619) = 1;
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
      *(result + 360) = (a2 - 1);
      return result;
    }

    *(result + 1619) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B15CB0E4(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  if (a1 == 2)
  {
    if (qword_1EB752608 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1619D18();
    __swift_project_value_buffer(v3, qword_1EB752E48);
    v4 = sub_1B1619CF8();
    v5 = sub_1B161A088();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B15BF000, v4, v5, "Attempting to initialize ICRIconStyle with .tintable appearance, falling back to .light", v6, 2u);
      MEMORY[0x1B2730CA0](v6, -1, -1);
    }

    *a2 = 0;
  }

  else
  {
    *a2 = a1 == 1;
  }
}

char *sub_1B15CB23C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752700);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B15CB364(char *a1, int64_t a2, char a3)
{
  result = sub_1B15CB23C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B15CB384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526E0);
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
    if (v10 != a4 || v12 >= &v13[24 * v8])
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

char *sub_1B15CB4A4(char *a1, int64_t a2, char a3)
{
  result = sub_1B15CB384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id sub_1B15CB4C4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1B15CB4D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != 1)
  {
    if (*(a1 + 1))
    {
      v3 = v2[2];
      v4 = v2[3];
    }

    else
    {
      v3 = *v2;
      v4 = v2[1];
    }

LABEL_13:

    sub_1B16115BC(v3, v4);
    return;
  }

  if (*(a1 + 32) | *(a1 + 40) | *(a1 + 8) | *(a1 + 24) | *(a1 + 16))
  {
    if (*(a1 + 1))
    {
      v3 = v2[6];
      v4 = v2[7];
    }

    else
    {
      v3 = v2[4];
      v4 = v2[5];
    }

    goto LABEL_13;
  }

  v3 = v2[8];
  v4 = v2[9];
  v5 = *(a2 + 24);
  if (*(a2 + 96) < 0)
  {
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0 && (*(a2 + 56) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
LABEL_10:
      if (*(a1 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1B161CC80;
        *(v6 + 32) = vdupq_n_s64(0x3FC89374BC6A7EFAuLL);
        *(v6 + 48) = xmmword_1B161BDB0;
        *(v6 + 64) = xmmword_1B161FD90;
        __asm { FMOV            V1.2D, #1.0 }

        *(v6 + 80) = vdupq_n_s64(0x3FB3F7CED916872BuLL);
        *(v6 + 96) = _Q1;
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_10;
  }

  sub_1B15CD230(&v18);
  v12 = v18;
  v14 = v19;
  v13 = v20;
  v15 = v23 >> 6;
  if (v15)
  {
    if (v15 == 1)
    {
      sub_1B15CF528();
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B161CC80;
    *(v16 + 32) = v12;
    *(v16 + 48) = v14;
    *(v16 + 56) = v13;
    *(v16 + 64) = 0;
    v17 = v21;
    *(v16 + 88) = v22;
    *(v16 + 72) = v17;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1B161CC80;
    *(v16 + 32) = v12;
    *(v16 + 48) = v14;
    *(v16 + 56) = v13;
    *(v16 + 64) = 0;
    *(v16 + 72) = v12;
    *(v16 + 88) = v14;
    *(v16 + 96) = v13;
  }

  *(v16 + 104) = 0x3FF0000000000000;
}

void sub_1B15CB734()
{
  v149 = *MEMORY[0x1E69E9840];
  if (*(v0 + 3504) == 1 && (*(v0 + 40) & 1) != 0)
  {
    if (qword_1EB7525E0 != -1)
    {
      swift_once();
    }

    if (byte_1EB752D81 != 1)
    {
      goto LABEL_13;
    }

    v2 = *(v0 + 3400) & 0x7FFFFFFFFFFFFFFFLL;
    if (*(v0 + 3472) >> 6 > 1u)
    {
      if (v2 || *(v0 + 3432) != 0.0)
      {
        goto LABEL_13;
      }
    }

    else if (v2)
    {
      goto LABEL_13;
    }

    v3 = v0 + 3504;
    if (*(v0 + 5288) == 1 && !(*(v0 + 5272) | *(v0 + 5280) | *(v0 + 5248) | *(v0 + 5264) | *(v0 + 5256)))
    {
      if (*(v0 + 5241))
      {
        v65 = sub_1B161A448();

        v66 = 1832;
        v67 = 1824;
        v68 = 1816;
        v69 = 1808;
        if ((v65 & 1) == 0)
        {
          v69 = 1840;
          v68 = 1848;
          v67 = 1856;
          v66 = 1864;
        }
      }

      else
      {

        v66 = 1832;
        v67 = 1824;
        v68 = 1816;
        v69 = 1808;
      }

      v70 = *(v0 + v66);
      v71 = *(v0 + v67);
      v72 = *(v0 + v68);
      v73 = *(v0 + v69);
      v74 = v0;
      v14 = *(v0 + 5296);
      v75 = *(v74 + 5304);
      v21 = *(v74 + 5312);
      v76 = *(v74 + 5344);
      v77 = *(v74 + 5352);
      v78 = *(v74 + 5360);
      v79 = *(v74 + 5368);
      v80 = v73;
      v81 = v72;
      v82 = v71;
      v83 = v70;
      [v21 setRect_];
      *&v84 = v80;
      *&v85 = v81;
      *&v86 = v82;
      *&v87 = v83;
      [v75 setColor:3 colorSpace:{v84, v85, v86, v87}];
      LODWORD(v88) = 1.0;
      [(float64x2_t *)v14 drawShape:v21 fill:v75 alpha:0 blendMode:v88];
      [v21 setRenderingMode_];
      [(float64x2_t *)v14 beginLayerWithFlags:0];
      v89 = 3168;
      if (*(v3 + 1737))
      {
        v89 = 3184;
      }

      v90 = 3160;
      if (*(v3 + 1737))
      {
        v90 = 3176;
      }

      sub_1B16115BC(*(v74 + v90), *(v74 + v89));
      v20 = v91;
      [v21 setRect_];
      v22 = *&v20[1].f64[0];
      if (v22 >> 59)
      {
        __break(1u);
      }

      v15 = v76 + v78 * 0.0;
      v17 = v77 + v79 * 0.1;
      v16 = v77 + v79 * 0.9;
      v92 = v75;
      swift_bridgeObjectRetain_n();
      v93 = v92;
      v1 = v93;
      if ((16 * v22) < 1025)
      {
        goto LABEL_58;
      }

      goto LABEL_94;
    }

LABEL_13:
    v148 = *(v0 + 5288);
    v4 = *(v0 + 5256);
    v147[0] = *(v0 + 5240);
    v147[1] = v4;
    v147[2] = *(v0 + 5272);
    v5 = *(v0 + 3176);
    v142 = *(v0 + 3160);
    v143 = v5;
    v6 = *(v0 + 3192);
    v7 = *(v0 + 3144);
    v140 = *(v0 + 3128);
    v141 = v7;
    v8 = *(v0 + 3440);
    v145[3] = *(v0 + 3424);
    v145[4] = v8;
    v145[5] = *(v0 + 3456);
    v146 = *(v0 + 3472);
    v9 = *(v0 + 3376);
    v10 = *(v0 + 3392);
    v144 = v6;
    v145[0] = v9;
    v11 = *(v0 + 3408);
    v145[1] = v10;
    v145[2] = v11;
    v12 = v0;
    sub_1B15CB4D0(v147, v145);
    v14 = v13;
    v15 = *(v12 + 5344);
    v16 = *(v12 + 5352);
    v17 = *(v12 + 5360);
    v18 = *(v12 + 5368);
    v19 = *(v12 + 5296);
    v20 = *(v12 + 5304);
    v21 = *(v12 + 5312);
    [v21 setRect_];
    v22 = *&v14[1].f64[0];
    if (!(v22 >> 59))
    {
      v23 = v15 + v17 * 0.0;
      v24 = v16 + v18 * 0.1;
      v25 = v16 + v18 * 0.9;
      v26 = v20;
      swift_bridgeObjectRetain_n();
      isStackAllocationSafe = v26;
      v28 = isStackAllocationSafe;
      if ((16 * v22) >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v132 = swift_slowAlloc();
          v133 = v28;

          sub_1B160E574(v132, v22, v14, v133, v14, v23, v24, v23, v25);
          MEMORY[0x1B2730CA0](v132, -1, -1);
          swift_bridgeObjectRelease_n();

          goto LABEL_23;
        }
      }

      v139[0] = v139;
      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v30 = (v139 - v29);
      v31 = v28;
      swift_bridgeObjectRetain_n();
      v32 = v31;
      v33 = v32;
      if (v22 >= 0x81)
      {
        v32 = swift_stdlib_isStackAllocationSafe();
        if ((v32 & 1) == 0)
        {
          v134 = swift_slowAlloc();
          v33 = v33;

          sub_1B160EF8C(v134, v22, v14, v30, v22, v33, v14);
          MEMORY[0x1B2730CA0](v134, -1, -1);
          swift_bridgeObjectRelease_n();

          goto LABEL_22;
        }
      }

      MEMORY[0x1EEE9AC00](v32);
      v35 = v139 - v34;
      if (v22)
      {
        if (v22 > 7)
        {
          v36 = 0;
          v43 = v14 + 2;
          v44 = &v30[4 * v22];
          v45 = &v35[8 * v22];
          v46 = &v14[2] + 40 * v22;
          v48 = v30 < v46 && v43 < v44;
          v50 = v35 < v46 && v43 < v45;
          if ((v35 >= v44 || v30 >= v45) && !v48 && !v50)
          {
            v36 = v22 & 0x7FFFFFFFFFFFFFCLL;
            v52 = v22 & 0x7FFFFFFFFFFFFFCLL;
            v53 = v35;
            v54 = v30;
            do
            {
              v56 = *v43;
              v55 = v43[1];
              v58 = v43[6];
              v57 = v43[7];
              v59 = v43[5];
              v60 = vextq_s8(v59, v43[8], 8uLL);
              v59.f64[1] = v43[7].f64[1];
              v61 = v43[2];
              v57.f64[1] = v43[9].f64[1];
              v56.f64[1] = v43[2].f64[1];
              v61.f64[1] = v43[4].f64[1];
              v150.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v43, v43[3], 8uLL)), v60);
              v62 = vcvt_f32_f64(v56);
              v63 = vextq_s8(v58, v43[9], 8uLL);
              v58.f64[1] = v43[8].f64[1];
              v64 = vextq_s8(v55, v43[4], 8uLL);
              v55.f64[1] = v43[3].f64[1];
              v150.val[0] = vcvt_hight_f32_f64(v62, v59);
              v150.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v64), v63);
              v150.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v55), v58);
              vst4q_f32(v54, v150);
              v54 += 16;
              *v53 = v61;
              *(v53 + 1) = v57;
              v53 += 32;
              v43 += 10;
              v52 -= 4;
            }

            while (v52);
            if (v22 == v36)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = v22 - v36;
        v38 = &v35[8 * v36];
        v39 = &v30[4 * v36];
        v40 = (v14 + 40 * v36 + 64);
        do
        {
          v41 = v40->f64[0];
          *v39++ = vcvt_hight_f32_f64(vcvt_f32_f64(v40[-2]), v40[-1]);
          *v38 = v41;
          v38 += 8;
          v40 = (v40 + 40);
          --v37;
        }

        while (v37);
      }

LABEL_21:
      [v33 setAxialGradientStartPoint:*&v14[1].f64[0] endPoint:v30 stopCount:3 colors:v23 colorSpace:v24 locations:v23 flags:{v25, v139[0]}];
      swift_bridgeObjectRelease_n();

LABEL_22:
      swift_bridgeObjectRelease_n();

LABEL_23:

      LODWORD(v42) = 1.0;
      [v19 drawShape:v21 fill:v28 alpha:0 blendMode:v42];
      [v21 setRenderingMode_];

      return;
    }

    __break(1u);
LABEL_94:
    v93 = swift_stdlib_isStackAllocationSafe();
    if ((v93 & 1) == 0)
    {
      v135 = swift_slowAlloc();
      v136 = v1;

      sub_1B160E574(v135, v22, v20, v136, v20, v15, v17, v15, v16);
      MEMORY[0x1B2730CA0](v135, -1, -1);
      swift_bridgeObjectRelease_n();

      v101 = &selRef_gradientStartPoint;
      goto LABEL_65;
    }

LABEL_58:
    v139[0] = v139;
    MEMORY[0x1EEE9AC00](v93);
    v95 = (v139 - v94);
    v96 = v1;
    swift_bridgeObjectRetain_n();
    v97 = v96;
    v98 = v97;
    if (v22 >= 0x81)
    {
      v97 = swift_stdlib_isStackAllocationSafe();
      if ((v97 & 1) == 0)
      {
        v137 = swift_slowAlloc();
        v138 = v98;

        sub_1B160EF8C(v137, v22, v20, v95, v22, v138, v20);
        MEMORY[0x1B2730CA0](v137, -1, -1);
        swift_bridgeObjectRelease_n();

        swift_bridgeObjectRelease_n();
        v101 = &selRef_gradientStartPoint;
        goto LABEL_65;
      }
    }

    MEMORY[0x1EEE9AC00](v97);
    v100 = v139 - v99;
    v101 = &selRef_gradientStartPoint;
    if (!v22)
    {
      goto LABEL_64;
    }

    if (v22 > 7)
    {
      v102 = 0;
      v110 = v20 + 2;
      v111 = &v95[4 * v22];
      v112 = &v100[8 * v22];
      v113 = &v20[2] + 40 * v22;
      v115 = v95 < v113 && v110 < v111;
      v117 = v100 < v113 && v110 < v112;
      if ((v100 >= v111 || v95 >= v112) && !v115 && !v117)
      {
        v102 = v22 & 0x7FFFFFFFFFFFFFCLL;
        v119 = v22 & 0x7FFFFFFFFFFFFFCLL;
        v120 = v100;
        v121 = v95;
        do
        {
          v123 = *v110;
          v122 = v110[1];
          v125 = v110[6];
          v124 = v110[7];
          v126 = v110[5];
          v127 = vextq_s8(v126, v110[8], 8uLL);
          v126.f64[1] = v110[7].f64[1];
          v128 = v110[2];
          v124.f64[1] = v110[9].f64[1];
          v123.f64[1] = v110[2].f64[1];
          v128.f64[1] = v110[4].f64[1];
          v151.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v110, v110[3], 8uLL)), v127);
          v129 = vcvt_f32_f64(v123);
          v130 = vextq_s8(v125, v110[9], 8uLL);
          v125.f64[1] = v110[8].f64[1];
          v131 = vextq_s8(v122, v110[4], 8uLL);
          v122.f64[1] = v110[3].f64[1];
          v151.val[0] = vcvt_hight_f32_f64(v129, v126);
          v151.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v131), v130);
          v151.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v122), v125);
          vst4q_f32(v121, v151);
          v121 += 16;
          *v120 = v128;
          *(v120 + 1) = v124;
          v120 += 32;
          v110 += 10;
          v119 -= 4;
        }

        while (v119);
        if (v22 == v102)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
      v102 = 0;
    }

    v103 = v22 - v102;
    v104 = &v100[8 * v102];
    v105 = &v95[4 * v102];
    v106 = (v20 + 40 * v102 + 64);
    do
    {
      v107 = v106->f64[0];
      *v105++ = vcvt_hight_f32_f64(vcvt_f32_f64(v106[-2]), v106[-1]);
      *v104 = v107;
      v104 += 8;
      v106 = (v106 + 40);
      --v103;
    }

    while (v103);
LABEL_64:
    [v98 setAxialGradientStartPoint:*&v20[1].f64[0] endPoint:v95 stopCount:3 colors:v15 colorSpace:v17 locations:v15 flags:{v16, v139[0]}];
    swift_bridgeObjectRelease_n();

    swift_bridgeObjectRelease_n();
LABEL_65:

    LODWORD(v108) = 1.0;
    [v14 v101[23]];
    [v21 setRenderingMode_];

    LODWORD(v109) = 1.0;
    [(float64x2_t *)v14 drawLayerWithAlpha:2 blendMode:v109];
  }
}

void sub_1B15CC310(uint64_t a1)
{
  if ((*(v1 + 40) & 0x80) != 0)
  {
    v2 = *(a1 + 168);
    v3 = *(v1 + 32) != 1 || *a1 == 2;
    if (!v3 && ~*(a1 + 168) != 0)
    {
      v5 = *(a1 + 160);
      if (*(v1 + 5288) == 1 && !(*(v1 + 5272) | *(v1 + 5280) | *(v1 + 5248) | *(v1 + 5264) | *(v1 + 5256)))
      {
        v6 = *a1 >> 8;
      }

      else if ((*a1 & 0xFF00) == 0x100)
      {
        LOBYTE(v6) = 1;
      }

      else
      {
        LOBYTE(v6) = 3;
      }

      v7 = *(a1 + 8);
      v8 = *(a1 + 40);
      v9 = *(v1 + 5296);
      sub_1B15CB4C4(*(a1 + 160), v2 & 1);
      [v9 save];
      if (v6 == 3)
      {
        v10 = *(v1 + 6432);
        v11 = *(v1 + 6424);
        if (qword_1EDB30338 != -1)
        {
          swift_once();
        }

        v12 = &xmmword_1EDB30340;
      }

      else
      {
        v10 = *(v1 + 6416);
        v11 = *(v1 + 6408);
        if (qword_1EDB30310 != -1)
        {
          swift_once();
        }

        v12 = &xmmword_1EDB30318;
      }

      v50 = v12[2];
      v51 = v12[3];
      v13 = *v12;
      v49 = v12[1];
      v14 = *(v1 + 5304);
      v15 = *(v1 + 5312);
      v16 = *(v1 + 5344);
      v17 = *(v1 + 5352);
      v18 = *(v1 + 5360);
      v19 = *(v1 + 5368);
      v52 = v8 * (v7 * v11);
      v58 = v10;
      v20 = sub_1B15CC72C();
      v59.origin.x = v16;
      v59.origin.y = v17;
      v59.size.width = v18;
      v59.size.height = v19;
      MinX = CGRectGetMinX(v59);
      v60.origin.x = v16;
      v60.origin.y = v17;
      v60.size.width = v18;
      v60.size.height = v19;
      MinY = CGRectGetMinY(v60);
      v54.a = 1.0;
      v54.b = 0.0;
      v54.c = 0.0;
      v54.d = 1.0;
      v54.tx = 0.0;
      v54.ty = 0.0;
      CGAffineTransformTranslate(&v53, &v54, MinX, MinY);
      tx = v53.tx;
      ty = v53.ty;
      v43 = *&v53.c;
      v46 = *&v53.a;
      v61.origin.x = v16;
      v61.origin.y = v17;
      v61.size.width = v18;
      v61.size.height = v19;
      Width = CGRectGetWidth(v61);
      v62.origin.x = v16;
      v62.origin.y = v17;
      v62.size.width = v18;
      v62.size.height = v19;
      Height = CGRectGetHeight(v62);
      *&v54.a = v46;
      *&v54.c = v43;
      v54.tx = tx;
      v54.ty = ty;
      CGAffineTransformScale(&v53, &v54, Width, Height);
      v44 = *&v53.c;
      v47 = *&v53.a;
      v27 = v53.tx;
      v28 = v53.ty;
      if (v2)
      {
        CGImage = RBImageMakeCGImage();
        v31 = v30;
      }

      else
      {
        v32 = v5[4];
        v33 = v5[5];
        v34 = v5[6];
        *&v54.tx = v5[3];
        v55 = v32;
        v56 = v33;
        v57 = v34;
        v35 = v5[2];
        *&v54.a = v5[1];
        *&v54.c = v35;
        if ((*(&v34 + 1) & 0x8000000000000000) != 0)
        {
          sub_1B15CA72C(v5, v2);
          sub_1B15DE844(&v54, &v53);
        }

        else
        {
          v36 = v56;
          sub_1B15CA72C(v5, v2);
          sub_1B15DE844(&v54, &v53);
        }

        swift_unknownObjectRetain();

        CGImage = RBImageMakeMTLTexture2();
        v31 = v37;
        swift_unknownObjectRelease();
        sub_1B15C26A4(v5, v2);
      }

      [v15 setRect_];
      *&v38 = v13;
      HIDWORD(v39) = HIDWORD(v49);
      HIDWORD(v40) = HIDWORD(v50);
      *&v39 = v49;
      *&v40 = v50;
      HIDWORD(v41) = HIDWORD(v51);
      *&v41 = v51;
      *&v54.a = v48;
      *&v54.c = v45;
      v54.tx = v27;
      v54.ty = v28;
      [v14 setRBImage:CGImage transform:v31 interpolation:&v54 tintColor:1 colorSpace:3 flags:{0, v38, v39, v40, v41}];
      HIDWORD(v42) = HIDWORD(v52);
      *&v42 = v52;
      [v9 drawShape:v15 fill:v14 alpha:v20 blendMode:v42];
      [v15 setRenderingMode_];
      [v9 restore];
      sub_1B15C26A4(v5, v2);
    }
  }
}

uint64_t sub_1B15CC740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B15CC7B0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  memcpy(v14, (v1 + 1776), sizeof(v14));
  memcpy(v15, (v4 + 1776), sizeof(v15));
  result = sub_1B15CC944(v15);
  if (result != 1)
  {
    memcpy(__dst, v15, 0x6E3uLL);
    memcpy(v11, v3, sizeof(v11));
    sub_1B15C37C0(v14, v10, &qword_1EB752AC8);
    sub_1B15CDCB0(v15, v10);
    v8 = sub_1B15CC9A4(__dst);
    memcpy(v13, __dst, 0x6E3uLL);
    sub_1B15CD088(v13);
    if (v8)
    {
      v9 = v15[221];
      swift_unknownObjectRetain();
      result = sub_1B15C1750(v14, &qword_1EB752AC8);
      *v6 = v9;
      return result;
    }

    result = sub_1B15C1750(v14, &qword_1EB752AC8);
  }

  *v6 = 0;
  return result;
}

uint64_t sub_1B15CC944(uint64_t a1)
{
  v1 = *(a1 + 1768);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B15CC95C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1776))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1768);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B15CC9A4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v22 = *(v1 + 48);
  v23 = *(v1 + 40);
  rect1 = *(v1 + 56);
  v19 = *(v1 + 32);
  v20 = *(v1 + 64);
  v18 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 104);
  v32[0] = *(v1 + 88);
  v32[1] = v6;
  v32[2] = *(v1 + 120);
  v33 = *(v1 + 136);
  memcpy(v36, (v1 + 144), 0x653uLL);
  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  v9 = *(v3 + 48);
  v10 = *(v3 + 56);
  v12 = *(v3 + 64);
  v11 = *(v3 + 72);
  v13 = *(v3 + 80);
  v14 = *(v3 + 104);
  v34[0] = *(v3 + 88);
  v34[1] = v14;
  v34[2] = *(v3 + 120);
  v35 = *(v3 + 136);
  memcpy(v37, (v3 + 144), 0x653uLL);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v4, *v3), vceqq_f64(v4[1], *(v3 + 16))))) & 1) == 0)
  {
    return 0;
  }

  v38.origin.x = v19;
  v38.size.width = v22;
  v38.origin.y = v23;
  v38.size.height = rect1;
  v39.origin.x = v7;
  v39.origin.y = v8;
  v39.size.width = v9;
  v39.size.height = v10;
  v16 = CGRectEqualToRect(v38, v39);
  result = 0;
  if (v16 && v20 == v12 && v18 == v11 && v5 == v13)
  {
    if (sub_1B160F694(v32, v34))
    {
      memcpy(v30, v36, 0x653uLL);
      memcpy(&v30[1624], v37, 0x653uLL);
      memcpy(v31, v36, 0x653uLL);
      if (sub_1B15C3B5C(v31) == 1)
      {
        memcpy(v28, &v30[1624], 0x653uLL);
        if (sub_1B15C3B5C(v28) == 1)
        {
          memcpy(v29, v30, 0x653uLL);
          sub_1B15C37C0(v36, v27, &qword_1EB752A78);
          sub_1B15C37C0(v37, v27, &qword_1EB752A78);
          sub_1B15C1750(v29, &qword_1EB752A78);
          return 1;
        }

        sub_1B15C37C0(v36, v29, &qword_1EB752A78);
        sub_1B15C37C0(v37, v29, &qword_1EB752A78);
        goto LABEL_15;
      }

      memcpy(v29, v30, 0x653uLL);
      memcpy(v27, v30, 0x653uLL);
      memcpy(v28, &v30[1624], 0x653uLL);
      if (sub_1B15C3B5C(v28) == 1)
      {
        memcpy(__dst, v30, 0x653uLL);
        sub_1B15C37C0(v36, v25, &qword_1EB752A78);
        sub_1B15C37C0(v37, v25, &qword_1EB752A78);
        sub_1B15C37C0(v29, v25, &qword_1EB752A78);
        sub_1B15C5664(__dst);
LABEL_15:
        memcpy(v28, v30, 0xCABuLL);
        sub_1B15C1750(v28, &qword_1EB752AD0);
        return 0;
      }

      memcpy(__dst, &v30[1624], 0x653uLL);
      v17 = _s13IconRendering22ICRRenderingParametersV2eeoiySbAC_ACtFZ_0(v27);
      memcpy(v24, __dst, 0x653uLL);
      sub_1B15C37C0(v36, v25, &qword_1EB752A78);
      sub_1B15C37C0(v37, v25, &qword_1EB752A78);
      sub_1B15C37C0(v29, v25, &qword_1EB752A78);
      sub_1B15C5664(v24);
      memcpy(v25, v27, 0x653uLL);
      sub_1B15C5664(v25);
      memcpy(__dst, v30, 0x653uLL);
      sub_1B15C1750(__dst, &qword_1EB752A78);
      if (v17)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B15CCE74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1768) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1776) = 1;
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
      *(result + 1768) = (a2 - 1);
      return result;
    }

    *(result + 1776) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B15CD0B8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v6 = v5;
  memcpy(v14, v1, sizeof(v14));
  memcpy(v15, v4, sizeof(v15));
  result = sub_1B15CC944(v15);
  if (result != 1)
  {
    memcpy(__dst, v15, 0x6E3uLL);
    memcpy(v11, v3, sizeof(v11));
    sub_1B15C37C0(v14, v10, &qword_1EB752AC8);
    sub_1B15CDCB0(v15, v10);
    v8 = sub_1B15CC9A4(__dst);
    memcpy(v13, __dst, 0x6E3uLL);
    sub_1B15CD088(v13);
    if (v8)
    {
      v9 = v15[221];
      swift_unknownObjectRetain();
      result = sub_1B15C1750(v14, &qword_1EB752AC8);
      *v6 = v9;
      return result;
    }

    result = sub_1B15C1750(v14, &qword_1EB752AC8);
  }

  *v6 = 0;
  return result;
}

__n128 sub_1B15CD230@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 96);
  if (v5 >> 6)
  {
    v7 = v1[4];
    v6 = v1[5];
    v8 = v1[6];
    v9 = *(v1 + 64);
    if (v5 >> 6 == 1)
    {
      v10 = v1[7];
      *a1 = v3;
      *(a1 + 8) = v2;
      *(a1 + 16) = v4;
      *(a1 + 24) = 0x3FF0000000000000;
      *(a1 + 32) = v7;
      *(a1 + 40) = v6;
      *(a1 + 48) = v8;
      *(a1 + 56) = v10;
      *(a1 + 64) = v9 & 1;
      *(a1 + 96) = 64;
    }

    else
    {
      v11 = v1[11];
      v12 = (*(v1 + 65) << 8) | ((*(v1 + 69) | (*(v1 + 71) << 16)) << 40) | v9;
      *a1 = v3;
      *(a1 + 8) = v2;
      *(a1 + 16) = v4;
      *(a1 + 24) = 0x3FF0000000000000;
      *(a1 + 32) = v7;
      *(a1 + 40) = v6;
      *(a1 + 48) = v8;
      *(a1 + 56) = 0x3FF0000000000000;
      *(a1 + 64) = v12;
      result = *(v1 + 9);
      *(a1 + 72) = result;
      *(a1 + 88) = v11;
      *(a1 + 96) = v5 & 1 | 0x80;
    }
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = v2;
    *(a1 + 16) = v4;
    *(a1 + 24) = 0x3FF0000000000000;
    *(a1 + 96) = 0;
  }

  return result;
}

void sub_1B15CD308(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 144);
  v88 = *(a1 + 128);
  v89 = v2;
  v90 = *(a1 + 160);
  v3 = *(a1 + 80);
  v85 = *(a1 + 64);
  v86 = v3;
  v4 = *(a1 + 112);
  v87.origin = *(a1 + 96);
  v87.size = v4;
  v5 = *(a1 + 16);
  v81 = *a1;
  v82 = v5;
  v6 = *(a1 + 48);
  v83 = *(a1 + 32);
  v84 = v6;
  v7 = *(v1 + 40);
  if ((v7 & 0x80) != 0)
  {
    sub_1B15CC310(a1);
  }

  if ((v7 & 8) != 0)
  {
    if (v81 != 2 && v89 != 0xFF && *(&v82 + 1) > 0.0 && (v88 & 1) == 0)
    {
      LODWORD(v72) = DWORD2(v88);
      v8 = *(v1 + 5296);
      sub_1B15CB4C4(*(&v88 + 1), v89 & 1);
      [v8 save];
      v9 = *(v1 + 5312);
      v10 = *(v1 + 5360);
      v11 = *(v1 + 5368);
      v71 = v10 * CGRectGetMinX(v87);
      v70 = v11 * CGRectGetMinY(v87);
      v12 = v10 * CGRectGetWidth(v87);
      v13 = v11 * CGRectGetHeight(v87);
      v14 = *(v1 + 5344);
      v15 = *(v1 + 5352);
      v92.origin.x = v14;
      v92.origin.y = v15;
      v92.size.width = v10;
      v92.size.height = v11;
      MinX = CGRectGetMinX(v92);
      v93.origin.x = v14;
      v93.origin.y = v15;
      v93.size.width = v10;
      v93.size.height = v11;
      MinY = CGRectGetMinY(v93);
      v94.origin.y = v70;
      v94.origin.x = v71;
      v94.size.width = v12;
      v94.size.height = v13;
      v95 = CGRectOffset(v94, MinX, MinY);
      v96 = CGRectInset(v95, -*(v1 + 6448), -*(v1 + 6448));
      [v9 setRect_];
      LODWORD(v18) = 1.0;
      [v8 clipShape:v9 alpha:0 mode:v18];
      [v8 beginLayer];
      aBlock.i8[0] = v89 & 1;
      sub_1B15CE614(v1, *(&v88 + 1), v89 & 1, *(&v89 + 1));
      LODWORD(v19) = 1.0;
      [v8 clipLayerWithAlpha:0 mode:v19];
      v20 = *(v1 + 2024);
      if (v20 >= *(&v82 + 1))
      {
        v20 = *(&v82 + 1);
      }

      [v8 addBlurFilterWithRadius:1 opaque:*(v1 + 2016) * v20];
      [v8 beginLayerWithFlags_];
      LODWORD(v21) = 1.0;
      [v8 drawLayerWithAlpha:0 blendMode:v21];
      [v8 restore];
      sub_1B15C26A4(*(&v88 + 1), v89);
    }

    v22 = *(v1 + 5296);
    [v22 save];
    sub_1B15F94E8(v1, &v81);
    [v22 restore];
  }

  if (*(v1 + 32) == 1)
  {
    v23 = v89;
    if (v89 != 0xFF && (v88 & 1) == 0)
    {
      v24 = *(&v88 + 1);
      v25 = *(&v89 + 1);
      origin = v87.origin;
      size = v87.size;
      if (v81 == 2 || (v81 & 1) != 0)
      {
        x = *(v1 + 5296);
        sub_1B15CB4C4(*(&v88 + 1), v89 & 1);
        [*&x save];
        v29 = *(v1 + 5312);
        v30 = *(v1 + 5360);
        v31 = *(v1 + 5368);
        v97.origin = origin;
        v97.size = size;
        rect.origin.x = v30 * CGRectGetMinX(v97);
        v98.origin = origin;
        v98.size = size;
        v32 = v31 * CGRectGetMinY(v98);
        v99.origin = origin;
        v99.size = size;
        v33 = v30 * CGRectGetWidth(v99);
        v100.origin = origin;
        v100.size = size;
        v34 = v31 * CGRectGetHeight(v100);
        v35 = *(v1 + 5344);
        v36 = *(v1 + 5352);
        v101.origin.x = v35;
        v101.origin.y = v36;
        v101.size.width = v30;
        v101.size.height = v31;
        v37 = CGRectGetMinX(v101);
        v102.origin.x = v35;
        v102.origin.y = v36;
        v73 = v30;
        v102.size.width = v30;
        v38 = v31;
        v102.size.height = v31;
        v39 = CGRectGetMinY(v102);
        v103.origin.x = rect.origin.x;
        v103.origin.y = v32;
        v103.size.width = v33;
        v103.size.height = v34;
        v104 = CGRectOffset(v103, v37, v39);
        v105 = CGRectInset(v104, -*(v1 + 6448), -*(v1 + 6448));
        [v29 setRect_];
        LODWORD(v40) = 1.0;
        [*&x clipShape:v29 alpha:0 mode:v40];
        if ((v7 & 0x10) == 0 || (v41 = *(v1 + 6368) * *(&v83 + 1), v41 <= 0.0))
        {
LABEL_30:
          sub_1B15F997C(&v81);
          [*&x restore];
          sub_1B15C26A4(v24, v23);
          return;
        }

        v42 = v25;
        v43 = *(v1 + 6360);
        v44 = *(v1 + 6352);
        if (qword_1EDB302F8 != -1)
        {
          swift_once();
        }

        v45 = qword_1EDB30300;
        v46 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
        v47 = sub_1B1619D68();
        v48 = [v46 initWithLibrary:v45 function:v47];

        v49 = (v23 & 1);
        aBlock.i8[0] = v23 & 1;
        sub_1B1612DC8(v24, v23 & 1, &aBlock);
        v50 = aBlock.i64[0] - 2;
        if (__OFSUB__(aBlock.i64[0], 2))
        {
          __break(1u);
        }

        else
        {
          v72 = HIDWORD(v23);
          v37 = v42;
          aBlock.i8[0] = v23 & 1;
          sub_1B1612DC8(v24, v23 & 1, &aBlock);
          v106.origin.x = v35;
          v106.origin.y = v36;
          v106.size.width = v73;
          v106.size.height = v38;
          v51 = v50 / CGRectGetWidth(v106) * -v43;
          aBlock.f32[0] = v51;
          v49 = &selRef_gradientStartPoint;
          [v48 setArgumentBytes:&aBlock atIndex:0 type:1 count:1 flags:0];
          v52 = 1.0 / v44;
          v44 = -2.0;
          *&v52 = v52 + -2.0;
          aBlock.i32[0] = LODWORD(v52);
          [v48 setArgumentBytes:&aBlock atIndex:1 type:1 count:1 flags:0];
          if (qword_1EDB30310 == -1)
          {
LABEL_23:
            rect.origin.x = x;
            aBlock = vcvt_hight_f32_f64(vcvt_f32_f64(xmmword_1EDB30318), *&qword_1EDB30328);
            [v48 v49[12]];
            v53 = v37 * v44;
            aBlock.f32[0] = v53;
            [v48 v49[12]];
            aBlock.i32[0] = 1056964608;
            [v48 v49[12]];
            v54 = v48;
            if (v23)
            {
              CGImage = RBImageMakeCGImage();
              v57 = v56;
              v58 = v42;
              v59 = v72;
            }

            else
            {
              v60 = v24[4];
              v61 = v24[5];
              v62 = v24[6];
              v77 = v24[3];
              v78 = v60;
              v79 = v61;
              v80 = v62;
              v63 = v24[2];
              aBlock = v24[1];
              v76 = v63;
              if (v62.i64[1] < 0)
              {
                v58 = v42;
                sub_1B15CA72C(v24, v23);
                sub_1B15DE844(&aBlock, &rect.size);
              }

              else
              {
                v64 = v49;
                v65 = v79.i64[0];
                v58 = v42;
                sub_1B15CA72C(v24, v23);
                sub_1B15DE844(&aBlock, &rect.size);

                v49 = v64;
              }

              swift_unknownObjectRetain();

              v59 = v72;
              CGImage = RBImageMakeMTLTexture2();
              v57 = v66;
              swift_unknownObjectRelease();
              sub_1B15C26A4(v24, v23);
            }

            aBlock.i32[0] = CGImage;
            aBlock.i64[1] = v57;
            [v54 v49[12]];
            v67 = swift_allocObject();
            *(v67 + 16) = v24;
            *(v67 + 24) = v23 & 1;
            *(v67 + 28) = v59;
            *(v67 + 32) = v58;
            v77.i64[0] = sub_1B15FA5A0;
            v77.i64[1] = v67;
            aBlock.i64[0] = MEMORY[0x1E69E9820];
            aBlock.i64[1] = 1107296256;
            v76.i64[0] = sub_1B15F7FB4;
            v76.i64[1] = &block_descriptor_4;
            v68 = _Block_copy(&aBlock);
            sub_1B15CA72C(v24, v23);
            sub_1B15DE8B8(sub_1B15FA5A0);

            [v54 setCIFilterProvider_];
            _Block_release(v68);

            v69 = v54;
            aBlock.i8[0] = v23 & 1;
            sub_1B15DBB60(v24, v23 & 1, v54, 0x1Bu, v37, v41);

            x = rect.origin.x;
            goto LABEL_30;
          }
        }

        swift_once();
        goto LABEL_23;
      }
    }
  }
}

uint64_t sub_1B15CDC74()
{
  sub_1B15C71A8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B15CDD04(_OWORD *a1, uint64_t a2, _OWORD *a3, double a4, double a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a5 > 0.0)
  {
    v6 = v5;
    if (qword_1EDB302F8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDB30300;
    v13 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
    v14 = sub_1B1619D68();
    v15 = [v13 initWithLibrary:v12 function:v14];

    v16 = a3[5];
    *&aBlock[64] = a3[4];
    *&aBlock[80] = v16;
    *&aBlock[96] = a3[6];
    v17 = a3[1];
    *aBlock = *a3;
    *&aBlock[16] = v17;
    v18 = a3[3];
    *&aBlock[32] = a3[2];
    *&aBlock[48] = v18;
    sub_1B15DB1A4(&v6[53].origin.y);
    v19 = *aBlock;
    v41 = *&aBlock[56];
    v42 = *&aBlock[72];
    v43 = *&aBlock[88];
    v44 = *&aBlock[104];
    v38 = *&aBlock[8];
    v39 = *&aBlock[24];
    v40 = *&aBlock[40];
    v37 = *aBlock;
    aBlock[0] = a2 & 1;
    sub_1B1612DC8(a1, a2 & 1, aBlock);
    v20 = *aBlock - 2;
    if (__OFSUB__(*aBlock, 2))
    {
      __break(1u);
    }

    aBlock[0] = a2 & 1;
    sub_1B1612DC8(a1, a2 & 1, aBlock);
    Width = CGRectGetWidth(v6[167]);
    sub_1B15CE178(v15, v20 / Width);
    v22 = a4 * -2.0;
    *aBlock = v22;
    [v15 setArgumentBytes:aBlock atIndex:7 type:1 count:1 flags:{0, v37, v38, v39, v40, v41, v42, v43, v44}];
    *aBlock = 1056964608;
    [v15 setArgumentBytes:aBlock atIndex:8 type:1 count:1 flags:0];
    if (a2)
    {
      CGImage = RBImageMakeCGImage();
      v25 = v24;
    }

    else
    {
      v26 = a1[4];
      v27 = a1[5];
      v28 = a1[6];
      *&aBlock[32] = a1[3];
      *&aBlock[48] = v26;
      *&aBlock[64] = v27;
      *&aBlock[80] = v28;
      v29 = a1[2];
      *aBlock = a1[1];
      *&aBlock[16] = v29;
      if ((*(&v28 + 1) & 0x8000000000000000) != 0)
      {
        sub_1B15CB4C4(a1, 0);
        sub_1B15DE844(aBlock, &v37);
      }

      else
      {
        v30 = *&aBlock[64];
        sub_1B15CB4C4(a1, 0);
        sub_1B15DE844(aBlock, &v37);
      }

      swift_unknownObjectRetain();

      CGImage = RBImageMakeMTLTexture2();
      v25 = v31;
      swift_unknownObjectRelease();
      sub_1B15C71A8(a1, 0);
    }

    *aBlock = CGImage;
    *&aBlock[8] = v25;
    [v15 setArgumentBytes:aBlock atIndex:9 type:7 count:1 flags:0];
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    v33 = a2 & 1;
    *(v32 + 24) = a2 & 1;
    *(v32 + 28) = HIDWORD(a2);
    *(v32 + 32) = a4;
    *&aBlock[32] = sub_1B15DE8F0;
    *&aBlock[40] = v32;
    *aBlock = MEMORY[0x1E69E9820];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_1B15F7FB4;
    *&aBlock[24] = &block_descriptor_7;
    v34 = _Block_copy(aBlock);
    sub_1B15CB4C4(a1, a2 & 1);
    sub_1B15DE8B8(sub_1B15DE8F0);

    [v15 setCIFilterProvider_];
    _Block_release(v34);

    v35 = v15;
    aBlock[0] = v33;
    sub_1B15DBB60(a1, v33, v15, 0x1Bu, v36, v19 * a5);
  }
}

id sub_1B15CE178(void *a1, double a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = *(v2 + 16);
  v28 = *(v2 + 8);
  v5 = *(v2 + 24);
  v7 = *(v2 + 40);
  v6 = *(v2 + 48);
  v9 = *(v2 + 56);
  v8 = *(v2 + 64);
  v10 = *(v2 + 72);
  v30 = *(v2 + 80);
  v31 = *(v2 + 96);
  v11 = cos(*(v2 + 32));
  if (v11 == -1.0)
  {
    v12 = v7 == 1.0;
    if (v5 == 0.0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
    if (v5 == 0.0)
    {
      goto LABEL_10;
    }
  }

  if (qword_1EB752588 != -1)
  {
    swift_once();
  }

  v13 = sub_1B1619D18();
  __swift_project_value_buffer(v13, qword_1EB752AA0);
  v14 = sub_1B1619CF8();
  v15 = sub_1B161A088();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1B15BF000, v14, v15, "Attempting to render highlights that have not been projected to 2D!", v16, 2u);
    MEMORY[0x1B2730CA0](v16, -1, -1);
  }

LABEL_10:
  v17 = v6 * a2;
  v32.f32[0] = v17;
  [a1 setArgumentBytes:&v32 atIndex:0 type:1 count:1 flags:{0, v26, v28}];
  v18 = v9 * a2;
  if (v9 * a2 <= v8)
  {
    v18 = v8;
  }

  v19 = v18;
  v32.f32[0] = v19;
  [a1 setArgumentBytes:&v32 atIndex:1 type:1 count:1 flags:0];
  v20 = -1.01;
  if (!v12)
  {
    v20 = v11;
  }

  v32.f32[0] = v20;
  [a1 setArgumentBytes:&v32 atIndex:2 type:1 count:1 flags:0];
  v21 = 1.0 / v7 + -2.0;
  v32.f32[0] = v21;
  [a1 setArgumentBytes:&v32 atIndex:3 type:1 count:1 flags:0];
  v22 = v10;
  v32.f32[0] = v22;
  [a1 setArgumentBytes:&v32 atIndex:4 type:1 count:1 flags:0];
  *&v23 = v29;
  v24 = v27;
  *(&v23 + 1) = -v24;
  v32.i64[0] = v23;
  [a1 setArgumentBytes:&v32 atIndex:5 type:2 count:1 flags:0];
  v32 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v31);
  return [a1 setArgumentBytes:&v32 atIndex:6 type:5 count:1 flags:0];
}

uint64_t sub_1B15CE538(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_1B15CE580(uint64_t a1)
{
  if (*(a1 + 56) != *(v1 + 56))
  {
    return 0;
  }

  v3 = *a1;
  v5 = *v1;
  v6 = *(a1 + 24);
  v7 = v6;
  v8 = v6 >> 8;
  if (v7 == 2)
  {
    LOBYTE(v8) = 4;
  }

  if (*(v1 + 24) == 2 || (*(v1 + 24) & 0xFF00) == 0x400)
  {
    if (v8 != 4)
    {
      return 0;
    }
  }

  else if (v8 == 4 || v8 != BYTE1(*(v1 + 24)))
  {
    return 0;
  }

  if (*(v5 + 16) != *(v3 + 16))
  {
    return 0;
  }

  return sub_1B15CE9F4(v5, v3);
}

void sub_1B15CE614(uint64_t a1, _OWORD *a2, char a3, double a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 5296);
  if ([v7 profile] == 2)
  {
    if (qword_1EDB302F8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDB30300;
    v9 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
    v10 = sub_1B1619D68();
    v11 = [v9 initWithLibrary:v8 function:v10];

    v12 = a4 * -2.0;
    v13 = v12;
    *v29 = -v13;
    v14 = &selRef_gradientStartPoint;
    [v11 setArgumentBytes:v29 atIndex:0 type:1 count:1 flags:0];
    v15 = v12 * 0.5 + 1.0;
    *v29 = v15;
    [v11 setArgumentBytes:v29 atIndex:1 type:1 count:1 flags:0];
    if (a3)
    {
      CGImage = RBImageMakeCGImage();
      v18 = v17;
    }

    else
    {
      v20 = a2[4];
      v21 = a2[5];
      v22 = a2[6];
      *&v29[32] = a2[3];
      v30 = v20;
      v31 = v21;
      v32 = v22;
      v23 = a2[2];
      *v29 = a2[1];
      *&v29[16] = v23;
      if ((*(&v22 + 1) & 0x8000000000000000) != 0)
      {
        sub_1B15CB4C4(a2, 0);
        sub_1B15DE844(v29, v28);
      }

      else
      {
        v24 = v31;
        sub_1B15CB4C4(a2, 0);
        sub_1B15DE844(v29, v28);

        v14 = &selRef_gradientStartPoint;
      }

      swift_unknownObjectRetain();

      CGImage = RBImageMakeMTLTexture2();
      v18 = v25;
      swift_unknownObjectRelease();
      sub_1B15C71A8(a2, 0);
    }

    *v29 = CGImage;
    *&v29[8] = v18;
    [v11 v14[12]];
    v26 = v11;
    v29[0] = a3 & 1;
    sub_1B15DBB60(a2, a3 & 1, v11, 0, v27, 1.0);
  }

  else
  {
    if (qword_1EDB30338 != -1)
    {
      swift_once();
    }

    v29[0] = 0;
    *&v29[4] = 0x7F8000003F000000;
    *&v29[12] = vcvt_hight_f32_f64(vcvt_f32_f64(xmmword_1EDB30340), *&qword_1EDB30350);
    *&v29[28] = 3;
    [v7 addStyle:0 data:v29];
    v29[0] = a3 & 1;
    sub_1B15DBB60(a2, a3 & 1, 0, 0, v19, 1.0);
  }
}

uint64_t sub_1B15CE990(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v11 = a1[2];
  v12 = v2;
  v13 = *(a1 + 8);
  v3 = a1[1];
  v9 = *a1;
  v10 = v3;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v8 = *(a2 + 64);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return sub_1B15CE580(v7) & 1;
}

uint64_t sub_1B15CE9F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v83 = v2;
  v84 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[7];
    v64 = v5[8];
    v65 = v8;
    v10 = v5[9];
    v66 = v5[10];
    v11 = v5[5];
    v12 = v5[3];
    v60 = v5[4];
    v61 = v11;
    v13 = v5[5];
    v14 = v5[7];
    v62 = v5[6];
    v63 = v14;
    v15 = v5[1];
    v57[0] = *v5;
    v57[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v58 = v5[2];
    v59 = v16;
    v53 = v64;
    v54 = v10;
    v55 = v5[10];
    v49 = v60;
    v50 = v13;
    v51 = v62;
    v52 = v9;
    v45 = v18;
    v46 = v17;
    v47 = v58;
    v48 = v12;
    v19 = v6[9];
    v20 = v6[7];
    v75 = v6[8];
    v76 = v19;
    v21 = v6[9];
    v77 = v6[10];
    v22 = v6[5];
    v23 = v6[3];
    v71 = v6[4];
    v72 = v22;
    v24 = v6[5];
    v25 = v6[7];
    v73 = v6[6];
    v74 = v25;
    v26 = v6[1];
    v68[0] = *v6;
    v68[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v69 = v6[2];
    v70 = v27;
    v41 = v75;
    v42 = v21;
    v43 = v6[10];
    v37 = v71;
    v38 = v24;
    v39 = v73;
    v40 = v20;
    v33 = v29;
    v34 = v28;
    v67 = *(v5 + 88);
    v56 = *(v5 + 88);
    v78 = *(v6 + 88);
    v44 = *(v6 + 88);
    v35 = v69;
    v36 = v23;
    sub_1B15C9418(v57, v32);
    sub_1B15C9418(v68, v32);
    v30 = _s13IconRendering0A0V7ElementV2eeoiySbAE_AEtFZ_0(&v45, &v33);
    v79[8] = v41;
    v79[9] = v42;
    v79[10] = v43;
    v80 = v44;
    v79[4] = v37;
    v79[5] = v38;
    v79[6] = v39;
    v79[7] = v40;
    v79[0] = v33;
    v79[1] = v34;
    v79[2] = v35;
    v79[3] = v36;
    sub_1B15CB1E8(v79);
    v81[8] = v53;
    v81[9] = v54;
    v81[10] = v55;
    v82 = v56;
    v81[5] = v50;
    v81[6] = v51;
    v81[7] = v52;
    v81[0] = v45;
    v81[1] = v46;
    v81[2] = v47;
    v81[3] = v48;
    v81[4] = v49;
    sub_1B15CB1E8(v81);
    if (!v30)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 184);
    v5 = (v5 + 184);
  }

  return 1;
}

uint64_t objectdestroyTm()
{
  sub_1B15C71A8(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

id sub_1B15CEC8C(uint64_t a1)
{
  v2 = a1 + 4096;
  v3 = [*(a1 + 5296) profile];
  v4 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  if (v3 == 2)
  {
    [v4 setProfile_];
  }

  v5 = *(v2 + 1464);
  v6 = *(a1 + 5888);
  v7 = *(a1 + 5536);
  v8 = *(v2 + 2337);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v9 = (a1 + 5904);
      v10 = (a1 + 5504);
    }

    else
    {
      v10 = (a1 + 5496);
      v9 = (a1 + 5896);
    }
  }

  else if (*(v2 + 2337))
  {
    v9 = (a1 + 5912);
    v10 = (a1 + 5512);
  }

  else
  {
    v9 = (a1 + 5920);
    v10 = (a1 + 5520);
  }

  v11 = *v9;
  v12 = *(a1 + 5928);
  v13 = *v10;
  v14 = *(a1 + 5816);
  v22[0] = *(v2 + 1448);
  v22[1] = v5;
  v23 = v6;
  v24 = v7;
  v25 = v11;
  v26 = v12;
  v27 = 0;
  v28 = v13;
  v29 = v14;
  v15 = *(v2 + 1145);
  v16 = 5848;
  v30 = v14;
  v31 = v14;
  if (v15)
  {
    v16 = 5880;
  }

  v32 = 0x3FF0000000000000;
  if (v8 > 1)
  {
    v18 = v8 == 2;
    v19 = 5832;
    v20 = 5864;
    if (!v18)
    {
      v20 = 5856;
      v19 = 5824;
    }
  }

  else
  {
    if (!v8)
    {
      v17 = *(a1 + v16);
      goto LABEL_21;
    }

    v19 = 5840;
    v20 = 5872;
  }

  if (v15)
  {
    v19 = v20;
  }

  v17 = *(a1 + v19);
LABEL_21:
  if (v17 > 0.0)
  {
    sub_1B15CC72C();
    [v4 save];
    sub_1B15DA1F8(v22);
    [v4 restore];
  }

  return v4;
}

void *sub_1B15CEEE0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  memcpy(__dst, v4, 0x6E3uLL);
  __dst[221] = v3;
  nullsub_1(__dst);
  memcpy(v10, (v6 + 1776), sizeof(v10));
  sub_1B15CDCB0(v5, v8);
  swift_unknownObjectRetain();
  sub_1B15C1750(v10, &qword_1EB752AC8);
  return memcpy((v6 + 1776), __dst, 0x6F0uLL);
}

id sub_1B15CEFC4(uint64_t *a1, double a2)
{
  v3 = a1 + 512;
  v4 = [a1[662] profile];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  if (v4 == 2)
  {
    [v5 setProfile_];
  }

  v6 = v3[2337];
  v7 = a1[687];
  v8 = a1[688];
  v9 = a1[689];
  v10 = a1[690];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v11 = 708;
      v12 = a1[688];
    }

    else
    {
      v11 = 707;
      v12 = a1[687];
    }
  }

  else if (v3[2337])
  {
    v11 = 709;
    v12 = a1[689];
  }

  else
  {
    v11 = 710;
    v12 = a1[690];
  }

  v13 = *a1;
  v14 = *(a1 + 1);
  v15 = a1[3];
  v16 = a1[706];
  v17 = a1[793];
  v18 = *&a1[v11];
  v19 = a1[711];
  v20 = v3[1224];
  if (v20 == 1)
  {
    if (qword_1EB7525E8 != -1)
    {
      v50 = *(a1 + 1);
      v47 = a1[688];
      v48 = a1[687];
      v46 = a1[689];
      swift_once();
      v9 = v46;
      v8 = v47;
      v7 = v48;
      v14 = v50;
    }

    v21 = xmmword_1EB752D88;
    _Q1 = *&qword_1EB752D98;
  }

  else
  {
    v21 = vdupq_lane_s64(a1[697], 0);
    __asm { FMOV            V1.2D, #1.0 }

    *&_Q1 = a1[697];
  }

  v65 = v14;
  v64 = v13;
  v66 = v15;
  v67 = v16;
  v68 = v17;
  v69 = v18 * a2;
  v70 = v19;
  v71 = 0;
  v72 = v12;
  v73 = v21;
  v74 = _Q1;
  v27 = 701;
  if (v3[1145])
  {
    v27 = 705;
  }

  if (v6 > 1)
  {
    v28 = 5592;
    v29 = 5624;
    if (v6 != 2)
    {
      v29 = 5616;
      v28 = 5584;
    }
  }

  else
  {
    if (!v6)
    {
      if (*&a1[v27] <= 0.0)
      {
        goto LABEL_29;
      }

LABEL_28:
      v31 = v9;
      v32 = v8;
      v33 = v7;
      v49 = v14;
      [v5 save];
      sub_1B15DA1F8(&v64);
      [v5 restore];
      v14 = v49;
      v7 = v33;
      v8 = v32;
      v9 = v31;
      goto LABEL_29;
    }

    v28 = 5600;
    v29 = 5632;
  }

  if (v3[1145])
  {
    v30 = v29;
  }

  else
  {
    v30 = v28;
  }

  if (*(a1 + v30) > 0.0)
  {
    goto LABEL_28;
  }

LABEL_29:
  v34 = v3[2337];
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v35 = 723;
      v10 = v8;
    }

    else
    {
      v35 = 722;
      v10 = v7;
    }
  }

  else if (v3[2337])
  {
    v35 = 724;
    v10 = v9;
  }

  else
  {
    v35 = 725;
  }

  v36 = a1[721];
  v37 = *&a1[v35];
  v38 = a1[726];
  if (v20)
  {
    if (qword_1EB7525E8 != -1)
    {
      v51 = v14;
      swift_once();
      v14 = v51;
    }

    v39 = xmmword_1EB752D88;
    _Q1 = *&qword_1EB752D98;
  }

  else
  {
    v39 = vdupq_lane_s64(a1[712], 0);
    __asm { FMOV            V1.2D, #1.0 }

    *&_Q1 = a1[712];
  }

  v53 = v13;
  v54 = vnegq_f64(v14);
  v55 = v15;
  v56 = v36;
  v57 = v17;
  v58 = v37 * a2;
  v59 = v38;
  v60 = 0;
  v61 = v10;
  v62 = v39;
  v63 = _Q1;
  v41 = 716;
  if (v3[1145])
  {
    v41 = 720;
  }

  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v42 = 5712;
      v43 = 5744;
    }

    else
    {
      v42 = 5704;
      v43 = 5736;
    }
  }

  else
  {
    if (!v34)
    {
      if (*&a1[v41] <= 0.0)
      {
        return v5;
      }

      goto LABEL_55;
    }

    v42 = 5720;
    v43 = 5752;
  }

  if (v3[1145])
  {
    v44 = v43;
  }

  else
  {
    v44 = v42;
  }

  if (*(a1 + v44) > 0.0)
  {
LABEL_55:
    [v5 save];
    sub_1B15DA1F8(&v53);
    [v5 restore];
  }

  return v5;
}

void *sub_1B15CF444(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  memcpy(__dst, v4, 0x6E3uLL);
  __dst[221] = v3;
  nullsub_1(__dst);
  memcpy(v10, v6, sizeof(v10));
  sub_1B15CDCB0(v5, v8);
  swift_unknownObjectRetain();
  sub_1B15C1750(v10, &qword_1EB752AC8);
  return memcpy(v6, __dst, 0x6F0uLL);
}

char *sub_1B15CF528()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = vaddvq_f64(vmulq_f64(*v0, xmmword_1B161CC70)) + v2 * 0.0722;
  v5 = 0.0;
  v6 = 0.25;
  if (v4 <= 0.25)
  {
    v6 = 0.2;
    goto LABEL_13;
  }

  if (v4 <= 0.5)
  {
LABEL_13:
    v7 = 0.7;
    goto LABEL_14;
  }

  if (v4 > 0.75)
  {
    v7 = 0.3;
  }

  else
  {
    v7 = 0.7;
  }

  if (v4 > 0.75)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = -0.1;
  if (v4 <= 0.75)
  {
    v6 = 0.3;
  }

LABEL_14:
  v23 = v6;
  v24 = vsubq_f64(vdupq_lane_s64(*&v4, 0), v1);
  v8 = v6 < 0.0;
  v9 = v2 + (v4 - v2) * -0.2;
  v10 = 1.0 - v9;
  if (v6 < 0.0)
  {
    v10 = v9;
  }

  v11 = v9 + v6 * v10;
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
  v12 = swift_allocObject();
  v13 = vaddq_f64(v22, vmulq_f64(v24, vdupq_n_s64(0xBFC999999999999ALL)));
  __asm { FMOV            V1.2D, #1.0 }

  v19 = vdup_n_s32(v8);
  v20.i64[0] = v19.u32[0];
  v20.i64[1] = v19.u32[1];
  *(v12 + 16) = xmmword_1B161CC80;
  *(v12 + 32) = vaddq_f64(v13, vmulq_n_f64(vbslq_s8(vcltzq_s64(vshlq_n_s64(v20, 0x3FuLL)), v13, vsubq_f64(_Q1, v13)), v23));
  *(v12 + 48) = v11;
  *(v12 + 56) = v3;
  *(v12 + 64) = v5;
  *(v12 + 72) = v22;
  *(v12 + 88) = v2;
  *(v12 + 96) = v3;
  *(v12 + 104) = v7;
  v25 = v12;

  sub_1B15D01F8(&v25);

  return v25;
}

uint64_t _s13IconRendering22ICRRenderingParametersV2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *(v1 + 16);
  v6 = (v2 + 296);
  v7 = (v1 + 296);
  v99 = *(v1 + 24);
  v101 = *v1;
  v95 = *(v1 + 56);
  v97 = *(v1 + 40);
  v91 = *(v1 + 88);
  v93 = *(v1 + 72);
  v87 = *(v1 + 120);
  v89 = *(v1 + 104);
  v67 = *(v1 + 296);
  v9 = *(v1 + 336);
  v8 = *(v1 + 344);
  v10 = *(v1 + 352);
  v66 = *(v1 + 360);
  memcpy(__dst, (v1 + 368), sizeof(__dst));
  v64 = v7[64];
  v65 = v7[65];
  v63 = *(v4 + 1352);
  v59 = *(v4 + 1360);
  v57 = *(v4 + 1368);
  v56 = *(v4 + 1376);
  v62 = v7[68];
  v58 = *(v4 + 1400);
  v60 = *(v4 + 1408);
  v61 = *(v4 + 1416);
  v107 = *(v4 + 1440);
  v108 = *(v4 + 1456);
  v109 = *(v4 + 1472);
  v110 = *(v4 + 1488);
  v106 = *(v4 + 1424);
  v115 = *(v4 + 1568);
  v116 = *(v4 + 1584);
  v117 = *(v4 + 1600);
  v118 = *(v4 + 1616);
  v111 = *(v4 + 1504);
  v112 = *(v4 + 1520);
  v113 = *(v4 + 1536);
  v114 = *(v4 + 1552);
  v55 = *(v4 + 1618);
  v11 = *(v3 + 16);
  v83 = *(v3 + 24);
  v85 = *v3;
  v79 = *(v3 + 56);
  v81 = *(v3 + 40);
  v76 = *(v3 + 88);
  v78 = *(v3 + 72);
  v72 = *(v3 + 120);
  v74 = *(v3 + 104);
  v12 = *(v3 + 296);
  v70 = *(v4 + 304);
  v71 = *(v4 + 320);
  v68 = *(v3 + 304);
  v69 = *(v3 + 320);
  v14 = *(v3 + 336);
  v13 = *(v3 + 344);
  v15 = *(v3 + 352);
  memcpy(__src, (v3 + 368), sizeof(__src));
  result = 0;
  v18 = *(v4 + 1256);
  v17 = *(v4 + 1272);
  v120 = *(v3 + 1424);
  v19 = *(v3 + 1440);
  v124 = *(v3 + 1488);
  v123 = *(v3 + 1472);
  v122 = *(v3 + 1456);
  v121 = v19;
  v129 = *(v3 + 1568);
  v130 = *(v3 + 1584);
  v131 = *(v3 + 1600);
  v125 = *(v3 + 1504);
  v126 = *(v3 + 1520);
  v127 = *(v3 + 1536);
  v128 = *(v3 + 1552);
  v21 = *(v4 + 1224);
  v20 = *(v4 + 1240);
  v23 = *(v3 + 1256);
  v22 = *(v3 + 1272);
  v25 = *(v3 + 1224);
  v24 = *(v3 + 1240);
  v27 = v7[62];
  v26 = v7[63];
  v29 = v6[62];
  v28 = v6[63];
  v30 = v6[65];
  v31 = v6[64];
  v32 = *(v3 + 1352);
  v33 = *(v3 + 1360);
  v34 = *(v3 + 1368);
  v35 = *(v3 + 1376);
  v36 = v6[68];
  v37 = *(v3 + 1400);
  v38 = *(v3 + 1408);
  v132 = *(v3 + 1616);
  v39 = *(v3 + 1416);
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v101, v85), vceqq_f64(v99, v83)), vuzp1q_s32(vceqq_f64(v97, v81), vceqq_f64(v95, v79))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(v93, v78), vceqq_f64(v91, v76)), vuzp1q_s32(vceqq_f64(v89, v74), vceqq_f64(v87, v72))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v4 + 136), *(v3 + 136)), vceqq_f64(*(v4 + 152), *(v3 + 152))), xmmword_1B161E2F0)) & 0xF) == 0)
  {
    v80 = v29;
    v88 = v25;
    v90 = v24;
    v92 = v23;
    v94 = v22;
    v82 = v28;
    v84 = v27;
    v96 = v21;
    v98 = v20;
    v86 = v26;
    v52 = v37;
    v53 = v34;
    v54 = v36;
    v73 = v32;
    v75 = v31;
    v77 = v30;
    v100 = v18;
    v102 = v17;
    if (((v5 ^ v11) & 1) == 0)
    {
      v40 = *(v3 + 1618);
      v41 = *(v4 + 248);
      *&v104[64] = *(v4 + 232);
      *&v104[80] = v41;
      v42 = *(v4 + 184);
      *v104 = *(v4 + 168);
      *&v104[16] = v42;
      v43 = *(v4 + 216);
      *&v104[32] = *(v4 + 200);
      *&v104[48] = v43;
      v44 = *(v4 + 280);
      *&v104[96] = *(v4 + 264);
      *&v104[112] = v44;
      v45 = *(v3 + 248);
      v103[4] = *(v3 + 232);
      v103[5] = v45;
      v46 = *(v3 + 280);
      v103[6] = *(v3 + 264);
      v103[7] = v46;
      v47 = *(v3 + 184);
      v103[0] = *(v3 + 168);
      v103[1] = v47;
      v48 = *(v3 + 216);
      v103[2] = *(v3 + 200);
      v103[3] = v48;
      v49 = _s13IconRendering22ICRRenderingParametersV13ChicletShadowV2eeoiySbAE_AEtFZ_0(v104, v103);
      result = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v70, v68), vceqq_f64(v71, v69)))) & 1) != 0 && v9 == v14 && v8 == v13 && v10 == v15 && (v49 & 1) != 0 && ((v67 ^ v12) & 1) == 0)
      {
        if ((sub_1B15CFDCC(v66) & 1) == 0)
        {
          return 0;
        }

        memcpy(v104, __dst, sizeof(v104));
        memcpy(v103, __src, 0x358uLL);
        if ((_s13IconRendering22ICRRenderingParametersV10HighlightsV2eeoiySbAE_AEtFZ_0(v104, v103) & 1) == 0)
        {
          return 0;
        }

        result = 0;
        if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v96, v88), vceqq_f64(v98, v90)), vuzp1q_s32(vceqq_f64(v100, v92), vceqq_f64(v102, v94))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v84, v80), vceqq_f64(v86, v82)), xmmword_1B161E2F0)) & 0xF) == 0)
        {
          result = 0;
          v50.f64[0] = v63;
          v50.f64[1] = v57;
          v51.f64[0] = v73;
          v51.f64[1] = v53;
          if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(v64, v75), vceqq_f64(v65, v77)), vuzp1q_s32(vceqq_f64(v50, v51), vceqq_f64(v62, v54))))) & 1) != 0 && v58 == v52 && v60 == v38 && v61 == v39 && v59 == v33 && v56 == v35)
          {
            *&v104[32] = v108;
            *&v104[48] = v109;
            *&v104[64] = v110;
            *v104 = v106;
            *&v104[16] = v107;
            v103[2] = v122;
            v103[3] = v123;
            v103[4] = v124;
            v103[0] = v120;
            v103[1] = v121;
            if (_s13IconRendering22ICRRenderingParametersV16ContourGradientsV2eeoiySbAE_AEtFZ_0(v104, v103))
            {
              *&v104[64] = v115;
              *&v104[80] = v116;
              *&v104[96] = v117;
              *&v104[112] = v118;
              *v104 = v111;
              *&v104[16] = v112;
              *&v104[32] = v113;
              *&v104[48] = v114;
              v103[4] = v129;
              v103[5] = v130;
              v103[6] = v131;
              LOWORD(v103[7].f64[0]) = v132;
              v103[0] = v125;
              v103[1] = v126;
              v103[2] = v127;
              v103[3] = v128;
              if (_s13IconRendering22ICRRenderingParametersV8OutlinesV2eeoiySbAE_AEtFZ_0(v104, v103))
              {
                return v55 ^ v40 ^ 1u;
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B15CFDCC(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  if (result == v2)
  {
    return 1;
  }

  v3 = v2;
  if (*(result + 16) != *(v2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v29 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v30 = v8;
  v31 = result;
  while (v7)
  {
    v33 = (v7 - 1) & v7;
    v9 = __clz(__rbit64(v7)) | (v4 << 6);
LABEL_18:
    v14 = *(*(result + 48) + v9);
    memcpy(&__src[7], (*(result + 56) + 888 * v9), 0x378uLL);
    v39 = v14;
    memcpy(v40, __src, 0x37FuLL);
    nullsub_1(&v39);
    v15 = v39;
    v43[0] = v40[0];
    *(v43 + 3) = *(v40 + 3);
    v16 = HIBYTE(v40[3]);
    v42[0] = v40[4];
    *(v42 + 3) = *(&v40[4] + 3);
    v17 = *(&v40[1] + 3);
    v18 = *(&v40[5] + 3);
    v19 = HIBYTE(v40[7]);
    v20 = LOBYTE(v40[8]);
    memcpy(v41, &v40[8] + 1, sizeof(v41));
    v32 = v4;
LABEL_19:
    v40[0] = v43[0];
    *(v40 + 3) = *(v43 + 3);
    v40[4] = v42[0];
    *(&v40[4] + 3) = *(v42 + 3);
    memcpy(&v40[8] + 1, v41, 0x35EuLL);
    v39 = v15;
    HIBYTE(v40[3]) = v16;
    *(&v40[1] + 3) = v17;
    *(&v40[5] + 3) = v18;
    HIBYTE(v40[7]) = v19;
    LOBYTE(v40[8]) = v20;
    result = sub_1B160BB88(&v39);
    if (result == 1)
    {
      return result;
    }

    v21 = sub_1B15C522C(v15);
    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v23 = *(v3 + 56) + 888 * v21;
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    v28 = *(v23 + 25);
    memcpy(__src, (v23 + 32), 0x358uLL);
    if (v25)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v16 & 1) != 0 || v24 != v17)
    {
      return 0;
    }

    if (v27)
    {
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((v19 & 1) != 0 || v26 != v18)
    {
      return 0;
    }

    if (v28 == 2)
    {
      if (v20 != 2)
      {
        return 0;
      }
    }

    else if (v20 == 2 || ((v28 ^ v20) & 1) != 0)
    {
      return 0;
    }

    memcpy(v37, __src, sizeof(v37));
    if (sub_1B15FA564(v37) == 1)
    {
      memcpy(__dst, &v41[6], sizeof(__dst));
      if (sub_1B15FA564(__dst) != 1)
      {
        return 0;
      }
    }

    else
    {
      memcpy(v35, __src, sizeof(v35));
      memcpy(__dst, &v41[6], sizeof(__dst));
      if (sub_1B15FA564(__dst) == 1)
      {
        return 0;
      }

      memcpy(v34, &v41[6], sizeof(v34));
      if ((_s13IconRendering22ICRRenderingParametersV10HighlightsV2eeoiySbAE_AEtFZ_0(v35, v34) & 1) == 0)
      {
        return 0;
      }
    }

    result = v31;
    v4 = v32;
    v8 = v30;
    v7 = v33;
  }

  if (v8 <= v4 + 1)
  {
    v10 = v4 + 1;
  }

  else
  {
    v10 = v8;
  }

  v11 = v10 - 1;
  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      v32 = v11;
      sub_1B160BB9C(&v39);
      v15 = v39;
      v43[0] = v40[0];
      *(v43 + 3) = *(v40 + 3);
      v16 = HIBYTE(v40[3]);
      v42[0] = v40[4];
      *(v42 + 3) = *(&v40[4] + 3);
      v17 = *(&v40[1] + 3);
      v18 = *(&v40[5] + 3);
      v19 = HIBYTE(v40[7]);
      v20 = LOBYTE(v40[8]);
      memcpy(v41, &v40[8] + 1, sizeof(v41));
      v33 = 0;
      goto LABEL_19;
    }

    v13 = *(v29 + 8 * v12);
    ++v4;
    if (v13)
    {
      v33 = (v13 - 1) & v13;
      v9 = __clz(__rbit64(v13)) | (v12 << 6);
      v4 = v12;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B15D01F8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B15D04E0(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_1B161A408();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 64];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 + 2))
          {
            break;
          }

          v14 = *(v13 + 24);
          v15 = *(v13 + 40);
          v16 = *v13;
          *(v13 + 24) = *(v13 - 1);
          *(v13 + 40) = v16;
          *(v13 + 7) = *(v13 + 2);
          *(v13 - 1) = v14;
          *v13 = v15;
          *(v13 + 2) = v11;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B1619F48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1B15D62A8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1B15D035C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

BOOL _s13IconRendering22ICRRenderingParametersV16ContourGradientsV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))))) & 1) != 0 && a1[4].f64[0] == a2[4].f64[0])
  {
    return a1[4].f64[1] == a2[4].f64[1];
  }

  return result;
}

uint64_t _s13IconRendering22ICRRenderingParametersV10HighlightsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  v8 = *(a1 + 824);
  v79 = *(a1 + 808);
  v80 = v8;
  v9 = *(a1 + 760);
  v75 = *(a1 + 744);
  v76 = v9;
  v10 = *(a1 + 792);
  v77 = *(a1 + 776);
  v78 = v10;
  v11 = *(a1 + 696);
  v71 = *(a1 + 680);
  v72 = v11;
  v12 = *(a1 + 728);
  v73 = *(a1 + 712);
  v74 = v12;
  v13 = *(a1 + 664);
  v69 = *(a1 + 648);
  v70 = v13;
  v14 = *(a2 + 824);
  v92 = *(a2 + 808);
  v93 = v14;
  v15 = *(a2 + 760);
  v88 = *(a2 + 744);
  v89 = v15;
  v16 = *(a2 + 792);
  v90 = *(a2 + 776);
  v91 = v16;
  v17 = *(a2 + 696);
  v84 = *(a2 + 680);
  v85 = v17;
  v18 = *(a2 + 728);
  v86 = *(a2 + 712);
  v87 = v18;
  v19 = vcltzq_s8(vshlq_n_s8(vandq_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(v3, *(a2 + 40)), vceqq_f64(v4, *(a2 + 56)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(v5, *(a2 + 72)), vceqq_f64(v6, *(a2 + 88))), vuzp1q_s32(vceqq_f64(v7, *(a2 + 104)), vceqq_f64(*(a1 + 120), *(a2 + 120))))), vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 136), *(a2 + 136)), vceqq_f64(*(a1 + 152), *(a2 + 152))), vuzp1q_s32(vceqq_f64(*(a1 + 168), *(a2 + 168)), vceqq_f64(*(a1 + 184), *(a2 + 184)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 200), *(a2 + 200)), vceqq_f64(*(a1 + 216), *(a2 + 216))), vuzp1q_s32(vceqq_f64(*(a1 + 232), *(a2 + 232)), vceqq_f64(*(a1 + 248), *(a2 + 248)))))), 7uLL));
  v19.i8[0] = vminvq_u8(v19);
  v20 = v19.i32[0];
  v21 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 264), *(a2 + 264)), vceqq_f64(*(a1 + 280), *(a2 + 280))), vuzp1q_s32(vceqq_f64(*(a1 + 296), *(a2 + 296)), vceqq_f64(*(a1 + 312), *(a2 + 312)))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(a1 + 328), *(a2 + 328)), vceqq_f64(*(a1 + 344), *(a2 + 344))), vuzp1q_s32(vceqq_f64(*(a1 + 360), *(a2 + 360)), vceqq_f64(*(a1 + 376), *(a2 + 376)))));
  v21.i8[0] = vminvq_u8(v21);
  v22 = v20 & v21.i32[0] & vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 392), *(a2 + 392)), vceqq_f64(*(a1 + 408), *(a2 + 408))))) & (*(a1 + 424) == *(a2 + 424));
  if (*(a1 + 432) == *(a2 + 432))
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(a1 + 440) == *(a2 + 440);
  v25 = *(a2 + 664);
  v82 = *(a2 + 648);
  v83 = v25;
  v26 = *(a1 + 32);
  v81 = *(a1 + 840);
  v27 = *(a1 + 848);
  v28 = *(a2 + 32);
  if (!v24)
  {
    v23 = 0;
  }

  v94 = *(a2 + 840);
  if (v23 == 1 && v26 == v28)
  {
    v29 = *(a2 + 848);
    v30 = *(a1 + 624);
    v66 = *(a1 + 608);
    v67 = v30;
    v68 = *(a1 + 640);
    v31 = *(a1 + 560);
    v62 = *(a1 + 544);
    v63 = v31;
    v32 = *(a1 + 592);
    v64 = *(a1 + 576);
    v65 = v32;
    v33 = *(a1 + 496);
    v58 = *(a1 + 480);
    v59 = v33;
    v34 = *(a1 + 528);
    v60 = *(a1 + 512);
    v61 = v34;
    v35 = *(a1 + 464);
    v56 = *(a1 + 448);
    v57 = v35;
    v36 = *(a2 + 624);
    v53 = *(a2 + 608);
    v54 = v36;
    v55 = *(a2 + 640);
    v37 = *(a2 + 560);
    v49 = *(a2 + 544);
    v50 = v37;
    v38 = *(a2 + 592);
    v51 = *(a2 + 576);
    v52 = v38;
    v39 = *(a2 + 496);
    v45 = *(a2 + 480);
    v46 = v39;
    v40 = *(a2 + 528);
    v47 = *(a2 + 512);
    v48 = v40;
    v41 = *(a2 + 464);
    v43 = *(a2 + 448);
    v44 = v41;
    if (_s13IconRendering22ICRRenderingParametersV10HighlightsV6GlyphsV2eeoiySbAG_AGtFZ_0(&v56, &v43))
    {
      v66 = v79;
      v67 = v80;
      v68 = v81;
      v62 = v75;
      v63 = v76;
      v64 = v77;
      v65 = v78;
      v58 = v71;
      v59 = v72;
      v60 = v73;
      v61 = v74;
      v56 = v69;
      v57 = v70;
      v53 = v92;
      v54 = v93;
      v55 = v94;
      v49 = v88;
      v50 = v89;
      v51 = v90;
      v52 = v91;
      v45 = v84;
      v46 = v85;
      v47 = v86;
      v48 = v87;
      v43 = v82;
      v44 = v83;
      return _s13IconRendering22ICRRenderingParametersV10HighlightsV6GlyphsV2eeoiySbAG_AGtFZ_0(&v56, &v43) & (v27 == v29);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_1B15D08AC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, __int128 *), uint64_t a3, _DWORD *a4, uint64_t a5)
{

  result = sub_1B15D0AAC(&v27, a4, a5, a1, a2, a3);
  v11 = result;
  v13 = v28;
  v12 = v29;
  v14 = v27;
  if (!v30 || (v15 = v31, v16 = *(v30 + 16), v31 == v16))
  {
    v16 = *(v27 + 16);
    if (v28 == v16)
    {
LABEL_4:

      return v11;
    }

    if (v28 >= v16)
    {
LABEL_12:
      __break(1u);
    }

    else
    {
      v17 = 20 * v28;
      v18 = v27 + 32 + 20 * v28;
      v19 = *(v18 + 16);
      v25 = *v18;
      v26 = v19;
      v29(&v24, &v25);
      v20 = v24;
      v21 = v13 + 1;
      v22 = (v17 + v14 + 68);

      if (!v20)
      {
        goto LABEL_8;
      }

LABEL_7:
      v16 = *(v20 + 16);
      if (!v16)
      {
LABEL_8:
        while (1)
        {
          v16 = *(v14 + 16);
          if (v21 == v16)
          {
            goto LABEL_4;
          }

          if (v21 >= v16)
          {
            goto LABEL_12;
          }

          v23 = *v22;
          v25 = *(v22 - 1);
          v26 = v23;
          v12(&v24, &v25);
          v20 = v24;
          ++v21;
          v22 += 5;

          if (v20)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v15 = 0;
  }

  if (v15 < v16)
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1B15D0A44@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A48);
  v5 = swift_allocObject();
  *&result = 5;
  v7 = *a1;
  *(v5 + 16) = xmmword_1B1620A60;
  *(v5 + 32) = v7;
  *(v5 + 48) = v4;
  *a2 = v5;
  return result;
}

uint64_t sub_1B15D0AAC(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, __int128 *), uint64_t a6)
{
  v9 = result;
  if (!a2)
  {
LABEL_22:
    a3 = 0;
    *v9 = a4;
    v9[1] = 0;
    v9[2] = a5;
    v9[3] = a6;
    v9[4] = 0;
    v9[5] = 0;
    return a3;
  }

  if (!a3)
  {
    v11 = 0;
    v12 = 0;
    v14 = 0;
LABEL_26:
    *v9 = a4;
    v9[1] = v14;
    v9[2] = a5;
    v9[3] = a6;
LABEL_27:
    v9[4] = v12;
    v9[5] = v11;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_31;
  }

  v10 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v28 = a4 + 68;
  v29 = a4 + 32;
  v15 = 1;
  while (v12)
  {
    v16 = *(v12 + 16);
    if (v11 == v16)
    {
      break;
    }

    v25 = v11;
    if (v11 >= v16)
    {
      goto LABEL_30;
    }

LABEL_18:
    v11 = v25 + 1;
    *v10 = *(v12 + 4 * v25 + 32);
    if (v15 == a3)
    {
      goto LABEL_26;
    }

    ++v10;
    v13 = v15;
    if (__OFADD__(v15++, 1))
    {
      __break(1u);
      goto LABEL_22;
    }
  }

  v17 = *(a4 + 16);
  if (v14 == v17)
  {
    goto LABEL_24;
  }

  v27 = v15;
  if (v14 < v17)
  {
    v18 = a3;
    v19 = 20 * v14;
    v20 = (v29 + 20 * v14);
    v21 = *(v20 + 4);
    v31 = *v20;
    v32 = v21;
    a5(&v30, &v31);
    v12 = v30;
    ++v14;
    v22 = (v28 + v19);

    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (!*(v12 + 16))
    {
LABEL_11:
      while (1)
      {
        v23 = *(a4 + 16);
        if (v14 == v23)
        {
          break;
        }

        if (v14 >= v23)
        {
          goto LABEL_29;
        }

        v24 = *v22;
        v31 = *(v22 - 1);
        v32 = v24;
        a5(&v30, &v31);
        v12 = v30;
        ++v14;
        v22 += 5;

        if (v12)
        {
          goto LABEL_10;
        }
      }

      v11 = 0;
LABEL_24:
      *v9 = a4;
      v9[1] = v14;
      v9[2] = a5;
      v9[3] = a6;
      a3 = v13;
      goto LABEL_27;
    }

    v25 = 0;
    a3 = v18;
    v15 = v27;
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

double sub_1B15D0D60()
{
  if (qword_1EDB2FB38 != -1)
  {
    swift_once();
  }

  v0 = *&xmmword_1EDB2FB40;
  v1 = __sincos_stret(*(&xmmword_1EDB2FB40 + 1));
  v3 = __sincos_stret(v0);
  result = v3.__sinval;
  *&xmmword_1EDB2FB58 = v3.__cosval * v1.__sinval;
  *(&xmmword_1EDB2FB58 + 1) = v3.__cosval * v1.__cosval;
  qword_1EDB2FB68 = *&v3.__sinval;
  return result;
}

double sub_1B15D0DEC()
{
  result = 0.0;
  xmmword_1EDB2FB40 = xmmword_1B16208A0;
  return result;
}

void sub_1B15D0E04()
{
  v0 = *MEMORY[0x1E695F0B8];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    qword_1EDB32780 = v1;
  }

  else
  {
    __break(1u);
  }
}

double sub_1B15D0E60()
{
  v0 = [objc_allocWithZone(ICRRenderingMode) init];
  v1 = &v0[OBJC_IVAR___ICRRenderingMode_renderingMode];
  result = 0.0;
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v1[40] = 1;
  qword_1EDB32788 = v0;
  return result;
}

unint64_t sub_1B15D0EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B161A448())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B15D0F7C(uint64_t a1, uint64_t a2)
{
  sub_1B161A4B8();
  sub_1B1619DF8();
  v4 = sub_1B161A4F8();

  return sub_1B15D0EC4(a1, a2, v4);
}

double sub_1B15D1004@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE999999999999ALL;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 40) = _Q1;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 0u;
  *(a1 + 80) = xmmword_1B16200F0;
  v7 = vdupq_n_s64(0x3FD999999999999AuLL);
  *(a1 + 96) = xmmword_1B1620100;
  *(a1 + 112) = v7;
  *(a1 + 128) = xmmword_1B161FE70;
  *(a1 + 144) = xmmword_1B1620110;
  __asm { FMOV            V2.2D, #22.0 }

  *(a1 + 160) = _Q2;
  *(a1 + 176) = xmmword_1B161FE90;
  *(a1 + 192) = xmmword_1B1620120;
  *(a1 + 208) = v7;
  __asm { FMOV            V4.2D, #0.25 }

  *(a1 + 224) = xmmword_1B1620130;
  *(a1 + 240) = _Q4;
  *(a1 + 256) = xmmword_1B161FEC0;
  *(a1 + 272) = xmmword_1B1620140;
  *(a1 + 288) = xmmword_1B161FEE0;
  *(a1 + 304) = xmmword_1B161FEF0;
  *(a1 + 320) = xmmword_1B161FF00;
  *(a1 + 336) = xmmword_1B1620150;
  *(a1 + 352) = xmmword_1B1620160;
  *(a1 + 368) = xmmword_1B161FF30;
  *(a1 + 384) = xmmword_1B161FF40;
  *(a1 + 400) = _Q2;
  *(a1 + 416) = xmmword_1B161FE90;
  *(a1 + 432) = xmmword_1B161FF50;
  *(a1 + 448) = xmmword_1B161FF10;
  *(a1 + 464) = xmmword_1B161FF60;
  __asm
  {
    FMOV            V2.2D, #12.0
    FMOV            V3.2D, #10.0
  }

  *(a1 + 480) = _Q2;
  *(a1 + 496) = _Q3;
  *(a1 + 512) = xmmword_1B161FF70;
  *(a1 + 528) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(a1 + 544) = _Q2;
  *(a1 + 560) = _Q3;
  *(a1 + 576) = xmmword_1B161FF80;
  *(a1 + 592) = xmmword_1B161FF90;
  *(a1 + 608) = 0x3FF0000000000000;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 640) = xmmword_1B161FFA0;
  *(a1 + 656) = xmmword_1B161FFB0;
  *(a1 + 672) = xmmword_1B161FFC0;
  *(a1 + 688) = xmmword_1B161FFD0;
  *(a1 + 704) = xmmword_1B161FFE0;
  *(a1 + 720) = xmmword_1B161FEC0;
  *(a1 + 736) = xmmword_1B161FFF0;
  *(a1 + 752) = xmmword_1B161FFD0;
  *(a1 + 768) = xmmword_1B1620000;
  *(a1 + 784) = xmmword_1B1620010;
  *(a1 + 800) = xmmword_1B1620020;
  *(a1 + 816) = 0x3FF0000000000000;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0x3FFE28C731EB6950;
  *(a1 + 848) = 0x3FE0000000000000;
  return result;
}

__n128 sub_1B15D1200()
{
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EDB30318 = result;
  *&qword_1EDB30328 = result;
  return result;
}

void sub_1B15D126C()
{
  word_1EB757AD0 = 257;
  qword_1EB757AE0 = 0;
  qword_1EB757AE8 = 0;
  qword_1EB757AD8 = 0;
}

id sub_1B15D1298()
{
  if (qword_1EDB2FBF0 != -1)
  {
    swift_once();
  }

  if (byte_1EDB2F3B8)
  {
    result = 0;
  }

  else
  {
    result = [objc_opt_self() sharedLowPowerDevice];
  }

  qword_1EDB32798 = result;
  return result;
}

uint64_t sub_1B15D1318()
{
  v0 = objc_opt_self();
  v1 = [v0 processInfo];
  v2 = [v1 environment];

  v3 = sub_1B1619D38();
  if (*(v3 + 16) && (v4 = sub_1B15D0F7C(0xD000000000000017, 0x80000001B1621B70), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    if (v8 == 49 && v7 == 0xE100000000000000)
    {
      goto LABEL_18;
    }

    v10 = sub_1B161A448();

    if (v10)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v12 = [v0 processInfo];
  v13 = [v12 environment];

  v14 = sub_1B1619D38();
  if (!*(v14 + 16))
  {
LABEL_16:

    goto LABEL_17;
  }

  sub_1B15D0F7C(0x5342585F4352, 0xE600000000000000);
  v16 = v15;

  if (v16)
  {
    v17 = [v0 processInfo];
    v18 = [v17 environment];

    v19 = sub_1B1619D38();
    if (*(v19 + 16))
    {
      v20 = sub_1B15D0F7C(0xD000000000000015, 0x80000001B1621B90);
      if (v21)
      {
        v22 = (*(v19 + 56) + 16 * v20);
        v24 = *v22;
        v23 = v22[1];

        if (v24 != 49 || v23 != 0xE100000000000000)
        {
          v26 = sub_1B161A448();

          v25 = v26 ^ 1;
          goto LABEL_20;
        }

        goto LABEL_16;
      }
    }

LABEL_18:

LABEL_19:
    v25 = 1;
    goto LABEL_20;
  }

LABEL_17:
  v25 = 0;
LABEL_20:
  byte_1EDB2F3B8 = v25 & 1;
  return result;
}