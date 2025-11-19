void __swiftcall ICRIconLayer.init()(ICRIconLayer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id ICRIconLayer.init()()
{
  *&v0[OBJC_IVAR___ICRIconLayer_iconAppearance] = 0;
  v1 = &v0[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  *v1 = 0;
  v1[8] = 1;
  v2 = &v0[OBJC_IVAR___ICRIconLayer_displayedIcon];
  bzero(&v0[OBJC_IVAR___ICRIconLayer_displayedIcon], 0x778uLL);
  v2[1912] = -1;
  v3 = OBJC_IVAR___ICRIconLayer_iconLayer;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for ICRIconRenderingLayer()) init];
  v4 = OBJC_IVAR___ICRIconLayer__device;
  *&v0[v4] = [objc_opt_self() sharedDefaultDevice];
  v5 = &v0[OBJC_IVAR___ICRIconLayer__iconStyle];
  *v5 = 0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 5) = 0;
  *(v5 + 24) = 513;
  v7.receiver = v0;
  v7.super_class = ICRIconLayer;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t ICRIconLayer.display(_:)()
{
  v2 = v0;
  result = CUINamedIconLayerStack.makeIcon()(v5);
  if (!v1)
  {
    v6[6] = v5[6];
    v6[7] = v5[7];
    v6[8] = v5[8];
    v6[9] = v5[9];
    v6[2] = v5[2];
    v6[3] = v5[3];
    v6[4] = v5[4];
    v6[5] = v5[5];
    v6[0] = v5[0];
    v6[1] = v5[1];
    v7 = 1;
    v4 = OBJC_IVAR___ICRIconLayer_displayedIcon;
    swift_beginAccess();
    sub_1B1606F64(v6, v2 + v4, &qword_1EB752F20);
    swift_endAccess();
    sub_1B15C2EEC();
    return sub_1B15C1750(v6, &qword_1EB752F20);
  }

  return result;
}

Swift::Void __swiftcall ICRIconLayer.setTintColor(_:)(CGColorRef a1)
{
  v2 = v1 + OBJC_IVAR___ICRIconLayer__iconStyle;
  if (*(v1 + OBJC_IVAR___ICRIconLayer__iconStyle + 48) == 1)
  {
    if (qword_1EB752618 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1619D18();
    __swift_project_value_buffer(v3, qword_1EB752F00);
    oslog = sub_1B1619CF8();
    v4 = sub_1B161A088();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      MEMORY[0x1B2730CA0](v5, -1, -1);
    }
  }

  else
  {
    RBColorFromCGColor2();
    *(v2 + 8) = v6;
    *(v2 + 16) = v7;
    *(v2 + 24) = v8;
    *(v2 + 32) = 0x3FF0000000000000;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0;

    sub_1B15C2EEC();
  }
}

CGImageRef_optional __swiftcall ICRIconLayer.makeSnapshot(atPoints:scale:)(CGSize atPoints, Swift::Int scale)
{
  v3 = MEMORY[0x1EEE9AC00](scale).n128_u64[0];
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = OBJC_IVAR___ICRIconLayer_displayedIcon;
  swift_beginAccess();
  sub_1B15C37C0(v2 + v9, v69, &qword_1EB752F20);
  if (BYTE8(v69[119]) == 255)
  {
    sub_1B15C1750(v69, &qword_1EB752F20);
    return 0;
  }

  memcpy(v70, v69, 0x779uLL);
  FinalizedIcon.ScaledSize.init(points:scale:)(__PAIR128__(v7, v8), v5);
  v11 = *(&v69[0] + 1);
  v10 = *&v69[0];
  v12 = *&v69[1];
  sub_1B1606E24(v70, v69);
  if (BYTE8(v69[119]))
  {
    v33 = v12;
    v34 = v10;
    v54 = v69[6];
    v55 = v69[7];
    v56 = v69[8];
    v57 = v69[9];
    v50 = v69[2];
    v51 = v69[3];
    v52 = v69[4];
    v53 = v69[5];
    v48 = v69[0];
    v49 = v69[1];
    v13 = *(v2 + OBJC_IVAR___ICRIconLayer__iconStyle + 16);
    v58 = *(v2 + OBJC_IVAR___ICRIconLayer__iconStyle);
    v59 = v13;
    v60 = *(v2 + OBJC_IVAR___ICRIconLayer__iconStyle + 32);
    v61 = *(v2 + OBJC_IVAR___ICRIconLayer__iconStyle + 48);
    sub_1B15C0D28(v62);
    memcpy(&v39[5], v62, 0x653uLL);
    v67[6] = v54;
    v67[7] = v55;
    v67[8] = v56;
    v67[9] = v57;
    v67[2] = v50;
    v67[3] = v51;
    v67[4] = v52;
    v67[5] = v53;
    v67[0] = v48;
    v67[1] = v49;
    v36[0] = v58;
    v36[1] = v59;
    v36[2] = v60;
    LOWORD(v36[3]) = v61;
    v14 = v2;
    sub_1B15C76B8(v36, v68);
    sub_1B15C927C(&v48);
    *&v64[32] = *&v68[48];
    *&v64[16] = *&v68[32];
    *&v64[80] = *&v68[96];
    *&v64[96] = *&v68[112];
    v65 = *&v68[128];
    v66 = *&v68[144];
    *&v64[48] = *&v68[64];
    *&v64[64] = *&v68[80];
    v63 = *v68;
    *v64 = *&v68[16];
    if (*&v68[8])
    {
      v15 = *v68;
    }

    else
    {
      v15 = 7104878;
    }

    if (*&v68[8])
    {
      v16 = *&v68[8];
    }

    else
    {
      v16 = 0xE300000000000000;
    }

    v45 = *&v64[72];
    v46 = *&v64[88];
    v47 = v64[104];
    v41 = *&v64[8];
    v42 = *&v64[24];
    v44 = *&v64[56];
    v43 = *&v64[40];
    v17 = v65;

    sub_1B15C927C(&v63);
    v18 = *(&v65 + 1);
    v19 = v66;
    v20 = v64[0];
    *&v40[7] = v58;
    *&v40[23] = v59;
    *&v40[39] = v60;
    *&v40[55] = v61;
    memcpy(__dst, &v39[5], 0x653uLL);
    sub_1B15C1750(__dst, &qword_1EB752A78);
    memcpy(&v39[5], v62, 0x653uLL);
    *v38 = v15;
    *&v38[8] = v16;
    *&v38[80] = v45;
    *&v38[96] = v46;
    v38[112] = v47;
    *&v38[16] = v41;
    *&v38[32] = v42;
    *&v38[64] = v44;
    *&v38[48] = v43;
    *&v38[120] = v17;
    *&v38[128] = v18;
    *&v38[136] = v19;
    v38[144] = v20;
    *&v38[145] = *v40;
    *&v38[161] = *&v40[16];
    *&v38[177] = *&v40[32];
    *&v38[186] = *&v40[41];
    v38[202] = 0;
    memcpy(&v38[203], v39, 0x658uLL);
    v21 = *(v14 + OBJC_IVAR___ICRIconLayer_iconLayer);
    v22 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon;
    swift_beginAccess();
    sub_1B15C37C0(v21 + v22, v68, &qword_1EB752B28);
    if (qword_1EDB2FBE8 != -1)
    {
      swift_once();
    }

    v23 = qword_1EDB32798;
    *(&v36[117] + 8) = 0u;
    *(&v36[118] + 8) = 0u;
    sub_1B15C37C0(v68, __src, &qword_1EB752B28);
    if (*&__src[24])
    {
      memcpy(v67, __src, 0x778uLL);
      v24 = *&v67[117];
      if (*&v67[117])
      {
        v12 = v33;
        if (v23)
        {
          sub_1B15C17B0(0, &qword_1EB752AB8);
          v25 = v23;
          v26 = v24;
          v27 = sub_1B161A0E8();

          if (v27)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
        if (!v23)
        {
          v25 = 0;
          v12 = v33;
LABEL_24:
          sub_1B15C1750(&v36[117] + 8, &qword_1EB752A88);
          sub_1B15C283C(v67, v36);
          memcpy(__src, v38, 0x723uLL);
          v10 = v34;
          FinalizedIcon.update(from:pixelSize:)(__src);

          sub_1B15C1750(v68, &qword_1EB752B28);
          sub_1B15C2874(v67);
          sub_1B15C5328(v38);
          goto LABEL_25;
        }

        v31 = v23;
        v12 = v33;
      }

      sub_1B15C2874(v67);
    }

    else
    {
      v30 = v23;
      sub_1B15C1750(__src, &qword_1EB752B28);
      v12 = v33;
    }

    memcpy(__src, v38, 0x723uLL);
    v10 = v34;
    sub_1B15C79C0(__src);
    sub_1B15C1750(v68, &qword_1EB752B28);
    sub_1B15C1750(&v36[117] + 8, &qword_1EB752A88);
    memcpy(v36, v67, 0x778uLL);
LABEL_25:
    v29 = v36;
    goto LABEL_26;
  }

  v29 = v69;
LABEL_26:
  memcpy(v67, v29, 0x778uLL);
  memcpy(v68, v67, sizeof(v68));
  *v38 = v10;
  *&v38[8] = v11;
  *&v38[16] = v12;
  if (qword_1EDB2FB50 != -1)
  {
    swift_once();
  }

  v39[0] = 1;
  *__src = 0x3FF0000000000000;
  *&__src[8] = xmmword_1EDB2FB58;
  *&__src[24] = qword_1EDB2FB68;
  *&__src[32] = 1;
  __src[34] = 0;
  *&__src[40] = xmmword_1B161E0A0;
  *&__src[56] = 513;
  *&__src[64] = 0uLL;
  v28 = FinalizedIcon.renderedIcon(at:with:)(v38, __src);
  v36[2] = *&__src[32];
  v36[3] = *&__src[48];
  v36[4] = *&__src[64];
  v36[1] = *&__src[16];
  v36[0] = *__src;
  sub_1B15FA510(v36);
  sub_1B15C2874(v68);
  sub_1B16067F8(v70);
  return v28;
}

id sub_1B16063F4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon;
  bzero(&v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon], 0x778uLL);
  v5 = &v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
  if (qword_1EDB2FB50 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDB2FB68;
  v7 = xmmword_1EDB2FB58;
  *(v5 + 16) = 1;
  v5[34] = 0;
  *(v5 + 40) = xmmword_1B161E0A0;
  *(v5 + 28) = 513;
  *(v5 + 8) = 0;
  *(v5 + 9) = 0;
  *v5 = 0x3FF0000000000000;
  *(v5 + 8) = v7;
  *(v5 + 3) = v6;
  v8 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters;
  sub_1B15C0D28(__src);
  memcpy(&v1[v8], __src, 0x653uLL);
  v9 = &v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_displayScaleOverride];
  *v9 = 0;
  v9[8] = 1;
  v1[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_hasSetUp] = 0;
  sub_1B15C10F0(v3, v32);
  if (swift_dynamicCast())
  {
    v10 = v31;
    v11 = OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_finalizedIcon;
    swift_beginAccess();
    sub_1B15C37C0(&v31[v11], v22, &qword_1EB752B28);
    swift_beginAccess();
    sub_1B1606EFC(v22, &v1[v4], &qword_1EB752B28);
    swift_endAccess();
    v23 = *&v10[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig];
    v12 = *&v10[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 16];
    v13 = *&v10[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 32];
    v14 = *&v10[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 48];
    v27 = *&v10[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_globalConfig + 64];
    v26 = v14;
    v25 = v13;
    v24 = v12;
    v15 = *(v5 + 3);
    v28[2] = *(v5 + 2);
    v28[3] = v15;
    v28[4] = *(v5 + 4);
    v16 = *v5;
    v28[1] = *(v5 + 1);
    v28[0] = v16;
    *(v5 + 2) = v25;
    *(v5 + 3) = v14;
    *(v5 + 4) = v27;
    v17 = v24;
    *v5 = v23;
    *(v5 + 1) = v17;
    sub_1B15F354C(&v23, v22);
    sub_1B15FA510(v28);
    memcpy(__dst, &v10[OBJC_IVAR____TtC13IconRenderingP33_53BCAF12E31277885D005F995820486A21ICRIconRenderingLayer_renderingParameters], 0x653uLL);
    sub_1B15C37C0(__dst, v22, &qword_1EB752A78);

    memcpy(v22, &v1[v8], 0x653uLL);
    memcpy(&v1[v8], __dst, 0x653uLL);
    sub_1B15C1750(v22, &qword_1EB752A78);
  }

  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  v18 = sub_1B161A438();
  v19 = type metadata accessor for ICRIconRenderingLayer();
  v30.receiver = v1;
  v30.super_class = v19;
  v20 = objc_msgSendSuper2(&v30, sel_initWithLayer_, v18);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v20;
}

uint64_t sub_1B1606734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  sub_1B161A128();
  swift_unknownObjectRelease();
  return a4(&v6);
}

id sub_1B16067A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICRIconRenderingLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1B16067DC(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1B1606828(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B1606840(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B272FCE0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B161A2D8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

id sub_1B16069CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___ICRIconLayer_iconAppearance] = 0;
  v7 = &v3[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v3[OBJC_IVAR___ICRIconLayer_displayedIcon];
  bzero(&v3[OBJC_IVAR___ICRIconLayer_displayedIcon], 0x778uLL);
  v8[1912] = -1;
  v9 = OBJC_IVAR___ICRIconLayer_iconLayer;
  *&v3[v9] = [objc_allocWithZone(type metadata accessor for ICRIconRenderingLayer()) init];
  v10 = OBJC_IVAR___ICRIconLayer__device;
  *&v3[v10] = [objc_opt_self() sharedDefaultDevice];
  sub_1B15C7370(a1, &v20);
  LOBYTE(a1) = v20;
  sub_1B15CB0E4(a2, &v19);
  v11 = v19;
  v12 = *(a3 + OBJC_IVAR___ICRRenderingMode_renderingMode + 32);
  v13 = *(a3 + OBJC_IVAR___ICRRenderingMode_renderingMode + 40);
  v14 = &v3[OBJC_IVAR___ICRIconLayer__iconStyle];
  v15 = *(a3 + OBJC_IVAR___ICRRenderingMode_renderingMode);
  v16 = *(a3 + OBJC_IVAR___ICRRenderingMode_renderingMode + 16);
  *v14 = a1;
  v14[1] = v11;
  *(v14 + 8) = v15;
  *(v14 + 24) = v16;
  *(v14 + 5) = v12;
  v14[48] = v13;
  v14[49] = 2;
  v18.receiver = v3;
  v18.super_class = ICRIconLayer;
  return objc_msgSendSuper2(&v18, sel_init);
}

id sub_1B1606B20(uint64_t a1)
{
  *&v1[OBJC_IVAR___ICRIconLayer_iconAppearance] = 0;
  v3 = &v1[OBJC_IVAR___ICRIconLayer_displayScaleOverride];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___ICRIconLayer_displayedIcon];
  bzero(&v1[OBJC_IVAR___ICRIconLayer_displayedIcon], 0x778uLL);
  *(v4 + 1912) = -1;
  v5 = OBJC_IVAR___ICRIconLayer_iconLayer;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for ICRIconRenderingLayer()) init];
  v6 = OBJC_IVAR___ICRIconLayer__device;
  *&v1[v6] = [objc_opt_self() sharedDefaultDevice];
  v7 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  sub_1B15C283C(a1 + v7, v14);
  sub_1B15C283C(v14, v13);
  v13[1912] = 0;
  swift_beginAccess();
  sub_1B1606EFC(v13, v4, &qword_1EB752F20);
  swift_endAccess();
  v8 = &v1[OBJC_IVAR___ICRIconLayer__iconStyle];
  v9 = v16;
  *v8 = v15;
  *(v8 + 1) = v9;
  *(v8 + 2) = v17;
  *(v8 + 24) = v18;
  v12.receiver = v1;
  v12.super_class = ICRIconLayer;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_1B15C2874(v14);
  return v10;
}

void _sSo12ICRIconLayerC13IconRenderingE5coderABSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___ICRIconLayer_iconAppearance) = 0;
  v1 = v0 + OBJC_IVAR___ICRIconLayer_displayScaleOverride;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR___ICRIconLayer_displayedIcon;
  bzero((v0 + OBJC_IVAR___ICRIconLayer_displayedIcon), 0x778uLL);
  *(v2 + 1912) = -1;
  v3 = OBJC_IVAR___ICRIconLayer_iconLayer;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for ICRIconRenderingLayer()) init];
  v4 = OBJC_IVAR___ICRIconLayer__device;
  *(v0 + v4) = [objc_opt_self() sharedDefaultDevice];
  sub_1B161A288();
  __break(1u);
}

void sub_1B1606EB8(unsigned int *a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v3 = a2 - 2;
    bzero(a1, 0x778uLL);
    *a1 = v3;
    LOBYTE(a2) = 2;
  }

  *(a1 + 1912) = a2;
}

uint64_t sub_1B1606EFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B1606F64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B1606FCC()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752F80);
  __swift_project_value_buffer(v0, qword_1EB752F80);
  return sub_1B1619D08();
}

void sub_1B1607054(char *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v4 = 1;
    }

    else
    {
      v4 = 0;
      if (v2 != 5)
      {
        v5 = a1;
        if (qword_1EB752620 != -1)
        {
          swift_once();
        }

        v6 = sub_1B1619D18();
        __swift_project_value_buffer(v6, qword_1EB752F80);
        v7 = sub_1B1619CF8();
        v8 = sub_1B161A088();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_1B15BF000, v7, v8, "unsupported idiom: Vision", v9, 2u);
          MEMORY[0x1B2730CA0](v9, -1, -1);
        }

        v4 = 0;
        a1 = v5;
      }
    }
  }

  else if (v2 >= 2 && v2 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
}

IconRendering::ICRIconIdiom_optional __swiftcall ICRIconIdiom.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CUINamedIconLayerStack.render(at:configuration:idiom:)(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v3 = v2;
  v4 = v1;
  v6 = v5[3];
  *v55 = v5[2];
  *&v55[16] = v6;
  *&v55[32] = v5[4];
  v7 = v5[1];
  v53 = *v5;
  v54 = v7;
  v9 = *v8;
  if (qword_1EDB2FBE8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDB32798;
  CUINamedIconLayerStack.makeIcon()(v52);
  v48 = v52[6];
  v49 = v52[7];
  v50 = v52[8];
  v51 = v52[9];
  v44 = v52[2];
  v45 = v52[3];
  v46 = v52[4];
  v47 = v52[5];
  v42 = v52[0];
  v43 = v52[1];
  if (v9 == 7)
  {
    v11 = 0;
  }

  else
  {
    LOBYTE(v39) = v9;
    sub_1B1607054(v31);
    v11 = v31[0];
  }

  sub_1B15C0D28(v34);
  memcpy(&v33[5], v34, 0x653uLL);
  v31[6] = v48;
  v31[7] = v49;
  v31[8] = v50;
  v31[9] = v51;
  v31[2] = v44;
  v31[3] = v45;
  v31[4] = v46;
  v31[5] = v47;
  v31[0] = v42;
  v31[1] = v43;
  *v27 = v11;
  memset(&v27[8], 0, 40);
  *&v27[48] = 513;
  sub_1B15C76B8(v27, &v39);
  sub_1B15C927C(&v42);
  *&v36[32] = v41[1];
  *&v36[16] = v41[0];
  *&v36[80] = v41[4];
  *&v36[96] = v41[5];
  v37 = v41[6];
  v38 = v41[7];
  *&v36[48] = v41[2];
  *&v36[64] = v41[3];
  v35 = v39;
  *v36 = v40;
  if (*(&v39 + 1))
  {
    v12 = v39;
  }

  else
  {
    v12 = 7104878;
  }

  if (*(&v39 + 1))
  {
    v13 = *(&v39 + 1);
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v31[5] = *&v36[72];
  v31[6] = *&v36[88];
  LOBYTE(v31[7]) = v36[104];
  v31[1] = *&v36[8];
  v31[2] = *&v36[24];
  v31[4] = *&v36[56];
  v31[3] = *&v36[40];
  v14 = v37;

  sub_1B15C927C(&v35);
  v15 = *(&v37 + 1);
  v16 = v38;
  v17 = v36[0];
  memcpy(v32, &v33[5], 0x653uLL);
  sub_1B15F8D0C(v32);
  memcpy(&v33[5], v34, 0x653uLL);
  *&v31[0] = v12;
  *(&v31[0] + 1) = v13;
  *(&v31[7] + 1) = v14;
  *&v31[8] = v15;
  *(&v31[8] + 1) = v16;
  LOBYTE(v31[9]) = v17;
  WORD4(v31[9]) = v11;
  memset(&v31[10], 0, 40);
  BYTE8(v31[12]) = 1;
  *(&v31[12] + 9) = 2;
  memcpy(&v31[12] + 11, v33, 0x658uLL);
  FinalizedIcon.ScaledSize.init(points:scale:)(__PAIR128__(v3, v4), 1);
  *__src = *v27;
  *&__src[16] = *&v27[16];
  v18 = v10;
  sub_1B15C79C0(v31);
  if (BYTE8(v41[12]) != 1 || *(&v41[11] + 1) | *&v41[12] | *&v41[10] | *&v41[11] | *(&v41[10] + 1))
  {
    memcpy(v31, v41, 0x723uLL);
    v30 = v41[0];
    v29[0] = *(&v41[7] + 1);
    *(v29 + 15) = v41[8];
    memcpy(__dst, &v41[9] + 1, sizeof(__dst));
    if (BYTE9(v41[9]))
    {
      v19 = sub_1B161A448();
      sub_1B15C3828(v31, v27);

      v20 = 0x3FF0000000000000;
      if ((v19 & 1) == 0)
      {
        v20 = 0;
      }
    }

    else
    {
      sub_1B15C3828(v31, v27);

      v20 = 0x3FF0000000000000;
    }

    v26 = 1;
    *__src = v30;
    *&__src[16] = v20;
    *&__src[24] = v20;
    *&__src[32] = v20;
    *&__src[40] = 0x3FD3333333333333;
    memset(&__src[48], 0, 32);
    *&__src[80] = 1;
    __src[112] = 64;
    *&__src[113] = v29[0];
    *&__src[128] = *(v29 + 15);
    __src[144] = 1;
    memcpy(&__src[145], __dst, 0x692uLL);
    v23 = v39;
    FinalizedIcon.update(from:pixelSize:)(__src);
    memcpy(v27, __src, sizeof(v27));
    sub_1B15C5328(v27);
  }

  v31[0] = v53;
  v31[1] = v54;
  LOBYTE(v31[2]) = v55[0];
  *(&v31[2] + 2) = *&v55[2];
  *(&v31[3] + 2) = *&v55[18];
  v31[4] = *&v55[32];
  BYTE1(v31[2]) = 1;
  v23 = v39;
  v24 = v40;
  *&v27[32] = v31[2];
  *&v27[48] = v31[3];
  *&v27[64] = *&v55[32];
  *&v27[16] = v54;
  *v27 = v53;
  sub_1B15F354C(&v53, __src);
  v21 = FinalizedIcon.renderedIcon(at:with:)(&v23, v27);
  sub_1B15C2874(&v39);
  sub_1B15FA510(v31);
  return v21;
}

void *CUINamedIconLayerStack.finalize(at:scale:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v5 = v4;
  v7 = v6;
  v8 = v3;
  CUINamedIconLayerStack.makeIcon()(v58);
  if (!v2)
  {
    v49 = v58[6];
    v50 = v58[7];
    v51 = v58[8];
    v52 = v58[9];
    v45 = v58[2];
    v46 = v58[3];
    v47 = v58[4];
    v48 = v58[5];
    v43 = v58[0];
    v44 = v58[1];
    sub_1B15C0D28(v53);
    memcpy(&__src[5], v53, 0x653uLL);
    v23 = v49;
    v24 = v50;
    v25 = v51;
    v26 = v52;
    v19 = v45;
    v20 = v46;
    v21 = v47;
    v22 = v48;
    v17 = v43;
    v18 = v44;
    LOWORD(__dst[0]) = 0;
    memset(&__dst[1], 0, 40);
    LOWORD(__dst[6]) = 513;
    sub_1B15C76B8(__dst, v42);
    sub_1B15C927C(&v43);
    *&v55[32] = v42[3];
    *&v55[16] = v42[2];
    *&v55[80] = v42[6];
    *&v55[96] = v42[7];
    v56 = v42[8];
    v57 = v42[9];
    *&v55[48] = v42[4];
    *&v55[64] = v42[5];
    v54 = v42[0];
    *v55 = v42[1];
    if (*(&v42[0] + 1))
    {
      v9 = *&v42[0];
    }

    else
    {
      v9 = 7104878;
    }

    if (*(&v42[0] + 1))
    {
      v10 = *(&v42[0] + 1);
    }

    else
    {
      v10 = 0xE300000000000000;
    }

    v38 = *&v55[72];
    v39 = *&v55[88];
    v40 = v55[104];
    v34 = *&v55[8];
    v35 = *&v55[24];
    v37 = *&v55[56];
    v36 = *&v55[40];
    v11 = v56;

    sub_1B15C927C(&v54);
    v12 = *(&v56 + 1);
    v13 = v57;
    v14 = v55[0];
    memcpy(__dst, &__src[5], 0x653uLL);
    sub_1B15F8D0C(__dst);
    memcpy(&__src[5], v53, 0x653uLL);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v5 > -9.22337204e18)
    {
      if (v5 < 9.22337204e18)
      {
        FinalizedIcon.ScaledSize.init(points:scale:)(__PAIR128__(v7, v8), v5);
        *&v17 = v9;
        *(&v17 + 1) = v10;
        v22 = v38;
        v23 = v39;
        LOBYTE(v24) = v40;
        v18 = v34;
        v19 = v35;
        v20 = v36;
        v21 = v37;
        *(&v24 + 1) = v11;
        *&v25 = v12;
        *(&v25 + 1) = v13;
        LOBYTE(v26) = v14;
        WORD4(v26) = 0;
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v30 = 1;
        v31 = 2;
        memcpy(v32, __src, sizeof(v32));
        if (qword_1EDB2FBE8 == -1)
        {
LABEL_12:
          v15 = qword_1EDB32798;
          sub_1B15C79C0(&v17);
          v1 = FinalizedIcon.serializeV2Sync()();
          sub_1B15C2874(v42);
          return v1;
        }

LABEL_17:
        swift_once();
        goto LABEL_12;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  return v1;
}

unint64_t sub_1B1607C34()
{
  result = qword_1EB752F98;
  if (!qword_1EB752F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752F98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICRIconIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICRIconIdiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Double __swiftcall ICRRenderingParameters.aspectRatio(on:)(IconRendering::ICRIconPlatform on)
{
  v2 = *(v1 + 360);
  v3 = 1.0;
  if (*(v2 + 16))
  {
    v4 = sub_1B15C522C(*on);
    if (v5)
    {
      v6 = *(v2 + 56) + 888 * v4;
      if (*(v6 + 24))
      {
        return 1.0;
      }

      else
      {
        return *(v6 + 16);
      }
    }
  }

  return v3;
}

double ICRRenderingParameters.thresholds(on:)@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 352);
  *a1 = *(v1 + 336);
  *(a1 + 16) = result;
  return result;
}

uint64_t ICRRenderingParameters.SizeBasedValue.subscript.getter@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 > 1u)
  {
    if (*a1 != 2)
    {
      goto LABEL_8;
    }

    v7 = 36;
  }

  else if (*a1)
  {
    v7 = 40;
  }

  else
  {
    v7 = 44;
  }

  v3 += *(a2 + v7);
LABEL_8:
  v8 = *(*(*(a2 + 16) - 8) + 16);

  return v8(a3, v3);
}

uint64_t sub_1B1607EEC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(result + 1);
  if (*(result + 48) == 1)
  {
    if (*(result + 24) | *(result + 16) | *(result + 8) | *(result + 32) | *(result + 40))
    {
      v5 = 0;
      v6 = v2[13];
      v7 = v2[14];
      v8 = v2[15];
      v9 = v2[16];
      if (*(result + 1))
      {
        v6 = v2[17];
        v7 = v2[18];
        v8 = v2[19];
        v9 = v2[20];
      }
    }

    else
    {
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      v5 = 1;
    }

    goto LABEL_12;
  }

  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F198]);
  if (v4)
  {
    if (result)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (result)
  {
LABEL_10:

    result = RBColorAdd();
    v5 = 0;
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
LABEL_12:
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static ICRRenderingParameters.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDB2FBF8 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EDB2FC00, 0x653uLL);
  memcpy(a1, &unk_1EDB2FC00, 0x653uLL);
  return sub_1B15C51D0(__dst, &v3);
}

void sub_1B16081C0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1B1619D68();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v3 = sub_1B1619D68();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1B161A128();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_1B160BBAC(v8);
  v5 = MobileGestalt_get_current_device();
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  MobileGestalt_get_oledDisplay();

  if (v4)
  {
    v7 = sub_1B1619D68();
    [v2 BOOLForKey_];
  }
}

__n128 ICRRenderingParameters.mitigatedChicletLightTint.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.mitigatedChicletLightTint.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

__n128 ICRRenderingParameters.mitigatedChicletDarkTint.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.mitigatedChicletDarkTint.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  return result;
}

__n128 ICRRenderingParameters.mitigatedChicletLightClear.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 120);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.mitigatedChicletLightClear.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v3;
  return result;
}

__n128 ICRRenderingParameters.mitigatedChicletDarkClear.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 136);
  v3 = *(v1 + 152);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.mitigatedChicletDarkClear.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 136) = *a1;
  *(v1 + 152) = v3;
  return result;
}

__n128 ICRRenderingParameters.chicletShadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  *(a1 + 64) = *(v1 + 232);
  *(a1 + 80) = v2;
  v3 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v3;
  v4 = *(v1 + 216);
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v4;
  result = *(v1 + 264);
  v6 = *(v1 + 280);
  *(a1 + 96) = result;
  *(a1 + 112) = v6;
  return result;
}

__n128 ICRRenderingParameters.chicletShadow.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 232) = *(a1 + 64);
  *(v1 + 248) = v2;
  v3 = *(a1 + 112);
  *(v1 + 264) = *(a1 + 96);
  *(v1 + 280) = v3;
  v4 = *(a1 + 16);
  *(v1 + 168) = *a1;
  *(v1 + 184) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 200) = result;
  *(v1 + 216) = v6;
  return result;
}

uint64_t ICRRenderingParameters.SizeBasedValue.init(display:large:medium:small:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, int *a6@<X5>, uint64_t a7@<X8>)
{
  v77 = a6;
  v78 = a3;
  v75 = a4;
  v79 = a2;
  v10 = sub_1B161A108();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v73 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v22 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v70 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v76 = &v62 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v62 - v29;
  v31 = *(v22 + 16);
  v80 = a7;
  v31(a7, a1, a5, v28);
  v72 = v11;
  v32 = *(v11 + 16);
  v74 = v10;
  v67 = v32;
  v32(v21, v79, v10);
  v33 = *(v22 + 48);
  v34 = v33(v21, 1, a5);
  v71 = a1;
  v68 = v33;
  v69 = v22 + 48;
  v62 = v31;
  if (v34 == 1)
  {
    (v31)(v30, a1, a5);
    if (v33(v21, 1, a5) != 1)
    {
      (*(v72 + 8))(v21, v74);
    }
  }

  else
  {
    (*(v22 + 32))(v30, v21, a5);
  }

  v77 = type metadata accessor for ICRRenderingParameters.SizeBasedValue();
  v35 = v77[9];
  v66 = v22;
  v36 = *(v22 + 32);
  v36(v80 + v35, v30, a5);
  v38 = v73;
  v37 = v74;
  v39 = v67;
  v67(v73, v78, v74);
  v40 = v68;
  if (v68(v38, 1, a5) == 1)
  {
    v41 = v36;
    v42 = v64;
    v39(v64, v79, v37);
    v43 = v42;
    v44 = v40(v42, 1, a5);
    v45 = v40;
    if (v44 == 1)
    {
      v62(v76, v71, a5);
      v46 = v40(v43, 1, a5) == 1;
      v47 = v75;
      v48 = v43;
      v50 = v72;
      v49 = v73;
      if (!v46)
      {
        (*(v72 + 8))(v48, v37);
      }
    }

    else
    {
      v41(v76, v43, a5);
      v47 = v75;
      v50 = v72;
      v49 = v73;
    }

    if (v40(v49, 1, a5) != 1)
    {
      (*(v50 + 8))(v49, v37);
    }

    v41((v80 + v77[10]), v76, a5);
  }

  else
  {
    v36(v76, v38, a5);
    v47 = v75;
    v50 = v72;
    v41 = v36;
    v45 = v40;
    v41((v80 + v77[10]), v76, a5);
  }

  if (v45(v47, 1, a5) == 1)
  {
    v51 = v37;
    v52 = *(v50 + 32);
    v53 = v65;
    v52(v65, v78, v51);
    if (v45(v53, 1, a5) == 1)
    {
      v54 = v63;
      v52(v63, v79, v51);
      if (v45(v54, 1, a5) == 1)
      {
        v55 = v70;
        v41(v70, v71, a5);
        v46 = v45(v54, 1, a5) == 1;
        v56 = v74;
        v57 = v75;
        v58 = v54;
        v59 = v65;
        if (!v46)
        {
          (*(v50 + 8))(v58, v74);
        }
      }

      else
      {
        (*(v66 + 8))(v71, a5);
        v55 = v70;
        v41(v70, v54, a5);
        v56 = v74;
        v57 = v75;
        v59 = v65;
      }

      if (v45(v59, 1, a5) != 1)
      {
        (*(v50 + 8))(v59, v56);
      }
    }

    else
    {
      (*(v50 + 8))(v79, v51);
      (*(v66 + 8))(v71, a5);
      v55 = v70;
      v41(v70, v53, a5);
      v56 = v51;
      v57 = v75;
    }

    if (v45(v57, 1, a5) != 1)
    {
      (*(v50 + 8))(v57, v56);
    }
  }

  else
  {
    v60 = *(v50 + 8);
    v60(v78, v37);
    v60(v79, v37);
    (*(v66 + 8))(v71, a5);
    v55 = v70;
    v41(v70, v47, a5);
  }

  return (v41)(v80 + v77[11], v55, a5);
}

__n128 ICRRenderingParameters.ChicletShadow.opacity.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 ICRRenderingParameters.ChicletShadow.opacity.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

__n128 ICRRenderingParameters.ChicletShadow.radius.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.ChicletShadow.radius.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  return result;
}

__n128 ICRRenderingParameters.ChicletShadow.offsetX.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.ChicletShadow.offsetX.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  return result;
}

__n128 ICRRenderingParameters.ChicletShadow.offsetY.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 96);
  v3 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.ChicletShadow.offsetY.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v3;
  return result;
}

uint64_t static ICRRenderingParameters.SizeBasedValue.== infix(_:_:)()
{
  if (sub_1B1619D58() & 1) != 0 && (type metadata accessor for ICRRenderingParameters.SizeBasedValue(), (sub_1B1619D58()) && (sub_1B1619D58())
  {
    return sub_1B1619D58() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ICRRenderingParameters.SDFMethod.hashValue.getter()
{
  v1 = *v0;
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  return sub_1B161A4F8();
}

double ICRRenderingParameters.thresholds.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 352);
  *a1 = *(v1 + 336);
  *(a1 + 16) = result;
  return result;
}

double ICRRenderingParameters.thresholds.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 336) = *a1;
  *(v1 + 352) = result;
  return result;
}

uint64_t ICRRenderingParameters.PlatformOverrides.cornerRadius.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t ICRRenderingParameters.PlatformOverrides.aspectRatio.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ICRRenderingParameters.platformOverrides.setter(uint64_t a1)
{

  *(v1 + 360) = a1;
  return result;
}

__n128 ICRRenderingParameters.Highlights.curvature.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.curvature.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

void ICRRenderingParameters.Highlights.staticDirection.setter(double a1, double a2, double a3)
{
  v3[7] = a1;
  v3[8] = a2;
  v3[9] = a3;
}

__n128 ICRRenderingParameters.Highlights.chicletKeyOpacity.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 88);
  v3 = *(v1 + 104);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletKeyOpacity.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletKeyOpacityDark.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 120);
  v3 = *(v1 + 136);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletKeyOpacityDark.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletKeyDistance.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 160);
  v3 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletKeyDistance.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletFillOpacity.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 208);
  v3 = *(v1 + 224);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletFillOpacity.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 208) = *a1;
  *(v1 + 224) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletFillOpacityDark.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 240);
  v3 = *(v1 + 256);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletFillOpacityDark.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 240) = *a1;
  *(v1 + 256) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletFillDistance.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 280);
  v3 = *(v1 + 296);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletFillDistance.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 280) = *a1;
  *(v1 + 296) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletRimOpacity.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 328);
  v3 = *(v1 + 344);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletRimOpacity.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 328) = *a1;
  *(v1 + 344) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletRimOpacityDark.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 360);
  v3 = *(v1 + 376);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletRimOpacityDark.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 360) = *a1;
  *(v1 + 376) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletRimDistance.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 400);
  v3 = *(v1 + 416);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.chicletRimDistance.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.glyphsDefault.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 624);
  *(a1 + 160) = *(v1 + 608);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 640);
  v3 = *(v1 + 560);
  *(a1 + 96) = *(v1 + 544);
  *(a1 + 112) = v3;
  v4 = *(v1 + 592);
  *(a1 + 128) = *(v1 + 576);
  *(a1 + 144) = v4;
  v5 = *(v1 + 496);
  *(a1 + 32) = *(v1 + 480);
  *(a1 + 48) = v5;
  v6 = *(v1 + 528);
  *(a1 + 64) = *(v1 + 512);
  *(a1 + 80) = v6;
  result = *(v1 + 464);
  *a1 = *(v1 + 448);
  *(a1 + 16) = result;
  return result;
}

__n128 ICRRenderingParameters.Highlights.glyphsDefault.setter(uint64_t a1)
{
  v2 = *(a1 + 176);
  *(v1 + 608) = *(a1 + 160);
  *(v1 + 624) = v2;
  *(v1 + 640) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(v1 + 544) = *(a1 + 96);
  *(v1 + 560) = v3;
  v4 = *(a1 + 144);
  *(v1 + 576) = *(a1 + 128);
  *(v1 + 592) = v4;
  v5 = *(a1 + 48);
  *(v1 + 480) = *(a1 + 32);
  *(v1 + 496) = v5;
  v6 = *(a1 + 80);
  *(v1 + 512) = *(a1 + 64);
  *(v1 + 528) = v6;
  result = *(a1 + 16);
  *(v1 + 448) = *a1;
  *(v1 + 464) = result;
  return result;
}

__n128 ICRRenderingParameters.Highlights.glyphsWhite.getter@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 192) = *(v1 + 840);
  v2 = *(v1 + 824);
  *(a1 + 160) = *(v1 + 808);
  *(a1 + 176) = v2;
  v3 = *(v1 + 760);
  *(a1 + 96) = *(v1 + 744);
  *(a1 + 112) = v3;
  v4 = *(v1 + 792);
  *(a1 + 128) = *(v1 + 776);
  *(a1 + 144) = v4;
  v5 = *(v1 + 696);
  *(a1 + 32) = *(v1 + 680);
  *(a1 + 48) = v5;
  v6 = *(v1 + 728);
  *(a1 + 64) = *(v1 + 712);
  *(a1 + 80) = v6;
  result = *(v1 + 664);
  *a1 = *(v1 + 648);
  *(a1 + 16) = result;
  return result;
}

__n128 ICRRenderingParameters.Highlights.glyphsWhite.setter(uint64_t a1)
{
  v2 = *(a1 + 176);
  *(v1 + 808) = *(a1 + 160);
  *(v1 + 824) = v2;
  *(v1 + 840) = *(a1 + 192);
  v3 = *(a1 + 112);
  *(v1 + 744) = *(a1 + 96);
  *(v1 + 760) = v3;
  v4 = *(a1 + 144);
  *(v1 + 776) = *(a1 + 128);
  *(v1 + 792) = v4;
  v5 = *(a1 + 48);
  *(v1 + 680) = *(a1 + 32);
  *(v1 + 696) = v5;
  v6 = *(a1 + 80);
  *(v1 + 712) = *(a1 + 64);
  *(v1 + 728) = v6;
  result = *(a1 + 16);
  *(v1 + 648) = *a1;
  *(v1 + 664) = result;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.staticOpacity.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.staticOpacity.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.staticDistance.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 32);
  v3 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.staticDistance.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.dynamicOpacity.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  v3 = *(v1 + 80);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.dynamicOpacity.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.dynamicDistance.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 96);
  v3 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.dynamicDistance.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 96) = *a1;
  *(v1 + 112) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.inset.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 128);
  v3 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.inset.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.minInsetPixels.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 160);
  v3 = *(v1 + 176);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Highlights.Glyphs.minInsetPixels.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v3;
  return result;
}

__n128 ICRRenderingParameters.spatialHighlighting.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1240);
  *a1 = *(v1 + 1224);
  *(a1 + 16) = v2;
  result = *(v1 + 1256);
  *(a1 + 32) = result;
  return result;
}

__n128 ICRRenderingParameters.spatialHighlighting.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 1224) = *a1;
  *(v1 + 1240) = v2;
  result = *(a1 + 32);
  *(v1 + 1256) = result;
  return result;
}

double ICRRenderingParameters.standardGlow.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 1288);
  *a1 = *(v1 + 1272);
  *(a1 + 16) = result;
  return result;
}

double ICRRenderingParameters.standardGlow.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 1272) = *a1;
  *(v1 + 1288) = result;
  return result;
}

double ICRRenderingParameters.nonStandardGlow.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 1312);
  *a1 = *(v1 + 1296);
  *(a1 + 16) = result;
  return result;
}

double ICRRenderingParameters.nonStandardGlow.setter(uint64_t a1)
{
  result = *(a1 + 16);
  *(v1 + 1296) = *a1;
  *(v1 + 1312) = result;
  return result;
}

__n128 ICRRenderingParameters.standardShadow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1336);
  *a1 = *(v1 + 1320);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 1352);
  result = *(v1 + 1361);
  *(a1 + 41) = result;
  return result;
}

__n128 ICRRenderingParameters.standardShadow.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 1320) = *a1;
  *(v1 + 1336) = v2;
  *(v1 + 1352) = *(a1 + 32);
  result = *(a1 + 41);
  *(v1 + 1361) = result;
  return result;
}

__n128 ICRRenderingParameters.contourGradients.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 1440);
  v3 = *(v1 + 1472);
  *(a1 + 32) = *(v1 + 1456);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 1488);
  *a1 = *(v1 + 1424);
  *(a1 + 16) = result;
  return result;
}

__n128 ICRRenderingParameters.contourGradients.setter(__int128 *a1)
{
  v2 = *a1;
  *(v1 + 1440) = a1[1];
  v3 = a1[3];
  *(v1 + 1456) = a1[2];
  *(v1 + 1472) = v3;
  result = a1[4];
  *(v1 + 1488) = result;
  *(v1 + 1424) = v2;
  return result;
}

__n128 ICRRenderingParameters.outlines.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1584);
  *(a1 + 64) = *(v1 + 1568);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 1600);
  *(a1 + 112) = *(v1 + 1616);
  v3 = *(v1 + 1520);
  *a1 = *(v1 + 1504);
  *(a1 + 16) = v3;
  result = *(v1 + 1536);
  v5 = *(v1 + 1552);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

__n128 ICRRenderingParameters.outlines.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 1568) = *(a1 + 64);
  *(v1 + 1584) = v2;
  *(v1 + 1600) = *(a1 + 96);
  v3 = *(a1 + 16);
  *(v1 + 1504) = *a1;
  *(v1 + 1520) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(v1 + 1536) = result;
  *(v1 + 1616) = *(a1 + 112);
  *(v1 + 1552) = v5;
  return result;
}

__n128 ICRRenderingParameters.Outlines.lineWidth.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Outlines.lineWidth.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  return result;
}

__n128 ICRRenderingParameters.Outlines.lineOpacityOnLight.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 64);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Outlines.lineOpacityOnLight.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  return result;
}

__n128 ICRRenderingParameters.Outlines.lineOpacityOnDark.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 ICRRenderingParameters.Outlines.lineOpacityOnDark.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  return result;
}

uint64_t ICRRenderingParameters.Outlines.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  return sub_1B161A4F8();
}

uint64_t sub_1B160A694(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v9[-v2];
  v5 = *v4;
  (*(v6 + 16))(&v9[-v2], v1);
  v10 = v5;
  v7 = type metadata accessor for ICRRenderingParameters.SizeBasedValue();
  return ICRRenderingParameters.SizeBasedValue.subscript.setter(v3, &v10, v7);
}

uint64_t ICRRenderingParameters.SizeBasedValue.subscript.setter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 > 1u)
  {
    if (*a2 != 2)
    {
      goto LABEL_8;
    }

    v5 = 36;
  }

  else if (*a2)
  {
    v5 = 40;
  }

  else
  {
    v5 = 44;
  }

  v3 += *(a3 + v5);
LABEL_8:
  v6 = *(*(*(a3 + 16) - 8) + 40);

  return v6(v3, a1);
}

void (*ICRRenderingParameters.SizeBasedValue.subscript.modify(void *a1, char *a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = *(a3 + 16);
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v12);
    v13 = malloc(v12);
  }

  v9[5] = v13;
  v14 = *a2;
  *(v9 + 48) = *a2;
  v16 = v14;
  ICRRenderingParameters.SizeBasedValue.subscript.getter(&v16, a3, v13);
  return sub_1B160A930;
}

void sub_1B160A930(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = v2[2];
    v7 = v2[3];
    v8 = *v2;
    (*(v7 + 16))((*a1)[4], v5, v6);
    v10 = v3;
    ICRRenderingParameters.SizeBasedValue.subscript.setter(v4, &v10, v8);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v9 = *v2;
    v11 = *(*a1 + 48);
    ICRRenderingParameters.SizeBasedValue.subscript.setter(v5, &v11, v9);
  }

  free(v5);
  free(v4);

  free(v2);
}

unint64_t sub_1B160AA50(uint64_t a1)
{
  v2 = sub_1B161A148();

  return sub_1B160AA94(a1, v2);
}

unint64_t sub_1B160AA94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B160BC14(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B272FC80](v9, a1);
      sub_1B15F174C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t _s13IconRendering22ICRRenderingParametersV13ChicletShadowV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  v2 = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))))) & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), xmmword_1B161E2F0)) & 0xF) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[7], a2[7]))));
  }

  return v2 & 1;
}

BOOL _s13IconRendering22ICRRenderingParametersV10HighlightsV6GlyphsV2eeoiySbAG_AGtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])), vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[4], a2[4]), vceqq_f64(a1[5], a2[5])), vuzp1q_s32(vceqq_f64(a1[6], a2[6]), vceqq_f64(a1[7], a2[7]))))) & 1) != 0 && vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(a1[8], a2[8]), vceqq_f64(a1[9], a2[9])), vuzp1q_s32(vceqq_f64(a1[10], a2[10]), vceqq_f64(a1[11], a2[11]))), xmmword_1B1620170)) == 255)
  {
    return a1[12].f64[0] == a2[12].f64[0];
  }

  return result;
}

BOOL _s13IconRendering22ICRRenderingParametersV19SpatialHighlightingV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
  }

  return result;
}

BOOL _s13IconRendering22ICRRenderingParametersV8OutlinesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vmaxv_u8(vmovn_s16(vmvnq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))))) & 1) == 0 && (vaddvq_s32(vbicq_s8(xmmword_1B161E2F0, vuzp1q_s32(vceqq_f64(*(a1 + 64), *(a2 + 64)), vceqq_f64(*(a1 + 80), *(a2 + 80))))) & 0xF) == 0 && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && ((*(a1 + 112) ^ *(a2 + 112)) & 1) == 0)
  {
    return *(a1 + 113) == *(a2 + 113);
  }

  return result;
}

uint64_t _s13IconRendering22ICRRenderingParametersV17PlatformOverridesV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 25);
  v5 = *(a2 + 8);
  v6 = *(a2 + 24);
  v7 = *(a2 + 25);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return v6;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      LOBYTE(v6) = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v6 = 0;
    if (v7 == 2 || ((v7 ^ v4) & 1) != 0)
    {
      return v6;
    }
  }

  v16 = v2;
  v17 = v3;
  memcpy(__dst, (a1 + 32), sizeof(__dst));
  if (sub_1B15FA564(__dst) == 1)
  {
    memcpy(v14, (a2 + 32), sizeof(v14));
    if (sub_1B15FA564(v14) != 1)
    {
      return 0;
    }
  }

  else
  {
    memcpy(v13, (a1 + 32), sizeof(v13));
    memcpy(v14, (a2 + 32), sizeof(v14));
    if (sub_1B15FA564(v14) == 1)
    {
      return 0;
    }

    memcpy(v12, (a2 + 32), sizeof(v12));
    if ((_s13IconRendering22ICRRenderingParametersV10HighlightsV2eeoiySbAE_AEtFZ_0(v13, v12) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_1B160AF7C()
{
  result = qword_1EB752FA8;
  if (!qword_1EB752FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752FA8);
  }

  return result;
}

unint64_t sub_1B160AFD4()
{
  result = qword_1EB752FB0;
  if (!qword_1EB752FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB752FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752FB0);
  }

  return result;
}

unint64_t sub_1B160B03C()
{
  result = qword_1EB752FC0[0];
  if (!qword_1EB752FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB752FC0);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1B160B0BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B160B0DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1B160B150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 888))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B160B1B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
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
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 888) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 888) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B160B2E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 856))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 0x12;
  v5 = v3 - 18;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B160B328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
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
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 856) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 856) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 17;
    }
  }

  return result;
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1B160B4A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 200))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B160B4C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 200) = v3;
  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B160B568(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEF && *(a1 + 57))
  {
    return (*a1 + 239);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 0x12;
  v5 = v3 - 18;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B160B5AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 239;
    if (a3 >= 0xEF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 17;
    }
  }

  return result;
}

uint64_t sub_1B160B610(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B160B630(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 80) = v3;
  return result;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1B160B6AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 114))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B160B700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B160B78C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B160B800(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1B160B960(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  v8 = *(v5 + 80);
  v9 = ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8 + ((*(v5 + 64) + v8) & ~v8)) & ~v8)) & ~v8) + *(v5 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v6 + 56);

  return v20();
}

uint64_t sub_1B160BB88(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B160BBAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 ICRSimulatedGlassChicletLayer.iconStyle.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v3 + 48);
  return result;
}

id ICRSimulatedGlassChicletLayer.iconStyle.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle;
  swift_beginAccess();
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);
  return sub_1B160BD3C();
}

id sub_1B160BD3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_simulatedGlassChicletLayer);
  v2 = (v0 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle);
  swift_beginAccess();
  v3 = &v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle];
  v5 = v2[1];
  v4 = v2[2];
  v6 = *v2;
  *(v3 + 24) = *(v2 + 24);
  *(v3 + 1) = v5;
  *(v3 + 2) = v4;
  *v3 = v6;
  v7 = (v0 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect);
  swift_beginAccess();
  v8 = &v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_chicletRect];
  v9 = v7[1];
  *v8 = *v7;
  *(v8 + 1) = v9;
  v10 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage;
  swift_beginAccess();
  v11 = *(v0 + v10);
  v12 = *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage];
  *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage] = v11;
  v13 = v11;

  v14 = (v0 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_globalConfig);
  swift_beginAccess();
  v15 = v14[3];
  v22[2] = v14[2];
  v22[3] = v15;
  v22[4] = v14[4];
  v16 = v14[1];
  v22[0] = *v14;
  v22[1] = v16;
  v18 = *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 16];
  v17 = *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 32];
  v19 = *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 64];
  v23[3] = *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 48];
  v23[4] = v19;
  v23[1] = v18;
  v23[2] = v17;
  v23[0] = *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig];
  memmove(&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig], v14, 0x50uLL);
  sub_1B160C298(v22, &v21);
  sub_1B160C4E4(v23);
  return [v1 setNeedsDisplay];
}

uint64_t (*ICRSimulatedGlassChicletLayer.iconStyle.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B160D74C;
}

double ICRSimulatedGlassChicletLayer.chicletRect.getter()
{
  v1 = v0 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect;
  swift_beginAccess();
  return *v1;
}

id sub_1B160BF60(_OWORD *a1, void *a2)
{
  v3 = (*a2 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect);
  swift_beginAccess();
  v4 = a1[1];
  *v3 = *a1;
  v3[1] = v4;
  return sub_1B160BD3C();
}

id ICRSimulatedGlassChicletLayer.chicletRect.setter(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return sub_1B160BD3C();
}

uint64_t (*ICRSimulatedGlassChicletLayer.chicletRect.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B160C094;
}

void *ICRSimulatedGlassChicletLayer.backgroundImage.getter()
{
  v1 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_1B160C0E4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return sub_1B160BD3C();
}

void ICRSimulatedGlassChicletLayer.backgroundImage.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1B160BD3C();
}

uint64_t (*ICRSimulatedGlassChicletLayer.backgroundImage.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B160D74C;
}

uint64_t ICRSimulatedGlassChicletLayer.globalConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_globalConfig);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_1B160C298(v10, v9);
}

uint64_t sub_1B160C298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753068);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B160C308@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_globalConfig);
  swift_beginAccess();
  v11[0] = *v3;
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[4];
  v11[3] = v3[3];
  v11[4] = v6;
  v11[2] = v5;
  v11[1] = v4;
  v7 = v3[3];
  a2[2] = v3[2];
  a2[3] = v7;
  a2[4] = v3[4];
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  return sub_1B160C298(v11, v10);
}

id sub_1B160C3A0(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v15 = a1[2];
  v16 = v2;
  v17 = a1[4];
  v3 = a1[1];
  v13 = *a1;
  v14 = v3;
  v4 = (*a2 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_globalConfig);
  swift_beginAccess();
  v18[0] = *v4;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v18[3] = v4[3];
  v18[4] = v7;
  v18[1] = v5;
  v18[2] = v6;
  v8 = v15;
  v9 = v17;
  v10 = v14;
  v4[3] = v16;
  v4[4] = v9;
  v4[1] = v10;
  v4[2] = v8;
  *v4 = v13;
  sub_1B160C298(&v13, v12);
  sub_1B160C4E4(v18);
  return sub_1B160BD3C();
}

id ICRSimulatedGlassChicletLayer.globalConfig.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_globalConfig);
  swift_beginAccess();
  v4 = v3[3];
  v9[2] = v3[2];
  v9[3] = v4;
  v9[4] = v3[4];
  v5 = v3[1];
  v9[0] = *v3;
  v9[1] = v5;
  v6 = a1[3];
  v3[2] = a1[2];
  v3[3] = v6;
  v3[4] = a1[4];
  v7 = a1[1];
  *v3 = *a1;
  v3[1] = v7;
  sub_1B160C4E4(v9);
  return sub_1B160BD3C();
}

uint64_t sub_1B160C4E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*ICRSimulatedGlassChicletLayer.globalConfig.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1B160D74C;
}

id sub_1B160C5B0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1B160BD3C();
  }

  return result;
}

id ICRSimulatedGlassChicletLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICRSimulatedGlassChicletLayer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle];
  *v2 = 0;
  *(v2 + 1) = 1;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 24) = 513;
  v3 = &v0[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage] = 0;
  v4 = &v0[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_globalConfig];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = xmmword_1B161F1D0;
  v5 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_simulatedGlassChicletLayer;
  *&v0[v5] = [objc_allocWithZone(type metadata accessor for SimulatedGlassChicletLayer()) init];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ICRSimulatedGlassChicletLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t ICRSimulatedGlassChicletLayer.init(layer:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle];
  *v4 = 0;
  *(v4 + 1) = 1;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 24) = 513;
  v5 = &v1[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage;
  *&v1[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage] = 0;
  v7 = &v1[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_globalConfig];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = xmmword_1B161F1D0;
  v8 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_simulatedGlassChicletLayer;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for SimulatedGlassChicletLayer()) init];
  sub_1B15C10F0(a1, v28);
  if (swift_dynamicCast())
  {
    v9 = v27;
    v10 = &v27[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_iconStyle];
    swift_beginAccess();
    v11 = *(v10 + 1);
    v23 = *v10;
    v24 = v11;
    v25 = *(v10 + 2);
    v26 = *(v10 + 24);
    swift_beginAccess();
    v12 = v24;
    *v4 = v23;
    *(v4 + 1) = v12;
    *(v4 + 2) = v25;
    *(v4 + 24) = v26;
    v13 = &v9[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_chicletRect];
    swift_beginAccess();
    v20 = *(v13 + 1);
    v21 = *v13;
    swift_beginAccess();
    *v5 = v21;
    *(v5 + 1) = v20;
    v14 = OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_backgroundImage;
    swift_beginAccess();
    v15 = *&v9[v14];
    swift_beginAccess();
    v16 = *&v1[v6];
    *&v1[v6] = v15;
    v17 = v15;

    v22.receiver = v1;
    v22.super_class = ObjectType;
    v18 = objc_msgSendSuper2(&v22, sel_initWithLayer_, v9);

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v18;
  }

  else
  {
    result = sub_1B161A288();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ICRSimulatedGlassChicletLayer.layoutSublayers()()
{
  v1 = [v0 sublayers];
  if (!v1 || (v2 = v1, sub_1B160CB90(), v3 = sub_1B1619EF8(), v2, v4 = *&v0[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_simulatedGlassChicletLayer], v8 = v4, MEMORY[0x1EEE9AC00](v5), v7[2] = &v8, v6 = sub_1B1606840(sub_1B160D694, v7, v3), , (v6 & 1) == 0))
  {
    v4 = *&v0[OBJC_IVAR____TtC13IconRendering29ICRSimulatedGlassChicletLayer_simulatedGlassChicletLayer];
    [v0 addSublayer_];
  }

  [v0 bounds];
  [v4 setFrame_];
  [v0 contentsScale];
  [v4 setContentsScale_];
  [v0 rasterizationScale];
  [v4 setRasterizationScale_];
  [v4 setNeedsDisplay];
}

unint64_t sub_1B160CB90()
{
  result = qword_1EDB2F358;
  if (!qword_1EDB2F358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB2F358);
  }

  return result;
}

id sub_1B160CCA0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle];
  *v2 = 0;
  *(v2 + 1) = 1;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 24) = 513;
  v3 = &v0[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_chicletRect];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *&v0[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage] = 0;
  v4 = &v0[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = xmmword_1B161F1D0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  [v5 setOpaque_];
  return v5;
}

uint64_t sub_1B160CD80(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle];
  *v4 = 0;
  *(v4 + 1) = 1;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *(v4 + 24) = 513;
  v5 = &v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_chicletRect];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v6 = OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage;
  *&v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage] = 0;
  v7 = &v1[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = xmmword_1B161F1D0;
  sub_1B15C10F0(a1, v20);
  if (swift_dynamicCast())
  {
    v8 = v19;
    v10 = *&v19[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle + 16];
    v9 = *&v19[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle + 32];
    v11 = *&v19[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle];
    *(v4 + 24) = *&v19[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle + 48];
    *(v4 + 1) = v10;
    *(v4 + 2) = v9;
    *v4 = v11;
    v12 = *&v8[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_chicletRect + 16];
    *v5 = *&v8[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_chicletRect];
    *(v5 + 1) = v12;
    v13 = *&v8[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage];
    v14 = *&v1[v6];
    *&v1[v6] = v13;
    v15 = v13;

    v18.receiver = v1;
    v18.super_class = ObjectType;
    v16 = objc_msgSendSuper2(&v18, sel_initWithLayer_, v8);
    [v16 setOpaque_];

    __swift_destroy_boxed_opaque_existential_0(a1);
    return v16;
  }

  else
  {
    result = sub_1B161A288();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B160CF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  swift_unknownObjectRetain();
  sub_1B161A128();
  swift_unknownObjectRelease();
  return a4(&v6);
}

uint64_t sub_1B160CFB8(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  v6 = a1;
  sub_1B1611AF0(__src);
  v7 = &v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig];
  v8 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 64];
  v9 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 72];
  v10 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 16];
  v88 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig];
  v89 = v10;
  v11 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 48];
  v90 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_globalConfig + 32];
  v91 = v11;
  if (v8 != 1)
  {
    v85[2] = __src[2];
    v85[3] = __src[3];
    v85[0] = __src[0];
    v85[1] = __src[1];
    v12 = *v7;
    v13 = v7[1];
    v85[4] = __src[4];
    __dst[0] = v12;
    v14 = v7[2];
    v15 = v7[3];
    __dst[1] = v13;
    __dst[2] = v14;
    __dst[3] = v15;
    *&__dst[4] = v8;
    *(&__dst[4] + 1) = v9;
    sub_1B15F354C(__dst, v84);
    sub_1B15FA510(v85);
    __src[0] = v88;
    __src[1] = v89;
    __src[2] = v90;
    __src[3] = v91;
    *&__src[4] = v8;
    *(&__src[4] + 1) = v9;
  }

  v16 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_chicletRect + 16];
  *(&__src[21] + 8) = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_chicletRect];
  *(&__src[22] + 8) = v16;
  sub_1B1611C64();
  v17 = &v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle];
  LOBYTE(__src[9]) = v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_iconStyle + 1];
  __src[5] = 0uLL;
  LOBYTE(__src[6]) = 1;
  v18 = OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage;
  v19 = *&v2[OBJC_IVAR____TtC13IconRendering26SimulatedGlassChicletLayer_backgroundImage];
  v20 = *(&__src[6] + 1);
  *(&__src[6] + 1) = v19;
  v21 = v19;

  v22 = *&v2[v18];
  if (v22)
  {
    v23 = v22;
    [v2 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    Width = CGImageGetWidth(v23);
    v33 = Width / CGImageGetHeight(v23);
    v34 = v25;
    v35 = v27;
    v36 = v29;
    v37 = v31;
    if (v33 >= v29 / v31)
    {
      v38 = v33 * CGRectGetHeight(*&v34);
    }

    else
    {
      v38 = CGRectGetWidth(*&v34);
    }

    v39 = v38 / v33;
    v92.origin.x = v25;
    v92.origin.y = v27;
    v92.size.width = v29;
    v92.size.height = v31;
    v40 = (CGRectGetWidth(v92) - v38) * 0.5;
    v93.origin.x = v25;
    v93.origin.y = v27;
    v93.size.width = v29;
    v93.size.height = v31;
    v41 = (CGRectGetHeight(v93) - v39) * 0.5;
    v94.origin.x = v25;
    v94.origin.y = v27;
    v94.size.width = v29;
    v94.size.height = v31;
    v95 = CGRectInset(v94, v40, v41);
    x = v95.origin.x;
    y = v95.origin.y;
    v44 = v95.size.width;
    height = v95.size.height;

    *&__src[7] = x;
    *(&__src[7] + 1) = y;
    *&__src[8] = v44;
    *(&__src[8] + 1) = height;
  }

  if (v17[48] == 1)
  {
    if (qword_1EDB2F420 != -1)
    {
      swift_once();
    }

    *(&__src[9] + 8) = xmmword_1EB752D40;
    *(&__src[10] + 8) = *algn_1EB752D50;
  }

  else
  {
    v46 = *(v17 + 2);
    v47 = *(v17 + 3);
    v48 = *(v17 + 5);
    *(&__src[9] + 1) = *(v17 + 1);
    *&__src[10] = v46;
    *(&__src[10] + 1) = v47;
    *&__src[11] = v48;
  }

  v49 = __src[6];
  v50 = __src[7];
  v51 = __src[8];
  v52 = *(&__src[21] + 1);
  v54 = *(&__src[22] + 1);
  v53 = *&__src[22];
  v55 = *&__src[23];
  [v6 beginLayer];
  if (v19)
  {
    v80 = v55;
    v81 = v54;
    v82 = v53;
    v83 = v52;
    v57 = v21;
    CGImage = RBImageMakeCGImage();
    v60 = v59;
    RBImageSimpleTransform();
    v72 = __dst[1];
    v74 = __dst[0];
    v76 = *(&__dst[2] + 1);
    v78 = *&__dst[2];
    if (qword_1EDB30310 != -1)
    {
      swift_once();
    }

    v62 = *(&xmmword_1EDB30318 + 1);
    v61 = *&xmmword_1EDB30318;
    v63 = *&qword_1EDB30328;
    v64 = unk_1EDB30330;
    [v5 setRect_];
    *&v65 = v61;
    *&v66 = v62;
    *&v67 = v63;
    *&v68 = v64;
    __dst[0] = v75;
    __dst[1] = v73;
    *&__dst[2] = v79;
    *(&__dst[2] + 1) = v77;
    [v4 setRBImage:CGImage transform:v60 interpolation:__dst tintColor:1 colorSpace:3 flags:{0, v65, v66, v67, v68}];
    LODWORD(v69) = 1.0;
    [v6 drawShape:v5 fill:v4 alpha:0 blendMode:v69];
    [v5 setRenderingMode_];

    v53 = v82;
    v52 = v83;
    v55 = v80;
    v54 = v81;
  }

  else if ((v49 & 1) == 0)
  {
    [v5 setRect_];
    [v4 setColor:3 colorSpace:{0.0, 0.0, 0.0, 0.0}];
    LODWORD(v70) = 1.0;
    [v6 drawShape:v5 fill:v4 alpha:0 blendMode:v70];
    [v5 setRenderingMode_];
  }

  LODWORD(v56) = 1.0;
  [v6 drawLayerWithAlpha:0 blendMode:v56];
  v96.origin.x = v52;
  v96.origin.y = v53;
  v96.size.width = v54;
  v96.size.height = v55;
  if (!CGRectIsEmpty(v96))
  {
    __dst[2] = __src[2];
    __dst[3] = __src[3];
    __dst[4] = __src[4];
    __dst[0] = __src[0];
    __dst[1] = __src[1];
    __dst[5] = 0uLL;
    LOBYTE(__dst[6]) = v49;
    *(&__dst[6] + 1) = *(&__src[6] + 1);
    DWORD1(__dst[6]) = DWORD1(__src[6]);
    *(&__dst[6] + 1) = v19;
    __dst[7] = v50;
    __dst[8] = v51;
    *&__dst[21] = *&__src[21];
    __dst[19] = __src[19];
    __dst[20] = __src[20];
    __dst[17] = __src[17];
    __dst[18] = __src[18];
    __dst[15] = __src[15];
    __dst[16] = __src[16];
    __dst[13] = __src[13];
    __dst[14] = __src[14];
    __dst[11] = __src[11];
    __dst[12] = __src[12];
    __dst[9] = __src[9];
    __dst[10] = __src[10];
    *(&__dst[21] + 1) = v52;
    *&__dst[22] = v53;
    *(&__dst[22] + 1) = v54;
    *&__dst[23] = v55;
    *(&__dst[23] + 8) = *(&__src[23] + 8);
    *(&__dst[24] + 8) = *(&__src[24] + 8);
    *(&__dst[25] + 8) = *(&__src[25] + 8);
    sub_1B16121E0(v6, v5);
  }

  memcpy(__dst, __src, 0x1A8uLL);
  return sub_1B160D6D8(__dst);
}

void sub_1B160D72C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (a9 != 1)
  {
  }
}

uint64_t sub_1B160D750()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB753098);
  __swift_project_value_buffer(v0, qword_1EB753098);
  return sub_1B1619D08();
}

ICRTexturePool __swiftcall ICRTexturePool.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for ICRTexturePool()
{
  result = qword_1EB7530B0;
  if (!qword_1EB7530B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7530B0);
  }

  return result;
}

void sub_1B160D960(uint64_t a1)
{
  if (qword_1EB752628 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1619D18();
  __swift_project_value_buffer(v2, qword_1EB753098);
  v3 = sub_1B1619CF8();
  v4 = sub_1B161A078();
  v5 = &unk_1EDB32000;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    if (qword_1EDB2FAA8 != -1)
    {
      swift_once();
    }

    v7 = *(qword_1EDB32760 + 16);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);

    os_unfair_lock_lock((v7 + 40));
    sub_1B160DBAC((v7 + 16), &v11);
    os_unfair_lock_unlock((v7 + 40));

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = a1;
    _os_log_impl(&dword_1B15BF000, v3, v4, "Changing texture pool capacity from %ld to %ld", v6, 0x16u);
    MEMORY[0x1B2730CA0](v6, -1, -1);

    v5 = &unk_1EDB32000;
  }

  else
  {
  }

  if (qword_1EDB2FAA8 != -1)
  {
    swift_once();
  }

  v9 = *(v5[236] + 16);
  os_unfair_lock_lock((v9 + 40));
  v10 = *(v9 + 32);
  *(v9 + 32) = a1;
  if (v10 > a1)
  {
    sub_1B1617984();
  }

  os_unfair_lock_unlock((v9 + 40));
}

uint64_t sub_1B160DBAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

double ICRUnitSphericalCoordinates.init(_:)(long double a1, long double a2, long double a3)
{
  v5 = asin(a3);
  atan2(a1, a2);
  return v5;
}

double static ICRUnitCartesianCoordinates.defaultLightDirection.getter()
{
  if (qword_1EDB2FB50 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EDB2FB58;
}

BOOL static ICRUnitCartesianCoordinates.== infix(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a1 == a4;
  if (a2 != a5)
  {
    v6 = 0;
  }

  return a3 == a6 && v6;
}

void sub_1B160DD08(double *a1, double *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = _stdlib_squareRoot(v3 * v3 + v4 * v4 + v5 * v5);
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  if (v6 > 0.00001)
  {
    v7 = v3 / v6;
    v8 = v4 / v6;
    v9 = v5 / v6;
  }

  *a2 = v7;
  a2[1] = v8;
  a2[2] = v9;
}

void ICRUnitCartesianCoordinates.autoNormalized.setter(double a1, double a2, double a3)
{
  v4 = sqrt(a1 * a1 + a2 * a2 + a3 * a3);
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if (v4 > 0.00001)
  {
    v5 = a1 / v4;
    v6 = a2 / v4;
    v7 = a3 / v4;
  }

  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
}

uint64_t (*ICRUnitCartesianCoordinates.autoNormalized.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 24) = v1;
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  return sub_1B160DE10;
}

uint64_t sub_1B160DE10(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 16);
  v3 = sqrt(vaddvq_f64(vmulq_f64(v1, v1)) + v2 * v2);
  if (v3 <= 0.00001)
  {
    v4 = 0uLL;
    v5 = 0.0;
  }

  else
  {
    v4 = vdivq_f64(v1, vdupq_lane_s64(*&v3, 0));
    v5 = v2 / v3;
  }

  v6 = *(result + 24);
  *v6 = v4;
  v6[1].f64[0] = v5;
  return result;
}

double static ICRUnitSphericalCoordinates.defaultLightDirection.getter()
{
  if (qword_1EDB2FB38 != -1)
  {
    swift_once();
  }

  return *&xmmword_1EDB2FB40;
}

uint64_t sub_1B160DEE8()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB7530B8);
  __swift_project_value_buffer(v0, qword_1EB7530B8);
  return sub_1B1619D08();
}

IconRendering::ICRIconPlatform_optional __swiftcall ICRIconPlatform.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B160DFA0()
{
  result = qword_1EB7530D0;
  if (!qword_1EB7530D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7530D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7530D0);
  }

  return result;
}

unint64_t sub_1B160E0C4()
{
  result = qword_1EDB2F618;
  if (!qword_1EDB2F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F618);
  }

  return result;
}

id sub_1B160E118(uint64_t a1)
{
  [v1 argumentAtIndex_];
  if (v9 != 2 || v11 != 1 || v10 != 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A48);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = v6 - 32;
  if (v6 < 32)
  {
    v7 = v6 - 29;
  }

  v5[2] = 2;
  v5[3] = 2 * (v7 >> 2);
  v8 = *v12;
  v5[4] = *v12;

  return [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:*&v8 Y:*(&v8 + 1)];
}

id sub_1B160E208(uint64_t a1)
{
  [v1 argumentAtIndex_];
  if (v5 == 5 && v7 == 1 && v6 == 0)
  {
    return [objc_allocWithZone(MEMORY[0x1E695F610]) initWithRed:*v8 green:v8[1] blue:v8[2] alpha:v8[3]];
  }

  else
  {
    return 0;
  }
}

id sub_1B160E2B0(uint64_t a1, double a2)
{
  [v2 argumentAtIndex_];
  if (v14 != 4 || v16 != 1 || v15 != 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A48);
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  v9 = v8 - 32;
  if (v8 < 32)
  {
    v9 = v8 - 29;
  }

  *(v7 + 16) = 4;
  *(v7 + 24) = 2 * (v9 >> 2);
  *(v7 + 32) = *v17;
  v10 = *(v7 + 32) * a2;
  v11 = *(v7 + 36) * a2;
  v12 = *(v7 + 44);
  v13 = *(v7 + 40) * a2;

  return [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:v10 Y:v11 Z:v13 W:v12 * a2];
}

id sub_1B160E3D0(void *a1, double a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 48);
  if (v8 <= 2)
  {
    a2 = *v2;
    if (*(v2 + 48))
    {
      if (v8 == 1)
      {
        v9 = sel_setStrokedRect_lineWidth_;
      }

      else
      {
        v9 = sel_setRoundedRect_cornerRadius_cornerStyle_;
        *&v3 = 1;
      }
    }

    else
    {
      v9 = sel_setRect_;
    }

    return [a1 v9];
  }

  if (v8 == 3)
  {
    a2 = *v2;
    v9 = sel_setStrokedRoundedRect_cornerRadius_cornerStyle_lineWidth_;
    *&v3 = 1;

    return [a1 v9];
  }

  if (v8 == 4)
  {
    v9 = sel_setPath_;

    return [a1 v9];
  }

  v11[0] = 0x3FF0000000000000;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0x3FF0000000000000;
  v11[4] = 0;
  v11[5] = 0;
  return [a1 setStrokedPath:*&v3 transform:v11 lineWidth:1 lineCap:1 lineJoin:v4 miterLimit:{0.0, v5, v6, v7}];
}

uint64_t sub_1B160E518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1B160F694(v5, v7) & 1;
}

void sub_1B160E574(float *a1, int a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v10 = *(a3 + 16);
  if (v10 >> 60)
  {
    __break(1u);
LABEL_37:

    goto LABEL_10;
  }

  v19 = a4;

  if ((8 * v10) >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v51 = swift_slowAlloc();
      v9 = v19;

      sub_1B160EF8C(v51, v10, a3, a1, a2, v9, a5);
      MEMORY[0x1B2730CA0](v51, -1, -1);

      if (v52[0])
      {

        return;
      }

      goto LABEL_37;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v22 = v52 - v21;
  if (v10)
  {
    if (v10 <= 7)
    {
      v23 = 0;
LABEL_6:
      v24 = v10 - v23;
      v25 = &v22[8 * v23];
      v26 = &a1[4 * v23];
      v27 = (a3 + 40 * v23 + 64);
      do
      {
        v28 = v27->f64[0];
        *v26++ = vcvt_hight_f32_f64(vcvt_f32_f64(v27[-2]), v27[-1]);
        *v25 = v28;
        v25 += 8;
        v27 = (v27 + 40);
        --v24;
      }

      while (v24);
      goto LABEL_8;
    }

    v23 = 0;
    v29 = a3 + 32;
    v30 = &a1[4 * v10];
    v31 = &v22[8 * v10];
    v32 = a3 + 40 * v10 + 32;
    v34 = v32 > a1 && v29 < v30;
    v36 = v22 < v32 && v29 < v31;
    if (v22 < v30 && v31 > a1)
    {
      goto LABEL_6;
    }

    if (v34)
    {
      goto LABEL_6;
    }

    if (v36)
    {
      goto LABEL_6;
    }

    v23 = v10 & 0xFFFFFFFFFFFFFFCLL;
    v38 = v10 & 0xFFFFFFFFFFFFFFCLL;
    v39 = v22;
    v40 = a1;
    do
    {
      v42 = *v29;
      v41 = *(v29 + 16);
      v44 = *(v29 + 96);
      v43 = *(v29 + 112);
      v45 = *(v29 + 80);
      v46 = vextq_s8(v45, *(v29 + 128), 8uLL);
      v45.f64[1] = *(v29 + 120);
      v47 = *(v29 + 32);
      *(&v43 + 1) = *(v29 + 152);
      v42.f64[1] = *(v29 + 40);
      *(&v47 + 1) = *(v29 + 72);
      v53.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v29, *(v29 + 48), 8uLL)), v46);
      v48 = vcvt_f32_f64(v42);
      v49 = vextq_s8(v44, *(v29 + 144), 8uLL);
      v44.f64[1] = *(v29 + 136);
      v50 = vextq_s8(v41, *(v29 + 64), 8uLL);
      v41.f64[1] = *(v29 + 56);
      v53.val[0] = vcvt_hight_f32_f64(v48, v45);
      v53.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v49);
      v53.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v41), v44);
      vst4q_f32(v40, v53);
      v40 += 16;
      *v39 = v47;
      *(v39 + 1) = v43;
      v39 += 32;
      v29 += 160;
      v38 -= 4;
    }

    while (v38);
    if (v10 != v23)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  if (a1)
  {
    [v19 setAxialGradientStartPoint:*(a5 + 16) endPoint:a1 stopCount:3 colors:a6 colorSpace:a7 locations:a8 flags:a9];

LABEL_10:

    return;
  }

  __break(1u);
}

void sub_1B160E8B0(float *a1, int a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, double a8)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 16);
  if (v9 >> 60)
  {
    __break(1u);
LABEL_37:

    goto LABEL_10;
  }

  v17 = a4;

  if ((8 * v9) >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v49 = swift_slowAlloc();
      v8 = v17;

      sub_1B160F120(v49, v9, a3, a1, a2, v8, a5);
      MEMORY[0x1B2730CA0](v49, -1, -1);

      if (v50[0])
      {

        return;
      }

      goto LABEL_37;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v20 = v50 - v19;
  if (v9)
  {
    if (v9 <= 7)
    {
      v21 = 0;
LABEL_6:
      v22 = v9 - v21;
      v23 = &v20[8 * v21];
      v24 = &a1[4 * v21];
      v25 = (a3 + 40 * v21 + 64);
      do
      {
        v26 = v25->f64[0];
        *v24++ = vcvt_hight_f32_f64(vcvt_f32_f64(v25[-2]), v25[-1]);
        *v23 = v26;
        v23 += 8;
        v25 = (v25 + 40);
        --v22;
      }

      while (v22);
      goto LABEL_8;
    }

    v21 = 0;
    v27 = a3 + 32;
    v28 = &a1[4 * v9];
    v29 = &v20[8 * v9];
    v30 = a3 + 40 * v9 + 32;
    v32 = v30 > a1 && v27 < v28;
    v34 = v20 < v30 && v27 < v29;
    if (v20 < v28 && v29 > a1)
    {
      goto LABEL_6;
    }

    if (v32)
    {
      goto LABEL_6;
    }

    if (v34)
    {
      goto LABEL_6;
    }

    v21 = v9 & 0xFFFFFFFFFFFFFFCLL;
    v36 = v9 & 0xFFFFFFFFFFFFFFCLL;
    v37 = v20;
    v38 = a1;
    do
    {
      v40 = *v27;
      v39 = *(v27 + 16);
      v42 = *(v27 + 96);
      v41 = *(v27 + 112);
      v43 = *(v27 + 80);
      v44 = vextq_s8(v43, *(v27 + 128), 8uLL);
      v43.f64[1] = *(v27 + 120);
      v45 = *(v27 + 32);
      *(&v41 + 1) = *(v27 + 152);
      v40.f64[1] = *(v27 + 40);
      *(&v45 + 1) = *(v27 + 72);
      v51.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v27, *(v27 + 48), 8uLL)), v44);
      v46 = vcvt_f32_f64(v40);
      v47 = vextq_s8(v42, *(v27 + 144), 8uLL);
      v42.f64[1] = *(v27 + 136);
      v48 = vextq_s8(v39, *(v27 + 64), 8uLL);
      v39.f64[1] = *(v27 + 56);
      v51.val[0] = vcvt_hight_f32_f64(v46, v43);
      v51.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v48), v47);
      v51.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v39), v42);
      vst4q_f32(v38, v51);
      v38 += 16;
      *v37 = v45;
      *(v37 + 1) = v41;
      v37 += 32;
      v27 += 160;
      v36 -= 4;
    }

    while (v36);
    if (v9 != v21)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  if (a1)
  {
    [v17 setConicGradientCenter:*(a5 + 16) angle:a1 stopCount:a6 colors:a7 locations:a8 flags:?];

LABEL_10:

    return;
  }

  __break(1u);
}

void sub_1B160EBDC(float *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, void *a7, void *a8, void *a9)
{
  v67 = *MEMORY[0x1E69E9840];
  v12 = *(a3 + 16);
  if (v12 >> 60)
  {
    __break(1u);
LABEL_37:

    goto LABEL_10;
  }

  v56 = a2;
  v57 = a4;
  v58 = a6;

  v9 = a7;
  v10 = a8;
  isStackAllocationSafe = a9;
  v11 = isStackAllocationSafe;
  if ((8 * v12) >= 1025)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v53 = swift_slowAlloc();

      v55 = v9;
      v50 = v10;
      v52 = v11;
      v54 = v50;
      sub_1B160F2B0(v53, v12, a3, a1, v56, v57, a5, v58, v55, v50, v52);
      MEMORY[0x1B2730CA0](v53, -1, -1);
      if (v59)
      {

        swift_bridgeObjectRelease_n();
        return;
      }

      goto LABEL_37;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v20 = &v51 - v19;
  if (v12)
  {
    if (v12 <= 7)
    {
      v21 = 0;
LABEL_6:
      v22 = v12 - v21;
      v23 = &v20[8 * v21];
      v24 = &a1[4 * v21];
      v25 = (a3 + 40 * v21 + 64);
      do
      {
        v26 = v25->f64[0];
        *v24++ = vcvt_hight_f32_f64(vcvt_f32_f64(v25[-2]), v25[-1]);
        *v23 = v26;
        v23 += 8;
        v25 = (v25 + 40);
        --v22;
      }

      while (v22);
      goto LABEL_8;
    }

    v21 = 0;
    v28 = a3 + 32;
    v29 = &a1[4 * v12];
    v30 = &v20[8 * v12];
    v31 = a3 + 40 * v12 + 32;
    v33 = v31 > a1 && v28 < v29;
    v35 = v20 < v31 && v28 < v30;
    if (v20 < v29 && v30 > a1)
    {
      goto LABEL_6;
    }

    if (v33)
    {
      goto LABEL_6;
    }

    if (v35)
    {
      goto LABEL_6;
    }

    v21 = v12 & 0xFFFFFFFFFFFFFFCLL;
    v37 = v12 & 0xFFFFFFFFFFFFFFCLL;
    v38 = v20;
    v39 = a1;
    do
    {
      v41 = *v28;
      v40 = *(v28 + 16);
      v43 = *(v28 + 96);
      v42 = *(v28 + 112);
      v44 = *(v28 + 80);
      v45 = vextq_s8(v44, *(v28 + 128), 8uLL);
      v44.f64[1] = *(v28 + 120);
      v46 = *(v28 + 32);
      *(&v42 + 1) = *(v28 + 152);
      v41.f64[1] = *(v28 + 40);
      *(&v46 + 1) = *(v28 + 72);
      v68.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v28, *(v28 + 48), 8uLL)), v45);
      v47 = vcvt_f32_f64(v41);
      v48 = vextq_s8(v43, *(v28 + 144), 8uLL);
      v43.f64[1] = *(v28 + 136);
      v49 = vextq_s8(v40, *(v28 + 64), 8uLL);
      v40.f64[1] = *(v28 + 56);
      v68.val[0] = vcvt_hight_f32_f64(v47, v44);
      v68.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v49), v48);
      v68.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v43);
      vst4q_f32(v39, v68);
      v39 += 16;
      *v38 = v46;
      *(v38 + 1) = v42;
      v38 += 32;
      v28 += 160;
      v37 -= 4;
    }

    while (v37);
    if (v12 != v21)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  if (a1)
  {
    v27 = *(a5 + 16);
    v60[0] = v57;
    v61 = 0x3F80000000000000;
    v62 = v27;
    v63 = a1;
    v64 = 3;
    v65 = v20;
    v66 = v58;
    [v9 addStyle:1 data:v60];

LABEL_10:

    return;
  }

  __break(1u);
}

void sub_1B160EF8C(float *a1, int a2, uint64_t a3, float *a4, int a5, id a6, uint64_t a7)
{
  v8 = *(a3 + 16);
  if (v8)
  {
    if (v8 <= 7)
    {
      v9 = 0;
LABEL_4:
      v10 = v8 - v9;
      v11 = &a1[2 * v9];
      v12 = &a4[4 * v9];
      v13 = (a3 + 40 * v9 + 64);
      do
      {
        v14 = v13->f64[0];
        *v12++ = vcvt_hight_f32_f64(vcvt_f32_f64(v13[-2]), v13[-1]);
        *v11++ = v14;
        v13 = (v13 + 40);
        --v10;
      }

      while (v10);
      goto LABEL_6;
    }

    v9 = 0;
    v15 = a3 + 32;
    v16 = &a4[4 * v8];
    v17 = &a1[2 * v8];
    v18 = a3 + 40 * v8 + 32;
    v20 = v18 > a4 && v15 < v16;
    v22 = v18 > a1 && v15 < v17;
    if (v16 > a1 && v17 > a4)
    {
      goto LABEL_4;
    }

    if (v20)
    {
      goto LABEL_4;
    }

    if (v22)
    {
      goto LABEL_4;
    }

    v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
    v24 = v8 & 0x7FFFFFFFFFFFFFFCLL;
    v25 = a1;
    v26 = a4;
    do
    {
      v28 = *v15;
      v27 = *(v15 + 16);
      v30 = *(v15 + 96);
      v29 = *(v15 + 112);
      v31 = *(v15 + 80);
      v32 = vextq_s8(v31, *(v15 + 128), 8uLL);
      v31.f64[1] = *(v15 + 120);
      v33 = *(v15 + 32);
      *(&v29 + 1) = *(v15 + 152);
      v28.f64[1] = *(v15 + 40);
      *(&v33 + 1) = *(v15 + 72);
      v37.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v15, *(v15 + 48), 8uLL)), v32);
      v34 = vcvt_f32_f64(v28);
      v35 = vextq_s8(v30, *(v15 + 144), 8uLL);
      v30.f64[1] = *(v15 + 136);
      v36 = vextq_s8(v27, *(v15 + 64), 8uLL);
      v27.f64[1] = *(v15 + 56);
      v37.val[0] = vcvt_hight_f32_f64(v34, v31);
      v37.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v35);
      v37.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v30);
      vst4q_f32(v26, v37);
      v26 += 16;
      *v25 = v33;
      *(v25 + 1) = v29;
      v25 += 8;
      v15 += 160;
      v24 -= 4;
    }

    while (v24);
    if (v8 != v9)
    {
      goto LABEL_4;
    }
  }

LABEL_6:
  if (a4)
  {
    if (a1)
    {
      [a6 setAxialGradientStartPoint:*(a7 + 16) endPoint:? stopCount:? colors:? colorSpace:? locations:? flags:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B160F120(float *a1, int a2, uint64_t a3, float *a4, int a5, id a6, uint64_t a7)
{
  v8 = *(a3 + 16);
  if (v8)
  {
    if (v8 <= 7)
    {
      v9 = 0;
LABEL_4:
      v10 = v8 - v9;
      v11 = &a1[2 * v9];
      v12 = &a4[4 * v9];
      v13 = (a3 + 40 * v9 + 64);
      do
      {
        v14 = v13->f64[0];
        *v12++ = vcvt_hight_f32_f64(vcvt_f32_f64(v13[-2]), v13[-1]);
        *v11++ = v14;
        v13 = (v13 + 40);
        --v10;
      }

      while (v10);
      goto LABEL_6;
    }

    v9 = 0;
    v15 = a3 + 32;
    v16 = &a4[4 * v8];
    v17 = &a1[2 * v8];
    v18 = a3 + 40 * v8 + 32;
    v20 = v18 > a4 && v15 < v16;
    v22 = v18 > a1 && v15 < v17;
    if (v16 > a1 && v17 > a4)
    {
      goto LABEL_4;
    }

    if (v20)
    {
      goto LABEL_4;
    }

    if (v22)
    {
      goto LABEL_4;
    }

    v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
    v24 = v8 & 0x7FFFFFFFFFFFFFFCLL;
    v25 = a1;
    v26 = a4;
    do
    {
      v28 = *v15;
      v27 = *(v15 + 16);
      v30 = *(v15 + 96);
      v29 = *(v15 + 112);
      v31 = *(v15 + 80);
      v32 = vextq_s8(v31, *(v15 + 128), 8uLL);
      v31.f64[1] = *(v15 + 120);
      v33 = *(v15 + 32);
      *(&v29 + 1) = *(v15 + 152);
      v28.f64[1] = *(v15 + 40);
      *(&v33 + 1) = *(v15 + 72);
      v37.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v15, *(v15 + 48), 8uLL)), v32);
      v34 = vcvt_f32_f64(v28);
      v35 = vextq_s8(v30, *(v15 + 144), 8uLL);
      v30.f64[1] = *(v15 + 136);
      v36 = vextq_s8(v27, *(v15 + 64), 8uLL);
      v27.f64[1] = *(v15 + 56);
      v37.val[0] = vcvt_hight_f32_f64(v34, v31);
      v37.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v35);
      v37.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v27), v30);
      vst4q_f32(v26, v37);
      v26 += 16;
      *v25 = v33;
      *(v25 + 1) = v29;
      v25 += 8;
      v15 += 160;
      v24 -= 4;
    }

    while (v24);
    if (v8 != v9)
    {
      goto LABEL_4;
    }
  }

LABEL_6:
  if (a4)
  {
    if (a1)
    {
      [a6 setConicGradientCenter:*(a7 + 16) angle:? stopCount:? colors:? locations:? flags:?];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B160F2B0(float *a1, int a2, uint64_t a3, float *a4, int a5, char a6, uint64_t a7, int a8, id a9, void *a10, void *a11)
{
  v48 = *MEMORY[0x1E69E9840];
  v11 = *(a3 + 16);
  if (v11)
  {
    if (v11 <= 7)
    {
      v12 = 0;
LABEL_4:
      v13 = v11 - v12;
      v14 = &a1[2 * v12];
      v15 = &a4[4 * v12];
      v16 = (a3 + 40 * v12 + 64);
      do
      {
        v17 = v16->f64[0];
        *v15++ = vcvt_hight_f32_f64(vcvt_f32_f64(v16[-2]), v16[-1]);
        *v14++ = v17;
        v16 = (v16 + 40);
        --v13;
      }

      while (v13);
      goto LABEL_6;
    }

    v12 = 0;
    v19 = a3 + 32;
    v20 = &a4[4 * v11];
    v21 = &a1[2 * v11];
    v22 = a3 + 40 * v11 + 32;
    v24 = v22 > a4 && v19 < v20;
    v26 = v22 > a1 && v19 < v21;
    if (v20 > a1 && v21 > a4)
    {
      goto LABEL_4;
    }

    if (v24)
    {
      goto LABEL_4;
    }

    if (v26)
    {
      goto LABEL_4;
    }

    v12 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    v28 = v11 & 0x7FFFFFFFFFFFFFFCLL;
    v29 = a1;
    v30 = a4;
    do
    {
      v32 = *v19;
      v31 = *(v19 + 16);
      v34 = *(v19 + 96);
      v33 = *(v19 + 112);
      v35 = *(v19 + 80);
      v36 = vextq_s8(v35, *(v19 + 128), 8uLL);
      v35.f64[1] = *(v19 + 120);
      v37 = *(v19 + 32);
      *(&v33 + 1) = *(v19 + 152);
      v32.f64[1] = *(v19 + 40);
      *(&v37 + 1) = *(v19 + 72);
      v49.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v19, *(v19 + 48), 8uLL)), v36);
      v38 = vcvt_f32_f64(v32);
      v39 = vextq_s8(v34, *(v19 + 144), 8uLL);
      v34.f64[1] = *(v19 + 136);
      v40 = vextq_s8(v31, *(v19 + 64), 8uLL);
      v31.f64[1] = *(v19 + 56);
      v49.val[0] = vcvt_hight_f32_f64(v38, v35);
      v49.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v39);
      v49.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v31), v34);
      vst4q_f32(v30, v49);
      v30 += 16;
      *v29 = v37;
      *(v29 + 1) = v33;
      v29 += 8;
      v19 += 160;
      v28 -= 4;
    }

    while (v28);
    if (v11 != v12)
    {
      goto LABEL_4;
    }
  }

LABEL_6:
  if (!a4)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (!a1)
  {
    goto LABEL_32;
  }

  v18 = *(a7 + 16);
  v41[0] = a6;
  v42 = 0x3F80000000000000;
  v43 = v18;
  v44 = a4;
  v45 = 3;
  v46 = a1;
  v47 = a8;
  [a9 addStyle:1 data:v41];
}

uint64_t sub_1B160F4B8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  if (!a2)
  {
LABEL_11:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = a3;
  if (!a3)
  {
LABEL_14:
    v20 = *(v3 + 9);
    *(v4 + 128) = *(v3 + 8);
    *(v4 + 144) = v20;
    v21 = *(v3 + 11);
    *(v4 + 160) = *(v3 + 10);
    *(v4 + 176) = v21;
    v22 = *(v3 + 5);
    *(v4 + 64) = *(v3 + 4);
    *(v4 + 80) = v22;
    v23 = *(v3 + 7);
    *(v4 + 96) = *(v3 + 6);
    *(v4 + 112) = v23;
    v24 = *(v3 + 1);
    *v4 = *v3;
    *(v4 + 16) = v24;
    v25 = *(v3 + 3);
    *(v4 + 32) = *(v3 + 2);
    *(v4 + 48) = v25;
    *(v4 + 192) = v5;
    return v5;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v6 = a2;
    v7 = 0;
    v8 = *v3;
    v9 = a3 - 1;
    while (1)
    {
      if (v8 == v7)
      {
        v5 = v8;
        goto LABEL_14;
      }

      v10 = *(v3 + 19);
      v27[8] = *(v3 + 17);
      v27[9] = v10;
      v27[10] = *(v3 + 21);
      v28 = v3[23];
      v11 = *(v3 + 11);
      v27[4] = *(v3 + 9);
      v27[5] = v11;
      v12 = *(v3 + 15);
      v27[6] = *(v3 + 13);
      v27[7] = v12;
      v13 = *(v3 + 3);
      v27[0] = *(v3 + 1);
      v27[1] = v13;
      v14 = *(v3 + 7);
      v27[2] = *(v3 + 5);
      v27[3] = v14;
      if (v7 >= v8)
      {
        break;
      }

      v15 = *(v3 + 19);
      *(v6 + 128) = *(v3 + 17);
      *(v6 + 144) = v15;
      *(v6 + 160) = *(v3 + 21);
      *(v6 + 176) = v3[23];
      v16 = *(v3 + 11);
      *(v6 + 64) = *(v3 + 9);
      *(v6 + 80) = v16;
      v17 = *(v3 + 15);
      *(v6 + 96) = *(v3 + 13);
      *(v6 + 112) = v17;
      v18 = *(v3 + 3);
      *v6 = *(v3 + 1);
      *(v6 + 16) = v18;
      v19 = *(v3 + 7);
      *(v6 + 32) = *(v3 + 5);
      *(v6 + 48) = v19;
      if (v9 == v7)
      {
        sub_1B1611630(v27, v26);
        goto LABEL_14;
      }

      v6 += 184;
      result = sub_1B1611630(v27, v26);
      if (__OFADD__(++v7, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B160F694(double *a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a1 + 3);
  v5 = a1[4];
  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6 <= 2)
  {
    if (!*(a1 + 48))
    {
      if (!*(a2 + 48))
      {
        v9 = *a1;
        return CGRectEqualToRect(*(&v2 - 1), *a2);
      }

      return 0;
    }

    if (v6 == 1)
    {
      if (v7 != 1)
      {
        return 0;
      }

      goto LABEL_20;
    }

    if (v7 == 2)
    {
LABEL_20:
      v16 = *(a2 + 32);
      v17 = *a1;
      LODWORD(result) = CGRectEqualToRect(*(&v2 - 1), *a2);
      if (v5 == v16)
      {
        return result;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      if (v7 == 4)
      {
        type metadata accessor for CGPath(0);
        sub_1B1611564();
        return sub_1B1619C08() & 1;
      }
    }

    else if (v7 == 5)
    {
      v18 = *(a2 + 8);
      v19 = a1[1];
      type metadata accessor for CGPath(0);
      sub_1B1611564();
      return sub_1B1619C08() & (v19 == v18);
    }

    return 0;
  }

  if (v7 != 3)
  {
    return 0;
  }

  v10 = a1[5];
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v13 = *a1;
  v14 = CGRectEqualToRect(*(&v2 - 1), *a2);
  v15 = v5 == v12 && v14;
  return v10 == v11 && v15;
}

uint64_t sub_1B160F80C(uint64_t a1, uint64_t a2, id a3, __int128 *a4, void *a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, unsigned __int8 a11, uint64_t a12)
{
  v286 = a4;
  v20 = a11;
  v289 = *MEMORY[0x1E69E9840];
  v21 = *(a1 + 96);
  if (v21 <= 0xFD)
  {
    LODWORD(v285) = a11;
    *&v282 = a5;
    LODWORD(v281) = a2;
    v26 = *(a1 + 8);
    v277 = *a1;
    v278 = v26;
    v27 = *(a1 + 24);
    v279 = *(a1 + 16);
    *&v280 = v27;
    v28 = *(a1 + 40);
    v272 = *(a1 + 32);
    v273 = v28;
    v29 = *(a1 + 56);
    v274 = *(a1 + 48);
    v276 = v29;
    v275 = *(a1 + 64);
    v267 = *(a1 + 71);
    v266 = *(a1 + 69);
    v268 = *(a1 + 65);
    v30 = *(a1 + 72);
    v269 = *(a1 + 80);
    v31 = *(a1 + 88);
    v32 = [a3 profile];
    v33 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
    v284 = COERCE_DOUBLE([objc_allocWithZone(MEMORY[0x1E69C70D8]) init]);
    v34 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
    if (v32 == 2)
    {
      [v33 setProfile_];
    }

    if (*(a6 + 72))
    {
      v35 = *(a6 + 24);
      if (*(a6 + 24))
      {
        v36 = *(a6 + 16);
        if (v35 == 1)
        {
          Width = CGImageGetWidth(*(a6 + 16));
          v38 = Width / CGImageGetHeight(v36);
        }

        else
        {
          CGSVGDocumentGetCanvasSize();
          v38 = v93 / v94;
        }

        LOBYTE(v35) = LOBYTE(v38);
      }

      v95 = a10;
      v301 = CGRect.aspectFit(ratio:)(*(&v35 - 2));
      x = v301.origin.x;
      y = v301.origin.y;
      v44 = v301.size.width;
      height = v301.size.height;
      if (a7)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v44 = *(a6 + 56);
      height = *(a6 + 64);
      x = *(a6 + 40);
      y = *(a6 + 48);
      if (a7)
      {
LABEL_41:
        v302.origin.x = x;
        v302.origin.y = y;
        v302.size.width = v44;
        v302.size.height = height;
        MaxX = CGRectGetMaxX(v302);
        v303.origin.x = x;
        v303.origin.y = y;
        v303.size.width = v44;
        v303.size.height = height;
        [v33 translateByX:MaxX + CGRectGetMinX(v303) Y:0.0];
        [v33 scaleByX:-1.0 Y:1.0];
      }
    }

    v97 = *(a6 + 16);
    v98 = *(a6 + 24);
    v283 = a9;
    if (v98)
    {
      v271 = v31;
      v270 = v30;
      if (v98 == 1)
      {
        if (*(a8 + 202))
        {
          v99 = 0;
        }

        else
        {
          v99 = 8;
        }

        sub_1B15C9418(a6, &v288);
        v100 = (LOBYTE(v285) & 1) != 0 && [v33 profile] != 2;
        v110 = v281;
        v121 = sub_1B15E309C(v100);
        if (qword_1EDB30310 != -1)
        {
          swift_once();
        }

        v265 = *(&xmmword_1EDB30318 + 1);
        *&v285 = xmmword_1EDB30318;
        v122 = *&qword_1EDB30328;
        *&v264 = unk_1EDB30330;
        v308.origin.x = x;
        v308.origin.y = y;
        v308.size.width = v44;
        v308.size.height = height;
        MinX = CGRectGetMinX(v308);
        v309.origin.x = x;
        v309.origin.y = y;
        v309.size.width = v44;
        v309.size.height = height;
        MinY = CGRectGetMinY(v309);
        v288.a = 1.0;
        v288.b = 0.0;
        v288.c = 0.0;
        v288.d = 1.0;
        v288.ty = 0.0;
        v288.tx = 0.0;
        CGAffineTransformTranslate(&v287, &v288, MinX, MinY);
        tx = v287.tx;
        ty = v287.ty;
        v263 = *&v287.a;
        v262 = *&v287.c;
        v310.origin.x = x;
        v310.origin.y = y;
        v310.size.width = v44;
        v310.size.height = height;
        v127 = CGRectGetWidth(v310);
        v311.origin.x = x;
        v311.origin.y = y;
        v311.size.width = v44;
        v311.size.height = height;
        v128 = CGRectGetHeight(v311);
        *&v288.c = v262;
        *&v288.a = v263;
        v288.tx = tx;
        v288.ty = ty;
        CGAffineTransformScale(&v287, &v288, v127, v128);
        v129 = v287.tx;
        v130 = v287.ty;
        v131 = v285;
        *&v285 = v131;
        v132 = v265;
        *&v265 = v132;
        *&ty = v122;
        *&v122 = *&v264;
        v264 = *&v287.a;
        v263 = *&v287.c;
        CGImage = RBImageMakeCGImage();
        v135 = v134;
        [v34 setRect_];
        *&v288.c = v263;
        *&v288.a = v264;
        v288.tx = v129;
        v288.ty = v130;
        LODWORD(v136) = LODWORD(v265);
        LODWORD(v137) = LODWORD(ty);
        LODWORD(v138) = LODWORD(v122);
        [*&v284 setRBImage:CGImage transform:v135 interpolation:&v288 tintColor:9 colorSpace:3 flags:{v99, COERCE_DOUBLE(__PAIR64__(DWORD1(v264), LODWORD(v285))), v136, v137, v138}];
        LODWORD(v139) = 1.0;
        [v33 drawShape:v34 fill:*&v284 alpha:0 blendMode:v139];
        [v34 setRenderingMode_];
        sub_1B15CB1E8(a6);

        LODWORD(v285) = 0;
      }

      else
      {
        if (*(a12 + 96) <= 0xFDu)
        {
          sub_1B15C9418(a6, &v288);
          v151 = sub_1B15D7878(v97);
          LODWORD(v152) = 1.0;
          v153 = [v33 beginCGContextWithAlpha_];
          CGSVGDocumentGetCanvasSize();
          v155 = v154;
          v157 = v156;
          v316.origin.x = x;
          v316.origin.y = y;
          v316.size.width = v44;
          v316.size.height = height;
          v158 = CGRectGetMinX(v316);
          v317.origin.x = x;
          v317.origin.y = y;
          v317.size.width = v44;
          v317.size.height = height;
          v159 = CGRectGetMinY(v317);
          CGContextTranslateCTM(v153, v158, v159);
          v318.origin.x = x;
          v318.origin.y = y;
          v318.size.width = v44;
          v318.size.height = height;
          v160 = CGRectGetWidth(v318) / v155;
          v319.origin.x = x;
          v319.origin.y = y;
          v319.size.width = v44;
          v319.size.height = height;
          v161 = CGRectGetHeight(v319);
          CGContextScaleCTM(v153, v160, v161 / v157);
          CGContextTranslateCTM(v153, 0.0, v157);
          CGContextScaleCTM(v153, 1.0, -1.0);
          CGContextDrawSVGDocument();
          [v33 endCGContext];

          sub_1B15CB1E8(a6);
        }

        else
        {
          sub_1B15C9418(a6, &v288);
          LODWORD(v111) = 1.0;
          v112 = [v33 beginCGContextWithAlpha_];
          CGSVGDocumentGetCanvasSize();
          v114 = v113;
          v116 = v115;
          v304.origin.x = x;
          v304.origin.y = y;
          v304.size.width = v44;
          v304.size.height = height;
          v117 = CGRectGetMinX(v304);
          v305.origin.x = x;
          v305.origin.y = y;
          v305.size.width = v44;
          v305.size.height = height;
          v118 = CGRectGetMinY(v305);
          CGContextTranslateCTM(v112, v117, v118);
          v306.origin.x = x;
          v306.origin.y = y;
          v306.size.width = v44;
          v306.size.height = height;
          v119 = CGRectGetWidth(v306) / v114;
          v307.origin.x = x;
          v307.origin.y = y;
          v307.size.width = v44;
          v307.size.height = height;
          v120 = CGRectGetHeight(v307);
          CGContextScaleCTM(v112, v119, v120 / v116);
          CGContextTranslateCTM(v112, 0.0, v116);
          CGContextScaleCTM(v112, 1.0, -1.0);
          CGContextDrawSVGDocument();
          [v33 endCGContext];

          sub_1B15CB1E8(a6);
          LODWORD(v285) = 0;
        }

        v110 = v281;
      }

      v31 = v271;
      v30 = v270;
    }

    else
    {
      sub_1B15C9418(a6, &v288);
      if (qword_1EDB30338 != -1)
      {
        swift_once();
      }

      v101 = *&xmmword_1EDB30340;
      v102 = *(&xmmword_1EDB30340 + 1);
      v103 = *&qword_1EDB30350;
      v104 = unk_1EDB30358;
      [v34 setPath_];
      *&v105 = v101;
      *&v106 = v102;
      *&v107 = v103;
      *&v108 = v104;
      [*&v284 setColor:3 colorSpace:{v105, v106, v107, v108}];
      LODWORD(v109) = 1.0;
      [v33 drawShape:v34 fill:*&v284 alpha:0 blendMode:v109];
      [v34 setRenderingMode_];
      sub_1B15CB1E8(a6);
      v110 = v281;
    }

    [a3 save];
    [a3 beginLayer];
    [a3 drawDisplayList_];
    LODWORD(v162) = 1.0;
    [a3 clipLayerWithAlpha:0 mode:v162];
    [v33 boundingRect];
    v167 = v163;
    v168 = v164;
    v169 = v165;
    v170 = v166;
    if (!(v21 >> 6))
    {
      v173 = v277;
      v174 = v278;
      v175 = v279;
      v176 = *&v280;
      [v282 setRect_];
      *&v177 = v173;
      *&v178 = v174;
      *&v179 = v175;
      *&v180 = v176;
      [v286 setColor:3 colorSpace:{v177, v178, v179, v180}];
      HIDWORD(v181) = HIDWORD(v283);
      *&v181 = v283;
      [a3 drawShape:v282 fill:v286 alpha:v110 blendMode:v181];
      [v282 setRenderingMode_];
LABEL_86:
      [a3 restore];

      v20 = LOBYTE(v285);
      return v20 & 1;
    }

    if (v21 >> 6 != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
      v182 = swift_allocObject();
      *(v182 + 16) = xmmword_1B161CC80;
      v183 = v278;
      *(v182 + 32) = v277;
      *(v182 + 40) = v183;
      v184 = v280;
      *(v182 + 48) = v279;
      *(v182 + 56) = v184;
      v185 = v272;
      *(v182 + 64) = 0;
      *(v182 + 72) = v185;
      v186 = v274;
      *(v182 + 80) = v273;
      *(v182 + 88) = v186;
      *(v182 + 96) = v276;
      *(v182 + 104) = 0x3FF0000000000000;
      if (v21)
      {
        if (qword_1EDB2F430 != -1)
        {
          swift_once();
        }

        v187 = v34;
        v30 = *(&xmmword_1EDB2F438 + 1);
        v188 = *&xmmword_1EDB2F438;
        v189 = *&qword_1EDB2F448;
        v31 = unk_1EDB2F450;
      }

      else
      {
        v187 = v34;
        *&v188 = v275 | ((v268 | ((v266 | (v267 << 16)) << 32)) << 8);
        v189 = v269;
      }

      v324.origin.x = v167;
      v324.origin.y = v168;
      v324.size.width = v169;
      v324.size.height = v170;
      *&v281 = v167 + v188 * CGRectGetWidth(v324);
      v325.origin.x = v167;
      v325.origin.y = v168;
      v325.size.width = v169;
      v325.size.height = v170;
      v218 = v168 + v30 * CGRectGetHeight(v325);
      v326.origin.x = v167;
      v326.origin.y = v168;
      v326.size.width = v169;
      v326.size.height = v170;
      v219 = v167 + v189 * CGRectGetWidth(v326);
      v327.origin.x = v167;
      v327.origin.y = v168;
      v327.size.width = v169;
      v327.size.height = v170;
      v220 = v168 + v31 * CGRectGetHeight(v327);
      v221 = v282;
      [v282 setRect_];
      v222 = v286;
      swift_bridgeObjectRetain_n();
      v223 = v222;
      v224 = MEMORY[0x1EEE9AC00](v223);
      swift_bridgeObjectRetain_n();
      v225 = v224;
      v226 = MEMORY[0x1EEE9AC00](v225);
      v227 = *(v182 + 96);
      v229 = *(v182 + 48);
      v228 = *(v182 + 64);
      v230 = *(v182 + 32);
      v231 = vextq_s8(v230, *(v182 + 80), 8uLL);
      v230.f64[1] = *(v182 + 72);
      v232 = vextq_s8(v229, v227, 8uLL);
      v229.f64[1] = *(v182 + 88);
      v328.val[0] = vcvt_f32_f64(v230);
      v328.val[1] = vcvt_f32_f64(v231);
      v328.val[2] = vcvt_f32_f64(v229);
      v328.val[3] = vcvt_f32_f64(v232);
      vst4_f32(v261, v328);
      [v226 setAxialGradientStartPoint:*(v182 + 16) endPoint:v261 stopCount:3 colors:*&v281 colorSpace:v218 locations:v219 flags:{v220, v228, v227.i64[1]}];
      swift_bridgeObjectRelease_n();

      swift_bridgeObjectRelease_n();
      HIDWORD(v233) = HIDWORD(v283);
      *&v233 = v283;
      [a3 drawShape:v221 fill:v225 alpha:v110 blendMode:v233];
      [v221 setRenderingMode_];
      swift_setDeallocating();
      swift_deallocClassInstance();
      v34 = v187;
      goto LABEL_86;
    }

    v288.a = v277;
    v288.b = v278;
    v288.c = v279;
    *&v288.d = v280;
    v171 = sub_1B15CF528();
    if ((v275 & 1) == 0)
    {
      *&v280 = v272;
      v279 = v273;
      v278 = v274;
      v172 = v276;
      goto LABEL_74;
    }

    if (qword_1EDB2F430 != -1)
    {
      goto LABEL_116;
    }

    while (1)
    {
      v279 = *(&xmmword_1EDB2F438 + 1);
      *&v280 = xmmword_1EDB2F438;
      v172 = unk_1EDB2F450;
      v278 = *&qword_1EDB2F448;
LABEL_74:
      v277 = v172;
      v320.origin.x = v167;
      v320.origin.y = v168;
      v320.size.width = v169;
      v320.size.height = v170;
      v190 = CGRectGetWidth(v320);
      v321.origin.x = v167;
      v321.origin.y = v168;
      v321.size.width = v169;
      v321.size.height = v170;
      v191 = CGRectGetHeight(v321);
      v322.origin.x = v167;
      v322.origin.y = v168;
      v322.size.width = v169;
      v322.size.height = v170;
      v192 = CGRectGetWidth(v322);
      v323.origin.x = v167;
      v323.origin.y = v168;
      v323.size.width = v169;
      v323.size.height = v170;
      v193 = CGRectGetHeight(v323);
      [v282 setRect_];
      v194 = *(v171 + 2);
      if (!(v194 >> 59))
      {
        break;
      }

      __break(1u);
LABEL_116:
      swift_once();
    }

    v195 = v167 + *&v280 * v190;
    v196 = v168 + v279 * v191;
    v197 = v167 + v278 * v192;
    v198 = v168 + v277 * v193;
    v199 = v286;
    swift_bridgeObjectRetain_n();
    isStackAllocationSafe = v199;
    v201 = isStackAllocationSafe;
    if ((16 * v194) >= 1025)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v257 = swift_slowAlloc();
        v258 = v201;

        sub_1B160E574(v257, v194, v171, v258, v171, v195, v196, v197, v198);
        MEMORY[0x1B2730CA0](v257, -1, -1);
        v207 = v283;
        goto LABEL_83;
      }
    }

    v286 = &v262;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v203 = (&v262 - v202);
    v204 = v201;
    swift_bridgeObjectRetain_n();
    v205 = v204;
    v206 = v205;
    v207 = v283;
    if (v194 >= 0x81)
    {
      v205 = swift_stdlib_isStackAllocationSafe();
      if ((v205 & 1) == 0)
      {
        v259 = swift_slowAlloc();
        v260 = v206;

        sub_1B160EF8C(v259, v194, v171, v203, v194, v260, v171);
        MEMORY[0x1B2730CA0](v259, -1, -1);
        swift_bridgeObjectRelease_n();

        v110 = v281;
        goto LABEL_83;
      }
    }

    MEMORY[0x1EEE9AC00](v205);
    v209 = &v262 - v208;
    if (v194)
    {
      if (v194 > 7)
      {
        v210 = 0;
        v235 = v171 + 32;
        v236 = &v203[4 * v194];
        v237 = &v209[8 * v194];
        v238 = &v171[40 * v194 + 32];
        v240 = v203 < v238 && v235 < v236;
        v242 = v209 < v238 && v235 < v237;
        if ((v209 >= v236 || v203 >= v237) && !v240 && !v242)
        {
          v210 = v194 & 0x7FFFFFFFFFFFFFCLL;
          v244 = v194 & 0x7FFFFFFFFFFFFFCLL;
          v245 = v209;
          v246 = v203;
          do
          {
            v248 = *v235;
            v247 = *(v235 + 1);
            v250 = *(v235 + 6);
            v249 = *(v235 + 7);
            v251 = *(v235 + 5);
            v252 = vextq_s8(v251, *(v235 + 8), 8uLL);
            v251.f64[1] = *(v235 + 15);
            v253 = *(v235 + 2);
            *(&v249 + 1) = *(v235 + 19);
            v248.f64[1] = *(v235 + 5);
            *(&v253 + 1) = *(v235 + 9);
            v329.val[1] = vcvt_hight_f32_f64(vcvt_f32_f64(vextq_s8(*v235, *(v235 + 3), 8uLL)), v252);
            v254 = vcvt_f32_f64(v248);
            v255 = vextq_s8(v250, *(v235 + 9), 8uLL);
            v250.f64[1] = *(v235 + 17);
            v256 = vextq_s8(v247, *(v235 + 4), 8uLL);
            v247.f64[1] = *(v235 + 7);
            v329.val[0] = vcvt_hight_f32_f64(v254, v251);
            v329.val[3] = vcvt_hight_f32_f64(vcvt_f32_f64(v256), v255);
            v329.val[2] = vcvt_hight_f32_f64(vcvt_f32_f64(v247), v250);
            vst4q_f32(v246, v329);
            v246 += 16;
            *v245 = v253;
            *(v245 + 1) = v249;
            v245 += 32;
            v235 += 160;
            v244 -= 4;
          }

          while (v244);
          if (v194 == v210)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        v210 = 0;
      }

      v211 = v194 - v210;
      v212 = &v209[8 * v210];
      v213 = &v203[4 * v210];
      v214 = &v171[40 * v210 + 64];
      do
      {
        v215 = v214->f64[0];
        *v213++ = vcvt_hight_f32_f64(vcvt_f32_f64(v214[-2]), v214[-1]);
        *v212 = v215;
        v212 += 8;
        v214 = (v214 + 40);
        --v211;
      }

      while (v211);
    }

LABEL_82:
    [v206 setAxialGradientStartPoint:*(v171 + 2) endPoint:v203 stopCount:3 colors:v195 colorSpace:v196 locations:v197 flags:v198];
    swift_bridgeObjectRelease_n();

    v110 = v281;
LABEL_83:

    swift_bridgeObjectRelease_n();
    *&v216 = v207;
    v217 = v282;
    [a3 drawShape:v282 fill:v201 alpha:v110 blendMode:v216];
    [v217 setRenderingMode_];

    goto LABEL_86;
  }

  [a3 beginLayerWithFlags_];
  if (*(a6 + 72))
  {
    v22 = *(a6 + 24);
    if (*(a6 + 24))
    {
      v23 = *(a6 + 16);
      if (v22 == 1)
      {
        v24 = CGImageGetWidth(*(a6 + 16));
        v25 = v24 / CGImageGetHeight(v23);
      }

      else
      {
        CGSVGDocumentGetCanvasSize();
        v25 = v47 / v48;
      }

      LOBYTE(v22) = LOBYTE(v25);
    }

    v49 = a10;
    v290 = CGRect.aspectFit(ratio:)(*(&v22 - 2));
    v42 = v290.origin.x;
    v41 = v290.origin.y;
    v40 = v290.size.width;
    v39 = v290.size.height;
    if ((a7 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v40 = *(a6 + 56);
    v39 = *(a6 + 64);
    v42 = *(a6 + 40);
    v41 = *(a6 + 48);
    if ((a7 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  v291.origin.x = v42;
  v291.origin.y = v41;
  v291.size.width = v40;
  v291.size.height = v39;
  v50 = CGRectGetMaxX(v291);
  v292.origin.x = v42;
  v292.origin.y = v41;
  v292.size.width = v40;
  v292.size.height = v39;
  [a3 translateByX:v50 + CGRectGetMinX(v292) Y:0.0];
  [a3 scaleByX:-1.0 Y:1.0];
LABEL_22:
  v51 = *(a6 + 16);
  if (*(a6 + 24))
  {
    if (*(a6 + 24) == 1)
    {
      if (*(a8 + 202))
      {
        v52 = 0;
      }

      else
      {
        v52 = 8;
      }

      sub_1B15C9418(a6, &v288);
      v53 = (a11 & 1) != 0 && [a3 profile] != 2;
      v283 = a9;
      v74 = sub_1B15E309C(v53);
      if (qword_1EDB30310 != -1)
      {
        swift_once();
      }

      v284 = *(&xmmword_1EDB30318 + 1);
      *&v285 = xmmword_1EDB30318;
      v75 = *&qword_1EDB30328;
      *&v282 = unk_1EDB30330;
      v297.origin.x = v42;
      v297.origin.y = v41;
      v297.size.width = v40;
      v297.size.height = v39;
      v76 = CGRectGetMinX(v297);
      v298.origin.x = v42;
      v298.origin.y = v41;
      v298.size.width = v40;
      v298.size.height = v39;
      v77 = CGRectGetMinY(v298);
      v288.a = 1.0;
      v288.b = 0.0;
      v288.c = 0.0;
      v288.d = 1.0;
      v288.ty = 0.0;
      v288.tx = 0.0;
      CGAffineTransformTranslate(&v287, &v288, v76, v77);
      v78 = v287.tx;
      v79 = v287.ty;
      v281 = *&v287.a;
      v280 = *&v287.c;
      v299.origin.x = v42;
      v299.origin.y = v41;
      v299.size.width = v40;
      v299.size.height = v39;
      v80 = CGRectGetWidth(v299);
      v300.origin.x = v42;
      v300.origin.y = v41;
      v300.size.width = v40;
      v300.size.height = v39;
      v81 = CGRectGetHeight(v300);
      *&v288.c = v280;
      *&v288.a = v281;
      v288.tx = v78;
      v288.ty = v79;
      CGAffineTransformScale(&v287, &v288, v80, v81);
      v82 = v287.tx;
      v83 = v287.ty;
      v84 = v285;
      *&v285 = v84;
      v85 = v284;
      *&v284 = v85;
      *&v79 = v75;
      *&v75 = *&v282;
      v282 = *&v287.a;
      v281 = *&v287.c;
      v86 = RBImageMakeCGImage();
      v88 = v87;
      [a5 setRect_];
      *&v288.c = v281;
      *&v288.a = v282;
      v288.tx = v82;
      v288.ty = v83;
      LODWORD(v89) = LODWORD(v284);
      LODWORD(v90) = LODWORD(v79);
      LODWORD(v91) = LODWORD(v75);
      [v286 setRBImage:v86 transform:v88 interpolation:&v288 tintColor:9 colorSpace:3 flags:{v52, COERCE_DOUBLE(__PAIR64__(DWORD1(v282), LODWORD(v285))), v89, v90, v91}];
      LODWORD(v92) = 1.0;
      [a3 drawShape:a5 fill:v286 alpha:0 blendMode:v92];
      [a5 setRenderingMode_];
      sub_1B15CB1E8(a6);

      v20 = 0;
      a9 = v283;
    }

    else if (*(a12 + 96) <= 0xFDu)
    {
      sub_1B15C9418(a6, &v288);
      v140 = sub_1B15D7878(v51);
      LODWORD(v141) = 1.0;
      v142 = [a3 beginCGContextWithAlpha_];
      CGSVGDocumentGetCanvasSize();
      v144 = v143;
      v146 = v145;
      v312.origin.x = v42;
      v312.origin.y = v41;
      v312.size.width = v40;
      v312.size.height = v39;
      v147 = CGRectGetMinX(v312);
      v313.origin.x = v42;
      v313.origin.y = v41;
      v313.size.width = v40;
      v313.size.height = v39;
      v148 = CGRectGetMinY(v313);
      CGContextTranslateCTM(v142, v147, v148);
      v314.origin.x = v42;
      v314.origin.y = v41;
      v314.size.width = v40;
      v314.size.height = v39;
      v149 = CGRectGetWidth(v314) / v144;
      v315.origin.x = v42;
      v315.origin.y = v41;
      v315.size.width = v40;
      v315.size.height = v39;
      v150 = CGRectGetHeight(v315);
      CGContextScaleCTM(v142, v149, v150 / v146);
      CGContextTranslateCTM(v142, 0.0, v146);
      CGContextScaleCTM(v142, 1.0, -1.0);
      CGContextDrawSVGDocument();
      [a3 endCGContext];

      sub_1B15CB1E8(a6);
    }

    else
    {
      sub_1B15C9418(a6, &v288);
      LODWORD(v64) = 1.0;
      v65 = [a3 beginCGContextWithAlpha_];
      CGSVGDocumentGetCanvasSize();
      v67 = v66;
      v69 = v68;
      v293.origin.x = v42;
      v293.origin.y = v41;
      v293.size.width = v40;
      v293.size.height = v39;
      v70 = CGRectGetMinX(v293);
      v294.origin.x = v42;
      v294.origin.y = v41;
      v294.size.width = v40;
      v294.size.height = v39;
      v71 = CGRectGetMinY(v294);
      CGContextTranslateCTM(v65, v70, v71);
      v295.origin.x = v42;
      v295.origin.y = v41;
      v295.size.width = v40;
      v295.size.height = v39;
      v72 = CGRectGetWidth(v295) / v67;
      v296.origin.x = v42;
      v296.origin.y = v41;
      v296.size.width = v40;
      v296.size.height = v39;
      v73 = CGRectGetHeight(v296);
      CGContextScaleCTM(v65, v72, v73 / v69);
      CGContextTranslateCTM(v65, 0.0, v69);
      CGContextScaleCTM(v65, 1.0, -1.0);
      CGContextDrawSVGDocument();
      [a3 endCGContext];

      sub_1B15CB1E8(a6);
      v20 = 0;
    }
  }

  else
  {
    sub_1B15C9418(a6, &v288);
    if (qword_1EDB30338 != -1)
    {
      swift_once();
    }

    v54 = *&xmmword_1EDB30340;
    v55 = *(&xmmword_1EDB30340 + 1);
    v56 = *&qword_1EDB30350;
    v57 = unk_1EDB30358;
    [a5 setPath_];
    *&v58 = v54;
    *&v59 = v55;
    *&v60 = v56;
    *&v61 = v57;
    [v286 setColor:3 colorSpace:{v58, v59, v60, v61}];
    LODWORD(v62) = 1.0;
    [a3 drawShape:a5 fill:v286 alpha:0 blendMode:v62];
    [a5 setRenderingMode_];
    sub_1B15CB1E8(a6);
  }

  *&v63 = a9;
  [a3 drawLayerWithAlpha:a2 blendMode:v63];
  return v20 & 1;
}

id sub_1B16112DC(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v23 = *(a2 + 24);
  if (qword_1EDB30338 != -1)
  {
    swift_once();
  }

  v4 = *MEMORY[0x1E695F198];
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F198]);
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  RBColorAdd();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (qword_1EDB30310 != -1)
  {
    swift_once();
  }

  v12 = CGColorSpaceCreateWithName(v4);
  if (!v12)
  {
LABEL_9:
    __break(1u);
  }

  v13 = v23;
  *&v22 = 1.0 - v13;
  *(&v22 + 1) = v13;
  RBColorAdd();
  v15 = v14 - v7;
  v17 = v16 - v9;
  v19 = v18 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7530E0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B161CD50;
  *(v20 + 32) = v15;
  *(v20 + 36) = 0;
  *(v20 + 44) = 0;
  *(v20 + 48) = v7;
  *(v20 + 52) = 0;
  *(v20 + 56) = v17;
  *(v20 + 60) = 0;
  *(v20 + 68) = v9;
  *(v20 + 72) = 0;
  *(v20 + 80) = v19;
  *(v20 + 84) = 0;
  *(v20 + 88) = v11;
  *(v20 + 92) = xmmword_1B161CD40;
  *(v20 + 108) = 0;
  sub_1B15D08AC(v20, sub_1B15D0A44, 0, v24, 20);

  return [a3 addColorMatrixFilterWithArray:v24 flags:{0, v22}];
}

unint64_t sub_1B1611564()
{
  result = qword_1EDB2F350;
  if (!qword_1EDB2F350)
  {
    type metadata accessor for CGPath(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F350);
  }

  return result;
}

__n128 sub_1B16115BC(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B161CC80;
  *(v4 + 32) = a1;
  *(v4 + 40) = a1;
  *(v4 + 48) = a1;
  *(v4 + 56) = xmmword_1B161EF40;
  *(v4 + 72) = a2;
  *(v4 + 80) = a2;
  *(v4 + 88) = a2;
  __asm { FMOV            V0.2D, #1.0 }

  *(v4 + 96) = result;
  return result;
}

uint64_t sub_1B1611630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7530F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_1B16116C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B16116E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1B1611750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B16117A0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = 2 * -a2;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1611850(uint64_t *a1, int a2)
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

uint64_t sub_1B1611898(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy20_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ColorMatrixRow(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayList.ColorMatrixRow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
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

  *(result + 20) = v3;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B1611974(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B16119BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Fill.ImageMode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Fill.ImageMode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1B1611A90(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1611AAC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

double sub_1B1611AF0@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDB2FB50 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDB2FB68;
  *(a1 + 32) = 1;
  *(a1 + 34) = 0;
  *(a1 + 40) = xmmword_1B161E0A0;
  *(a1 + 56) = 513;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = xmmword_1EDB2FB58;
  *(a1 + 24) = v2;
  *(a1 + 80) = xmmword_1B1620DA0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 152) = _Q0;
  *(a1 + 168) = xmmword_1B1620DB0;
  *(a1 + 184) = 1;
  *(a1 + 188) = xmmword_1B1620DC0;
  *(a1 + 204) = 1025507325;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 208) = 0u;
  v8 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v9 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v10 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  *(a1 + 264) = v8;
  *(a1 + 272) = v9;
  *(a1 + 280) = v10;
  result = 0.0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0x3FF0000000000000;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  return result;
}

void sub_1B1611C64()
{
  v1 = v0;
  v29 = *MEMORY[0x1E69E9840];
  v0[47] = 0x3FF0000000000000;
  v0[48] = 0;
  v0[49] = 0;
  v0[50] = 0x3FF0000000000000;
  v0[51] = 0;
  v0[52] = 0;
  v2 = *(v0 + 43);
  v3 = *(v0 + 44);
  v4 = *(v0 + 45);
  v5 = *(v0 + 46);
  v30.origin.x = v2;
  v30.origin.y = v3;
  v30.size.width = v4;
  v30.size.height = v5;
  if (!CGRectIsEmpty(v30))
  {
    v27.a = 1.0;
    v27.b = 0.0;
    v27.c = 0.0;
    v27.d = 1.0;
    v27.tx = 0.0;
    v27.ty = 0.0;
    CGAffineTransformTranslate(&v26, &v27, v2, v3);
    v6 = *&v26.c;
    v7 = *&v26.tx;
    *(v0 + 47) = *&v26.a;
    *(v0 + 49) = v6;
    *(v0 + 51) = v7;
  }

  if (qword_1EDB2FBF8 != -1)
  {
    swift_once();
  }

  v8 = *&qword_1EDB2FD48;
  v9 = off_1EDB2FD68;
  if (*(off_1EDB2FD68 + 2))
  {
    v10 = sub_1B15C522C(0);
    if (v11)
    {
      v12 = v9[7] + 888 * v10;
      if (!*(v12 + 8))
      {
        v8 = *v12;
      }
    }
  }

  v13 = v8 * 0.0009765625;
  v31.origin.x = v2;
  v31.origin.y = v3;
  v31.size.width = v4;
  v31.size.height = v5;
  Width = CGRectGetWidth(v31);
  v32.origin.x = v2;
  v32.origin.y = v3;
  v32.size.width = v4;
  v32.size.height = v5;
  Height = CGRectGetHeight(v32);
  if (Height >= Width)
  {
    Height = Width;
  }

  v27.a = 0.0;
  v27.b = 0.0;
  v16 = v13 * Height;
  v27.c = v4;
  v27.d = v5;
  v27.tx = v13 * Height;
  v27.ty = 0.0;
  v28 = 2;
  sub_1B1612568(&v27, (v1 + 26));
  sub_1B15DE770(v1[36], v1[37], v1[38], v1[39], v1[40], v1[41], *(v1 + 336));
  *(v1 + 36) = v2;
  *(v1 + 37) = v3;
  *(v1 + 38) = v4;
  *(v1 + 39) = v5;
  *(v1 + 40) = v16;
  v1[41] = 0;
  *(v1 + 336) = 2;
  v17 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  v18 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
  v19 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
  if (qword_1EDB302F8 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDB30300;
  v21 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
  v22 = sub_1B1619D68();
  v23 = [v21 initWithLibrary:v20 function:v22];

  v26.a = --0.0000305175998;
  [v23 setArgumentBytes:&v26 atIndex:0 type:2 count:1 flags:0];
  [v17 addFilterWithShader:v23 border:0 bounds:64 flags:{4.0, 4.0}];

  [v17 beginLayer];
  [v17 beginLayer];
  sub_1B1612020(v17, v18, v19);
  LODWORD(v24) = 1.0;
  [v17 drawLayerWithAlpha:1006 blendMode:v24];
  LODWORD(v25) = 1.0;
  [v17 drawLayerWithAlpha:0 blendMode:v25];

  v1[33] = v17;
  v1[34] = v18;
  v1[35] = v19;
}

id sub_1B1612020(void *a1, void *a2, void *a3)
{
  if (qword_1EDB30310 != -1)
  {
    swift_once();
  }

  v6 = *&xmmword_1EDB30318;
  v7 = *(&xmmword_1EDB30318 + 1);
  v8 = *&qword_1EDB30328;
  v9 = unk_1EDB30330;
  sub_1B160E3D0(a3, *&xmmword_1EDB30318);
  *&v10 = v6;
  *&v11 = v7;
  *&v12 = v8;
  *&v13 = v9;
  [a2 setColor:3 colorSpace:{v10, v11, v12, v13}];
  [a3 setRenderingMode_];
  [a3 setRenderingModeArgument_];
  LODWORD(v14) = 1064346583;
  [a1 drawShape:a3 fill:a2 alpha:27 blendMode:v14];
  [a3 setRenderingMode_];
  sub_1B160E3D0(a3, v15);
  *&v16 = v6;
  *&v17 = v7;
  *&v18 = v8;
  *&v19 = v9;
  [a2 setColor:3 colorSpace:{v16, v17, v18, v19}];
  [a3 setRenderingMode_];
  [a3 setRenderingModeArgument_];
  LODWORD(v20) = 1031127695;
  [a1 drawShape:a3 fill:a2 alpha:27 blendMode:v20];
  return [a3 setRenderingMode_];
}

id sub_1B16121E0(id result, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 144);
  v4 = *(v2 + 168);
  v37 = *(v2 + 152);
  v5 = *(v2 + 184);
  v6 = *(v2 + 188);
  v7 = *(v2 + 196);
  v8 = *(v2 + 200);
  v9 = *(v2 + 204);
  v10 = *(v2 + 264);
  v11 = *(v2 + 304);
  v44 = *(v2 + 288);
  v45 = v11;
  v46 = *(v2 + 320);
  v47 = *(v2 + 336);
  if (v5 == 1)
  {
    v13 = result;
    v14 = *(v2 + 408);
    v34 = *(v2 + 416);
    v16 = *(v2 + 360);
    v15 = *(v2 + 368);
    v18 = *(v2 + 344);
    v17 = *(v2 + 352);
    v36 = v4;
    v35 = v6;
    [result save];
    sub_1B160E3D0(a2, v19);
    LODWORD(v20) = 1.0;
    [v13 clipShape:a2 alpha:0 mode:v20];
    v49.origin.x = v18;
    v49.origin.y = v17;
    v49.size.width = v16;
    v49.size.height = v15;
    Height = CGRectGetHeight(v49);
    v22 = v7 * Height;
    v50.origin.x = v18;
    v50.origin.y = v17;
    v50.size.width = v16;
    v50.size.height = v15;
    v23 = CGRectGetHeight(v50);
    v24 = v8 * v23;
    v51.origin.x = v18;
    v51.origin.y = v17;
    v51.size.width = v16;
    v51.size.height = v15;
    v25 = CGRectGetHeight(v51) * v9;
    [v13 beginLayer];
    v26 = *(v2 + 392);
    v40[0] = *(v2 + 376);
    v40[1] = v26;
    v41 = v14;
    v42 = v34;
    [v13 concat_];
    [v13 addBlurFilterWithRadius:1 opaque:v25];
    [v13 drawDisplayList_];
    LOBYTE(v40[0]) = v3;
    sub_1B15DE360(v40, v13, v22, v24);
    v52.origin.x = v18;
    v52.origin.y = v17;
    v52.size.width = v16;
    v52.size.height = v15;
    [v13 addBlurFilterWithRadius:1 opaque:CGRectGetHeight(v52) * v35];
    [v13 beginLayerWithFlags_];
    LODWORD(v27) = 1.0;
    [v13 drawLayerWithAlpha:0 blendMode:v27];
    result = [v13 restore];
    if (v36.n128_f64[1] != 0.0)
    {
      if (v3)
      {
        v28 = sub_1B161A448();

        if ((v28 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
      }

      [v13 save];
      sub_1B160E3D0(a2, v29);
      LODWORD(v30) = 1.0;
      [v13 clipShape:a2 alpha:0 mode:v30];
      v39[0] = v37;
      v39[1] = v36;
      v38 = v3;
      sub_1B15D760C(v39, &v38, v40);
      sub_1B15D7328();
      v32 = *(v31 + 16);
      if (v32)
      {
        if (v32 > 0x14)
        {
          __break(1u);
        }

        memcpy(__dst, (v31 + 32), 4 * v32);
      }

      [v13 addColorMatrixFilterWithArray:__dst flags:0];
      [v13 beginLayerWithFlags_];
      LODWORD(v33) = 1.0;
      [v13 drawLayerWithAlpha:0 blendMode:v33];
      return [v13 restore];
    }
  }

  return result;
}

uint64_t sub_1B16125CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 424))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 264);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1612614(uint64_t result, int a2, int a3)
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
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
      *(result + 424) = 1;
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
      *(result + 264) = (a2 - 1);
      return result;
    }

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ICRRenderingParameters.SizeClass.Thresholds.sizeClass(from:)(char *a1@<X8>, double a2@<D0>)
{
  if (*v2 <= a2)
  {
    if (v2[1] <= a2)
    {
      if (v2[2] <= a2)
      {
        v3 = 3;
      }

      else
      {
        v3 = 2;
      }

      *a1 = v3;
    }

    else
    {
      *a1 = 1;
    }
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t ICRRenderingParameters.SizeClass.description.getter()
{
  v1 = 0x6C6C616D53;
  v2 = 0x656772614CLL;
  if (*v0 != 2)
  {
    v2 = 0x79616C70736944;
  }

  if (*v0)
  {
    v1 = 0x6D756964654DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ICRRenderingParameters.SizeClass.hashValue.getter()
{
  v1 = *v0;
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  return sub_1B161A4F8();
}

uint64_t sub_1B1612870()
{
  v1 = 0x6C6C616D53;
  v2 = 0x656772614CLL;
  if (*v0 != 2)
  {
    v2 = 0x79616C70736944;
  }

  if (*v0)
  {
    v1 = 0x6D756964654DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B16128E4()
{
  result = qword_1EB7530F8;
  if (!qword_1EB7530F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB753100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7530F8);
  }

  return result;
}

unint64_t sub_1B1612948()
{
  result = qword_1EB753108;
  if (!qword_1EB753108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB753108);
  }

  return result;
}

id sub_1B1612A10(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    v4 = [v3 imageByApplyingCGOrientation_];
    v5 = a1;
    v6 = 1;
  }

  else
  {
    v7 = qword_1EDB2F378;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = sub_1B1619D18();
    __swift_project_value_buffer(v8, qword_1EDB2F380);
    v9 = sub_1B1619CF8();
    v10 = sub_1B161A088();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B15BF000, v9, v10, "Attempting to combine GPU-created textures with CIImage logic for the software renderer.", v11, 2u);
      MEMORY[0x1B2730CA0](v11, -1, -1);
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 104);
    if (v13 < 0)
    {
    }

    else
    {
      v14 = *(a1 + 96);
      v15 = *(a1 + 72);
      v16 = *(a1 + 24);
      v17 = *(a1 + 40);
      v18 = *(a1 + 56);
      v28 = *(a1 + 80);
      v19 = v28;
      v23 = v12;
      v24 = v16;
      v25 = v17;
      v26 = v18;
      v27 = v15;
      v29 = v14;
      v30 = v13;
      sub_1B16142E4(&v23, &v22);
    }

    v20 = *(v14 + 80);
    swift_unknownObjectRetain();

    v3 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithMTLTexture:v20 options:0];
    swift_unknownObjectRelease();
    if (!v3)
    {
      sub_1B15C71A8(a1, 0);
      return 0;
    }

    v4 = [v3 imageByApplyingCGOrientation_];
    v5 = a1;
    v6 = 0;
  }

  sub_1B15C71A8(v5, v6);

  return v4;
}

uint64_t sub_1B1612C48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753188);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - v4;
  *(v0 + 112) = 1;
  v6 = *(v0 + 120);
  *(v0 + 120) = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    v10 = *(v2 + 16);
    v8 = v2 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v1, v3);
      sub_1B1619FA8();
      (*(v8 - 8))(v5, v1);
      v11 += v12;
      --v7;
    }

    while (v7);
  }
}

void sub_1B1612DC8(uint64_t a1@<X0>, char a2@<W1>, size_t *a3@<X8>)
{
  if (a2)
  {
    v5 = a1;
    Width = CGImageGetWidth(v5);
    Height = CGImageGetHeight(v5);
    sub_1B15C71A8(a1, 1);
    *a3 = Width;
    a3[1] = Height;
  }

  else
  {
    v8 = *(a1 + 64);
    v9 = *(a1 + 80);
    v10 = *(a1 + 96);
    v33[2] = *(a1 + 48);
    v33[3] = v8;
    v34 = v9;
    v35 = v10;
    v11 = *(a1 + 32);
    v33[0] = *(a1 + 16);
    v33[1] = v11;
    if ((*(&v10 + 1) & 0x8000000000000000) != 0)
    {
      v12 = *&v33[0];
      sub_1B15CB4C4(a1, 0);
      sub_1B15DE844(v33, &v25);
    }

    else
    {
      v12 = v35;
      v13 = v34;
      sub_1B15CB4C4(a1, 0);
      sub_1B15DE844(v33, &v25);
    }

    v14 = [*(v12 + 80) width];

    v15 = *(a1 + 16);
    v16 = *(a1 + 104);
    if (v16 < 0)
    {
    }

    else
    {
      v17 = *(a1 + 96);
      v18 = *(a1 + 72);
      v19 = *(a1 + 24);
      v20 = *(a1 + 40);
      v21 = *(a1 + 56);
      v30 = *(a1 + 80);
      v22 = v30;
      v25 = v15;
      v26 = v19;
      v27 = v20;
      v28 = v21;
      v29 = v18;
      v31 = v17;
      v32 = v16;
      sub_1B16142E4(&v25, &v24);
    }

    v23 = [*(v17 + 80) height];
    sub_1B15C71A8(a1, 0);

    *a3 = v14;
    a3[1] = v23;
  }
}

uint64_t sub_1B1612F5C()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EDB2F380);
  __swift_project_value_buffer(v0, qword_1EDB2F380);
  return sub_1B1619D08();
}

uint64_t sub_1B1612FE0(uint64_t result)
{
  v2 = v1[5];
  v3 = *v1 * v2;
  if ((*v1 * v2) >> 64 != v3 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_14;
  }

  v5 = v3 / result;
  v6 = (v3 % result > 0) | ((v3 % result) >> 63);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (!v7)
  {
    if ((v8 * result) >> 64 == (v8 * result) >> 63)
    {
      result *= v8;
      return result;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1B1613054(char *a1, _OWORD *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  swift_unknownObjectWeakInit();
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  result = swift_unknownObjectWeakAssign();
  *(v5 + 58) = *(a2 + 42);
  v11 = a2[2];
  *(v5 + 32) = a2[1];
  *(v5 + 48) = v11;
  *(v5 + 16) = *a2;
  v12 = *&a1[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes];
  if (v12)
  {
    v13 = *&a1[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes + 8] - v12;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v35[4] = nullsub_1;
    v35[5] = v14;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 1107296256;
    v35[2] = sub_1B161346C;
    v35[3] = &block_descriptor_5;
    v15 = _Block_copy(v35);
    v16 = a1;

    v17 = [a3 newBufferWithBytesNoCopy:v12 length:v13 options:0 deallocator:v15];
    _Block_release(v15);
    if (v17)
    {
      v18 = sub_1B16134CC(a4);
      v19 = *(a2 + 2);
      v20 = [a3 minimumLinearTextureAlignmentForPixelFormat_];
      v21 = [a3 minimumTextureBufferAlignmentForPixelFormat_];
      if (v21 <= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = [v17 newTextureWithDescriptor:v18 offset:0 bytesPerRow:sub_1B1612FE0(v23)];
      if (v24)
      {
        *(v5 + 88) = v24;
        v25 = swift_unknownObjectRetain();
        v26 = sub_1B16135B0(v25);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v26)
        {
          *(v5 + 80) = v26;
          return v5;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EDB2F378 != -1)
        {
          swift_once();
        }

        v31 = sub_1B1619D18();
        __swift_project_value_buffer(v31, qword_1EDB2F380);
        v32 = sub_1B1619CF8();
        v33 = sub_1B161A088();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_1B15BF000, v32, v33, "Could not make MTLTexture referencing MTLBuffer", v34, 2u);
          MEMORY[0x1B2730CA0](v34, -1, -1);
        }

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_1EDB2F378 != -1)
      {
        swift_once();
      }

      v27 = sub_1B1619D18();
      __swift_project_value_buffer(v27, qword_1EDB2F380);
      v28 = sub_1B1619CF8();
      v29 = sub_1B161A088();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1B15BF000, v28, v29, "Could not make MTLBuffer referencing Texture.Buffer", v30, 2u);
        MEMORY[0x1B2730CA0](v30, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    MEMORY[0x1B2730D50](v5 + 96);

    sub_1B16142D4(*(v5 + 112));
    swift_deallocPartialClassInstance();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B161346C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

id sub_1B16134CC(uint64_t a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
  [v3 setWidth_];
  [v3 setHeight_];
  v4 = *(v1 + 32);
  [v3 setPixelFormat_];
  [v3 setTextureType_];
  [v3 setMipmapLevelCount_];
  [v3 setUsage_];
  if ((v4 & 1) == 0)
  {
    [v3 setUsage_];
  }

  return v3;
}

id sub_1B16135B0(void *a1)
{
  if (*(v1 + 32))
  {
    return swift_unknownObjectRetain();
  }

  result = [a1 newTextureViewWithPixelFormat_];
  if (!result)
  {
    if (qword_1EDB2F378 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1619D18();
    __swift_project_value_buffer(v3, qword_1EDB2F380);
    v4 = sub_1B1619CF8();
    v5 = sub_1B161A088();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B15BF000, v4, v5, "Could not make MTLTextureView referencing MTLTexture", v6, 2u);
      MEMORY[0x1B2730CA0](v6, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1B16136B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753188);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1B1619FC8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_1B15DF2B4(0, 0, v10, &unk_1B16212C8, v13);
}

uint64_t sub_1B161389C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753188);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B161396C, a4, 0);
}

uint64_t sub_1B161396C()
{
  v1 = v0[2];
  if (*(v1 + 112) == 1)
  {
    sub_1B1619FA8();
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
    v2 = *(v1 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 120) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_1B16183A8(0, v2[2] + 1, 1, v2);
      *(v1 + 120) = v2;
    }

    v5 = v2[2];
    v4 = v2[3];
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1B16183A8(v4 > 1, v5 + 1, 1, v2);
    }

    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    v2[2] = v5 + 1;
    (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5, v6, v8);
    *(v1 + 120) = v2;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B1613AA8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B1613AF4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1B2730D50](v0 + 96);

  sub_1B16142D4(*(v0 + 112));

  return swift_deallocClassInstance();
}

char *sub_1B1613B94()
{
  sub_1B161A188();
  MEMORY[0x1B272F930](0xD000000000000010, 0x80000001B16228B0);
  v4 = sub_1B161A418();
  v5 = v0;
  MEMORY[0x1B272F930](120, 0xE100000000000000);
  v1 = sub_1B161A418();
  MEMORY[0x1B272F930](v1);

  MEMORY[0x1B272F930](v4, v5);

  MEMORY[0x1B272F930](8236, 0xE200000000000000);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = sub_1B161A418();
  MEMORY[0x1B272F930](v3);

  MEMORY[0x1B272F930](0x6120736574796220, 0xEA00000000002074);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*&result[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes])
  {

    sub_1B161A278();
    MEMORY[0x1B272F930](41, 0xE100000000000000);
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B1613D98(uint64_t *a1, uint64_t *a2)
{
  v3 = 0;
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 2);
  v11 = *(a1 + 1);
  v12[0] = v6;
  *(v12 + 10) = *(a1 + 42);
  v7 = *(a2 + 2);
  v13 = *(a2 + 1);
  v14[0] = v7;
  v9 = *a2;
  v8 = a2[1];
  *(v14 + 10) = *(a2 + 42);
  if (v5 == v9 && v4 == v8)
  {
    v3 = sub_1B1614230(&v11, &v13);
  }

  return v3 & 1;
}

double sub_1B1613E24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B161CC80;
  *(inited + 32) = xmmword_1B16210F0;
  *(inited + 48) = 1;
  *(inited + 56) = 4;
  *(inited + 64) = 0x300000002;
  *(inited + 72) = 0;
  *(inited + 80) = xmmword_1B161D4C0;
  *(inited + 96) = 1;
  *(inited + 104) = 4;
  *(inited + 112) = 3;
  *(inited + 120) = 1;
  v1 = sub_1B1618298(1, 3, 1, inited);
  *(v1 + 2) = 3;
  *(v1 + 8) = xmmword_1B1621100;
  v1[144] = 0;
  *(v1 + 19) = 1;
  *&result = 2;
  *(v1 + 20) = 2;
  v1[168] = 1;
  v1[169] = 1;
  return result;
}

uint64_t sub_1B1613F4C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return sub_1B1614230(&v5, &v7) & 1;
}

id sub_1B1613F98()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes];
  if (v2)
  {
    MEMORY[0x1B2730CA0](v2, -1, -1);
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B16140C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B161410C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B1614178(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 58))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 57);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B16141CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *(result + 57) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B1614230(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return v2 & 1;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v2 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return v2 & 1;
    }

    return (*(a1 + 41) ^ *(a2 + 41) ^ 1) & 1;
  }

  if (*(a1 + 36) != *(a2 + 36))
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  return (*(a1 + 41) ^ *(a2 + 41) ^ 1) & 1;
}

uint64_t sub_1B16142D4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B16142E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1614354(uint64_t a1, id a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = [a2 minimumLinearTextureAlignmentForPixelFormat_];
  v8 = [a2 minimumTextureBufferAlignmentForPixelFormat_];
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  result = sub_1B1612FE0(v10);
  v12 = *(a1 + 8);
  v13 = v12 * result;
  if ((v12 * result) >> 64 == (v12 * result) >> 63)
  {
    v14 = type metadata accessor for Texture.Buffer();
    v15 = objc_allocWithZone(v14);
    v16 = swift_slowAlloc();
    v17 = &v15[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes];
    *v17 = v16;
    v17[1] = v16 + v13;
    v19.receiver = v15;
    v19.super_class = v14;
    v18 = objc_msgSendSuper2(&v19, sel_init);
    type metadata accessor for HardwareTexture();
    swift_allocObject();
    return sub_1B1613054(v18, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1614478(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753188) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B15DEE14;

  return sub_1B161389C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B161457C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1B16145C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1614638(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B161468C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

void sub_1B16146EC(void *a1)
{
  if (!a1)
  {
    sub_1B15F1E78();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 5;
    swift_willThrow();
    return;
  }

  v2 = a1;
  v3 = [objc_msgSend(v2 device)];
  swift_unknownObjectRelease();
  v4 = _s14descr1F2858FF9O9AllocatorCMa();
  v5 = objc_allocWithZone(v4);
  v6 = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtCCV13IconRendering7Texture6Buffer9Allocator_allocatedBuffers] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtCCV13IconRendering7Texture6Buffer9Allocator_alignment] = v3;
  v46.receiver = v5;
  v46.super_class = v4;
  v7 = objc_msgSendSuper2(&v46, sel_init);
  v8 = [v1 sdfTextureWithBufferAllocator_];
  if (!v8)
  {
    sub_1B16165E8();
    swift_allocError();
    swift_willThrow();

    return;
  }

  v9 = v8;
  v10 = [v8 mipmapLevels];
  sub_1B15C17B0(0, &unk_1EDB2FB00);
  v11 = sub_1B1619EF8();

  v12 = sub_1B1615A54(v11);

  v13 = sub_1B1615DD4(v12);

  if (v13 >> 62)
  {
    v14 = sub_1B161A2D8();
    v52 = v2;
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_15:

    goto LABEL_16;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v2;
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1B161A238();
  if (v14 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v15 = 0;
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1B272FCE0](v15, v13);
    }

    else
    {
      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    ++v15;
    v18 = [v16 buffer];

    sub_1B161A218();
    sub_1B161A248();
    sub_1B161A258();
    sub_1B161A228();
  }

  while (v14 != v15);

  v2 = v52;
LABEL_16:
  v6 = OBJC_IVAR____TtCCV13IconRendering7Texture6Buffer9Allocator_allocatedBuffers;
  swift_beginAccess();
  v20 = *&v6[v7];
  if (!(v20 >> 62))
  {
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_18;
    }

LABEL_34:
    v39 = *&v6[v7];
    if (v39 >> 62)
    {
      v40 = sub_1B161A2D8();
    }

    else
    {
      v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1B15F1E78();
    swift_allocError();
    *v41 = v40;
    *(v41 + 8) = 3;
    swift_willThrow();

    return;
  }

LABEL_33:
  if (sub_1B161A2D8() != 1)
  {
    goto LABEL_34;
  }

LABEL_18:
  swift_beginAccess();
  v21 = *&v6[v7];
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v22 = *(v21 + 32);
    goto LABEL_21;
  }

LABEL_38:
  v22 = MEMORY[0x1B272FCE0](0);
LABEL_21:
  v23 = v22;
  v24 = v7;
  swift_endAccess();
  if (qword_1EDB2F4D0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDB32758;
  v25 = *(qword_1EDB32758 + 16);
  if (v25)
  {
    v26 = 0;
    v2 = (qword_1EDB32758 + 40);
    while (1)
    {
      if (v26 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v6 = *(v2 - 1);
      v43 = *v2;
      v44 = v2[1];
      v45 = *(v2 + 16);
      if (v6 == [v9 pixelFormat])
      {
        break;
      }

      ++v26;
      v2 += 3;
      if (v25 == v26)
      {
        goto LABEL_28;
      }
    }

    v29 = v23;
    [v9 dimensions];
    v42 = v30;
    [v9 dimensions];
    v49 = v43;
    v50 = v44;
    v51 = v45;
    *&v32 = v42;
    *(&v32 + 1) = v31;
    v47 = v32;
    v48 = v6;
    v33 = v52;
    v34 = [v52 device];
    type metadata accessor for HardwareTexture();
    swift_allocObject();
    v35 = sub_1B1613054(v29, &v47, v34, 1);
    if (v35)
    {
      v36 = v35;

      type metadata accessor for PooledTexture();
      v37 = swift_allocObject();
      *(v37 + 16) = v36;
      *(v37 + 48) = 0;
      *(v37 + 72) = 0;
      *(v37 + 96) = xmmword_1B16213A0;
      LOBYTE(v47) = 0;
    }

    else
    {
      sub_1B15F1E78();
      swift_allocError();
      *v38 = 2;
      *(v38 + 8) = 5;
      swift_willThrow();
    }
  }

  else
  {
LABEL_28:
    v27 = [v9 pixelFormat];
    sub_1B15F1E78();
    swift_allocError();
    *v28 = v27;
    *(v28 + 8) = 4;
    swift_willThrow();
  }
}

uint64_t sub_1B1614D10()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EDB2F3A0);
  __swift_project_value_buffer(v0, qword_1EDB2F3A0);
  return sub_1B1619D08();
}

uint64_t sub_1B1614D98()
{
  v0 = sub_1B1619D18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1619C98();
  __swift_allocate_value_buffer(v4, qword_1EDB2F3E8);
  __swift_project_value_buffer(v4, qword_1EDB2F3E8);
  if (qword_1EDB2F398 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDB2F3A0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B1619C78();
}

uint64_t sub_1B1614EF4()
{
  receiver = v0[2].receiver;
  v2 = *(receiver + 13);
  v0[2].super_class = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[3].receiver = v3;
    *v3 = v0;
    v3[1] = sub_1B16150A0;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v4 = _s13TXRDataSourceCMa();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_texture] = receiver;
    v6 = &v5[OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_ensureFinished];
    *v6 = 0;
    *(v6 + 1) = 0;
    v0[1].receiver = v5;
    v0[1].super_class = v4;

    v7 = objc_msgSendSuper2(v0 + 1, sel_init);
    v8 = [objc_allocWithZone(MEMORY[0x1E69DA0E0]) initWithDataSourceProvider_];

    super_class = v0->super_class;

    return super_class(v8);
  }
}

uint64_t sub_1B16150A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B161519C, 0, 0);
}

uint64_t sub_1B161519C()
{

  receiver = v0[2].receiver;
  v2 = _s13TXRDataSourceCMa();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_texture] = receiver;
  v4 = &v3[OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_ensureFinished];
  *v4 = 0;
  *(v4 + 1) = 0;
  v0[1].receiver = v3;
  v0[1].super_class = v2;

  v5 = objc_msgSendSuper2(v0 + 1, sel_init);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DA0E0]) initWithDataSourceProvider_];

  super_class = v0->super_class;

  return super_class(v6);
}

void *sub_1B1615304@<X0>(void *a1@<X8>)
{
  v23 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1B1619C68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes);
  v8 = *(v1 + OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes + 8) - v7;
  v22 = v8;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (qword_1EDB2F3E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1619C98();
  __swift_project_value_buffer(v10, qword_1EDB2F3E8);
  sub_1B1619C58();
  v11 = sub_1B1619C88();
  v12 = sub_1B161A0B8();
  if (sub_1B161A0F8())
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v9;
    v14 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v11, v12, v14, "cloning Texture.Buffer", "size: %ld", v13, 0xCu);
    MEMORY[0x1B2730CA0](v13, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v15 = objc_allocWithZone(ObjectType);
  v16 = swift_slowAlloc();
  v17 = &v15[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes];
  *v17 = v16;
  v17[1] = v16 + v9;
  v24.receiver = v15;
  v24.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v24, sel_init);
  result = *&v18[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes];
  if (result)
  {
    v20 = v7 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    result = memmove(result, v7, v22);
  }

  v21 = v23;
  v23[3] = ObjectType;
  *v21 = v18;
  return result;
}

id sub_1B161561C(uint64_t a1)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = v1;
  v5 = type metadata accessor for Texture.Buffer();
  v6 = objc_allocWithZone(v5);
  v7 = swift_slowAlloc();
  v8 = &v6[OBJC_IVAR____TtCV13IconRendering7Texture6Buffer_bytes];
  *v8 = v7;
  v8[1] = v7 + a1;
  v12.receiver = v6;
  v12.super_class = v5;
  v9 = objc_msgSendSuper2(&v12, sel_init);
  v10 = OBJC_IVAR____TtCCV13IconRendering7Texture6Buffer9Allocator_allocatedBuffers;
  swift_beginAccess();
  v2 = v9;
  MEMORY[0x1B272FA00]();
  if (*((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_1B1619F18();
  }

  sub_1B1619F58();
  swift_endAccess();
  return v2;
}

unint64_t sub_1B1615850()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DA0E8]) init];
  [v1 setArrayLength_];
  [v1 setCubemap_];
  v2 = *(v0 + OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_texture);
  result = [*(v2 + 80) width];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (HIDWORD(result))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = [*(v2 + 80) height];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(result))
  {
    [v1 setDimensions_];
    [v1 setMipmapLevelCount_];
    [v1 setPixelFormat_];
    return v1;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1B1615A54(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B272FCE0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject elements];
      sub_1B15C17B0(0, &unk_1EDB2FAF0);
      v8 = sub_1B1619EF8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1B161A2D8();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B161A2D8();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1B161A2D8();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1B161A1C8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B161A2D8();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_1B15F6020(&qword_1EB753390, &qword_1EB753388);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753388);
              v19 = sub_1B16161D4(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1B161A2D8();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1B1615DD4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1B272FCE0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject faces];
      sub_1B15C17B0(0, &qword_1EDB2FAD8);
      v8 = sub_1B1619EF8();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1B161A2D8();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B161A2D8();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1B161A2D8();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1B161A1C8();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1B161A2D8();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_1B15F6020(&unk_1EB753378, &qword_1EB753370);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753370);
              v19 = sub_1B1616154(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1B161A2D8();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

void (*sub_1B1616154(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B272FCE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B161677C;
  }

  __break(1u);
  return result;
}

void (*sub_1B16161D4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B272FCE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B1616254;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B161625C()
{
  v1 = sub_1B1619C68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B1619C98();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_ensureFinished);
  if (!v9)
  {
    goto LABEL_4;
  }

  v22 = v2;
  v23 = v1;
  v24 = v0;
  v10 = qword_1EDB2F3E0;

  if (v10 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v11 = __swift_project_value_buffer(v5, qword_1EDB2F3E8);
    (*(v6 + 16))(v8, v11, v5);
    sub_1B1619C58();
    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1B1619C88();
    v14 = sub_1B161A0A8();
    v15 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v13, v14, v15, "synchronously awaiting texture completion", "", v12, 2u);
    v9();
    v16 = sub_1B161A098();
    v17 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v13, v16, v17, "synchronously awaiting texture completion", "", v12, 2u);

    MEMORY[0x1B2730CA0](v12, -1, -1);
    sub_1B16142D4(v9);
    (*(v22 + 8))(v4, v23);
    (*(v6 + 8))(v8, v5);
    v0 = v24;
LABEL_4:
    v4 = [objc_allocWithZone(MEMORY[0x1E69DA0C8]) init];
    v5 = *(v0 + OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_texture);
    v6 = [v5[11] bufferBytesPerRow];
    v18 = [v5[10] height];
    v19 = v6 * v18;
    if ((v6 * v18) >> 64 != (v6 * v18) >> 63)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      break;
    }

    v5 = result;
    [v4 setBuffer_];

    if (v6 < 0)
    {
      goto LABEL_10;
    }

    [v4 setBytesPerRow_];
    if ((v19 & 0x8000000000000000) == 0)
    {
      [v4 setBytesPerImage_];
      return v4;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    swift_once();
  }

  __break(1u);
  return result;
}

unint64_t sub_1B16165E8()
{
  result = qword_1EB753368;
  if (!qword_1EB753368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB753368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextureIOError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 9))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 8);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TextureIOError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B16166E0(uint64_t a1)
{
  if (*(a1 + 8) <= 4u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1B16166F8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1B1616724()
{
  result = qword_1EB753398;
  if (!qword_1EB753398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB753398);
  }

  return result;
}

uint64_t sub_1B1616780@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B15E4E60(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 88 * a1;
    v10 = *(v9 + 80);
    *(a2 + 32) = *(v9 + 64);
    *(a2 + 48) = v10;
    *(a2 + 64) = *(v9 + 96);
    *(a2 + 80) = *(v9 + 112);
    v11 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v11;
    result = memmove((v9 + 32), (v9 + 120), 88 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B161682C()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EDB2F7A0);
  __swift_project_value_buffer(v0, qword_1EDB2F7A0);
  return sub_1B1619D08();
}

uint64_t sub_1B16168BC()
{
  v0 = sub_1B1619D18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1619C98();
  __swift_allocate_value_buffer(v4, qword_1EDB2FAB8);
  __swift_project_value_buffer(v4, qword_1EDB2FAB8);
  if (qword_1EDB2F798 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDB2F7A0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B1619C78();
}

uint64_t sub_1B16169F8(uint64_t result)
{
  v2 = v1[4];
  v29 = v1[3];
  v30 = v2;
  v3 = v1[6];
  v31 = v1[5];
  v32 = v3;
  v4 = v1[2];
  v27 = v1[1];
  v28 = v4;
  v33[0] = v27;
  v33[1] = v4;
  v33[2] = v29;
  v33[3] = v2;
  v33[4] = v31;
  v34 = v3;
  if ((*(&v3 + 1) & 0x8000000000000000) != 0)
  {
    *(&v34 + 1) = *(&v3 + 1) & 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:
    v11 = v1[4];
    v17 = v1[3];
    v18 = v11;
    v12 = v1[6];
    v19 = v1[5];
    v20 = v12;
    v13 = v1[2];
    v15 = v1[1];
    v16 = v13;
    sub_1B1617FA0(&v15);
    return swift_deallocClassInstance();
  }

  v5 = v1[4];
  v23 = v1[3];
  v24 = v5;
  v25 = v1[5];
  v26 = *(v1 + 12);
  v6 = v1[2];
  v21 = v1[1];
  v22 = v6;
  if ((*&v33[0] * *(&v33[0] + 1)) >> 64 == (*&v33[0] * *(&v33[0] + 1)) >> 63)
  {
    if ((*&v33[0] * *(&v33[0] + 1)) >= 40000)
    {
      v8 = v1[4];
      v17 = v1[3];
      v18 = v8;
      v9 = v1[6];
      v19 = v1[5];
      v20 = v9;
      v10 = v1[2];
      v15 = v1[1];
      v16 = v10;
      *(&v20 + 1) = *(&v9 + 1) & 0x7FFFFFFFFFFFFFFFLL;
      sub_1B16142E4(&v15, v14);

      sub_1B1617FD0(v33);
    }

    else
    {
      v7 = *(*(&v3 + 1) + 16);
      MEMORY[0x1EEE9AC00](result);
      v17 = v29;
      v18 = v30;
      v19 = v31;
      *&v20 = v32;
      v15 = v27;
      v16 = v28;
      *(&v20 + 1) = *(&v32 + 1) & 0x7FFFFFFFFFFFFFFFLL;
      sub_1B16142E4(&v15, v14);
      os_unfair_lock_lock((v7 + 40));
      sub_1B1618000((v7 + 16));
      os_unfair_lock_unlock((v7 + 40));
      sub_1B1617FD0(v33);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

BOOL sub_1B1616BF4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1B1618820(v8, v9);
}

double sub_1B1616C50()
{
  type metadata accessor for TexturePool();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753400);
  v1 = swift_allocObject();
  *(v1 + 40) = 0;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *&result = 100;
  *(v1 + 24) = xmmword_1B1621500;
  *(v0 + 16) = v1;
  qword_1EDB32760 = v0;
  return result;
}

uint64_t sub_1B1616CD0()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_1B1616D24(uint64_t a1)
{
  sub_1B1619C68();
  v3 = (MEMORY[0x1EEE9AC00])();
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v77 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v77 - v11;
  v13 = *(a1 + 16);
  v118[0] = *a1;
  v118[1] = v13;
  *v119 = *(a1 + 32);
  *&v119[10] = *(a1 + 42);
  v14 = v118[0];
  if ((*&v118[0] * *(&v118[0] + 1)) >> 64 != (*&v118[0] * *(&v118[0] + 1)) >> 63)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_10:
    v35 = sub_1B1619C98();
    __swift_project_value_buffer(v35, qword_1EDB2FAB8);
    sub_1B1619C58();
    v36 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v111 = v84;
    *v36 = 136315138;
    *&v94 = v14;
    *&v100 = sub_1B161A418();
    *(&v100 + 1) = v37;
    MEMORY[0x1B272F930](120, 0xE100000000000000);
    *&v94 = *(&v14 + 1);
    v38 = sub_1B161A418();
    MEMORY[0x1B272F930](v38);

    v39 = sub_1B15E4764(v100, *(&v100 + 1), &v111);

    *(v36 + 4) = v39;
    v40 = sub_1B1619C88();
    LOBYTE(v39) = sub_1B161A0A8();
    v41 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v40, v39, v41, "making new unpooled texture", "size: %s", v36, 0xCu);
    v42 = *(a1 + 48);
    v108 = *(a1 + 32);
    v109 = v42;
    v110 = *(a1 + 64);
    v43 = *(a1 + 16);
    v106 = *a1;
    v107 = v43;
    v44 = *(a1 + 64);
    sub_1B16187E8(a1, &v100);
    v45 = sub_1B1614354(v118, [v44 device], *(a1 + 72));
    if (v45)
    {
      v92[2] = v108;
      v92[3] = v109;
      v92[4] = v110;
      v96 = v108;
      v97 = v109;
      v98 = v110;
      v92[0] = v106;
      v92[1] = v107;
      v93 = v45;
      v99 = v45;
      v94 = v106;
      v95 = v107;
      v103 = v109;
      v104 = v110;
      v101 = v107;
      v102 = v108;
      v100 = v106;
      v105 = v45;
      sub_1B16186C0(v92, &v87);
      sub_1B1617FD0(&v100);
      v114 = v96;
      v115 = v97;
      v116 = v98;
      v117 = v99;
      v112 = v94;
      v113 = v95;
    }

    else
    {
      v102 = v108;
      v103 = v109;
      v104 = v110;
      v100 = v106;
      v101 = v107;
      sub_1B1618954(&v100);
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v117 = 0;
    }

    v64 = sub_1B161A098();
    v65 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v40, v64, v65, "making new unpooled texture", "size: %s", v36, 0xCu);

    v66 = v84;
    __swift_destroy_boxed_opaque_existential_0(v84);
    MEMORY[0x1B2730CA0](v66, -1, -1);
    MEMORY[0x1B2730CA0](v36, -1, -1);
    (*(v85 + 8))(v5, v86);
    if (v116)
    {
      v67 = v117;

      sub_1B1618984(&v112);
      type metadata accessor for PooledTexture();
      result = swift_allocObject();
      *(result + 16) = v67;
      *(result + 48) = 0;
      *(result + 72) = 0;
      *(result + 96) = xmmword_1B16213A0;
      return result;
    }

    return 0;
  }

  v85 = v10;
  v86 = v9;
  if ((*&v118[0] * *(&v118[0] + 1)) > 39999)
  {
    if (qword_1EDB2FAB0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  v83 = v1;
  v84 = &v77;
  v15 = *(v1 + 16);
  MEMORY[0x1EEE9AC00](v9);
  *(&v77 - 2) = a1;
  os_unfair_lock_lock(v15 + 10);
  sub_1B16189EC(&v112);
  os_unfair_lock_unlock(v15 + 10);
  v16 = v116;
  if (v116)
  {
    v81 = v113;
    v82 = v112;
    v17 = *(&v114 + 1);
    v19 = *(&v115 + 1);
    v18 = v115;
    v20 = *(&v116 + 1);
    v79 = v114;
    v80 = v117;
    if (qword_1EDB2FAB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1B1619C98();
    __swift_project_value_buffer(v21, qword_1EDB2FAB8);
    sub_1B1619C58();
    v22 = sub_1B1619C88();
    v23 = sub_1B161A0B8();
    if (sub_1B161A0F8())
    {
      v24 = swift_slowAlloc();
      *&v78 = v19;
      v19 = v18;
      v25 = v17;
      v26 = v20;
      v27 = v24;
      *v24 = 0;
      v28 = sub_1B1619C48();
      _os_signpost_emit_with_name_impl(&dword_1B15BF000, v22, v23, v28, "reusing texture from pool", "", v27, 2u);
      v29 = v27;
      v20 = v26;
      v17 = v25;
      v18 = v19;
      LOWORD(v19) = v78;
      MEMORY[0x1B2730CA0](v29, -1, -1);
    }

    (*(v85 + 8))(v12, v86);
    type metadata accessor for PooledTexture();
    v30 = swift_allocObject();
    v31 = v80;
    v32 = v79 & 1;
    v33 = v81;
    *(v30 + 16) = v82;
    *(v30 + 32) = v33;
    v34 = v83 & 0xFFFFFFFFFFFFFF8;
    *(v30 + 48) = v32;
    *(v30 + 56) = v17;
    *(v30 + 64) = v18;
    *(v30 + 72) = v19 & 0x101;
    *(v30 + 80) = v16;
    *(v30 + 88) = v20;
    *(v30 + 96) = v31 & 0xFFFFFFFFFFFFFF8;
    *(v30 + 104) = v34;
    goto LABEL_22;
  }

  if (qword_1EDB2FAB0 != -1)
  {
    swift_once();
  }

  v46 = sub_1B1619C98();
  __swift_project_value_buffer(v46, qword_1EDB2FAB8);
  sub_1B1619C58();
  v47 = swift_slowAlloc();
  *&v82 = swift_slowAlloc();
  *&v106 = v82;
  *v47 = 136315138;
  *&v94 = v14;
  *&v100 = sub_1B161A418();
  *(&v100 + 1) = v48;
  MEMORY[0x1B272F930](120, 0xE100000000000000);
  *&v94 = *(&v14 + 1);
  v49 = sub_1B161A418();
  MEMORY[0x1B272F930](v49);

  v50 = sub_1B15E4764(v100, *(&v100 + 1), &v106);

  *(v47 + 4) = v50;
  v51 = sub_1B1619C88();
  LOBYTE(v50) = sub_1B161A0A8();
  v52 = sub_1B1619C48();
  _os_signpost_emit_with_name_impl(&dword_1B15BF000, v51, v50, v52, "adding new texture to pool", "size: %s", v47, 0xCu);
  v53 = *(a1 + 48);
  v89 = *(a1 + 32);
  v90 = v53;
  v91 = *(a1 + 64);
  v54 = *(a1 + 16);
  v87 = *a1;
  v88 = v54;
  v55 = *(a1 + 64);
  sub_1B16187E8(a1, &v100);
  v56 = sub_1B1614354(v118, [v55 device], *(a1 + 72));
  if (v56)
  {
    v94 = v87;
    v95 = v88;
    v96 = v89;
    v97 = v90;
    v98 = v91;
    v99 = v56;
    v103 = v90;
    v104 = v91;
    v77 = v88;
    v78 = v87;
    v57 = v89;
    v58 = WORD4(v90);
    v80 = v90;
    *&v81 = *(&v89 + 1);
    v79 = *(&v91 + 1);
    v59 = v91;
    v101 = v88;
    v102 = v89;
    v100 = v87;
    v105 = v56;
    v60 = v56;
    sub_1B16186C0(&v94, v92);
    sub_1B1617FD0(&v100);
    v61 = v57 & 1;
    v62 = v58 & 0x101;
    v63 = v60 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v102 = v89;
    v103 = v90;
    v104 = v91;
    v100 = v87;
    v101 = v88;
    sub_1B1618954(&v100);
    v61 = 0;
    v80 = 0;
    *&v81 = 0;
    v62 = 0;
    v59 = 0;
    v79 = 0;
    v63 = 0;
    v77 = 0u;
    v78 = 0u;
  }

  v69 = sub_1B161A098();
  v70 = sub_1B1619C48();
  _os_signpost_emit_with_name_impl(&dword_1B15BF000, v51, v69, v70, "adding new texture to pool", "size: %s", v47, 0xCu);

  v71 = v82;
  __swift_destroy_boxed_opaque_existential_0(v82);
  MEMORY[0x1B2730CA0](v71, -1, -1);
  MEMORY[0x1B2730CA0](v47, -1, -1);
  (*(v85 + 8))(v8, v86);
  if (v59)
  {
    type metadata accessor for PooledTexture();
    v30 = swift_allocObject();
    v72 = v83 & 0xFFFFFFFFFFFFFF8;
    v73 = v77;
    *(v30 + 16) = v78;
    *(v30 + 32) = v73;
    v74 = v80;
    v75 = v81;
    *(v30 + 48) = v61;
    *(v30 + 56) = v75;
    *(v30 + 64) = v74;
    *(v30 + 72) = v62;
    v76 = v79;
    *(v30 + 80) = v59;
    *(v30 + 88) = v76;
    *(v30 + 96) = v63;
    *(v30 + 104) = v72;
LABEL_22:

    return v30;
  }

  return 0;
}

uint64_t sub_1B161768C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = 0uLL;
  if (v5)
  {
    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v11 = *(result + 16);
    v10 = *(result + 24);
    v12 = *(result + 32);
    v13 = *(result + 40);
    v14 = *(result + 48);
    v15 = *(result + 52);
    v16 = *(result + 56);
    v17 = v5 - 1;
    v18 = v4 + 88 * v5 - 56;
    v19 = *(result + 57) & 1;
    while (1)
    {
      v20 = *(v18 + 16);
      *v38 = *v18;
      *&v38[16] = v20;
      v21 = *(v18 + 32);
      v22 = *(v18 + 48);
      v23 = *(v18 + 64);
      v42 = *(v18 + 80);
      v40 = v22;
      v41 = v23;
      v39 = v21;
      if (*v38 != v8 || *&v38[8] != __PAIR128__(v11, v9))
      {
        goto LABEL_20;
      }

      if (v39)
      {
        if ((v12 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v12 & 1) != 0 || *&v38[24] != v10)
      {
        goto LABEL_20;
      }

      if (*(&v39 + 1) != v13 || v40 != v14)
      {
        goto LABEL_20;
      }

      if (BYTE8(v40))
      {
        if ((v16 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v16 & 1) != 0 || DWORD1(v40) != v15)
      {
        goto LABEL_20;
      }

      if (BYTE9(v40) == v19)
      {
        v34 = v13;
        v35 = v10;
        v32 = v15;
        v33 = v14;
        v30 = v19;
        v31 = v16;
        sub_1B1618A60();
        sub_1B16186C0(v38, v36);
        v24 = sub_1B161A0E8();
        result = sub_1B1617FD0(v38);
        v19 = v30;
        v16 = v31;
        v15 = v32;
        v14 = v33;
        v13 = v34;
        v10 = v35;
        v6 = 0uLL;
        if ((v24 & 1) != 0 && *(&v41 + 1) == *(v7 + 72))
        {
          result = sub_1B1616780(v17, v36);
          v6 = v36[0];
          v26 = v36[1];
          v27 = v36[2];
          v28 = v36[3];
          v29 = v36[4];
          v5 = v37;
          goto LABEL_25;
        }
      }

LABEL_20:
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 -= 88;
      if (v17-- > *(v4 + 16))
      {
        __break(1u);
LABEL_23:
        v5 = 0;
        break;
      }
    }
  }

  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
LABEL_25:
  *a2 = v6;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
  *(a2 + 48) = v28;
  *(a2 + 64) = v29;
  *(a2 + 80) = v5;
  return result;
}

void sub_1B16178A0(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B1618598(0, *(v4 + 2) + 1, 1, v4);
  }

  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1B1618598((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[88 * v6];
  v8 = *(a2 + 16);
  *(v7 + 2) = *a2;
  *(v7 + 3) = v8;
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  *(v7 + 14) = *(a2 + 80);
  *(v7 + 5) = v10;
  *(v7 + 6) = v11;
  *(v7 + 4) = v9;
  *a1 = v4;
  sub_1B16186C0(a2, v12);
  sub_1B1617984();
}

void sub_1B1617984()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v0[2];
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v5 = v1 - 56 + 88 * v2--;
      while (1)
      {
        if (v2 >= *(v1 + 16))
        {
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v6 = *(v5 + 32);
        v7 = *(v5 + 48);
        v8 = *(v5 + 64);
        v38 = *(v5 + 80);
        v9 = v38;
        v10 = *(v5 + 16);
        v33 = *v5;
        v34 = v10;
        v36 = v7;
        v37 = v8;
        v35 = v6;
        v11 = *(v38 + 80);
        sub_1B16186C0(&v33, v32);
        v12 = [v11 width];
        v13 = [*(v9 + 80) height];
        v14 = v12 * v13;
        if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
        {
          goto LABEL_18;
        }

        v15 = *(v9 + 56);
        v16 = v14 * v15;
        if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
        {
          goto LABEL_19;
        }

        if (v3 >= v16)
        {
          break;
        }

        sub_1B1617FD0(&v33);
        --v2;
        v5 -= 88;
        if (v2 == -1)
        {
          goto LABEL_21;
        }
      }

      v17 = __OFSUB__(v3, v16);
      v3 -= v16;
      if (v17)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B15D5508(0, *(v4 + 16) + 1, 1);
        v4 = v39;
      }

      v20 = *(v4 + 16);
      v19 = *(v4 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1B15D5508((v19 > 1), v20 + 1, 1);
        v4 = v39;
      }

      *(v4 + 16) = v20 + 1;
      v21 = v4 + 88 * v20;
      v22 = v34;
      *(v21 + 32) = v33;
      *(v21 + 48) = v22;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      *(v21 + 112) = v38;
      *(v21 + 80) = v24;
      *(v21 + 96) = v25;
      *(v21 + 64) = v23;
      if (!v2)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

LABEL_20:
  v4 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v26 = v31[1];
  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  v27 = *(v4 + 16);
  if (v27 >= v26)
  {
    v27 = v31[1];
  }

  v28 = 2 * v27;
  if (v26)
  {
    v29 = v28 + 1;
  }

  else
  {
    v29 = 1;
  }

  v30 = sub_1B1617BA4(v4, v4 + 32, 0, v29);

  *v31 = v30;
}

uint64_t sub_1B1617BA4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = a2;
  v8 = a3;
  v9 = a4;
  sub_1B161A458();
  swift_unknownObjectRetain_n();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);

  if (__OFSUB__(v9 >> 1, v8))
  {
    goto LABEL_25;
  }

  if (v11 != (v9 >> 1) - v8)
  {
LABEL_26:
    swift_unknownObjectRelease();
    a3 = v8;
    a4 = v9;
    a2 = v7;
LABEL_2:
    sub_1B16186F8(a1, a2, a3, a4);
    v6 = v5;
    goto LABEL_9;
  }

  v6 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v6)
  {
    goto LABEL_10;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v12 = *(v6 + 16);
  if (v12 >= 2)
  {
    a1 = 0;
    v7 = v12 >> 1;
    v9 = v12 - 1;
    v8 = 88 * v12 - 56;
    v14 = 32;
    do
    {
      if (a1 != v9)
      {
        v24 = *(v6 + 16);
        if (a1 >= v24)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v25 = *(v6 + v14 + 16);
        v46 = *(v6 + v14);
        v47 = v25;
        v26 = *(v6 + v14 + 32);
        v27 = *(v6 + v14 + 48);
        v28 = *(v6 + v14 + 64);
        v51 = *(v6 + v14 + 80);
        v49 = v27;
        v50 = v28;
        v48 = v26;
        if (v9 >= v24)
        {
          goto LABEL_23;
        }

        v29 = *(v6 + v8 + 16);
        v52 = *(v6 + v8);
        v53 = v29;
        v30 = *(v6 + v8 + 32);
        v31 = *(v6 + v8 + 48);
        v32 = *(v6 + v8 + 64);
        v57 = *(v6 + v8 + 80);
        v55 = v31;
        v56 = v32;
        v54 = v30;
        sub_1B16186C0(&v46, v44);
        sub_1B16186C0(&v52, v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1B15E4E60(v6);
        }

        v33 = v6 + v14;
        v34 = *(v6 + v14 + 16);
        v42[0] = *(v6 + v14);
        v42[1] = v34;
        v35 = *(v6 + v14 + 32);
        v36 = *(v6 + v14 + 48);
        v37 = *(v6 + v14 + 64);
        v43 = *(v6 + v14 + 80);
        v42[3] = v36;
        v42[4] = v37;
        v42[2] = v35;
        v39 = v55;
        v38 = v56;
        v40 = v54;
        *(v33 + 80) = v57;
        *(v33 + 48) = v39;
        *(v33 + 64) = v38;
        *(v33 + 32) = v40;
        v41 = v53;
        *v33 = v52;
        *(v33 + 16) = v41;
        sub_1B1617FD0(v42);
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_24;
        }

        v15 = v6 + v8;
        v16 = *(v6 + v8 + 16);
        v44[0] = *(v6 + v8);
        v44[1] = v16;
        v17 = *(v6 + v8 + 32);
        v18 = *(v6 + v8 + 48);
        v19 = *(v6 + v8 + 64);
        v45 = *(v6 + v8 + 80);
        v44[3] = v18;
        v44[4] = v19;
        v44[2] = v17;
        v21 = v49;
        v20 = v50;
        v22 = v48;
        *(v15 + 80) = v51;
        *(v15 + 48) = v21;
        *(v15 + 64) = v20;
        *(v15 + 32) = v22;
        v23 = v47;
        *v15 = v46;
        *(v15 + 16) = v23;
        sub_1B1617FD0(v44);
      }

      ++a1;
      --v9;
      v8 -= 88;
      v14 += 88;
    }

    while (v7 != a1);
  }

  return v6;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B1617E88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B1617ED8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 96) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0;
      return result;
    }

    *(a1 + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1B1617F5C(void *result, uint64_t a2)
{
  v2 = result[7] & 0x101;
  v3 = result[10] & 0xFFFFFFFFFFFFFF8;
  v4 = result[11] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  result[4] &= 1uLL;
  result[7] = v2;
  result[10] = v3;
  result[11] = v4;
  return result;
}

char *sub_1B161801C(char *result, int64_t a2, char a3, char *a4)
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

void *sub_1B1618144(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[23 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 184 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7530F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B1618298(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

size_t sub_1B16183A8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753418);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753188) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753188) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1B1618598(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B16186F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526B8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 88);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

BOOL sub_1B1618820(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 1) != 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 1) != 0 || *(a1 + 52) != *(a2 + 52))
  {
    return 0;
  }

  if ((*(a1 + 57) ^ *(a2 + 57)))
  {
    return 0;
  }

  sub_1B1618A60();
  return (sub_1B161A0E8() & 1) != 0 && *(a1 + 72) == *(a2 + 72);
}

uint64_t sub_1B1618984(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1B16189EC@<D0>(uint64_t a1@<X8>)
{
  sub_1B161768C(*(v1 + 16), v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

unint64_t sub_1B1618A60()
{
  result = qword_1EDB2F760;
  if (!qword_1EDB2F760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB2F760);
  }

  return result;
}

uint64_t sub_1B1618AAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1618AF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B1618B7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1618BC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1618C8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB752638 != -1)
  {
    swift_once();
  }

  v2 = *(qword_1EB753420 + qword_1EB753438);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock(v2 + 7);
  sub_1B16198FC(&v2[4], &v11);
  os_unfair_lock_unlock(v2 + 7);

  v4 = v11;
  v5 = v12;

  if (v5)
  {
    v4 = 0;
  }

  if (qword_1EB752640 != -1)
  {
    result = swift_once();
  }

  v7 = 0;
  v8 = 1.0;
  v9 = 1503;
  if ((v4 & 0x8000000000000000) == 0 && v4 < *(qword_1EB757B28 + 16))
  {
    v10 = qword_1EB757B28 + 24 * v4;
    v7 = *(v10 + 32);
    v8 = *(v10 + 40);
    v9 = *(v10 + 48);
  }

  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  return result;
}

void sub_1B1618E1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753440);
  v1 = objc_allocWithZone(v0);
  v2 = qword_1EB753428;
  *&v1[v2] = [objc_opt_self() standardUserDefaults];
  v3 = &v1[qword_1EB753430];
  *v3 = 0xD000000000000028;
  *(v3 + 1) = 0x80000001B1622C90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753448);
  v4 = swift_allocObject();
  *(v4 + 28) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  *&v1[qword_1EB753438] = v4;
  v10.receiver = v1;
  v10.super_class = v0;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = *&v5[qword_1EB753428];
  v7 = v5;
  v8 = v6;
  v9 = sub_1B1619D68();
  [v8 addObserver:v7 forKeyPath:v9 options:4 context:0];

  qword_1EDB2FBD8 = v7;
}

void sub_1B1618F74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753458);
  v1 = objc_allocWithZone(v0);
  v2 = qword_1EB753428;
  *&v1[v2] = [objc_opt_self() standardUserDefaults];
  v3 = &v1[qword_1EB753430];
  *v3 = 0xD000000000000024;
  *(v3 + 1) = 0x80000001B1622CC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753460);
  v4 = swift_allocObject();
  *(v4 + 28) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  *&v1[qword_1EB753438] = v4;
  v10.receiver = v1;
  v10.super_class = v0;
  v5 = objc_msgSendSuper2(&v10, sel_init);
  v6 = *&v5[qword_1EB753428];
  v7 = v5;
  v8 = v6;
  v9 = sub_1B1619D68();
  [v8 addObserver:v7 forKeyPath:v9 options:4 context:0];

  qword_1EB753420 = v7;
}

uint64_t sub_1B16190CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B161A108();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *(a3 - 8);
  (*(v7 + 16))(a1, a2, a3);
  return (*(v7 + 56))(a1, 0, 1, a3);
}

uint64_t sub_1B16191B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_1B1619D98();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_1B161A128();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_1B1619828();
    sub_1B1619D38();
  }

LABEL_7:
  sub_1B16194DC();

  return sub_1B160BBAC(v13);
}

uint64_t sub_1B16192C8(uint64_t a1)
{
}

double sub_1B1619340()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB753450);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_1B1620A60;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0x3FF0000000000000;
  *(v0 + 48) = 1503;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0x4000000000000000;
  *(v0 + 72) = 1503;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0x3FF0000000000000;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0x3FF0000000000000;
  *(v0 + 120) = 1031;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0x3FF0000000000000;
  *(v0 + 144) = 1497;
  qword_1EB757B28 = v0;
  return result;
}

uint64_t sub_1B16193C8()
{
  if (qword_1EDB2FBD0 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1EDB2FBD8 + qword_1EB753438);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);

  os_unfair_lock_lock(v0 + 7);
  sub_1B161989C(&v0[4], &v3);
  os_unfair_lock_unlock(v0 + 7);
}

uint64_t sub_1B16194DC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = sub_1B161A108();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = *(v0 + qword_1EB753428);
  v11 = sub_1B1619D68();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_1B161A128();
    swift_unknownObjectRelease();
    sub_1B15C2260(&v21, v22);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A88);
  v13 = swift_dynamicCast();
  v14 = *(v6 + 56);
  if (v13)
  {
    v14(v5, 0, 1, v1);
    v15 = (*(v6 + 32))(v9, v5, v1);
    v16 = *(v0 + qword_1EB753438);
    MEMORY[0x1EEE9AC00](v15);
    *(&v20 - 2) = v1;
    *(&v20 - 1) = v9;
    v17 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
    v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v16 + v18));
    sub_1B1619880(v16 + v17);
    os_unfair_lock_unlock((v16 + v18));
    return (*(v6 + 8))(v9, v1);
  }

  else
  {
    v14(v5, 1, 1, v1);
    return (*(v3 + 8))(v5, v2);
  }
}

unint64_t sub_1B1619828()
{
  result = qword_1EDB2FBA8;
  if (!qword_1EDB2FBA8)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2FBA8);
  }

  return result;
}

uint64_t sub_1B1619918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for DebugVisualizationMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DebugVisualizationMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}