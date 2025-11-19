uint64_t sub_257DC2798()
{
  v1 = sub_257ECF120();
  v32 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_257ECF190();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer] bounds];
  v8 = v7;
  v10 = v9;
  v11 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  *&transform.c = v11;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32];
  CGAffineTransformDecompose(&v33, &transform);
  dx = v33.translation.dx;
  dy = v33.translation.dy;
  v14 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  *&transform.c = v14;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32];
  CGAffineTransformDecompose(&v33, &transform);
  sub_257DC484C(v8, v10);
  v17 = dy / v16;
  v19 = (v16 < 0.0 || ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v16 - 1) > 0xFFFFFFFFFFFFELL;
  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = dx / v15;
  }

  if (v19)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v17;
  }

  v23 = (v15 < 0.0 || ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v15 - 1) > 0xFFFFFFFFFFFFELL;
  if (v23)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v20;
  }

  if (v23)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v21;
  }

  sub_257BD2C2C(0, &qword_281543F10);
  v26 = sub_257ECFD30();
  v27 = swift_allocObject();
  *(v27 + 16) = v0;
  *(v27 + 24) = v24;
  *(v27 + 32) = v25;
  *&transform.tx = sub_257DC6010;
  *&transform.ty = v27;
  *&transform.a = MEMORY[0x277D85DD0];
  *&transform.b = 1107296256;
  *&transform.c = sub_257D231C0;
  *&transform.d = &block_descriptor_156;
  v28 = _Block_copy(&transform);
  v29 = v0;
  sub_257ECF150();
  *&v33.scale.width = MEMORY[0x277D84F90];
  sub_257DC6058(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v6, v3, v28);
  _Block_release(v28);

  (*(v32 + 8))(v3, v1);
  (*(v4 + 8))(v6, v31);
}

uint64_t sub_257DC2B98(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v6 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges;
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 1;
  v7 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
  *&transform.a = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
  *&transform.c = v7;
  *&transform.tx = *(a1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
  CGAffineTransformDecompose(&v11, &transform);
  width = v11.scale.width;
  if (v11.scale.height < v11.scale.width)
  {
    width = v11.scale.height;
  }

  v9 = (width + -0.25) / 14.75;
  swift_getKeyPath();
  swift_getKeyPath();
  transform.a = v9;
  sub_257ECC3F0();
  sub_257ECDD70();
  swift_getKeyPath();
  swift_getKeyPath();
  transform.a = a2;
  transform.b = a3;
  sub_257ECC3F0();
  result = sub_257ECDD70();
  *(a1 + v6) = 0;
  return result;
}

uint64_t sub_257DC2CE0(char a1, double a2, CGFloat a3, CGFloat a4)
{
  LOBYTE(v5) = a1;
  v39 = *MEMORY[0x277D85DE8];
  v6 = 0.25;
  if (a2 <= 0.25)
  {
    v7 = 0.25;
    if (a2 < 0.25)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = a2;
  if (a2 >= 0.25)
  {
    v8 = a2 > 15.0 || a2 < 0.25;
    v6 = a2;
    v7 = 15.0;
    if (!v8)
    {
LABEL_10:
      v9 = (v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
      v10 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16);
      *&v38.a = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
      *&v38.c = v10;
      *&v38.tx = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32);
      CGAffineTransformTranslate(&v37, &v38, a3, a4);
      v11 = *&v37.c;
      v12 = *&v37.tx;
      *v9 = *&v37.a;
      v9[1] = v11;
      v9[2] = v12;
      v7 = v6;
    }
  }

LABEL_11:
  CGAffineTransformMakeScale(&v38, v7, v7);
  v13 = *&v38.c;
  v14 = *&v38.tx;
  v15 = (v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
  *v15 = *&v38.a;
  v15[1] = v13;
  v15[2] = v14;
  v16 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers);
  if (v16 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    v35 = v5;
    v36 = v4;
    v18 = 0;
    v19 = 1.0 / v7;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x259C72E20](v18, v16);
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v20 = *(v16 + 8 * v18 + 32);
      }

      v21 = v20;
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale;
      *&v20[OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale] = v7;
      [v20 setLineWidth_];
      v40.origin.x = -12.5;
      v40.origin.y = -12.5;
      v40.size.width = 25.0;
      v40.size.height = 25.0;
      v5 = CGPathCreateWithEllipseInRect(v40, 0);
      CGAffineTransformMakeScale(&v37, 1.0 / *&v21[v22], 1.0 / *&v21[v22]);
      v38 = v37;
      v23 = objc_opt_self();
      [v23 begin];
      [v23 setDisableActions_];
      v24 = MEMORY[0x259C73760](v5, &v38);
      [v21 setPath_];

      [v23 commit];
      ++v18;
      if (v4 == i)
      {
        v4 = v36;
        LOBYTE(v5) = v35;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v19 = 1.0 / v7;
LABEL_23:

  v25 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer) setLineWidth_];
  [*(v4 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) setLineWidth_];
  v26 = *(v4 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_257ED9BE0;
  v28 = 4.0 / v7;
  v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v30 = v26;
  *(v27 + 32) = [v29 initWithDouble_];
  *(v27 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  sub_257BD2C2C(0, &qword_281543DC0);
  v31 = sub_257ECF7F0();

  [v30 setLineDashPattern_];

  v32 = objc_opt_self();
  [v32 begin];
  if (v5)
  {
    v33 = sub_257ECCF50();
    [v32 setValue:v33 forKey:*MEMORY[0x277CDA908]];
  }

  else
  {
    [v32 setDisableActions_];
  }

  sub_257DC3134();
  [v32 commit];
  return sub_257DC2798();
}

void sub_257DC3134()
{
  if ((*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) & 1) == 0)
  {
    v1 = objc_opt_self();
    [v1 begin];
    [v1 setDisableActions_];
    v2 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
    [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer) bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
    [*(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) bounds];
    v26.origin.x = v12;
    v26.origin.y = v13;
    v26.size.width = v14;
    v26.size.height = v15;
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    if (!CGRectEqualToRect(v25, v26))
    {
      v16 = *(v0 + v2);
      v17 = *(v0 + v11);
      v18 = v16;
      [v17 bounds];
      [v18 setBounds_];
    }

    [v1 commit];
    sub_257DC32D8();
    v19 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer);
    v20 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16);
    *&t1.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
    *&t1.c = v20;
    *&t1.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32);
    v21 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16);
    *&t2.a = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
    *&t2.c = v21;
    *&t2.tx = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32);
    CGAffineTransformConcat(&v22, &t1, &t2);
    t1 = v22;
    [v19 setAffineTransform_];
  }
}

void sub_257DC32D8()
{
  v1 = &v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform];
  *&transform.c = v2;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform + 32];
  CGAffineTransformDecompose(&v112, &transform);
  dx = v112.translation.dx;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v8 = &v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  v9 = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 16];
  *&transform.a = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform];
  *&transform.c = v9;
  *&transform.tx = *&v0[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform + 32];
  CGAffineTransformDecompose(&v112, &transform);
  if (v112.scale.height >= v112.scale.width)
  {
    width = v112.scale.width;
  }

  else
  {
    width = v112.scale.height;
  }

  sub_257DC4B74(v5, v7, width);
  if (v11 >= dx)
  {
    v21 = *v1;
    v22 = *(v1 + 1);
    v23 = *(v1 + 2);
  }

  else
  {
    [v0 bounds];
    v13 = v12;
    v15 = v14;
    v16 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v16;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    if (v112.scale.height >= v112.scale.width)
    {
      height = v112.scale.width;
    }

    else
    {
      height = v112.scale.height;
    }

    sub_257DC4B74(v13, v15, height);
    v19 = v18;
    v20 = *(v1 + 1);
    *&transform.a = *v1;
    *&transform.c = v20;
    *&transform.tx = *(v1 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    CGAffineTransformMakeTranslation(&transform, v19, v112.translation.dy);
    v21 = *&transform.a;
    v22 = *&transform.c;
    v23 = *&transform.tx;
    *v1 = *&transform.a;
    *(v1 + 1) = v22;
    *(v1 + 2) = v23;
  }

  *&transform.a = v21;
  *&transform.c = v22;
  *&transform.tx = v23;
  CGAffineTransformDecompose(&v112, &transform);
  dy = v112.translation.dy;
  [v0 bounds];
  v26 = v25;
  v28 = v27;
  v29 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v29;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v112, &transform);
  if (v112.scale.height >= v112.scale.width)
  {
    v30 = v112.scale.width;
  }

  else
  {
    v30 = v112.scale.height;
  }

  sub_257DC4B74(v26, v28, v30);
  a = *v1;
  b = v1[1];
  c = v1[2];
  d = v1[3];
  v36 = v35 < dy;
  tx = v1[4];
  ty = v1[5];
  if (v36)
  {
    transform.a = *v1;
    transform.b = b;
    transform.c = c;
    transform.d = d;
    transform.tx = tx;
    transform.ty = ty;
    CGAffineTransformDecompose(&v112, &transform);
    v39 = v112.translation.dx;
    [v0 bounds];
    v41 = v40;
    v43 = v42;
    v44 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v44;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    if (v112.scale.height >= v112.scale.width)
    {
      v45 = v112.scale.width;
    }

    else
    {
      v45 = v112.scale.height;
    }

    sub_257DC4B74(v41, v43, v45);
    CGAffineTransformMakeTranslation(&transform, v39, v46);
    a = transform.a;
    b = transform.b;
    c = transform.c;
    d = transform.d;
    tx = transform.tx;
    ty = transform.ty;
    *v1 = transform.a;
    v1[1] = b;
    v1[2] = c;
    v1[3] = d;
    v1[4] = tx;
    v1[5] = ty;
  }

  transform.a = a;
  transform.b = b;
  transform.c = c;
  transform.d = d;
  transform.tx = tx;
  transform.ty = ty;
  CGAffineTransformDecompose(&v112, &transform);
  v47 = v112.translation.dx;
  [v0 bounds];
  v49 = v48;
  v51 = v50;
  v52 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v52;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v112, &transform);
  if (v112.scale.height >= v112.scale.width)
  {
    v53 = v112.scale.width;
  }

  else
  {
    v53 = v112.scale.height;
  }

  sub_257DC4B74(v49, v51, v53);
  [v0 bounds];
  v55 = v54;
  v57 = v56;
  v58 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v58;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v112, &transform);
  if (v112.scale.height >= v112.scale.width)
  {
    v59 = v112.scale.width;
  }

  else
  {
    v59 = v112.scale.height;
  }

  sub_257DC4B74(v55, v57, v59);
  if (v47 >= CGSizeMake(v60))
  {
    v76 = *v1;
    v77 = *(v1 + 1);
    v78 = *(v1 + 2);
  }

  else
  {
    [v0 bounds];
    v62 = v61;
    v64 = v63;
    v65 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v65;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    if (v112.scale.height >= v112.scale.width)
    {
      v66 = v112.scale.width;
    }

    else
    {
      v66 = v112.scale.height;
    }

    sub_257DC4B74(v62, v64, v66);
    [v0 bounds];
    v68 = v67;
    v70 = v69;
    v71 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v71;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    if (v112.scale.height >= v112.scale.width)
    {
      v72 = v112.scale.width;
    }

    else
    {
      v72 = v112.scale.height;
    }

    sub_257DC4B74(v68, v70, v72);
    v74 = CGSizeMake(v73);
    v75 = *(v1 + 1);
    *&transform.a = *v1;
    *&transform.c = v75;
    *&transform.tx = *(v1 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    CGAffineTransformMakeTranslation(&transform, v74, v112.translation.dy);
    v76 = *&transform.a;
    v77 = *&transform.c;
    v78 = *&transform.tx;
    *v1 = *&transform.a;
    *(v1 + 1) = v77;
    *(v1 + 2) = v78;
  }

  *&transform.a = v76;
  *&transform.c = v77;
  *&transform.tx = v78;
  CGAffineTransformDecompose(&v112, &transform);
  v79 = v112.translation.dy;
  [v0 bounds];
  v81 = v80;
  v83 = v82;
  v84 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v84;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v112, &transform);
  if (v112.scale.height >= v112.scale.width)
  {
    v85 = v112.scale.width;
  }

  else
  {
    v85 = v112.scale.height;
  }

  sub_257DC4B74(v81, v83, v85);
  [v0 bounds];
  v87 = v86;
  v89 = v88;
  v90 = *(v8 + 1);
  *&transform.a = *v8;
  *&transform.c = v90;
  *&transform.tx = *(v8 + 2);
  CGAffineTransformDecompose(&v112, &transform);
  if (v112.scale.height >= v112.scale.width)
  {
    v91 = v112.scale.width;
  }

  else
  {
    v91 = v112.scale.height;
  }

  sub_257DC4B74(v87, v89, v91);
  CGSizeMake(v92);
  if (v79 < v93)
  {
    v94 = *(v1 + 1);
    *&transform.a = *v1;
    *&transform.c = v94;
    *&transform.tx = *(v1 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    v95 = v112.translation.dx;
    [v0 bounds];
    v97 = v96;
    v99 = v98;
    v100 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v100;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    if (v112.scale.height >= v112.scale.width)
    {
      v101 = v112.scale.width;
    }

    else
    {
      v101 = v112.scale.height;
    }

    sub_257DC4B74(v97, v99, v101);
    [v0 bounds];
    v103 = v102;
    v105 = v104;
    v106 = *(v8 + 1);
    *&transform.a = *v8;
    *&transform.c = v106;
    *&transform.tx = *(v8 + 2);
    CGAffineTransformDecompose(&v112, &transform);
    if (v112.scale.height >= v112.scale.width)
    {
      v107 = v112.scale.width;
    }

    else
    {
      v107 = v112.scale.height;
    }

    sub_257DC4B74(v103, v105, v107);
    CGSizeMake(v108);
    CGAffineTransformMakeTranslation(&transform, v95, v109);
    v110 = *&transform.c;
    v111 = *&transform.tx;
    *v1 = *&transform.a;
    *(v1 + 1) = v110;
    *(v1 + 2) = v111;
  }
}

void *sub_257DC38BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  v3 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
  v5 = *(v0 + v1);
  *(v0 + v1) = v4;

  if (v4)
  {
    [v4 setVideoGravity_];
  }

  v3 = *(v0 + v1);
  if (v3)
  {
    v6 = v3;
LABEL_6:
    v7 = v2;
  }

  return v3;
}

void *sub_257DC3950()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer);
  v3 = v2;
  if (!v2)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CE5B68]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v6 = v4;

    if (v6)
    {
      [v6 setVideoGravity_];
    }

    v3 = *(v0 + v1);
    v7 = v3;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_257DC39F0(double a1, double a2)
{
  v3 = v2;
  v38 = *MEMORY[0x277D85DE8];
  v28 = sub_257ECCF30();
  v6 = *(v28 - 8);
  v7 = MEMORY[0x28223BE20](v28);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F4668 != -1)
  {
LABEL_21:
    v7 = swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    [*(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) convertPoint:*(v3 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer) fromLayer:{a1, a2}];
  }

  else
  {
    v10 = CGSizeMake(v7);
  }

  a2 = v10;
  a1 = v11;
  v12 = 0;
  v13 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  v27 = (v6 + 104);
  v26 = *MEMORY[0x277CBF258];
  v25 = (v6 + 8);
  while (1)
  {
    v6 = *(v3 + v13);
    if ((v6 & 0xC000000000000001) != 0)
    {

      v14 = MEMORY[0x259C72E20](v12, v6);
    }

    else
    {
      if (v12 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_21;
      }

      v14 = *(v6 + 8 * v12 + 32);
    }

    CGAffineTransformMakeScale(&v30, 3.0, 3.0);
    v31 = v30;
    [v14 frame];
    v16 = v15;
    [v14 frame];
    CGAffineTransformMakeTranslation(&v29, v16, v17);
    v30 = v29;
    v18 = [v14 path];
    if (v18)
    {
      v19 = v18;
      v20 = MEMORY[0x259C73760](v18, &v31);

      if (v20)
      {
        v21 = MEMORY[0x259C73760](v20, &v30);

        if (v21)
        {
          break;
        }
      }
    }

    if (v12 == 3)
    {
      return -1;
    }

LABEL_16:
    ++v12;
  }

  v22 = v28;
  (*v27)(v9, v26, v28);
  v33 = 0;
  v34 = 0;
  v32 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v36 = 0;
  v37 = 0;
  v23 = sub_257ED0070();

  (*v25)(v9, v22);
  if (v23)
  {
    return v12;
  }

  if (v12 != 3)
  {
    goto LABEL_16;
  }

  return -1;
}

void sub_257DC3D9C()
{
  v1 = sub_257ECF120();
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_257ECF190();
  v4 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v19 = sub_257ECFD30();
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  aBlock[4] = sub_257DC5D04;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_48;
  v8 = _Block_copy(aBlock);
  v9 = v0;
  sub_257ECF150();
  v22 = MEMORY[0x277D84F90];
  sub_257DC6058(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  v10 = v19;
  MEMORY[0x259C72880](0, v6, v3, v8);
  _Block_release(v8);

  (*(v21 + 8))(v3, v1);
  (*(v4 + 8))(v6, v20);

  v11 = objc_opt_self();
  v12 = 0;
  v13 = 0;
  v14 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  v15 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
  while (1)
  {
    [v11 begin];
    [v11 setDisableActions_];
    v16 = *&v9[v14];
    if ((v16 & 0xC000000000000001) != 0)
    {

      v17 = MEMORY[0x259C72E20](v13, v16);
    }

    else
    {
      if (v13 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      v17 = *(v16 + 8 * v13 + 32);
    }

    v18 = *&v9[v15];
    if (v13 >= *(v18 + 16))
    {
      break;
    }

    [v17 setPosition_];

    [v11 commit];
    ++v13;
    v12 += 24;
    if (v13 == 4)
    {
      sub_257DC4C74();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t sub_257DC418C()
{
  sub_257ECC3F0();
  sub_257C38D30();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_257ECDD70();
}

id sub_257DC422C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD60();

  v6 = 0.0;
  if (v50 == 1)
  {
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) opacity];
    v7 = *&v6;
    LODWORD(v6) = 1.0;
    if (v7 < 0.5)
    {
      v45 = v5;
      v46 = v4;
      v8 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer);
      [v8 bounds];
      v9 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
      [v8 convertRect:*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer) toLayer:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v18 = [*(v2 + v9) path];
      if (v18)
      {
        v19 = v18;
        BoundingBox = CGPathGetBoundingBox(v18);
        x = BoundingBox.origin.x;
        y = BoundingBox.origin.y;
        width = BoundingBox.size.width;
        height = BoundingBox.size.height;
      }

      else
      {
        x = 0.0;
        y = 0.0;
        width = 0.0;
        height = 0.0;
      }

      v52.origin.x = x;
      v52.origin.y = y;
      v52.size.width = width;
      v52.size.height = height;
      v64.origin.x = v11;
      v64.origin.y = v13;
      v64.size.width = v15;
      v64.size.height = v17;
      v53 = CGRectIntersection(v52, v64);
      v24 = v53.origin.x;
      v25 = v53.origin.y;
      v26 = v53.size.width;
      v27 = v53.size.height;
      v28 = CGRectGetWidth(v53) / 5.0;
      v54.origin.x = v24;
      v54.origin.y = v25;
      v54.size.width = v26;
      v54.size.height = v27;
      v29 = CGRectGetHeight(v54) / 5.0;
      v55.origin.x = v24;
      v55.origin.y = v25;
      v55.size.width = v26;
      v55.size.height = v27;
      v56 = CGRectInset(v55, v28, v29);
      v30 = v56.origin.x;
      v31 = v56.origin.y;
      v32 = v56.size.width;
      v33 = v56.size.height;
      MinX = CGRectGetMinX(v56);
      v57.origin.x = v30;
      v57.origin.y = v31;
      v57.size.width = v32;
      v57.size.height = v33;
      MinY = CGRectGetMinY(v57);
      v58.origin.x = v30;
      v58.origin.y = v31;
      v58.size.width = v32;
      v58.size.height = v33;
      v47 = CGRectGetMinX(v58);
      v59.origin.x = v30;
      v59.origin.y = v31;
      v59.size.width = v32;
      v59.size.height = v33;
      MaxY = CGRectGetMaxY(v59);
      v60.origin.x = v30;
      v60.origin.y = v31;
      v60.size.width = v32;
      v60.size.height = v33;
      MaxX = CGRectGetMaxX(v60);
      v61.origin.x = v30;
      v61.origin.y = v31;
      v61.size.width = v32;
      v61.size.height = v33;
      v36 = CGRectGetMinY(v61);
      v62.origin.x = v30;
      v62.origin.y = v31;
      v62.size.width = v32;
      v62.size.height = v33;
      v37 = CGRectGetMaxX(v62);
      v63.origin.x = v30;
      v63.origin.y = v31;
      v63.size.width = v32;
      v63.size.height = v33;
      v38 = CGRectGetMaxY(v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_257EDBE50;
      *(v39 + 32) = MinX;
      *(v39 + 40) = MinY;
      *(v39 + 48) = 0;
      *(v39 + 56) = v47;
      *(v39 + 64) = MaxY;
      *(v39 + 72) = 1;
      *(v39 + 80) = MaxX;
      *(v39 + 88) = v36;
      *(v39 + 96) = 2;
      *(v39 + 104) = v37;
      *(v39 + 112) = v38;
      *(v39 + 120) = 3;
      v40 = sub_257C38808();

      if (v3)
      {

        v40 = v3;
        v42 = v45;
        v41 = v46;
      }

      else
      {
        v41 = 0x4060E00000000000;
        v42 = 0x4046800000000000;
      }

      v43 = (v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
      *v43 = v40;
      v43[1] = v42;
      v43[2] = v41;

      sub_257DC3D9C();
      sub_257DC45FC();
      LODWORD(v6) = 1.0;
    }
  }

  return [*(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer) setOpacity_];
}

void sub_257DC45FC()
{
  v1 = v0;
  v2 = sub_257ECCF30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions);
  v18 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions + 8);
  v6 = sub_257C389F8();
  Mutable = CGPathCreateMutable();
  if (*(v6 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v8 = Mutable;
    v17 = 0x3FF0000000000000;
    v18 = 0uLL;
    v19 = 0x3FF0000000000000;
    v20 = 0;
    v21 = 0;
    sub_257ECFC50();
    v9 = *(v6 + 16);
    if (v9)
    {
      v10 = v6 + 40;
      do
      {
        sub_257ECFC60();
        v10 += 16;
        --v9;
      }

      while (v9);
    }

    v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath;
    v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath) = v8;
    v13 = v8;

    v22.origin.x = -1048576.0;
    v22.size.width = 2097152.0;
    v22.origin.y = -1048576.0;
    v22.size.height = 2097152.0;
    v14 = CGPathCreateWithRect(v22, 0);
    (*(v3 + 104))(v5, *MEMORY[0x277CBF258], v2);
    v15 = sub_257ED0060();
    (*(v3 + 8))(v5, v2);
    v16 = objc_opt_self();
    [v16 begin];
    [v16 setDisableActions_];
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer) setPath_];
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer) setPath_];
    [v16 commit];
  }
}

uint64_t sub_257DC484C(double a1, double a2)
{
  v5 = type metadata accessor for CapturedImage();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9590);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  if ((a1 >= 0.0 && ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&a1 - 1) <= 0xFFFFFFFFFFFFELL) && (a2 >= 0.0 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&a2 - 1) <= 0xFFFFFFFFFFFFELL))
  {
    v20 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage;
    sub_257DC5B6C(v2 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage, &v23 - v14);
    v21 = *(v6 + 48);
    v22 = v21(v15, 1, v5);
    result = sub_257DC5BDC(v15);
    if (v22 != 1)
    {
      sub_257DC5B6C(v2 + v20, v12);
      if (v21(v12, 1, v5) == 1)
      {
        return sub_257DC5BDC(v12);
      }

      else
      {
        sub_257DC5C44(v12, v8);
        return sub_257DC5CA8(v8);
      }
    }
  }

  return result;
}

void sub_257DC4B74(double a1, double a2, double a3)
{
  sub_257DC484C(a1, a2);
  v6 = v5;
  v7 = *&v5;
  v8 = *&v5 - 1;
  v9 = ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53;
  v10 = 0;
  if ((v7 >= 0 && v9 <= 0x3FE || v8 <= 0xFFFFFFFFFFFFELL) && (v4 >= 0.0 && ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (*&v4 - 1) <= 0xFFFFFFFFFFFFELL))
  {
    v15 = v6 * a3;
    v16 = v4 * a3;
    v17 = 0;
    v18 = v15;
    v19 = v16;
    CGRectGetWidth(*&v10);
    v21.origin.x = 0.0;
    v21.origin.y = 0.0;
    v21.size.width = v15;
    v21.size.height = v16;
    CGRectGetHeight(v21);
    CGSizeMake(v20);
  }
}

void sub_257DC4C74()
{
  v51 = MEMORY[0x277D84F90];
  v48 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView;
  v1 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_257ECF4C0();
  v6 = sub_257ECF4C0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  if (!v7)
  {
    sub_257ECF500();
    v7 = sub_257ECF4C0();
  }

  [v1 setAccessibilityLabel_];

  v8 = [v3 bundleForClass_];
  v9 = sub_257ECF4C0();
  v10 = 0x617A696C61636F4CLL;
  v11 = sub_257ECF4C0();
  v12 = [v8 localizedStringForKey:v9 value:0 table:v11];

  if (!v12)
  {
    sub_257ECF500();
    v12 = sub_257ECF4C0();
  }

  [v1 setAccessibilityHint_];

  v47 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
  if (*(*&v49[OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions] + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    CGRectMake();
    [v1 setAccessibilityFrame_];
    v10 = v1;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_7;
    }
  }

  sub_257ECF830();
LABEL_7:
  v46 = v10;
  sub_257ECF860();
  v13 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  v14 = [v3 bundleForClass_];
  v15 = sub_257ECF4C0();
  v16 = sub_257ECF4C0();
  v17 = ObjCClassFromMetadata;
  v18 = [v14 localizedStringForKey:v15 value:0 table:v16];

  if (!v18)
  {
    sub_257ECF500();
    v18 = sub_257ECF4C0();
  }

  [v13 setAccessibilityLabel_];

  v19 = [v3 bundleForClass_];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  if (!v22)
  {
    sub_257ECF500();
    v22 = sub_257ECF4C0();
  }

  [v13 setAccessibilityHint_];

  if (*(*&v49[v47] + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    CGRectMake();
    [v13 setAccessibilityFrame_];
    v17 = v13;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_13;
    }
  }

  sub_257ECF830();
LABEL_13:
  v45 = v17;
  sub_257ECF860();
  v23 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  v24 = [v3 bundleForClass_];
  v25 = sub_257ECF4C0();
  v26 = 0xEB00000000656C62;
  v27 = sub_257ECF4C0();
  v28 = [v24 localizedStringForKey:v25 value:0 table:v27];

  if (!v28)
  {
    sub_257ECF500();
    v28 = sub_257ECF4C0();
  }

  [v23 setAccessibilityLabel_];

  v29 = [v3 bundleForClass_];
  v30 = sub_257ECF4C0();
  v31 = sub_257ECF4C0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  if (!v32)
  {
    sub_257ECF500();
    v32 = sub_257ECF4C0();
  }

  [v23 setAccessibilityHint_];

  if (*(*&v49[v47] + 16))
  {
    CGRectMake();
    [v23 setAccessibilityFrame_];
    v26 = v23;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  sub_257ECF830();
LABEL_19:
  v43 = v26;
  sub_257ECF860();
  v33 = [objc_allocWithZone(MEMORY[0x277D750A0]) initWithAccessibilityContainer_];
  v34 = [v3 bundleForClass_];
  v35 = sub_257ECF4C0();
  v36 = sub_257ECF4C0();
  v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

  if (!v37)
  {
    sub_257ECF500();
    v37 = sub_257ECF4C0();
  }

  [v33 setAccessibilityLabel_];

  v38 = [v3 bundleForClass_];
  v39 = sub_257ECF4C0();
  v40 = sub_257ECF4C0();
  v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

  if (!v41)
  {
    sub_257ECF500();
    v41 = sub_257ECF4C0();
  }

  [v33 setAccessibilityHint_];

  if (*(*&v49[v47] + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    CGRectMake();
    [v33 setAccessibilityFrame_];
    v41 = v33;
    MEMORY[0x259C72300]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }
  }

  sub_257ECF830();
LABEL_25:
  sub_257ECF860();
  v42 = *&v49[v48];
  sub_257EB73A8(v51);

  v50 = sub_257ECF7F0();

  [v42 setAccessibilityElements_];
}

id sub_257DC5778(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for LiveCameraLayer()
{
  result = qword_27F8F9578;
  if (!qword_27F8F9578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257DC59CC()
{
  sub_257DC5B08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_257DC5B08()
{
  if (!qword_27F8F9588)
  {
    type metadata accessor for CapturedImage();
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F9588);
    }
  }
}

uint64_t sub_257DC5B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DC5BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257DC5C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DC5CA8(uint64_t a1)
{
  v2 = type metadata accessor for CapturedImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257DC5D24@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257DC5DA4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_257ECC3F0();
  return sub_257ECDD70();
}

double sub_257DC5E20@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_257DC5EA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257DC5F1C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257DC5F9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257DC6058(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257DC60A0()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__panTransform);
  v3 = *MEMORY[0x277CBF2C0];
  v4 = *(MEMORY[0x277CBF2C0] + 8);
  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v6 = *(MEMORY[0x277CBF2C0] + 24);
  v7 = *(MEMORY[0x277CBF2C0] + 32);
  v8 = *(MEMORY[0x277CBF2C0] + 40);
  *v2 = *MEMORY[0x277CBF2C0];
  v2[1] = v4;
  v2[2] = v5;
  v2[3] = v6;
  v2[4] = v7;
  v2[5] = v8;
  v9 = (v0 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__zoomTransform);
  *v9 = v3;
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v7;
  v9[5] = v8;
  v10 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__fullVideoPreviewLayer;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v11 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__capturedImageLayer;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v12 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__affineTransformLayer;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v13 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoMaskLayer;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v14 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__perspectiveTransformLayer;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v15 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__layerToMask;
  *(v0 + v15) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v16 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__baseLayer;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__filterLayer;
  *(v0 + v17) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v18 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__pictureFrameLayer;
  *(v0 + v18) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v19 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayer;
  *(v0 + v19) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v20 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionLayer;
  *(v1 + v20) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v21 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleOutlineLayer;
  *(v1 + v21) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v22 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleSelectionPath;
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = 0.0;
  v36.size.height = 0.0;
  *(v1 + v22) = CGPathCreateWithRect(v36, 0);
  v23 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastKnownIdealSize);
  *v23 = 0;
  v23[1] = 0;
  v24 = v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__idealPerspectiveTransformSize;
  *v24 = 0;
  *(v24 + 8) = 0;
  *(v24 + 16) = 1;
  v25 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__lastPerspectiveTransformLayerFrame);
  *v25 = 0u;
  v25[1] = 0u;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_portalLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_usingPortalLayer) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_subscribers) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentDragHandle) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_previewLayerScaleRatio) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_ignorePublishedEnvChanges) = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleIndex) = -1;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleSelection) = 0;
  v26 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingHandleStartPosition);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelectionStartPosition);
  *v27 = 0;
  v27[1] = 0;
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentlyDraggingTextSelection) = 0;
  v28 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__dragHandleLayers;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_257EDBE40;
  v30 = type metadata accessor for DragHandleLayer();
  *(v29 + 32) = [objc_allocWithZone(v30) init];
  *(v29 + 40) = [objc_allocWithZone(v30) init];
  *(v29 + 48) = [objc_allocWithZone(v30) init];
  v31 = [objc_allocWithZone(v30) init];
  *(v1 + v28) = v29;
  *(v29 + 56) = v31;
  v32 = v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_dragHandlePositions;
  *(v32 + 8) = xmmword_257EDC820;
  *v32 = &unk_286905D00;
  *v32 = sub_257C38808();

  v33 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_currentCapturedImage;
  v34 = type metadata accessor for CapturedImage();
  (*(*(v34 - 8) + 56))(v1 + v33, 1, 1, v34);
  v35 = OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer_accessibilityParentView;
  *(v1 + v35) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport15LiveCameraLayer__videoPreviewLayer) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257DC650C(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 3u)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (a1 - 4 >= 2 && a1 == 6)
  {
LABEL_6:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_257ECF4C0();
    v6 = sub_257ECF4C0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    v8 = sub_257ECF500();
    return v8;
  }

  return result;
}

void sub_257DC6678(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 < 2u)
    {
      return;
    }

    if (a1 != 2)
    {
      v5 = sub_257ECF4C0();
      v9[4] = sub_257E5BD88;
      v9[5] = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_257E5BE70;
      v9[3] = &block_descriptor_49;
      v6 = _Block_copy(v9);
      v7 = AXLocStringForDeviceVariant();
      _Block_release(v6);

      if (v7)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }

      return;
    }

LABEL_12:
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v2 = [objc_opt_self() bundleForClass_];
    v3 = sub_257ECF4C0();
    v4 = sub_257ECF4C0();
    v8 = [v2 localizedStringForKey:v3 value:0 table:v4];

    sub_257ECF500();
    return;
  }

  if (a1 > 5u || a1 == 4 || AXDeviceSupportsBackTap())
  {
    goto LABEL_12;
  }
}

void sub_257DC6B10()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_loadView);
  v1 = [v0 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_257ECF4C0();
  v5 = sub_257ECF4C0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_257ECF500();
    v6 = sub_257ECF4C0();
  }

  [v1 setTitle_];
}

uint64_t sub_257DC6CB0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);
    v2 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);

    result = swift_unknownObjectRelease();
    if (v2)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        if (qword_281544FE0 != -1)
        {
          swift_once();
        }

        v4 = v0;
        v5 = qword_281548348;
        swift_beginAccess();
        v6 = v5[12];
        v7 = v5[13];
        v16[0] = v5[11];
        v16[1] = v6;
        v16[2] = v7;
        v8 = qword_2815447E0;

        if (v8 != -1)
        {
          v9 = swift_once();
        }

        MEMORY[0x28223BE20](v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
        sub_257ECFD50();

        if (*(v15[0] + 16))
        {
          v10 = sub_257C03F6C(v3, v2);
          v12 = v11;

          if (v12)
          {
            v13 = (*(v15[0] + 56) + 296 * v10);
            memcpy(v14, v13, sizeof(v14));
            memmove(v15, v13, 0x128uLL);
            CGSizeMake(v15);
            sub_257C09C58(v14, v16);

            memcpy(v16, v15, sizeof(v16));
LABEL_16:
            memcpy(v15, (v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), 0x128uLL);
            memcpy((v4 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), v16, 0x128uLL);
            return sub_257BE4084(v15, &unk_27F8F68B0);
          }
        }

        else
        {
        }

        sub_257C10998(v16);
        goto LABEL_16;
      }
    }
  }

  return result;
}

id sub_257DC6F8C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v21.receiver = v0;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView];
  [v3 setDataSource_];
  [v3 setDelegate_];
  sub_257BD2C2C(0, &qword_27F8F5560);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_257ECF4C0();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  type metadata accessor for UIStepperLengthCell();
  v6 = swift_getObjCClassFromMetadata();
  v7 = sub_257ECF4C0();
  [v3 registerClass:v6 forCellReuseIdentifier:v7];

  v8 = sub_257ECF4C0();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v8];

  v9 = sub_257ECF4C0();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v9];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v12 = result;
  sub_257EB6FD8(result, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  sub_257DC6CB0();
  v13 = *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController];
  [v13 setSupportsAlpha_];
  v14 = &v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
  memcpy(__dst, &v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], sizeof(__dst));
  if (sub_257C108C4(__dst) != 1)
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v14[17] green:v14[18] blue:v14[19] alpha:1.0];
    [v13 setSelectedColor_];
  }

  [v13 setDelegate_];
  v16 = *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController];
  v19[3] = ObjectType;
  v19[4] = &off_286910FD0;
  v19[0] = v1;
  v17 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorAttributeCustomizationViewController_delegate;
  swift_beginAccess();
  v18 = v1;
  sub_257DCB580(v19, v16 + v17);
  return swift_endAccess();
}

id sub_257DC7334(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v3[v6], __src, 0x128uLL);
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v11 = byte_286905D80[v7 + 32];
    if (v11 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v27 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v8 + 16) + 1, 1);
        v8 = v27;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_257BF2744((v9 > 1), v10 + 1, 1);
        v8 = v27;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v11;
    }

    ++v7;
  }

  while (v7 != 4);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks] = v8;
  v12 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView;
  v13 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 systemYellowColor];
  [v15 setTintColor_];

  [v15 setClipsToBounds_];
  *&v4[v12] = v15;
  v17 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v18 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController;
  type metadata accessor for ActivityDoorAttributeCustomizationViewController();
  *&v4[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_magnifierModelsManger;
  *&v4[v19] = [objc_opt_self() shared];
  if (a2)
  {
    v20 = sub_257ECF4C0();
  }

  else
  {
    v20 = 0;
  }

  v26.receiver = v4;
  v26.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, v20, a3, a1);

  return v21;
}

id sub_257DC7680(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity;
  sub_257C10998(__src);
  memcpy(&v2[v4], __src, 0x128uLL);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v9 = byte_286905DA8[v5 + 32];
    if (v9 != 3)
    {
      goto LABEL_10;
    }

    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
LABEL_10:
      v22 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2744(0, *(v6 + 16) + 1, 1);
        v6 = v22;
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_257BF2744((v7 > 1), v8 + 1, 1);
        v6 = v22;
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v9;
    }

    ++v5;
  }

  while (v5 != 4);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks] = v6;
  v10 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView;
  v11 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemYellowColor];
  [v13 setTintColor_];

  [v13 setClipsToBounds_];
  *&v2[v10] = v13;
  v15 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277D75360]) init];
  v16 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController;
  type metadata accessor for ActivityDoorAttributeCustomizationViewController();
  *&v2[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_magnifierModelsManger;
  *&v2[v17] = [objc_opt_self() shared];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v21, sel_initWithCoder_, a1);

  if (v18)
  {
  }

  return v18;
}

id sub_257DC7B54(void *a1, UIImage *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DA0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v205 - v8;
  v10 = sub_257ECCEA0();
  v11 = sub_257CA9794(v10);
  v210 = v7;
  if (v11 != 8)
  {
    if (v11 - 6 < 2)
    {
      if (sub_257ECCE60() != 1)
      {
        v19 = objc_allocWithZone(MEMORY[0x277D75B48]);
        v18 = sub_257ECF4C0();
        v15 = [v19 initWithStyle:1 reuseIdentifier:v18];
        goto LABEL_11;
      }
    }

    else if (v11 && v11 != 2)
    {
      goto LABEL_2;
    }

    v16 = v2;
    v17 = sub_257ECF4C0();
    v18 = sub_257ECCE30();
    v15 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:v18];

    v3 = v16;
LABEL_11:

    sub_257DC6CB0();
    goto LABEL_12;
  }

LABEL_2:
  v12 = v2;
  v13 = sub_257ECF4C0();
  v14 = sub_257ECCE30();
  v15 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:v14];

  v3 = v12;
  sub_257DC6CB0();
  if (v11 == 8)
  {
    return v15;
  }

LABEL_12:
  if (v11 > 3u)
  {
    if (v11 <= 5u)
    {
      if (v11 == 4)
      {
        v210 = v3;
        type metadata accessor for MAGUtilities();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v207 = objc_opt_self();
        v208 = ObjCClassFromMetadata;
        v35 = [v207 bundleForClass_];
        v209 = "detectionSection.name.backTap";
        v36 = sub_257ECF4C0();
        v37 = sub_257ECF4C0();
        v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

        v39 = v38;
        v40 = v38;
        if (!v38)
        {
          sub_257ECF500();
          v40 = sub_257ECF4C0();

          sub_257ECF500();
          v39 = sub_257ECF4C0();
        }

        v41 = v38;
        v42 = [v15 textLabel];
        if (v42)
        {
          v43 = v42;
          [v42 setText_];
        }

        v44 = [v15 textLabel];
        if (v44)
        {
          v45 = v44;
          [v44 setNumberOfLines_];
        }

        v46 = [v15 textLabel];
        if (v46)
        {
          v47 = v46;
          [v46 setLineBreakMode_];
        }

        [v15 setAccessoryType_];
        [v15 setShowsReorderControl_];
        v48 = objc_opt_self();
        v49 = *MEMORY[0x277D76918];
        v50 = [v48 preferredFontForTextStyle_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F82F0);
        v51 = swift_allocObject();
        v52 = MEMORY[0x277D740A8];
        *(v51 + 16) = xmmword_257ED6D30;
        v53 = *v52;
        *(v51 + 32) = v53;
        *(v51 + 40) = v50;
        v54 = v53;
        v55 = v50;
        v56 = sub_257BE8D30(v51);
        swift_setDeallocating();
        sub_257BE4084(v51 + 32, &unk_27F8F58D0);
        swift_deallocClassInstance();
        sub_257DF2814(v56);

        _s3__C3KeyVMa_0(0);
        sub_257BFB0F4(&qword_27F8F8300, _s3__C3KeyVMa_0);
        v57 = sub_257ECF3C0();

        [v39 sizeWithAttributes_];

        v58 = [v48 preferredFontForTextStyle_];
        [v58 lineHeight];
        v60 = v59;

        v61 = &v210[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
        memcpy(v217, &v210[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
        if (sub_257C108C4(v217) == 1)
        {

          return v15;
        }

        v210 = v55;
        v104 = v61[17];
        v105 = v61[18];
        v106 = v61[19];
        v107 = sub_257ECF4C0();
        v108 = objc_opt_self();
        v109 = [v108 systemImageNamed_];

        if (v109)
        {
          v110 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:v104 green:v105 blue:v106 alpha:1.0];
          v111 = [v109 imageWithTintColor_];
        }

        else
        {
          v111 = 0;
        }

        v117 = sub_257ECF4C0();
        v118 = [v108 systemImageNamed_];

        v119 = 0.0;
        if (v118)
        {
          v120 = [objc_opt_self() systemGrayColor];
          v121 = [v118 imageWithTintColor_];

          v122 = [v48 preferredFontForTextStyle_];
          v123 = [objc_opt_self() configurationWithFont_];

          v124 = [v121 imageWithSymbolConfiguration_];
          if (v124)
          {
            [v124 size];
            v119 = v125;
          }
        }

        else
        {
          v124 = 0;
        }

        v218.width = v60 + v119 + 5.0;
        v218.height = v60;
        UIGraphicsBeginImageContextWithOptions(v218, 0, 0.0);
        v126 = [objc_opt_self() sharedApplication];
        v127 = [v126 userInterfaceLayoutDirection];

        if (v127)
        {
          if (v124)
          {
            v128 = v124;
            [v128 size];
            v130 = (v60 - v129) * 0.5;
            [v128 size];
            v132 = v131;
            [v128 size];
            v133 = 0.0;
            [v128 drawInRect_];

            if (!v111)
            {
              goto LABEL_110;
            }

            v135 = v111;
            [v128 size];
            v137 = v136 + 5.0;
          }

          else
          {
            if (!v111)
            {
              goto LABEL_110;
            }

            v135 = v111;
            v133 = 0.0;
            v137 = 5.0;
          }

          v141 = v60;
        }

        else
        {
          if (v111)
          {
            [v111 drawInRect_];
          }

          if (!v124)
          {
LABEL_110:
            v205 = v124;
            v206 = v111;
            a2 = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
            [v15 setAccessoryView_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
            v3 = swift_allocObject();
            *(v3 + 1) = xmmword_257ED9BD0;
            v148 = [v207 bundleForClass_];
            v149 = sub_257ECF4C0();
            v150 = sub_257ECF4C0();
            v151 = [v148 localizedStringForKey:v149 value:0 table:v150];

            v152 = sub_257ECF500();
            v154 = v153;

            *(v3 + 7) = MEMORY[0x277D837D0];
            v6 = sub_257BFB13C();
            *(v3 + 8) = v6;
            *(v3 + 4) = v152;
            *(v3 + 5) = v154;
            if (qword_281544FE0 == -1)
            {
LABEL_111:
              v155 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionColor;
              swift_beginAccess();
              v156 = *(v155 + 8);
              v157 = *(v155 + 32);
              v158 = *(v155 + 16);
              *&v211[0] = *v155;
              *(&v211[0] + 1) = v156;
              v211[1] = v158;
              *&v211[2] = v157;
              v159 = qword_2815447E0;

              if (v159 != -1)
              {
                v160 = swift_once();
              }

              MEMORY[0x28223BE20](v160);
              *(&v205 - 2) = v211;
              sub_257ECFD50();

              v161 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*&v214 green:v215 blue:v216 alpha:1.0];
              v162 = [v161 _accessibilityNameWithLuma];

              v163 = sub_257ECF500();
              v165 = v164;

              *(v3 + 12) = MEMORY[0x277D837D0];
              *(v3 + 13) = v6;
              *(v3 + 9) = v163;
              *(v3 + 10) = v165;
              sub_257ECF540();
              v166 = sub_257ECF4C0();

              [v15 setAccessibilityLabel_];

              return v15;
            }

LABEL_155:
            swift_once();
            goto LABEL_111;
          }

          v137 = v60 + 5.0;
          v135 = v124;
          [v135 size];
          v133 = (v60 - v138) * 0.5;
          [v135 size];
          v60 = v139;
          [v135 size];
          v141 = v140;
        }

        [v135 drawInRect_];

        goto LABEL_110;
      }

      v74 = [v15 textLabel];
      if (v74)
      {
        v75 = v74;
        type metadata accessor for MAGUtilities();
        v76 = swift_getObjCClassFromMetadata();
        v77 = [objc_opt_self() bundleForClass_];
        v78 = sub_257ECF4C0();
        v79 = sub_257ECF4C0();
        v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

        if (!v80)
        {
          sub_257ECF500();
          v80 = sub_257ECF4C0();
        }

        [v75 setText_];
      }

      v31 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v81 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
      memcpy(v217, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v217) != 1)
      {
        [v31 setOn_];
        [v31 addTarget:v3 action:sel_didToggleBackTapSwitch_ forControlEvents:4096];
        [v15 setAccessoryView_];
        [v15 setAccessoryType_];
      }

LABEL_136:

      return v15;
    }

    if (v11 == 6)
    {
      sub_257DCB00C();
      memcpy(v217, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v217) == 1)
      {
        return v15;
      }

      v69 = [objc_opt_self() shared];
      v70 = [v69 doorAttributesClassifierProperties];

      if (v70)
      {
        *&v212 = 0xD000000000000017;
        *(&v212 + 1) = 0x8000000257EF93E0;
        v71 = [v70 __swift_objectForKeyedSubscript_];
        swift_unknownObjectRelease();
        if (v71)
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v212 = 0u;
          v213 = 0u;
        }

        v211[0] = v212;
        v211[1] = v213;
        if (*(&v213 + 1))
        {
          sub_257BD2C2C(0, &unk_27F8F58C0);
          if (swift_dynamicCast())
          {
            v142 = v214;
            v143 = [v214 count];

            v144 = v143 > 0;
LABEL_118:
            v167 = [v15 textLabel];
            if (v167)
            {
              v168 = v167;
              [v167 setNumberOfLines_];
            }

            v169 = [v15 textLabel];
            if (v169)
            {
              v170 = v169;
              [v169 setLineBreakMode_];
            }

            [v15 setAccessoryType_];
            [v15 setShowsReorderControl_];
            v171 = [v15 textLabel];
            if (v171)
            {
              v172 = v171;
              type metadata accessor for MAGUtilities();
              v173 = swift_getObjCClassFromMetadata();
              v174 = [objc_opt_self() bundleForClass_];
              v175 = sub_257ECF4C0();
              v176 = sub_257ECF4C0();
              v177 = [v174 localizedStringForKey:v175 value:0 table:v176];

              if (!v177)
              {
                sub_257ECF500();
                v177 = sub_257ECF4C0();
              }

              [v172 setText_];
            }

            v178 = [v15 textLabel];
            if (v178)
            {
              v179 = 0.5;
              if (v144)
              {
                v179 = 1.0;
              }

              v180 = v178;
              [v178 setAlpha_];
            }

            v181 = [v15 detailTextLabel];
            if (v181)
            {
              v182 = v181;
              type metadata accessor for MAGUtilities();
              v183 = swift_getObjCClassFromMetadata();
              v184 = [objc_opt_self() bundleForClass_];
              v185 = sub_257ECF4C0();
              v186 = sub_257ECF4C0();
              v187 = [v184 localizedStringForKey:v185 value:0 table:v186];

              sub_257ECF500();
              v188 = sub_257ECF4C0();

              [v182 setText_];
            }

            v189 = [v15 detailTextLabel];
            if (!v189)
            {
              return v15;
            }

            v190 = 0.5;
            if (v144)
            {
              v190 = 1.0;
            }

            v31 = v189;
            [v189 setAlpha_];
            goto LABEL_136;
          }
        }

        else
        {

          sub_257BE4084(v211, &unk_27F8F62F0);
        }
      }

      v144 = 0;
      goto LABEL_118;
    }

    sub_257DCB2C0();
    v90 = [v15 textLabel];
    if (v90)
    {
      v91 = v90;
      v92 = v3;
      type metadata accessor for MAGUtilities();
      v93 = swift_getObjCClassFromMetadata();
      v94 = [objc_opt_self() bundleForClass_];
      v95 = sub_257ECF4C0();
      v96 = sub_257ECF4C0();
      v97 = [v94 localizedStringForKey:v95 value:0 table:v96];

      if (!v97)
      {
        sub_257ECF500();
        v97 = sub_257ECF4C0();
      }

      [v91 setText_];

      v3 = v92;
    }

    v33 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v98 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
    memcpy(v217, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v217) == 1)
    {
      goto LABEL_151;
    }

    v99 = v98[176];
    v100 = [objc_opt_self() shared];
    v101 = [v100 signDetectorProperties];

    if (v101)
    {
      v102 = v3;
      *&v212 = 0xD000000000000013;
      *(&v212 + 1) = 0x8000000257EF9700;
      v103 = [v101 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v103)
      {
        sub_257ED0160();
        swift_unknownObjectRelease();
      }

      else
      {
        v212 = 0u;
        v213 = 0u;
      }

      v211[0] = v212;
      v211[1] = v213;
      if (*(&v213 + 1))
      {
        sub_257BD2C2C(0, &unk_27F8F58C0);
        if (swift_dynamicCast())
        {
          v145 = v214;
          v146 = [v214 count];

          v147 = v146 <= 0;
          v3 = v102;
          v101 = !v147;
          goto LABEL_139;
        }
      }

      else
      {

        sub_257BE4084(v211, &unk_27F8F62F0);
      }

      v101 = 0;
    }

LABEL_139:
    [v33 setOn_];
    v33 = v33;
    [v33 setUserInteractionEnabled_];
    [v33 addTarget:v3 action:sel_didToggleDecorationsSwitch_ forControlEvents:4096];
    [v15 setUserInteractionEnabled_];
    [v15 setAccessoryView_];
    [v15 setAccessoryType_];
    v191 = [v15 imageView];
    if (v191)
    {
      v192 = v191;
      [v191 setImage_];
    }

    v193 = [v15 textLabel];
    if (v193)
    {
      v194 = v193;
      v195 = [objc_opt_self() labelColor];
      [v194 setTextColor_];
    }

    v196 = [v15 textLabel];
    if (v101)
    {
      v197 = 1.0;
    }

    else
    {
      v197 = 0.5;
    }

    if (v196)
    {
      v198 = v196;
      [v196 setAlpha_];
    }

    [v33 setAlpha_];

    type metadata accessor for MAGUtilities();
    v199 = swift_getObjCClassFromMetadata();
    v200 = [objc_opt_self() bundleForClass_];
    v201 = sub_257ECF4C0();
    v202 = sub_257ECF4C0();
    v203 = [v200 localizedStringForKey:v201 value:0 table:v202];

    if (!v203)
    {
      sub_257ECF500();
      v203 = sub_257ECF4C0();
    }

    [v15 setAccessibilityLabel_];

    goto LABEL_151;
  }

  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      type metadata accessor for UIStepperLengthCell();
      if (swift_dynamicCastClass())
      {
        v62 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
        memcpy(v217, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
        if (sub_257C108C4(v217) != 1)
        {
          v63 = v62[78];
          memcpy(v211, v62, 0x128uLL);
          if (sub_257C108C4(v211) != 1)
          {
            v64 = objc_opt_self();
            v15 = v15;
            v65 = &selRef_feet;
            if (!v63)
            {
              v65 = &selRef_meters;
            }

            v66 = [v64 *v65];
            sub_257BD2C2C(0, &qword_27F8F58F0);
            sub_257ECC740();
            v67 = swift_allocObject();
            *(v67 + 16) = v3;
            v68 = v3;
            sub_257D3DB54(v9, sub_257DCB578, v67);

            (*(v210 + 1))(v9, v6);
          }
        }
      }

      return v15;
    }

    v82 = *&v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks];
    v83 = sub_257ECCE60();
    if ((v83 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v83 < *(v82 + 16))
    {
      v84 = *(v82 + v83 + 32);
      v85 = [v15 textLabel];
      if (v85)
      {
        v86 = v85;
        sub_257BF3B74();
        v87 = sub_257ECF4C0();

        [v86 setText_];
      }

      v88 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
      v89 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
      memcpy(v217, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v217) != 1)
      {
        [v88 setOn_];
        v88 = v88;
        [v88 setTag_];
        [v88 addTarget:v3 action:sel_didToggleFeedbackSwitch_ forControlEvents:4096];
        [v15 setAccessoryView_];

        [v15 setAccessoryType_];
      }

      return v15;
    }

    __break(1u);
    goto LABEL_155;
  }

  if (!v11)
  {
    v20 = [v15 textLabel];
    if (v20)
    {
      v21 = v20;
      v210 = v3;
      type metadata accessor for MAGUtilities();
      v22 = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() bundleForClass_];
      v24 = sub_257ECF4C0();
      v25 = sub_257ECF4C0();
      v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

      if (!v26)
      {
        sub_257ECF500();
        v26 = sub_257ECF4C0();
      }

      [v21 setText_];

      v3 = v210;
    }

    v27 = [v15 textLabel];
    if (v27)
    {
      v28 = v27;
      [v27 setNumberOfLines_];
    }

    v29 = [v15 textLabel];
    if (v29)
    {
      v30 = v29;
      [v29 setLineBreakMode_];
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    v32 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
    memcpy(v217, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
    if (sub_257C108C4(v217) != 1)
    {
      [v31 setOn_];
      v33 = v31;
      [v33 setTag_];
      [v33 addTarget:v3 action:sel_toggleDoorDetectionSwitchChanged_ forControlEvents:4096];
      [v15 setAccessoryView_];

LABEL_151:
      return v15;
    }

    goto LABEL_136;
  }

  v72 = sub_257ECCE60();
  if (v72)
  {
    if (v72 != 1)
    {
      return v15;
    }

    v73 = 1;
  }

  else
  {
    v73 = 0;
  }

  v112 = [v15 textLabel];
  if (v112)
  {
    v113 = v112;
    sub_257C69A6C();
    v114 = sub_257ECF4C0();

    [v113 setText_];
  }

  v115 = &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
  memcpy(v217, &v3[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
  if (sub_257C108C4(v217) != 1)
  {
    if ((v73 ^ v115[78]))
    {
      v116 = 0;
    }

    else
    {
      v116 = 3;
    }

    [v15 setAccessoryType_];
    [v15 setAccessoryView_];
  }

  return v15;
}

uint64_t sub_257DC9A60(double a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_257CE0E2C(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_257DC9BE0(void *a1)
{
  v2 = v1;
  sub_257DC6CB0();
  result = sub_257BBD7B8([a1 tag]);
  if (result != 4)
  {
    v5 = result;
    v6 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity;
    memcpy(__dst, (v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), 0x128uLL);
    result = sub_257C108C4(__dst);
    if (result != 1)
    {
      v7 = *(v6 + 112);

      if ([a1 isOn])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_257ED6D30;
        *(inited + 32) = v5;
        sub_257EB0610(inited);
        sub_257DC9DB0(v7);
      }

      else
      {
        v9 = *(v7 + 16);
        if (v9)
        {
          v10 = (v7 + 32);
          v11 = MEMORY[0x277D84F90];
          do
          {
            v15 = *v10++;
            v14 = v15;
            if (v15 != v5)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_257BF2744(0, *(v11 + 16) + 1, 1);
              }

              v13 = *(v11 + 16);
              v12 = *(v11 + 24);
              if (v13 >= v12 >> 1)
              {
                sub_257BF2744((v12 > 1), v13 + 1, 1);
              }

              *(v11 + 16) = v13 + 1;
              *(v11 + v13 + 32) = v14;
            }

            --v9;
          }

          while (v9);
        }

        else
        {
          v11 = MEMORY[0x277D84F90];
        }

        sub_257DC9DB0(v11);
      }
    }
  }

  return result;
}

uint64_t sub_257DC9DB0(uint64_t a1)
{
  sub_257DC6CB0();
  v7 = a1;

  sub_257D6D198(&v7);
  v3 = v7;
  v4 = v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity;
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity), 0x128uLL);
  if (sub_257C108C4(__dst) == 1 || (sub_257D7430C(*(v4 + 112), v3) & 1) != 0 || !swift_unknownObjectWeakLoadStrong())
  {
  }

  sub_257CE1094(v3);

  return swift_unknownObjectRelease();
}

void sub_257DC9F28(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = a3;
    v8 = a1;
    a4([v7 isOn]);
    swift_unknownObjectRelease();
  }
}

id sub_257DCA004(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (sub_257CA9794(a4) == 8 || (a5(), !v6))
  {
    v8 = 0;
  }

  else
  {
    v7 = sub_257ECF4C0();

    v8 = v7;
  }

  return v8;
}

void sub_257DCA158(void *a1)
{
  v3 = sub_257ECCDF0();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECDA30();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECCEB0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v1;
  sub_257DC6CB0();
  v12 = sub_257ECCE30();
  v49 = [a1 cellForRowAtIndexPath_];

  if (!v49)
  {
    return;
  }

  v13 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v13 animated:1];

  v14 = sub_257ECCEA0();
  v15 = sub_257CA9794(v14);
  if (v15 <= 3)
  {
    if (v15 <= 1 && v15)
    {
      v16 = sub_257ECCE60();
      if (v16)
      {
        if (v16 != 1)
        {
          goto LABEL_17;
        }

        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      v22 = &v48[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity];
      memcpy(v53, &v48[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_activity], 0x128uLL);
      if (sub_257C108C4(v53) != 1 && v17 != v22[78])
      {
        v41 = OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_257CE11D4(v17);
          swift_unknownObjectRelease();
        }

        v42 = v17;
        v43 = (v9 + 8);
        MEMORY[0x259C6F970](byte_286905DF0, 1);
        v23 = sub_257ECCE30();
        v24 = [a1 cellForRowAtIndexPath_];

        if (v24)
        {
          [v24 setAccessoryType_];
        }

        v25 = *v43;
        (*v43)(v11, v8);
        MEMORY[0x259C6F970](byte_286905DF1, 1);
        v26 = sub_257ECCE30();
        v27 = [a1 cellForRowAtIndexPath_];

        if (v27)
        {
          [v27 setAccessoryType_];
        }

        v25(v11, v8);
        [v49 setAccessoryType_];
        sub_257ECD420();
        v28 = sub_257ECDA20();
        v29 = sub_257ECFBD0();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = v42;
          v31 = swift_slowAlloc();
          *v31 = 134217984;
          *(v31 + 4) = v30;
          _os_log_impl(&dword_257BAC000, v28, v29, "New door detection unit: %ld", v31, 0xCu);
          MEMORY[0x259C74820](v31, -1, -1);
        }

        (*(v44 + 8))(v7, v5);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v32 = 2.0;
          if (v42)
          {
            v32 = 6.0;
          }

          sub_257CE0E2C(v32);
          swift_unknownObjectRelease();
        }

        [a1 beginUpdates];
        *&v51 = &unk_286905DF8;
        sub_257BFB0F4(&qword_27F8F58A0, MEMORY[0x277CC9A28]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D80);
        sub_257C10934();
        v33 = v45;
        v34 = v47;
        sub_257ED0180();
        v35 = sub_257ECCDE0();
        (*(v46 + 8))(v33, v34);
        [a1 reloadSections:v35 withRowAnimation:100];

        [a1 endUpdates];
      }

      goto LABEL_45;
    }

LABEL_17:
    v21 = v49;

    return;
  }

  if (v15 <= 5)
  {
    if (v15 == 4)
    {
      [v48 presentViewController:*&v48[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_colorPickerController] animated:1 completion:0];
    }

    goto LABEL_17;
  }

  if (v15 != 6)
  {
    goto LABEL_17;
  }

  v18 = [objc_opt_self() shared];
  v19 = [v18 doorAttributesClassifierProperties];

  if (!v19)
  {
    goto LABEL_17;
  }

  *&v51 = 0xD000000000000017;
  *(&v51 + 1) = 0x8000000257EF93E0;
  v20 = [v19 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v20)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53[0] = v51;
  v53[1] = v52;
  if (!*(&v52 + 1))
  {

    sub_257BE4084(v53, &unk_27F8F62F0);
    return;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_45:
    return;
  }

  v36 = v50;
  if ([v50 count] >= 1)
  {
    v37 = v48;
    v38 = [v48 navigationController];
    if (v38)
    {
      v39 = *&v37[OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_doorAttributesController];
      v40 = v38;
      [v38 pushViewController:v39 animated:1];
    }
  }
}

void sub_257DCAA34(void *a1)
{
  v2 = v1;
  v3 = [a1 selectedColor];
  v4 = [v3 CGColor];

  v5 = sub_257ECFB30();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &unk_286905E20;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {

    goto LABEL_10;
  }

  v7 = *(v6 + 2);
  if (!v7)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v7 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 3)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];

  sub_257CE11EC(v8, v9, v10);
  swift_unknownObjectRelease();
LABEL_10:
  sub_257DC6CB0();
  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](0, 4);
  v12 = sub_257ECF7F0();

  [v11 reloadRowsAtIndexPaths:v12 withRowAnimation:5];
}

uint64_t sub_257DCAC9C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle + 8);
    if (v3)
    {
      v4 = *(result + OBJC_IVAR____TtC16MagnifierSupport30ActivityControlsViewController_nameTitle);

      sub_257CE0C0C(__src);

      __src[21] = a1;
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      memcpy(__dst, __src, sizeof(__dst));
      v5 = __dst[0];
      memcpy(v6, __src, sizeof(v6));
      sub_257C09C58(__dst, v9);
      sub_257D58DA0(v4, v3, v6, 0);

      memcpy(v9, v6, sizeof(v9));
      sub_257C63C04(v9);
      if (v5 == 1)
      {
        sub_257D52CC8(a1);
      }

      swift_unknownObjectRelease();
      memcpy(v6, __src, sizeof(v6));
      return sub_257C63C04(v6);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_257DCAE38()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_tableView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5570);
  sub_257ECCEB0();
  *(swift_allocObject() + 16) = xmmword_257ED6D30;
  MEMORY[0x259C6F990](0, 6);
  v2 = sub_257ECF7F0();

  [v1 reloadRowsAtIndexPaths:v2 withRowAnimation:5];
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257DCAF74(unint64_t a1)
{
  v2 = sub_257CA9794(a1);
  if (v2 > 4)
  {
    if ((v2 - 6) < 2)
    {
      return 1;
    }

    if (v2 == 5)
    {
      return AXDeviceSupportsBackTap();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v2 > 1)
    {
      if (v2 == 3)
      {
        return *(*(v1 + OBJC_IVAR____TtC16MagnifierSupport48ActivityDoorDetectionCustomizationViewController_availableDetectionFeedbacks) + 16);
      }

      return 1;
    }

    if (!v2)
    {
      return 1;
    }

    return 2;
  }
}

void sub_257DCB00C()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = [objc_opt_self() shared];
  v5 = [v4 downloadManager];

  v6 = sub_257ECF4C0();
  [v5 totalDownloadedWithName_];
  v8 = v7;

  if (v8 >= 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloaded) = 1;
    *(v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorAttributesAssetDownloading) = 0;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
    swift_beginAccess();
    v13 = 0;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v10 = sub_257ECF110();
    MEMORY[0x28223BE20](v10);
    *&v12[-16] = &v13;
    *&v12[-8] = v9;
    sub_257ECFD40();
    (*(v1 + 8))(v3, v0);
    swift_endAccess();
  }
}

void sub_257DCB2C0()
{
  v0 = sub_257ECF120();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = [objc_opt_self() shared];
  v5 = [v4 downloadManager];

  v6 = sub_257ECF4C0();
  [v5 totalDownloadedWithName_];
  v8 = v7;

  if (v8 >= 100.0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = qword_281548348;
    *(qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloaded) = 1;
    *(v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_doorSignsAssetDownloading) = 0;
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v9 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionDecorations;
    swift_beginAccess();
    v13 = 0;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v10 = sub_257ECF110();
    MEMORY[0x28223BE20](v10);
    *&v12[-16] = &v13;
    *&v12[-8] = v9;
    sub_257ECFD40();
    (*(v1 + 8))(v3, v0);
    swift_endAccess();
  }
}

uint64_t sub_257DCB580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9608);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_257DCB5F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v4 = sub_257ECCCF0();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_257DCB6E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_257DCB7E0(uint64_t a1)
{
  v2 = sub_257ECCCF0();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_257DCB8AC(v4);
}

uint64_t sub_257DCB8AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_257DCDF4C(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
  v14[0] = a1;
  LOBYTE(a1) = sub_257ECF450();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCED0();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_257DCBB4C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_257DCBBE8()
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  return *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection);
}

uint64_t sub_257DCBC90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection);
  return result;
}

uint64_t sub_257DCBD68(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCED0();
  }

  return result;
}

uint64_t sub_257DCBE90()
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  return *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange);
}

__n128 sub_257DCBF40@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v4 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16);
  result = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_257DCC030(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  if ((*(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) & 1) == 0)
  {
    if ((a3 & 1) != 0 || (*v4 ^ result) >> 14 || (*(v4 + 8) ^ a2) >= 0x4000)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v4 = result;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCED0();
}

uint64_t sub_257DCC194(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = result + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  *v4 = a2;
  *(v4 + 8) = a3;
  *(v4 + 16) = a4 & 1;
  return result;
}

uint64_t sub_257DCC1B0()
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();
}

uint64_t sub_257DCC25C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges);
}

uint64_t sub_257DCC33C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges;
  if (sub_257D5675C(*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCED0();
  }
}

uint64_t sub_257DCC488(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges) = a2;
}

uint64_t sub_257DCC4CC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  *a1 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
  return result;
}

uint64_t sub_257DCC57C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  *a2 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
  return result;
}

_BYTE *sub_257DCC664(_BYTE *result)
{
  v2 = *result;
  v3 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        if (v3 == 4)
        {
          goto LABEL_13;
        }
      }

      else if (v3 == 5)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (v3 != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*result)
    {
      if (v2 == 1)
      {
        if (v3 == 1)
        {
          goto LABEL_13;
        }
      }

      else if (v3 == 2)
      {
        goto LABEL_13;
      }

LABEL_11:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
      sub_257ECCED0();
    }

    if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed))
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  *(v1 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed) = v2;
  return result;
}

uint64_t sub_257DCC7E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_257ECD1A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - v11;
  v13 = a1[1];
  v14 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock_blockText + 8);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a2 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock_blockText) & 0xFFFFFFFFFFFFLL;
  }

  if (v13 >> 14 <= 4 * v15 && v13 >> 14 >= *a1 >> 14)
  {
    v20[1] = a3;
    v17 = sub_257ECF720();
    MEMORY[0x259C720C0](v17);

    sub_257ECD1B0();
    sub_257ECC3F0();
    sub_257ECD190();

    v18 = *(v7 + 8);
    v18(v10, v6);
    sub_257ECCFA0();
    v18(v12, v6);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    swift_getKeyPath();
    *&v23[0] = a2;
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCEE0();

    LOBYTE(v23[0]) = 0;
    sub_257ECCF90();
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_257ECCF80();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v21);
    __swift_destroy_boxed_opaque_existential_0(v22);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_257ECD130();
    sub_257C024BC(v22, v21);
    sub_257ECD180();
    sub_257DCDFB8(v21);
    __swift_destroy_boxed_opaque_existential_0(v22);
    __swift_destroy_boxed_opaque_existential_0(v23);
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_257ECD180();
    sub_257DCDFB8(v23);
  }

  sub_257ECD130();
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_257DCCB38(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  if ((*(a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) & 1) == 0 && (!((*v6 ^ result) >> 14) ? (v7 = (*(v6 + 8) ^ a2) >> 14 == 0) : (v7 = 0), v7))
  {
    *v6 = result;
    *(v6 + 8) = a2;
    *(v6 + 16) = 0;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCED0();
  }

  if (*(a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection))
  {
    *(a5 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = 1;
  }

  else
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCED0();
  }

  return result;
}

uint64_t sub_257DCCD64@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v7 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges);
  v8 = *(v7 + 16);

  if (v8)
  {
    v10 = 0;
    v11 = a1 >> 14;
    v12 = a2 >> 14;
    v13 = -v8;
    v14 = v7 + 56;
    v15 = MEMORY[0x277D84F90];
    v29 = a3;
    do
    {
      v16 = *(v7 + 16);
      if (v10 > v16)
      {
        v16 = v10;
      }

      v17 = -v16;
      v18 = (v14 + 32 * v10++);
      while (1)
      {
        if (v17 + v10 == 1)
        {
          __break(1u);
          return result;
        }

        v19 = *(v18 - 3);
        v20 = *(v18 - 2);
        if (v19 >> 14 >= v11)
        {
          break;
        }

        v21 = v19 >> 14 >= v12 || v11 == v12;
        if (!v21 && v11 < v20 >> 14)
        {
          break;
        }

        ++v10;
        v18 += 4;
        if (v13 + v10 == 1)
        {
          goto LABEL_23;
        }
      }

      v30 = *(v18 - 1);
      v31 = *v18;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_257BF2924(0, *(v15 + 16) + 1, 1);
      }

      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      v14 = v7 + 56;
      if (v24 >= v23 >> 1)
      {
        result = sub_257BF2924((v23 > 1), v24 + 1, 1);
        v14 = v7 + 56;
      }

      *(v15 + 16) = v24 + 1;
      v25 = (v15 + 32 * v24);
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v30;
      v25[7] = v31;
      a3 = v29;
    }

    while (v13 + v10);
  }

LABEL_23:

  v26 = sub_257ECF6C0();
  MEMORY[0x28223BE20](v26);
  v27 = sub_257ECD1C0();
  v28 = MEMORY[0x277D703A0];
  a3[3] = v27;
  a3[4] = v28;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_257ECD1D0();
}

uint64_t sub_257DCD004@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_257ECD1A0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = v25 - v16;
  v18 = *a1;
  v19 = a1[2];
  v20 = a2 >> 14;
  v21 = a1[1] >> 14;
  if (*a1 >> 14 < a2 >> 14)
  {
    if (v21 >= v20)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v20 = v18 >> 14;
LABEL_5:
  if (v21 < v20)
  {
    __break(1u);
  }

  else
  {
    v25[1] = v19;
    v22 = sub_257ECF720();
    MEMORY[0x259C720C0](v22);
    v25[2] = a5;

    sub_257ECD1B0();
    v23 = swift_allocObject();
    *(v23 + 16) = a3;
    *(v23 + 24) = a4;
    sub_257ECC3F0();
    sub_257ECD190();

    v24 = *(v11 + 8);
    v24(v14, v10);
    sub_257ECCFA0();
    v24(v17, v10);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    swift_getKeyPath();
    v29[0] = a3;
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCEE0();

    LOBYTE(v29[0]) = 0;
    sub_257ECCF90();
    __swift_project_boxed_opaque_existential_1(v27, v27[3]);
    sub_257ECCF80();
    sub_257ECD130();
    __swift_destroy_boxed_opaque_existential_0(v26);
    __swift_destroy_boxed_opaque_existential_0(v27);
    __swift_destroy_boxed_opaque_existential_0(v28);
    sub_257ECD130();
    return __swift_destroy_boxed_opaque_existential_0(v29);
  }

  return result;
}

unint64_t sub_257DCD334()
{
  result = sub_257ECF610();
  if ((v1 & 1) == 0)
  {
    v2 = result;
    result = sub_257ECF610();
    if ((v3 & 1) == 0)
    {
      if (result >> 14 < v2 >> 14)
      {
        __break(1u);
      }

      else
      {
        return sub_257DCC030(v2, result, 0);
      }
    }
  }

  return result;
}

void sub_257DCD40C()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) == 1)
  {
    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCED0();
  }

  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection))
  {
    v3 = swift_getKeyPath();
    MEMORY[0x28223BE20](v3);
    sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCED0();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = 0;
  }
}

uint64_t sub_257DCD608()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  v2 = sub_257ECCCF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock___observationRegistrar;
  v4 = sub_257ECCF20();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MFReaderTextBlock()
{
  result = qword_27F8F9640;
  if (!qword_27F8F9640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257DCD75C()
{
  result = sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    result = sub_257ECCF20();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_257DCD858@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v4 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_257DCD950()
{
  sub_257ED07B0();
  type metadata accessor for MFReaderTextBlock();
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DCD9B0()
{
  v1 = sub_257ECCCF0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  swift_getKeyPath();
  v8[1] = v5;
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v6 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_257DCDF4C(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_257DCDB74()
{
  sub_257ED07B0();
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257DCDC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  swift_getKeyPath();
  v16[3] = a1;
  sub_257DCDF4C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v11 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  swift_getKeyPath();
  v16[0] = a2;
  sub_257ECCEE0();

  v13 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v12(v8, a2 + v13, v4);
  LOBYTE(v13) = sub_257ECCCC0();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13 & 1;
}

__n128 sub_257DCDEB8()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

uint64_t sub_257DCDF08()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges) = *(v0 + 24);
}

uint64_t sub_257DCDF4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257DCDFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_257DCE050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v5[OBJC_IVAR____TtC16MagnifierSupport24OnboardingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a5)
  {
    v8 = objc_opt_self();
    v9 = a5;
    v10 = [v8 systemYellowColor];
    v11 = [v9 imageWithTintColor_];
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_257ECF4C0();
  if (a4)
  {

    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v19.receiver = v5;
  v19.super_class = type metadata accessor for OnboardingViewController();
  v14 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v12, v13, v11, 2);

  v15 = v14;
  result = [v15 view];
  if (result)
  {
    v17 = result;

    v18 = [objc_opt_self() systemYellowColor];
    [v17 setTintColor_];

    sub_257DCE2AC();
    sub_257DCF180();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257DCE2AC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_257ECF4C0();
  v4 = sub_257ECF4C0();
  v5 = [v2 localizedStringForKey:v3 value:0 table:v4];

  if (!v5)
  {
    sub_257ECF500();
    v5 = sub_257ECF4C0();
  }

  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v6 = [v1 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = v1;
  v10 = [v6 localizedStringForKey:v7 value:0 table:v8];

  sub_257ECF500();
  v11 = sub_257ECF4C0();

  v12 = sub_257ECF4C0();
  v13 = objc_opt_self();
  v14 = [v13 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v5 description:v11 symbolName:v12 tintColor:v14];

  v15 = [v9 &selRef:ObjCClassFromMetadata setValues:? + 3];
  v16 = sub_257ECF4C0();
  v17 = sub_257ECF4C0();
  v18 = [v15 localizedStringForKey:v16 value:0 table:v17];

  if (!v18)
  {
    sub_257ECF500();
    v18 = sub_257ECF4C0();
  }

  v19 = [v9 &selRef:ObjCClassFromMetadata setValues:0xD00000000000001ALL + 3];
  v20 = sub_257ECF4C0();
  v21 = sub_257ECF4C0();
  v22 = [v19 localizedStringForKey:v20 value:0 table:v21];

  sub_257ECF500();
  v23 = sub_257ECF4C0();

  v24 = sub_257ECF4C0();
  v79 = v13;
  v25 = [v13 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v18 description:v23 symbolName:v24 tintColor:v25];

  if (qword_27F8F4618 != -1)
  {
    swift_once();
  }

  v26 = v9;
  if (byte_27F8F78A0 == 1)
  {
    v27 = [v9 bundleForClass_];
    v28 = sub_257ECF4C0();
    v29 = sub_257ECF4C0();
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

    if (!v30)
    {
      sub_257ECF500();
      v30 = sub_257ECF4C0();
    }

    v31 = [v9 bundleForClass_];
    v32 = sub_257ECF4C0();
    v33 = sub_257ECF4C0();
    v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

    sub_257ECF500();
    v35 = sub_257ECF4C0();

    v36 = sub_257ECF4C0();
    v37 = [v13 systemYellowColor];
    [v81 addBulletedListItemWithTitle:v30 description:v35 symbolName:v36 tintColor:v37];

    v38 = [v9 bundleForClass_];
    v39 = sub_257ECF4C0();
    v40 = sub_257ECF4C0();
    v41 = [v38 localizedStringForKey:v39 value:0 table:v40];

    if (!v41)
    {
      sub_257ECF500();
      v41 = sub_257ECF4C0();
    }

    v42 = [v9 &selRef:ObjCClassFromMetadata setValues:? + 3];
    v43 = sub_257ECF4C0();
    v44 = sub_257ECF4C0();
    v26 = v9;
    v45 = [v42 localizedStringForKey:v43 value:0 table:v44];

    sub_257ECF500();
    v46 = sub_257ECF4C0();

    v47 = sub_257ECF4C0();
    v48 = [v13 systemYellowColor];
    [v81 addBulletedListItemWithTitle:v41 description:v46 symbolName:v47 tintColor:v48];

    v49 = [v9 bundleForClass_];
    v50 = sub_257ECF4C0();
    v51 = sub_257ECF4C0();
    v52 = [v49 localizedStringForKey:v50 value:0 table:v51];

    if (!v52)
    {
      sub_257ECF500();
      v52 = sub_257ECF4C0();
    }

    v53 = [v9 bundleForClass_];
    v54 = sub_257ECF4C0();
    v55 = sub_257ECF4C0();
    v56 = [v53 localizedStringForKey:v54 value:0 table:v55];

    sub_257ECF500();
    v57 = sub_257ECF4C0();

    v58 = sub_257ECF4C0();
    v59 = [v13 systemYellowColor];
    [v81 addBulletedListItemWithTitle:v52 description:v57 symbolName:v58 tintColor:v59];
  }

  v60 = [v26 bundleForClass_];
  v61 = sub_257ECF4C0();
  v62 = sub_257ECF4C0();
  v63 = [v60 localizedStringForKey:v61 value:0 table:v62];

  if (!v63)
  {
    sub_257ECF500();
    v63 = sub_257ECF4C0();
  }

  v64 = [v26 bundleForClass_];
  v65 = sub_257ECF4C0();
  v66 = sub_257ECF4C0();
  v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

  if (!v67)
  {
    sub_257ECF500();
    v67 = sub_257ECF4C0();
  }

  v68 = sub_257ECF4C0();
  v69 = [v13 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v63 description:v67 symbolName:v68 tintColor:v69];

  v70 = [v26 bundleForClass_];
  v71 = sub_257ECF4C0();
  v72 = sub_257ECF4C0();
  v73 = [v70 localizedStringForKey:v71 value:0 table:v72];

  if (!v73)
  {
    sub_257ECF500();
    v73 = sub_257ECF4C0();
  }

  v74 = [v26 bundleForClass_];
  v75 = sub_257ECF4C0();
  v76 = sub_257ECF4C0();
  v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

  if (!v77)
  {
    sub_257ECF500();
    v77 = sub_257ECF4C0();
  }

  v78 = sub_257ECF4C0();
  v80 = [v79 systemYellowColor];
  [v81 addBulletedListItemWithTitle:v73 description:v77 symbolName:v78 tintColor:v80];
}

void sub_257DCF180()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - v6;
  v8 = [objc_opt_self() boldButton];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 bundleForClass_];
  v13 = sub_257ECF4C0();
  v14 = sub_257ECF4C0();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  if (!v15)
  {
    sub_257ECF500();
    v15 = sub_257ECF4C0();
  }

  [v11 setTitle:v15 forState:0];

  sub_257ED0040();
  v16 = sub_257ED0030();
  if ((*(*(v16 - 8) + 48))(v7, 1, v16))
  {
    sub_257C3366C(v7, v5);
    sub_257ED0050();

    sub_257C336DC(v7);
  }

  else
  {
    v17 = [objc_opt_self() blackColor];
    sub_257ED0000();
    sub_257ED0050();
  }

  [v11 addTarget:v1 action:sel_didTapStart forControlEvents:64];
  v18 = [objc_opt_self() systemYellowColor];
  [v11 setTintColor_];

  v19 = [v1 buttonTray];
  [v19 addButton_];
}

id sub_257DCF728()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MAGActionHandler.send(_:)(uint64_t a1)
{
  *(v2 + 176) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 184) = v4;
  *(v2 + 192) = *(v4 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = *a1;
  *(v2 + 81) = *(a1 + 16);
  sub_257ECF900();
  *(v2 + 240) = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  *(v2 + 248) = v6;
  *(v2 + 256) = v5;

  return MEMORY[0x2822009F8](sub_257DCF8BC, v6, v5);
}

uint64_t sub_257DCF8BC()
{
  v40 = v0;
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 264) = v2;
  v3 = *(v2 + 32);
  *(v0 + 82) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 272) = v6;
    *(v0 + 280) = v7;
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v2 + 48);
    v12 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v13 = *(v11 + v12);
    *(v0 + 288) = v13;
    v14 = *(v11 + v12 + 8);
    *(v0 + 296) = v14;
    v15 = (*(v2 + 56) + v12);
    v38 = *v15;
    *(v0 + 304) = v15[1];
    v16 = *(v0 + 81);

    sub_257ECC3F0();
    sub_257ECD4F0();

    sub_257CCE9D4(v10, v9, v16);
    v17 = sub_257ECDA20();
    v18 = sub_257ECFBC0();
    sub_257C6DA74(v10, v9, v16);

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 81);
      v20 = *(v0 + 224);
      v21 = *(v0 + 232);
      v34 = *(v0 + 192);
      v35 = *(v0 + 184);
      v36 = *(v0 + 216);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v39 = v23;
      *v22 = 136315394;
      *(v0 + 152) = 0x203A6E6F69746341;
      *(v0 + 160) = 0xE800000000000000;
      *(v0 + 112) = v20;
      *(v0 + 120) = v21;
      *(v0 + 128) = v19;
      v24 = MAGAction.ActionType.description.getter();
      MEMORY[0x259C72150](v24);

      v25 = sub_257BF1FC8(*(v0 + 152), *(v0 + 160), &v39);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_257BF1FC8(v13, v14, &v39);
      _os_log_impl(&dword_257BAC000, v17, v18, "Will dispatch action=%s to handler=%s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v23, -1, -1);
      MEMORY[0x259C74820](v22, -1, -1);

      v26 = *(v34 + 8);
      v26(v36, v35);
    }

    else
    {
      v27 = *(v0 + 216);
      v29 = *(v0 + 184);
      v28 = *(v0 + 192);

      v26 = *(v28 + 8);
      v26(v27, v29);
    }

    *(v0 + 312) = v26;
    v30 = *(v0 + 81);
    *(v0 + 64) = *(v0 + 224);
    *(v0 + 80) = v30;
    v37 = (v38 + *v38);
    v31 = swift_task_alloc();
    *(v0 + 320) = v31;
    *v31 = v0;
    v31[1] = sub_257DCFD00;

    return v37();
  }

  else
  {
    v8 = 0;
    while (((63 - v5) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_257DCFD00()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_257DD0430;
  }

  else
  {
    v5 = sub_257DCFE24;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_257DCFE24()
{
  v57 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 81);
  sub_257ECD4F0();

  sub_257CCE9D4(v2, v1, v3);
  v4 = sub_257ECDA20();
  v5 = sub_257ECFBC0();

  sub_257C6DA74(v2, v1, v3);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v8 = *(v0 + 81);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v53 = *(v0 + 208);
    v55 = *(v0 + 312);
    v50 = *(v0 + 184);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v56 = v12;
    *v11 = 136315394;
    v13 = sub_257BF1FC8(v7, v6, &v56);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    *(v0 + 88) = v10;
    *(v0 + 136) = 0x203A6E6F69746341;
    *(v0 + 144) = 0xE800000000000000;
    *(v0 + 96) = v9;
    *(v0 + 104) = v8;
    v14 = MAGAction.ActionType.description.getter();
    MEMORY[0x259C72150](v14);

    v15 = sub_257BF1FC8(*(v0 + 136), *(v0 + 144), &v56);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_257BAC000, v4, v5, "Handler=%s did handle action=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v12, -1, -1);
    MEMORY[0x259C74820](v11, -1, -1);

    result = v55(v53, v50);
  }

  else
  {
    v17 = *(v0 + 312);
    v18 = *(v0 + 208);
    v19 = *(v0 + 184);

    result = v17(v18, v19);
  }

  v20 = *(v0 + 280);
  v21 = (*(v0 + 272) - 1) & *(v0 + 272);
  if (v21)
  {
    v22 = *(v0 + 264);
LABEL_10:
    *(v0 + 272) = v21;
    *(v0 + 280) = v20;
    v25 = *(v0 + 224);
    v24 = *(v0 + 232);
    v26 = *(v22 + 48);
    v27 = (v20 << 10) | (16 * __clz(__rbit64(v21)));
    v28 = *(v26 + v27);
    *(v0 + 288) = v28;
    v29 = *(v26 + v27 + 8);
    *(v0 + 296) = v29;
    v30 = (*(v22 + 56) + v27);
    v54 = *v30;
    *(v0 + 304) = v30[1];
    v31 = *(v0 + 81);

    sub_257ECC3F0();
    sub_257ECD4F0();

    sub_257CCE9D4(v25, v24, v31);
    v32 = sub_257ECDA20();
    v33 = sub_257ECFBC0();
    sub_257C6DA74(v25, v24, v31);

    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 81);
      v35 = *(v0 + 224);
      v36 = *(v0 + 232);
      v48 = *(v0 + 192);
      v49 = *(v0 + 184);
      v51 = *(v0 + 216);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315394;
      *(v0 + 152) = 0x203A6E6F69746341;
      *(v0 + 160) = 0xE800000000000000;
      *(v0 + 112) = v35;
      *(v0 + 120) = v36;
      *(v0 + 128) = v34;
      v39 = MAGAction.ActionType.description.getter();
      MEMORY[0x259C72150](v39);

      v40 = sub_257BF1FC8(*(v0 + 152), *(v0 + 160), &v56);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_257BF1FC8(v28, v29, &v56);
      _os_log_impl(&dword_257BAC000, v32, v33, "Will dispatch action=%s to handler=%s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C74820](v38, -1, -1);
      MEMORY[0x259C74820](v37, -1, -1);

      v41 = *(v48 + 8);
      v41(v51, v49);
    }

    else
    {
      v42 = *(v0 + 216);
      v44 = *(v0 + 184);
      v43 = *(v0 + 192);

      v41 = *(v43 + 8);
      v41(v42, v44);
    }

    *(v0 + 312) = v41;
    v45 = *(v0 + 81);
    *(v0 + 64) = *(v0 + 224);
    *(v0 + 80) = v45;
    v52 = (v54 + *v54);
    v46 = swift_task_alloc();
    *(v0 + 320) = v46;
    *v46 = v0;
    v46[1] = sub_257DCFD00;

    return v52();
  }

  else
  {
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        return result;
      }

      v22 = *(v0 + 264);
      if (v23 >= (((1 << *(v0 + 82)) + 63) >> 6))
      {
        break;
      }

      v21 = *(v22 + 8 * v23 + 64);
      ++v20;
      if (v21)
      {
        v20 = v23;
        goto LABEL_10;
      }
    }

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_257DD0430()
{
  v35 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 232);
  v3 = *(v0 + 224);
  v4 = *(v0 + 81);

  sub_257ECD4F0();

  sub_257CCE9D4(v3, v2, v4);
  v5 = v1;
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBE0();

  sub_257C6DA74(v3, v2, v4);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 81);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v27 = *(v0 + 200);
    v28 = *(v0 + 312);
    v26 = *(v0 + 184);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315650;
    v15 = sub_257BF1FC8(v9, v8, &v29);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v30 = 0x203A6E6F69746341;
    v31 = 0xE800000000000000;
    v32 = v12;
    v33 = v11;
    v34 = v10;
    v16 = MAGAction.ActionType.description.getter();
    MEMORY[0x259C72150](v16);

    v17 = sub_257BF1FC8(v30, v31, &v29);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_257ED0720();
    v20 = sub_257BF1FC8(v18, v19, &v29);

    *(v13 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v6, v7, "Handler=%s error handling action=%s. Error=%s", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v14, -1, -1);
    MEMORY[0x259C74820](v13, -1, -1);

    v28(v27, v26);
  }

  else
  {
    v21 = *(v0 + 312);
    v22 = *(v0 + 200);
    v23 = *(v0 + 184);

    v21(v22, v23);
  }

  swift_willThrow();

  v24 = *(v0 + 8);

  return v24();
}

uint64_t MAGActionHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  swift_beginAccess();

  sub_257ECC3F0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + 16);
  *(v5 + 16) = 0x8000000000000000;
  sub_257EC7CC4(&unk_257EE7DB0, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t MAGActionHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE96D4(MEMORY[0x277D84F90]);
  return v0;
}

Swift::Void __swiftcall MAGActionHandler.unregister(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  v5 = sub_257C03F6C(countAndFlagsBits, object);
  v7 = v6;

  if (v7)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 16);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_257C093D4();
    }

    sub_257C09E7C(v5, v9);
    *(v2 + 16) = v9;
  }

  swift_endAccess();
}

uint64_t MAGActionHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257DD0A00()
{
  if (qword_281543D70 != -1)
  {
    result = swift_once();
  }

  if (byte_281548078)
  {
    v0 = 73.0;
  }

  else
  {
    if (qword_27F8F4668 != -1)
    {
      result = swift_once();
    }

    v0 = 100.0;
    if (byte_27F8F8D88)
    {
      v0 = 73.0;
    }
  }

  qword_2815480C8 = *&v0;
  return result;
}

void sub_257DD0ABC()
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v0 = sub_257DD1C7C();
  }

  else
  {
    v1 = sub_257ECF030();
    v0 = 50.0;
    if (v1)
    {
      v0 = 24.0;
    }
  }

  qword_2815480C0 = *&v0;
}

uint64_t sub_257DD0B38()
{
  result = sub_257ECF030();
  v1 = 16.0;
  if (result)
  {
    v1 = 24.0;
  }

  qword_2815480B8 = *&v1;
  return result;
}

uint64_t sub_257DD0B68()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView;
  [*(*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView] + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) bounds];
  [v0 convertRect:*(*&v0[v1] + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) fromCoordinateSpace:?];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView] bounds];
  [v0 convertRect:*&v0[v10] fromCoordinateSpace:?];
  CGRectGetMinY(v14);
  v15.origin.x = v3;
  v15.origin.y = v5;
  v15.size.width = v7;
  v15.size.height = v9;
  CGRectGetMinY(v15);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_2815447E0;

  if (v11 != -1)
  {
    v12 = swift_once();
  }

  MEMORY[0x28223BE20](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();
}

void sub_257DD0E2C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v3 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_257EDBE40;
  v6 = [*&v1[v2] leadingAnchor];
  v7 = [v1 leadingAnchor];
  if (qword_2815447F0 != -1)
  {
    swift_once();
  }

  v8 = *&qword_2815480B8;
  v9 = [v6 constraintEqualToAnchor:v7 constant:*&qword_2815480B8];

  *(v5 + 32) = v9;
  v10 = [*&v1[v3] leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:v8];

  *(v5 + 40) = v12;
  v13 = [*&v1[v2] trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = -v8;
  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  *(v5 + 48) = v16;
  v17 = [*&v1[v3] trailingAnchor];
  v18 = [v1 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v15];

  *(v5 + 56) = v19;
  sub_257BD2C2C(0, &qword_281543EF0);
  v20 = sub_257ECF7F0();

  [v4 activateConstraints_];
}

uint64_t sub_257DD1100()
{
  v1 = sub_257ECF120();
  v77 = *(v1 - 8);
  v78 = v1;
  MEMORY[0x28223BE20](v1);
  v75 = v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_257ECF190();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v71 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_dynamicConstraints;
  v5 = sub_257BD2C2C(0, &qword_281543EF0);

  v70 = v5;
  v6 = sub_257ECF7F0();

  v72 = v4;
  [v4 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView;
  v67[0] = v0;
  v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_headerView);
  v79 = v7;
  *(v7 + 16) = xmmword_257EE8210;
  v10 = [*(v9 + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) heightAnchor];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v11 = qword_281548348;
  v12 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__primaryControls);
  swift_beginAccess();
  v13 = v12[1];
  v14 = v12[2];
  aBlock = *v12;
  v81 = v13;
  v82 = v14;
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16);
  v67[-2] = &aBlock;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v18 = *(v87 + 16);

  if (v18)
  {
    v19 = 68.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = [v10 constraintEqualToConstant_];

  v21 = v79;
  v79[4] = v20;
  v22 = v67[0];
  v68 = [*(*(v67[0] + v8) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) heightAnchor];
  v23 = (v11 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__secondaryControls);
  v24 = swift_beginAccess();
  v69 = v8;
  v25 = v22;
  v26 = v23[1];
  v27 = v23[2];
  aBlock = *v23;
  v81 = v26;
  v82 = v27;
  MEMORY[0x28223BE20](v24);
  v67[-2] = &aBlock;

  v67[2] = v17;
  sub_257ECFD50();
  v67[1] = 0;

  v28 = *(v86 + 16);

  if (v28)
  {
    v29 = 68.0;
  }

  else
  {
    v29 = 0.0;
  }

  v30 = v68;
  v31 = [v68 constraintEqualToConstant_];

  v21[5] = v31;
  v68 = OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView;
  v32 = [*(v25 + OBJC_IVAR____TtC16MagnifierSupport19MFContainedCardView_footerView) heightAnchor];
  if (qword_281544800 != -1)
  {
    swift_once();
  }

  v33 = [v32 constraintEqualToConstant_];

  v21[6] = v33;
  v34 = v69;
  v35 = [*(v25 + v69) topAnchor];
  v36 = [v25 &selRef_dataForKey_];
  v37 = [v35 constraintEqualToAnchor:v36 constant:sub_257DD1C7C()];

  v79[7] = v37;
  v38 = [*(*(v25 + v34) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) &selRef_dataForKey_];
  v39 = [*(*(v25 + v34) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) bottomAnchor];
  v40 = v23[1];
  v41 = v23[2];
  aBlock = *v23;
  v81 = v40;
  v82 = v41;
  MEMORY[0x28223BE20](v39);
  v67[-2] = &aBlock;

  sub_257ECFD50();

  v42 = *(v86 + 16);

  v43 = 10.0;
  if (!v42)
  {
    v43 = 0.0;
  }

  v44 = [v38 &selRef_CIImage + 6];

  v79[8] = v44;
  v45 = v68;
  v46 = [*&v68[v25] topAnchor];
  v47 = [*(*(v25 + v34) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_primaryButtonRow) bottomAnchor];
  v48 = [v46 constraintGreaterThanOrEqualToAnchor:v47 constant:12.0];

  v79[9] = v48;
  v49 = [*&v45[v25] topAnchor];
  v50 = v79;
  v51 = [*(*(v25 + v34) + OBJC_IVAR____TtC16MagnifierSupport20ControlContainerView_featureTrayButtonRow) bottomAnchor];
  v52 = [v49 &selRef_CIImage + 6];

  LODWORD(v53) = 1148813312;
  [v52 setPriority_];
  v50[10] = v52;
  v54 = [*&v45[v25] bottomAnchor];
  v55 = [v25 bottomAnchor];
  if (qword_2815447F8 != -1)
  {
    swift_once();
  }

  v56 = [v54 &selRef_CIImage + 6];

  LODWORD(v57) = 1148829696;
  [v56 setPriority_];
  v50[11] = v56;
  *(v25 + v71) = v50;

  v58 = sub_257ECF7F0();

  [v72 activateConstraints_];

  sub_257BD2C2C(0, &qword_281543F10);
  v59 = sub_257ECFD30();
  v60 = swift_allocObject();
  *(v60 + 16) = v25;
  v84 = sub_257C1C6EC;
  v85 = v60;
  aBlock = MEMORY[0x277D85DD0];
  v81 = 1107296256;
  v82 = sub_257D231C0;
  v83 = &block_descriptor_50;
  v61 = _Block_copy(&aBlock);
  v62 = v25;

  v63 = v73;
  sub_257ECF150();
  aBlock = MEMORY[0x277D84F90];
  sub_257BD5668();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD56C0();
  v64 = v75;
  v65 = v78;
  sub_257ED0180();
  MEMORY[0x259C72880](0, v63, v64, v61);
  _Block_release(v61);

  (*(v77 + 8))(v64, v65);
  return (*(v74 + 8))(v63, v76);
}

id sub_257DD1BC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFContainedCardView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_257DD1C7C()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2815447E0;

  if (v0 != -1)
  {
    v1 = swift_once();
  }

  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v2 = *(v4 + 16);

  if (v2)
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    result = 34.0;
    if (byte_27F8F8D88)
    {
      return 44.0;
    }
  }

  else
  {
    if (qword_27F8F4668 != -1)
    {
      swift_once();
    }

    result = 34.0;
    if (!byte_27F8F8D88)
    {
      return 24.0;
    }
  }

  return result;
}

void sub_257DD1E80(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v1 = qword_2815447E0;

      if (v1 != -1)
      {
        v2 = swift_once();
      }

      MEMORY[0x28223BE20](v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
      sub_257ECFD50();

      if (qword_281544800 != -1)
      {
        swift_once();
      }

      if (qword_2815447F8 == -1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = qword_2815447E0;

      if (v7 != -1)
      {
        v8 = swift_once();
      }

      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
      sub_257ECFD50();

      if (qword_2815447F8 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    sub_257DD1C7C();
    return;
  }

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_2815447E0;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v5 = swift_beginAccess();
  MEMORY[0x28223BE20](v5);

  sub_257ECFD50();

  if (qword_281544800 != -1)
  {
    swift_once();
  }

  if (qword_2815447F8 != -1)
  {
    swift_once();
  }

  sub_257DD1C7C();
  MEMORY[0x28223BE20](v6);

  sub_257ECFD50();
}

uint64_t sub_257DD257C(double a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2815447E0;

  if (v2 != -1)
  {
    v3 = swift_once();
  }

  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F70B0);
  sub_257ECFD50();

  v4 = *(v18 + 16);

  if (v4)
  {
    v5 = 68.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (qword_2815447F8 != -1)
  {
    swift_once();
  }

  v6 = v5 + *&qword_2815480C0;
  v7 = v6 + sub_257DD1C7C();
  if (qword_281544800 != -1)
  {
    swift_once();
  }

  v8 = *&qword_2815480C8 + 12.0;
  v9 = swift_beginAccess();
  MEMORY[0x28223BE20](v9);

  sub_257ECFD50();

  v10 = *(v19 + 16);

  if (v10)
  {
    v12 = 68.0;
  }

  else
  {
    v12 = 0.0;
  }

  MEMORY[0x28223BE20](v11);

  sub_257ECFD50();

  v13 = *(v19 + 16);

  if (v13)
  {
    v15 = 10.0;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = v7 + v8 * 0.4;
  if (v16 >= a1)
  {
    return 2;
  }

  v17 = v7 + v8 + (v12 + v15) * 0.4;
  if (v16 <= v17)
  {
    return v16 <= a1 && v17 >= a1;
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257DD2A10(uint64_t a1, double a2, double a3)
{
  if (v3[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] == 1)
  {
    v7 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
    swift_beginAccess();
    v8 = *&v3[v7];
    if (v8 >> 62)
    {
LABEL_19:
      v9 = sub_257ED0210();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; ; ++i)
    {
      if (v9 == i)
      {

        return 0;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C72E20](i, v8);
      }

      else
      {
        if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(v8 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      [v3 convertPoint:v11 toCoordinateSpace:{a2, a3}];
      v14 = v13;
      v16 = v15;
      type metadata accessor for MFPassthroughView();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        break;
      }

      [v12 bounds];
      v24.x = v14;
      v24.y = v16;
      v18 = CGRectContainsPoint(v25, v24);

      if (v18)
      {

        return 1;
      }
    }

    v19 = v17;

    v20 = [v19 pointInside:a1 withEvent:{v14, v16}];

    return v20;
  }

  else
  {
    v23.receiver = v3;
    v23.super_class = type metadata accessor for MFPassthroughView();
    return objc_msgSendSuper2(&v23, sel_pointInside_withEvent_, a1, a2, a3);
  }
}

id sub_257DD2C74(unint64_t i, double a2, double a3)
{
  v26.receiver = v3;
  v26.super_class = type metadata accessor for MFPassthroughView();
  v7 = objc_msgSendSuper2(&v26, sel_hitTest_withEvent_, i, a2, a3);
  v8 = v7;
  if (v3[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] != 1 || v7 != 0)
  {
    return v8;
  }

  v10 = OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews;
  swift_beginAccess();
  v11 = *&v3[v10];
  if (v11 >> 62)
  {
LABEL_25:
    v12 = sub_257ED0210();
    if (v12)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    return 0;
  }

LABEL_8:
  v25 = i;

  for (i = 0; ; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x259C72E20](i, v11);
    }

    else
    {
      if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v13 = *(v11 + 8 * i + 32);
    }

    v14 = v13;
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for MFContainedCardView();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      break;
    }

LABEL_9:

    if (v15 == v12)
    {

      return 0;
    }
  }

  v8 = v16;
  [v3 convertPoint:v16 toCoordinateSpace:{a2, a3}];
  v18 = v17;
  v20 = v19;
  v21 = v14;
  [v8 bounds];
  v28.origin.x = UIEdgeInsetsInsetRect(v22);
  v27.x = v18;
  v27.y = v20;
  if (!CGRectContainsPoint(v28, v27))
  {

    goto LABEL_9;
  }

  v24 = [v8 hitTest:v25 withEvent:{a2, a3}];

  if (v24)
  {

    return v24;
  }

  return v8;
}

id sub_257DD2F4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFPassthroughView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257DD2FD0()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v24 == 1)
  {
    type metadata accessor for MAGUtilities();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = sub_257ECF4C0();
    v9 = sub_257ECF4C0();
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    v11 = v10;
    if (!v10)
    {
      sub_257ECF500();
      v11 = sub_257ECF4C0();
    }

    v24 = sub_257ECF500();
    v25 = v12;
    sub_257BDAB08();
    v13 = sub_257ED0100();
    v15 = v14;

    v16 = sub_257E003E8();
    v17 = sub_257E00504();
    sub_257DFD370(v13, v15, v16, v17);

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }

  sub_257DD33B8();
  v18 = qword_281548350 + 16;
  swift_beginAccess();
  v23 = 1;
  if (qword_2815447E0 != -1)
  {
    swift_once();
  }

  v19 = sub_257ECF110();
  MEMORY[0x28223BE20](v19);
  *&v22[-16] = &v23;
  *&v22[-8] = v18;
  sub_257ECFD40();
  (*(v3 + 8))(v5, v2);
  swift_endAccess();
  *(swift_allocObject() + 16) = v1;
  sub_257ECC3F0();
  v20 = v1;
  sub_257ECD2A0();
}

void sub_257DD33B8()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257ECD480();
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v6, v7, "Starting People Detection ARSession Utilities", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView);
  if (v9)
  {
    v10 = qword_281544FE0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v13[15] == 1)
    {
      v12 = *&v11[OBJC_IVAR____TtC16MagnifierSupport17DetectionModeView__restartButton];
      if (v12)
      {
        [v12 setHidden_];
      }

      sub_257DD3EB0();
      sub_257D1A130();
    }
  }
}

uint64_t sub_257DD35E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_257ECDA30();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DD36A0, 0, 0);
}

uint64_t sub_257DD36A0()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction);
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_257DD3760;

  return sub_257CD6110();
}

uint64_t sub_257DD3760()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_257DD389C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_257DD389C()
{
  sub_257ECD4B0();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBE0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Could not reset video captioning state", v3, 2u);
    MEMORY[0x259C74820](v3, -1, -1);
  }

  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_257DD39A4()
{
  v1 = v0;
  v2 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v2);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MAGOutputEvent(0);
  result = MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView))
  {
    v9 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
    v10 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
    swift_beginAccess();
    [*(v9 + v10) setUseSoundFeedback_];
    [*(v9 + v10) setUseHapticFeedback_];
    v11 = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning;
    if ((*(v1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning) & 1) == 0)
    {
      v27[0] = OBJC_IVAR____TtC16MagnifierSupport17AppViewController_isDetectionModeTransitioning;
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();
      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      v17 = v16;
      if (!v16)
      {
        sub_257ECF500();
        v17 = sub_257ECF4C0();
      }

      v18 = sub_257ECF500();
      v20 = v19;
      UIAccessibilitySpeakAndDoNotBeInterrupted();

      v27[1] = v18;
      v27[2] = v20;
      sub_257BDAB08();
      v21 = sub_257ED0100();
      v23 = v22;

      v24 = sub_257E003E8();
      v25 = sub_257E00504();
      sub_257DFD370(v21, v23, v24, v25);

      v11 = v27[0];
    }

    *v4 = 0;
    *(v4 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    sub_257ECCCE0();
    sub_257C15EC0(v4, &v8[v5[5]]);
    v8[v5[6]] = 1;
    v8[v5[7]] = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v26 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v4, type metadata accessor for MAGOutputEvent.EventType);
    *&v8[v5[8]] = v26;
    sub_257CBBC80(v8);
    sub_257C15F24(v8, type metadata accessor for MAGOutputEvent);
    result = sub_257DD3D48();
    *(v1 + v11) = 0;
  }

  return result;
}

uint64_t sub_257DD3D48()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v7 == 1)
  {
    sub_257BD2C2C(0, &qword_27F8F8060);
    if ([swift_getObjCClassFromMetadata() supportsFrameSemantics_])
    {
      v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService);
      v3 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSession;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4)
      {
        v5 = [v4 configuration];
        if (v5)
        {
          v6 = v5;
          [v5 setFrameSemantics_];
        }
      }
    }

    return sub_257D1A130();
  }

  return result;
}

uint64_t sub_257DD3EB0()
{
  v1 = v0;
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  result = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
  if (v11)
  {
    v33 = v8;
    v34 = result;
    v35 = v3;
    v12 = qword_281544FE0;
    v32 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v13 = qword_281548348;
    v14 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks);
    swift_beginAccess();
    v15 = v14[1];
    v16 = v14[2];
    aBlock = *v14;
    v38 = v15;
    v39 = v16;
    v17 = qword_2815447E0;

    if (v17 != -1)
    {
      v18 = swift_once();
    }

    MEMORY[0x28223BE20](v18);
    *(&v32 - 2) = &aBlock;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
    sub_257ECFD50();

    v19 = v44;
    v20 = v13 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__detectionCenterDetection;
    v21 = swift_beginAccess();
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    aBlock = *v20;
    v38 = v22;
    LOBYTE(v39) = v23;
    MEMORY[0x28223BE20](v21);
    *(&v32 - 2) = &aBlock;

    sub_257ECFD50();

    v24 = v43;
    LOBYTE(v22) = sub_257C592D0(2u, v19);
    LOBYTE(v20) = sub_257C592D0(3u, v19);
    v25 = sub_257C592D0(1u, v19);

    v1[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_useSpeechFeedback] = v25;
    v26 = sub_257E0131C();
    [v26 setIsCenterDetectionEnabled_];

    v27 = OBJC_IVAR____TtC16MagnifierSupport12DetectedView_isCenterDetectionEnabled;
    v28 = v32;
    swift_beginAccess();
    v28[v27] = v24;
    v29 = swift_allocObject();
    *(v29 + 16) = v1;
    *(v29 + 24) = v22 & 1;
    *(v29 + 25) = v20 & 1;
    v41 = sub_257DD52E0;
    v42 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_257D231C0;
    v40 = &block_descriptor_51;
    v30 = _Block_copy(&aBlock);
    v31 = v1;
    sub_257ECF150();
    v36 = MEMORY[0x277D84F90];
    sub_257BD5668();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD56C0();
    sub_257ED0180();
    MEMORY[0x259C72880](0, v10, v5, v30);
    _Block_release(v30);

    (*(v35 + 8))(v5, v2);
    (*(v33 + 8))(v10, v34);
  }

  return result;
}

id sub_257DD43C0(uint64_t a1, char a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_pulseFeedbackProcessor);
  v6 = OBJC_IVAR____TtC16MagnifierSupport25MAGPulseFeedbackProcessor_toneGenerator;
  swift_beginAccess();
  [*(v5 + v6) setUseSoundFeedback_];
  return [*(v5 + v6) setUseHapticFeedback_];
}

uint64_t sub_257DD444C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_257E0131C();
  [v6 computePersonDetectionFromFrame:a2 interfaceOrientation:a3];

  sub_257E013B4();
  v7 = [a2 capturedImage];
  v8 = sub_257BEA9CC(v7);

  v9 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager);
  sub_257ECC3F0();
  v10 = [v9 detectedPersonArray];
  sub_257BD2C2C(0, &qword_27F8F5938);
  v11 = sub_257ECF810();

  v12 = [a2 capturedImage];
  sub_257BEB4A0(v11, v8, v12);

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v20 == 1)
  {
    swift_beginAccess();
    v14 = qword_2815447E0;

    if (v14 != -1)
    {
      v15 = swift_once();
    }

    MEMORY[0x28223BE20](v15);
    sub_257ECFD50();

    if (v19 == 1)
    {
      v16 = [*(a1 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController____lazy_storage___personDetectionManager) detectedPersonArray];
      sub_257BD2C2C(0, &qword_27F8F5938);
      v17 = sub_257ECF810();

      v18 = static SpatialPersonDetection.spatialize(_:frame:orientation:)(v17, a2, a3);

      sub_257C4662C(v18);
    }
  }

  return result;
}

uint64_t sub_257DD47B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 + 196) = a5;
  *(v5 + 192) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  *(v5 + 40) = type metadata accessor for MAGOutputEvent.EventType(0);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = type metadata accessor for MAGOutputEvent(0);
  *(v5 + 64) = swift_task_alloc();
  v6 = sub_257ECDA30();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_257DD48EC, 0, 0);
}

id sub_257DD48EC()
{
  v1 = *(v0 + 16);
  sub_257ECD4B0();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBD0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    [v5 timestamp];
    *(v6 + 4) = v7;
    _os_log_impl(&dword_257BAC000, v3, v4, "Timestamp for frame: %f before generating caption", v6, 0xCu);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);

  v13 = *(v10 + 8);
  *(v0 + 104) = v13;
  *(v0 + 112) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v8, v9);
  result = [v12 capturedImage];
  *(v0 + 120) = result;
  if (v11)
  {
    v15 = result;
    [*(v0 + 32) screenRect];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = swift_task_alloc();
    *(v0 + 128) = v24;
    *v24 = v0;
    v24[1] = sub_257DD4AE8;

    return sub_257CD6414(v15, v17, v19, v21, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257DD4AE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v6 = sub_257DD5118;
  }

  else
  {
    v6 = sub_257DD4C1C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_257DD4C1C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = (*(v0 + 24) + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_previousAction);
    v3 = *v2 == *(v0 + 136) && v1 == v2[1];
    if (v3 || (sub_257ED0640() & 1) != 0)
    {

LABEL_12:

      v18 = *(v0 + 8);

      return v18();
    }

    v20 = *(v0 + 136);
    v22 = *(v0 + 56);
    v21 = *(v0 + 64);
    v23 = *(v0 + 48);
    v32 = *(v0 + 192);
    v25 = *(v0 + 24);
    v24 = *(v0 + 32);
    *v2 = v20;
    v2[1] = v1;

    *(v0 + 160) = *(v25 + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine);
    *v23 = v24;
    *(v23 + 8) = v32;
    *(v23 + 16) = v20;
    *(v23 + 24) = v1;
    swift_storeEnumTagMultiPayload();
    v26 = v24;
    sub_257ECCCE0();
    sub_257C15EC0(v23, v21 + v22[5]);
    *(v21 + v22[6]) = 1;
    *(v21 + v22[7]) = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 48);
    v30 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v29, type metadata accessor for MAGOutputEvent.EventType);
    *(v27 + *(v28 + 32)) = v30;
    sub_257ECF900();
    *(v0 + 168) = sub_257ECF8F0();
    v14 = sub_257ECF8B0();
    v16 = v31;
    v17 = sub_257DD4FA8;
  }

  else
  {
    if ((*(v0 + 196) & 1) == 0)
    {
      goto LABEL_12;
    }

    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    v7 = *(v0 + 192);
    v8 = *(v0 + 32);
    *(v0 + 176) = *(*(v0 + 24) + OBJC_IVAR____TtC16MagnifierSupport17AppViewController_outputEngine);
    *v6 = v8;
    *(v6 + 8) = v7;
    swift_storeEnumTagMultiPayload();
    v9 = v8;
    sub_257ECCCE0();
    sub_257C15EC0(v6, v4 + v5[5]);
    *(v4 + v5[6]) = 1;
    *(v4 + v5[7]) = 0;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 56);
    v10 = *(v0 + 64);
    v12 = *(v0 + 48);
    v13 = qword_281548348;
    sub_257ECC3F0();
    sub_257C15F24(v12, type metadata accessor for MAGOutputEvent.EventType);
    *(v10 + *(v11 + 32)) = v13;
    sub_257ECF900();
    *(v0 + 184) = sub_257ECF8F0();
    v14 = sub_257ECF8B0();
    v16 = v15;
    v17 = sub_257DD5060;
  }

  return MEMORY[0x2822009F8](v17, v14, v16);
}

uint64_t sub_257DD4FA8()
{
  v1 = *(v0 + 64);

  sub_257CBBC80(v1);
  sub_257C15F24(v1, type metadata accessor for MAGOutputEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257DD5060()
{
  v1 = *(v0 + 64);

  sub_257CBBC80(v1);
  sub_257C15F24(v1, type metadata accessor for MAGOutputEvent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_257DD5118()
{
  sub_257ECD4B0();
  v1 = sub_257ECDA20();
  v2 = sub_257ECFBE0();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[19];
  v5 = v0[13];
  v6 = v0[11];
  v7 = v0[9];
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v1, v2, "Could not update people detection state", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  v5(v6, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257DD524C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_257BE3DE0;

  return sub_257DD35E0(v2);
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257DD5308(void *a1)
{
  v2 = v1;
  v94 = a1;
  v3 = type metadata accessor for MAGOutputEvent.EventType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MAGOutputEvent(0);
  MEMORY[0x28223BE20](v90);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_257ECF120();
  *&v93 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_257ECF190();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v13 = qword_281548348;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v95 = v13;
  if (aBlock)
  {
    goto LABEL_54;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (aBlock == 1)
  {
    v89 = v3;
    v21 = v5;
    v22 = v7;
    v23 = v95 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__objectUnderstandingSeatOccupancy;
    swift_beginAccess();
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    aBlock = *v23;
    v101 = v24;
    LOBYTE(v102) = v25;
    v26 = qword_2815447E0;

    if (v26 != -1)
    {
      v27 = swift_once();
    }

    MEMORY[0x28223BE20](v27);
    *(&v85 - 2) = &aBlock;
    sub_257ECFD50();

    v7 = v22;
    v5 = v21;
    v3 = v89;
    if (v106 == 1)
    {
LABEL_54:
      v14 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_arService];
      if (*(v14 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_isARSessionStarted) == 1)
      {
        v15 = *&v2[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectedPersonView];
        if (v15)
        {
          v87 = 0;
          v85 = v5;
          v86 = v7;
          v16 = v15;
          v17 = v94;
          [v94 timestamp];
          v19 = v18;
          v20 = OBJC_IVAR____TtC16MagnifierSupport12MAGARService_lastARFrameTimestamp;
          swift_beginAccess();
          if (v19 - *(v14 + v20) < 0.1)
          {

            return;
          }

          v88 = v16;
          [v17 timestamp];
          *(v14 + v20) = v28;
          v29 = [objc_opt_self() currentDevice];
          v30 = [v29 orientation];

          v89 = v3;
          if ((v30 - 2) > 2)
          {
            v31 = 1;
          }

          else
          {
            v31 = qword_257EEA110[(v30 - 2)];
          }

          v32 = *(v14 + OBJC_IVAR____TtC16MagnifierSupport12MAGARService_arSessionQueue);
          v33 = swift_allocObject();
          v34 = v94;
          v33[2] = v2;
          v33[3] = v34;
          v33[4] = v31;
          v104 = sub_257DD6040;
          v105 = v33;
          aBlock = MEMORY[0x277D85DD0];
          v101 = 1107296256;
          v102 = sub_257D231C0;
          v103 = &block_descriptor_26_1;
          v35 = _Block_copy(&aBlock);
          v36 = v32;
          v37 = v2;
          v94 = v34;
          sub_257ECF150();
          v99[0] = MEMORY[0x277D84F90];
          sub_257BD5668();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
          sub_257BD56C0();
          sub_257ED0180();
          MEMORY[0x259C72880](0, v12, v10, v35);
          _Block_release(v35);

          (*(v93 + 8))(v10, v8);
          (*(v91 + 8))(v12, v92);

          swift_getKeyPath();
          swift_getKeyPath();
          v38 = v95;
          sub_257ECDD60();

          if (aBlock != 1)
          {

            return;
          }

          v39 = sub_257E0131C();
          v40 = [v39 detectedPersonArray];

          sub_257BD2C2C(0, &qword_27F8F5938);
          v41 = sub_257ECF810();

          v42 = v88;
          if (v41 >> 62)
          {
            if (sub_257ED0210())
            {
              goto LABEL_19;
            }
          }

          else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_19:
            if ((v41 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x259C72E20](0, v41);
            }

            else
            {
              if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_49;
              }

              v43 = *(v41 + 32);
            }

            v44 = v43;

            if ([v44 isEnabled] && objc_msgSend(v44, sel_isValid))
            {
              v41 = v44;
              goto LABEL_30;
            }

LABEL_29:
            v45 = [objc_opt_self() InvalidPersonData];
            LOBYTE(aBlock) = 1;
            v41 = v45;
            sub_257CC6340(&aBlock);
            if (!v41)
            {
              __break(1u);
              goto LABEL_51;
            }

LABEL_30:
            v8 = v41;
            [v8 position];
            v93 = v46;

            LODWORD(v41) = DWORD2(v93);
            sub_257DE1F00(v8, DWORD2(v93));

            v47 = [v94 capturedImage];
            sub_257DE6E3C(v47);

            if (!*&v37[OBJC_IVAR____TtC16MagnifierSupport17AppViewController_detectionModeView])
            {
              goto LABEL_42;
            }

            [v8 screenRect];
            v49 = v48;
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v56 = [v37 view];
            if (v56)
            {
              v57 = v56;
              v58 = [v56 window];
              if (v58 && (v59 = v58, v60 = [v58 windowScene], v59, v60))
              {
                v61 = [v60 interfaceOrientation];
              }

              else
              {
                v61 = 0;
              }

              if (sub_257DE711C(v61, v41, v49, v51, v53, v55))
              {
                v42 = v37;
                v2 = v38;
                v62 = &v38[OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedPeopleDetectionFeedbacks];
                swift_beginAccess();
                v63 = *(v62 + 1);
                v64 = *(v62 + 2);
                v99[0] = *v62;
                v99[1] = v63;
                v99[2] = v64;
                v65 = qword_2815447E0;

                if (v65 == -1)
                {
LABEL_38:
                  MEMORY[0x28223BE20](v66);
                  *(&v85 - 2) = v99;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AD8);
                  sub_257ECFD50();

                  v67 = 1;
                  v68 = sub_257C592D0(1u, v96[0]);

                  if (v68)
                  {
                    v69 = sub_257CC211C();
                    v70 = [v69 isSpeaking];

                    v67 = v70 ^ 1;
                  }

                  v71 = &v2[OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__peopleActionsEnabled];
                  v72 = swift_beginAccess();
                  v73 = *(v71 + 1);
                  v74 = v71[16];
                  v96[0] = *v71;
                  v96[1] = v73;
                  v97 = v74;
                  MEMORY[0x28223BE20](v72);
                  *(&v85 - 2) = v96;

                  sub_257ECFD50();

                  if (v98 == 1)
                  {
                    v75 = swift_allocObject();
                    v76 = v94;
                    *(v75 + 16) = v94;
                    *(v75 + 24) = v42;
                    *(v75 + 32) = v8;
                    *(v75 + 40) = v41;
                    *(v75 + 44) = v67;
                    v77 = v42;
                    v78 = v76;
                    sub_257ECC3F0();
                    v79 = v8;
                    sub_257ECD2A0();
                  }

                  else
                  {
                    v80 = v88;
                    if (v67)
                    {
                      v81 = v85;
                      *v85 = v8;
                      *(v81 + 8) = v41;
                      swift_storeEnumTagMultiPayload();
                      v82 = v8;
                      v83 = v86;
                      sub_257ECCCE0();
                      v84 = v90;
                      sub_257C15EC0(v81, v83 + *(v90 + 20));
                      *(v83 + v84[6]) = 1;
                      *(v83 + v84[7]) = 0;
                      sub_257ECC3F0();
                      sub_257C15F24(v81, type metadata accessor for MAGOutputEvent.EventType);
                      *(v83 + v84[8]) = v2;
                      sub_257CBBC80(v83);

                      sub_257C15F24(v83, type metadata accessor for MAGOutputEvent);
                    }

                    else
                    {
                    }
                  }

                  return;
                }

LABEL_49:
                v66 = swift_once();
                goto LABEL_38;
              }

LABEL_42:

              return;
            }

LABEL_51:
            __break(1u);
            return;
          }

          goto LABEL_29;
        }
      }
    }
  }
}

uint64_t sub_257DD604C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_257C167C4;

  return sub_257DD47B4(v2, v3, v4, v5, v6);
}

id sub_257DD6114()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - v7;
  sub_257ECD4D0();
  v9 = sub_257ECDA20();
  v10 = sub_257ECFBD0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_257BAC000, v9, v10, "restoreZoomFromUserSettings", v11, 2u);
    MEMORY[0x259C74820](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v12(v8, v2);
  v13 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v13 contentSize];
  if (v15 == 0.0 && v14 == 0.0)
  {
    sub_257ECD4D0();
    v16 = sub_257ECDA20();
    v17 = sub_257ECFBD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_257BAC000, v16, v17, "Tried restoring zoom from user settings on scrollView with contentSize zero.", v18, 2u);
      MEMORY[0x259C74820](v18, -1, -1);
    }

    return (v12)(v6, v2);
  }

  else
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECC3F0();
    sub_257ECDD60();

    v20 = *&v28[1];
    [v13 minimumZoomScale];
    v22 = v21;
    v23 = 1.0;
    if (v20 <= 1.0)
    {
      v23 = v20;
    }

    if (v20 > 0.0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0.0;
    }

    [v13 maximumZoomScale];
    v26 = v25;
    [v13 minimumZoomScale];
    sub_257DDDFE4(0, v22 + v24 * (v26 - v27));
    return sub_257DDB720();
  }
}

_OWORD *sub_257DD643C()
{
  v1 = v0;
  v2 = sub_257ECDA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v6 = sub_257ECDA20();
  v7 = sub_257ECFBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v6, v7, "resetImageCentering", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  result = [v1 view];
  if (result)
  {
    v11 = result;
    [result center];
    v13 = v12;
    v15 = v14;

    return sub_257DDD9A0(v9, v13, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_257DD65E0()
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (v3)
  {
    v1 = sub_257ED0640();

    if ((v1 & 1) == 0)
    {
      v2 = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView) panGestureRecognizer];
      [v2 setEnabled_];
    }
  }

  else
  {
  }
}

uint64_t sub_257DD6750()
{
  v1[45] = v0;
  v2 = sub_257ECD900();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v3 = sub_257ECF120();
  v1[50] = v3;
  v1[51] = *(v3 - 8);
  v1[52] = swift_task_alloc();
  v4 = sub_257ECDA30();
  v1[53] = v4;
  v1[54] = *(v4 - 8);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  sub_257ECF900();
  v1[58] = sub_257ECF8F0();
  v6 = sub_257ECF8B0();
  v1[59] = v6;
  v1[60] = v5;

  return MEMORY[0x2822009F8](sub_257DD6920, v6, v5);
}

uint64_t sub_257DD6920()
{
  v43 = v0;
  v1 = *(v0 + 360);
  v2 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  *(v0 + 488) = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  if (*(v1 + v2) || (v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument), (*(v0 + 496) = v5) == 0))
  {

    goto LABEL_3;
  }

  v6 = v5;
  v7 = sub_257EB69B8();
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_257E1BA40();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

LABEL_3:

    v3 = *(v0 + 8);

    return v3();
  }

  v11 = *(v0 + 360);
  type metadata accessor for AppViewController();
  v12 = v11;
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    while (1)
    {

      v14 = [v12 parentViewController];
      if (!v14)
      {
        break;
      }

      v12 = v14;
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        goto LABEL_13;
      }
    }

    sub_257ECD3F0();
    v31 = sub_257ECDA20();
    v32 = sub_257ECFBE0();
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 432);
    v34 = *(v0 + 440);
    v36 = *(v0 + 424);
    if (v33)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_257BAC000, v31, v32, "Could not present reader mode from freeze frame. AppViewController not found", v37, 2u);
      MEMORY[0x259C74820](v37, -1, -1);
    }

    else
    {
    }

    (*(v35 + 8))(v34, v36);
    goto LABEL_3;
  }

LABEL_13:
  *(v0 + 504) = v12;
  *(v0 + 512) = v13;

  if (!AXDeviceSupportsAccessibilityReader())
  {
    v41 = (v0 + 242);

    type metadata accessor for MFReaderSpeechFormatterModel(0);
    v17 = swift_allocObject();
    sub_257C353E4(1, 0xD000000000000022, 0x8000000257EFA770, 0, 0, v17 + OBJC_IVAR____TtC16MagnifierSupport28MFReaderSpeechFormatterModel__playbackSpeed);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v42[0] = *(v0 + 241);
    v18 = objc_allocWithZone(type metadata accessor for MFReaderBlockManager());
    v19 = v6;
    v39 = sub_257CD4C68(v5, v42);
    v40 = v19;

    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v20 = qword_281548350 + 184;
    swift_beginAccess();
    *v41 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 408);
    v22 = *(v0 + 416);
    v23 = *(v0 + 400);
    v38 = *(v0 + 360);
    sub_257ECF110();
    v24 = swift_task_alloc();
    *(v24 + 16) = v41;
    *(v24 + 24) = v20;
    sub_257ECFD40();

    (*(v21 + 8))(v22, v23);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 243) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v25 = swift_allocObject();
    *(v25 + 16) = v38;
    v26 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController());
    v27 = v38;
    v28 = v39;
    sub_257ECC3F0();
    sub_257CCAC60(v28, sub_257DE0AD0, v25, (v0 + 80));
    v29 = sub_257ECE620();

    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 240) = 1;
    sub_257ECA76C(v29, v0 + 208, 0x3FD0000000000000, 1u);

    v30 = *(v1 + v2);
    *(v1 + v2) = v29;

    goto LABEL_3;
  }

  v15 = v6;
  v16 = swift_task_alloc();
  *(v0 + 520) = v16;
  *v16 = v0;
  v16[1] = sub_257DD6F78;

  return sub_257DFCB40(v5);
}

uint64_t sub_257DD6F78(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  *(*v1 + 247) = a1;

  v4 = *(v2 + 480);
  v5 = *(v2 + 472);

  return MEMORY[0x2822009F8](sub_257DD70C0, v5, v4);
}

void sub_257DD70C0()
{
  if (*(v0 + 247) == 1)
  {
    v1 = (v0 + 246);

    sub_257ECD8C0();
    v2 = sub_257ECDA20();
    v3 = sub_257ECFBD0();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_257BAC000, v2, v3, "Successfully opened Accessibility Reader from Magnifier", v4, 2u);
      MEMORY[0x259C74820](v4, -1, -1);
    }

    v5 = *(v0 + 456);
    v6 = *(v0 + 424);
    v7 = *(v0 + 432);

    (*(v7 + 8))(v5, v6);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v8 = qword_281548350 + 184;
    swift_beginAccess();
    *v1 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 496);
    v10 = *(v0 + 504);
    v12 = *(v0 + 408);
    v11 = *(v0 + 416);
    v13 = *(v0 + 400);
    sub_257ECF110();
    v14 = swift_task_alloc();
    *(v14 + 16) = v1;
    *(v14 + 24) = v8;
    sub_257ECFD40();

    (*(v12 + 8))(v11, v13);
    swift_endAccess();
  }

  else
  {
    v53 = (v0 + 244);
    sub_257ECD8C0();
    v15 = sub_257ECDA20();
    v16 = sub_257ECFBD0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_257BAC000, v15, v16, "Failed to open Accessibility Reader from Magnifier - Falling back to in-app mode.", v17, 2u);
      MEMORY[0x259C74820](v17, -1, -1);
    }

    v18 = *(v0 + 496);
    v19 = *(v0 + 448);
    v20 = *(v0 + 424);
    v21 = *(v0 + 432);
    v22 = *(v0 + 384);
    v23 = *(v0 + 392);
    v24 = *(v0 + 368);
    v25 = *(v0 + 376);

    (*(v21 + 8))(v19, v20);
    sub_257ECD930();
    swift_allocObject();
    sub_257ECD920();
    sub_257ECD910();

    (*(v25 + 16))(v22, v23, v24);
    v26 = objc_allocWithZone(sub_257ECD8F0());
    v27 = v18;
    v51 = sub_257ECD8E0();
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v28 = qword_281548350 + 184;
    swift_beginAccess();
    *v53 = 1;
    if (qword_2815447E0 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 488);
    v29 = *(v0 + 408);
    v30 = *(v0 + 416);
    v31 = *(v0 + 400);
    v32 = *(v0 + 360);
    sub_257ECF110();
    v33 = swift_task_alloc();
    *(v33 + 16) = v53;
    *(v33 + 24) = v28;
    sub_257ECFD40();

    (*(v29 + 8))(v30, v31);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 245) = 1;
    sub_257ECC3F0();
    sub_257ECDD70();
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    v35 = objc_allocWithZone(type metadata accessor for MFReaderModeHostingController());
    v36 = v32;
    v37 = v51;
    sub_257ECC3F0();
    sub_257CCAAAC(v37, sub_257DE0AD8, v34, (v0 + 16));

    v38 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v38;
    v39 = *(v0 + 64);
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = v39;
    v40 = sub_257ECE620();

    *(v0 + 248) = 0u;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 1;
    v41 = v40;
    sub_257ECA76C(v41, v0 + 248, 0x3FD0000000000000, 1u);
    v42 = *&v32[v52];
    *&v32[v52] = v41;
    v43 = v41;

    v44 = [v43 view];
    if (!v44)
    {
      __break(1u);
      return;
    }

    v46 = *(v0 + 496);
    v45 = *(v0 + 504);
    v47 = *(v0 + 392);
    v48 = *(v0 + 368);
    v49 = *(v0 + 376);

    [v44 setAccessibilityViewIsModal_];

    (*(v49 + 8))(v47, v48);
  }

  v50 = *(v0 + 8);

  v50();
}

id sub_257DD7744()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_257ECF3B0()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_257DD77B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v42 - v2;
  v4 = sub_257ECF370();
  MEMORY[0x28223BE20](v4);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image;
  v16 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
  if (v16)
  {
    v48 = v4;
    v17 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
    v45 = v13;
    v46 = v12;
    v49 = v16;
    [v17 setImage_];
    sub_257BD2C2C(0, &qword_281543F10);
    v47 = v6;
    v44 = v0;
    v43 = sub_257ECFD30();
    v18 = swift_allocObject();
    *(v18 + 16) = v0;
    aBlock[4] = sub_257DE0664;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_33_3;
    v19 = _Block_copy(aBlock);
    v42[0] = v0;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    v42[1] = MEMORY[0x277D83970];
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    v20 = v3;
    v21 = v42[0];
    sub_257ED0180();
    v22 = v43;
    MEMORY[0x259C72880](0, v15, v10, v19);
    _Block_release(v19);

    (*(v8 + 8))(v10, v7);
    (*(v45 + 8))(v15, v46);
    v23 = sub_257DD7744();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_27F8F97B8, MEMORY[0x277CE30A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97C0);
    sub_257BD2D4C(&qword_27F8F97C8, &qword_27F8F97C0);
    sub_257ED0180();
    sub_257ECF350();

    v24 = *&v21[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction];
    sub_257ECF3A0();

    v25 = *&v44[v50];
    if (v25)
    {
      v26 = v44;
      v27 = sub_257ECF930();
      v28 = *(*(v27 - 8) + 56);
      v28(v20, 1, 1, v27);
      sub_257ECF900();
      v29 = v25;
      v30 = v21;
      v31 = v29;
      v32 = sub_257ECF8F0();
      v33 = swift_allocObject();
      v34 = MEMORY[0x277D85700];
      v33[2] = v32;
      v33[3] = v34;
      v35 = v34;
      v33[4] = v30;
      v33[5] = v31;
      sub_257C3FBD4(0, 0, v20, &unk_257EEA2C0, v33);

      v36 = *&v26[v50];
      if (v36)
      {
        v28(v20, 1, 1, v27);
        v37 = v36;
        v38 = v30;
        v39 = v37;
        v40 = sub_257ECF8F0();
        v41 = swift_allocObject();
        v41[2] = v40;
        v41[3] = v35;
        v41[4] = v38;
        v41[5] = v39;
        sub_257C3FBD4(0, 0, v20, &unk_257EEA2B0, v41);
      }
    }

    sub_257DD7E4C();
  }
}

void sub_257DD7DF8(void *a1)
{
  v1 = [a1 viewIfLoaded];
  [v1 setNeedsLayout];
}

void sub_257DD7E4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 getBlocks];
    if (v3)
    {
      v4 = v3;
      sub_257BD2C2C(0, &qword_27F8F5FA8);
      v5 = sub_257ECF810();

      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      if (v5 >> 62)
      {
        sub_257ED0210();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    else
    {
      if (qword_281544FE0 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECC3F0();
    }

    sub_257ECDD70();
  }
}

uint64_t sub_257DD8000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = sub_257ECDA30();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_257ECF370();
  v5[8] = swift_task_alloc();
  v7 = sub_257ECF2F0();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = sub_257ECF300();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  sub_257ECF900();
  v5[15] = sub_257ECF8F0();
  v10 = sub_257ECF8B0();
  v5[16] = v10;
  v5[17] = v9;

  return MEMORY[0x2822009F8](sub_257DD81D8, v10, v9);
}

uint64_t sub_257DD81D8()
{
  v7 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED6D30;
  sub_257ECF2E0();
  v0[2] = v1;
  sub_257DE066C(&qword_27F8F97D8, MEMORY[0x277CE3078]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97E0);
  sub_257BD2D4C(&qword_27F8F97E8, &qword_27F8F97E0);
  sub_257ED0180();
  sub_257ECF310();
  v2 = [v7 imageOrientation];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_257DD83C4;
  v4 = v0[14];
  v5 = v0[4];

  return MEMORY[0x2821350E0](v5, v2, v4);
}

uint64_t sub_257DD83C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_257DD8624;
  }

  else
  {
    v4[20] = a1;
    v5 = v4[16];
    v6 = v4[17];
    v7 = sub_257DD84EC;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_257DD84EC()
{
  v1 = v0[3];

  v2 = sub_257DD7744();
  sub_257ECC3F0();
  sub_257ECF3A0();

  v3 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction);
  sub_257ECF360();
  sub_257ECF350();

  v5 = *(v1 + v3);
  sub_257ECF390();

  v6 = *(v1 + v3);
  sub_257ECF380();

  (*(v0[13] + 8))(v0[14], v0[12]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_257DD8624()
{
  v1 = v0[19];

  sub_257ECD400();
  v2 = v1;
  v3 = sub_257ECDA20();
  v4 = sub_257ECFBE0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_257BAC000, v3, v4, "Could not handle ImageAnalyzer Text Request. Error : %@", v6, 0xCu);
    sub_257BE4084(v7, &unk_27F8F5490);
    MEMORY[0x259C74820](v7, -1, -1);
    MEMORY[0x259C74820](v6, -1, -1);
  }

  v10 = v0[19];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];

  (*(v12 + 8))(v11, v13);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_257DD87E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v1 bounds];
  MidX = CGRectGetMidX(v10);
  v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView);
  [v3 frame];
  if (vabdd_f64(MidX, CGRectGetMidX(v11)) >= 3.0)
  {
    v5 = 0;
  }

  else
  {
    [v1 bounds];
    MidY = CGRectGetMidY(v12);
    [v3 frame];
    v5 = vabdd_f64(MidY, CGRectGetMidY(v13)) < 3.0;
  }

  [v1 zoomScale];
  v7 = v6;
  [v1 minimumZoomScale];
  return (vabdd_f64(v7, v8) < 0.001) & v5;
}

uint64_t sub_257DD88DC()
{
  v1 = sub_257ECF120();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_257ECF190();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257BD2C2C(0, &qword_281543F10);
  v7 = sub_257ECFD30();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_257DE083C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_55_0;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_257DD8BD0()
{
  v0 = sub_257ECF130();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_257ECFD10();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54D0);
  v6 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - v7;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F97F8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_257ECC3F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F9350);
  sub_257ECDD30();
  swift_endAccess();

  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10);
  (*(v1 + 104))(v3, *MEMORY[0x277D851C0], v0);
  v11 = sub_257ECFD90();
  v12 = v0;
  v13 = v11;
  (*(v1 + 8))(v3, v12);
  v26 = v13;
  sub_257BD2D4C(&unk_281544190, &unk_27F8F54D0);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v14 = v20;
  sub_257ECDE00();

  (*(v21 + 8))(v5, v23);
  (*(v6 + 8))(v8, v14);
  swift_allocObject();
  v15 = v25;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&qword_2815442D8, &qword_27F8F97F8);
  v16 = v24;
  v17 = sub_257ECDE50();

  (*(v22 + 8))(v10, v16);
  *(v15 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription) = v17;
}

uint64_t sub_257DD909C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  v2 = [v1 isZooming];
  v3 = [v1 isDecelerating];
  v4 = [v1 isTracking];
  v5 = [v1 isDragging];
  v6 = [v1 isZoomBouncing];
  result = 1;
  if ((v2 & 1) == 0 && (v3 & 1) == 0 && (v4 & 1) == 0 && (v5 & 1) == 0 && (v6 & 1) == 0)
  {
    result = [v1 pinchGestureRecognizer];
    if (result)
    {
      v8 = result;
      v9 = [result state];

      return qword_286905E80 == v9 || unk_286905E88 == v9 || qword_286905E90 == v9;
    }
  }

  return result;
}

id sub_257DD91A4()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v0 action:sel_longPress_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257DD9228(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v3 action:*a2];
    [v8 setNumberOfTapsRequired_];
    v9 = *(v3 + v4);
    *(v3 + v4) = v8;
    v6 = v8;

    v5 = 0;
  }

  v10 = v5;
  return v6;
}

id sub_257DD92BC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D754C8]) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_257DD93AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_257ECCB70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v18, sel_description);
  v8 = sub_257ECF500();
  v10 = v9;

  v19 = v8;
  v20 = v10;
  MEMORY[0x259C72150](2128928, 0xE300000000000000);
  v11 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
  swift_beginAccess();
  if ((*(v4 + 48))(&v1[v11], 1, v3))
  {
    v12 = 0xE100000000000000;
    v13 = 63;
  }

  else
  {
    (*(v4 + 16))(v6, &v1[v11], v3);
    v14 = sub_257ECCB50();
    v12 = v15;
    (*(v4 + 8))(v6, v3);
    v13 = v14;
  }

  MEMORY[0x259C72150](v13, v12);

  return v19;
}

id sub_257DD9568(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v21 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_257ECFD20();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v6);
  v7 = sub_257ECF190();
  MEMORY[0x28223BE20](v7 - 8);
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v9 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument] = 0;
  v10 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_analyzer;
  sub_257ECF340();
  swift_allocObject();
  *&v2[v10] = sub_257ECF330();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction] = 0;
  v11 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem] = 0;
  v17 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue;
  sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  v25 = v11;
  sub_257DE066C(&qword_281543F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  (*(v19 + 104))(v18, *MEMORY[0x277D85260], v20);
  *&v2[v17] = sub_257ECFD80();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription] = 0;
  v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction] = 0;
  v12 = &v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation];
  *v12 = 0u;
  v12[1] = 0u;
  v13 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
  *&v2[v13] = sub_257DDA774();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController] = 0;
  v14 = v21;
  sub_257BE3098(v21, &v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset]);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_textDetectionService] = v23;
  v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_resizeToMinDimension] = 0;
  v24.receiver = v3;
  v24.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  sub_257BE30FC(v14);
  return v15;
}

id sub_257DD99DC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v26 = a3;
  v25 = a2;
  v23 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_257ECFD20();
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v20 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECFCB0();
  MEMORY[0x28223BE20](v7);
  v8 = sub_257ECF190();
  MEMORY[0x28223BE20](v8 - 8);
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_pageSelectionDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_cachedReaderTextDocument] = 0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_analyzer;
  sub_257ECF340();
  swift_allocObject();
  *&v3[v11] = sub_257ECF330();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___interaction] = 0;
  v12 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem] = 0;
  v19 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue;
  sub_257BD2C2C(0, &qword_281543F10);
  sub_257ECF150();
  v28 = v12;
  sub_257DE066C(&qword_281543F30, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F8000);
  sub_257BD2D4C(&unk_281543FA0, &unk_27F8F8000);
  sub_257ED0180();
  (*(v21 + 104))(v20, *MEMORY[0x277D85260], v22);
  *&v3[v19] = sub_257ECFD80();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription] = 0;
  v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___longPressGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer] = 0;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___editMenuInteraction] = 0;
  v13 = &v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation];
  *v13 = 0u;
  v13[1] = 0u;
  v14 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
  *&v3[v14] = sub_257DDA774();
  *&v3[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController] = 0;
  v15 = v23;
  sub_257BE3098(v23, &v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset]);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_textDetectionService] = v25;
  v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_resizeToMinDimension] = v26;
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  sub_257BE30FC(v15);
  return v16;
}

void sub_257DD9E80()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLoad);
  sub_257DDA164();
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  [v1 setImage_];
  v2 = sub_257DD7744();
  [v1 addInteraction_];

  v3 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_filterSet];

  v4 = [v1 layer];
  v5 = sub_257D18590(v3);
  sub_257EB7394(v5);

  v6 = sub_257ECF7F0();

  [v4 setFilters_];

  v7 = [v0 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = v7;
  v9 = sub_257DD9228(&OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer, &selRef_singleTap_, 1);
  [v8 addGestureRecognizer_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = v10;
  v12 = sub_257DD91A4();
  [v11 addGestureRecognizer_];

  v13 = [v0 view];
  if (v13)
  {
    v14 = v13;
    v15 = sub_257DD92BC();
    [v14 addInteraction_];

    v16 = sub_257DD9228(&OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___doubleTapGestureRecognizer, &selRef_doubleTap_, 2);
    [v1 addGestureRecognizer_];

    [*&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController____lazy_storage___singleTapGestureRecognizer] requireGestureRecognizerToFail_];
    [v1 setUserInteractionEnabled_];
    v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
    sub_257DD88DC();
    v17 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_labelTapped_];
    v18 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel;
    [*&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_myLabel] setUserInteractionEnabled_];
    [*&v0[v18] addGestureRecognizer_];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_257DDA164()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = v1;
  [v1 setAlpha_];

  v3 = [v0 view];
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  [v3 setAutoresizesSubviews_];

  v5 = [v0 view];
  if (!v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  [v5 setAutoresizingMask_];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [objc_opt_self() systemBackgroundColor];
  [v8 setBackgroundColor_];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = v10;
  [v10 setClearsContextBeforeDrawing_];

  v12 = [v0 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  [v12 setContentMode_];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  [v14 setHidden_];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v16;
  [v16 setMultipleTouchEnabled_];

  v18 = [v0 view];
  if (!v18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  [v18 setOpaque_];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v21 = v20;
  [v20 setUserInteractionEnabled_];

  v22 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
  [v22 setAlpha_];
  [v22 setAlwaysBounceHorizontal_];
  [v22 setAlwaysBounceVertical_];
  [v22 &selRef:0 contextMenuInteraction:? willEndForConfiguration:? animator:? + 6];
  [v22 &selRef:18 objectForKey:?];
  [v22 setBounces_];
  [v22 setBouncesHorizontally_];
  [v22 setBouncesZoom_];
  [v22 setCanCancelContentTouches_];
  [v22 setClearsContextBeforeDrawing_];
  [v22 setContentMode_];
  [v22 setDelaysContentTouches_];
  [v22 setDirectionalLockEnabled_];
  [v22 setHidden_];
  [v22 setIndicatorStyle_];
  [v22 setMultipleTouchEnabled_];
  [v22 setOpaque_];
  [v22 setPagingEnabled_];
  [v22 setScrollEnabled_];
  [v22 setShowsHorizontalScrollIndicator_];
  [v22 setShowsVerticalScrollIndicator_];
  [v22 setUserInteractionEnabled_];
  [v22 setMinimumZoomScale_];
  [v22 setMaximumZoomScale_];
  [v22 setDecelerationRate_];
  [v22 setDelegate_];
  [v22 setPreservesCenterDuringRotation_];
  [v22 setContentInsetAdjustmentBehavior_];
  v23 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  [v23 setAlpha_];
  [v23 setAutoresizesSubviews_];
  [v23 setAutoresizingMask_];
  [v23 setClearsContextBeforeDrawing_];
  [v23 setContentMode_];
  [v23 setHidden_];
  [v23 setHighlighted_];
  [v23 &selRef:0 setPaused:? + 6];
  [v23 setOpaque_];
  [v23 setUserInteractionEnabled_];
  [v22 addSubview_];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 addSubview_];
}

id sub_257DDA774()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v1 = sub_257ECF4C0();
  [v0 setText_];

  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  [v0 setTextColor_];

  v4 = v0;
  v5 = [v2 whiteColor];
  [v4 setBackgroundColor_];

  [v4 setUserInteractionEnabled_];
  v6 = [objc_opt_self() systemFontOfSize_];
  [v4 setFont_];

  return v4;
}

void sub_257DDA8E8(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257BEE444;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_131;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257BEE44C;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_137;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

void sub_257DDAB34(uint64_t a1)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v13) = 0;
  sub_257ECC3F0();
  sub_257ECDD70();
  v2 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController;
  v3 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_readerModeViewController);
  if (v3)
  {
    v4 = v3;
    [v4 willMoveToParentViewController_];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_257DA0018;
    v18 = v6;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257D231C0;
    v16 = &block_descriptor_144_0;
    v7 = _Block_copy(&v13);
    v8 = v4;

    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v17 = sub_257DA0038;
    v18 = v9;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_257DFE438;
    v16 = &block_descriptor_151_1;
    v10 = _Block_copy(&v13);
    v11 = v8;

    [v5 animateWithDuration:0x20000 delay:v7 options:v10 animations:0.25 completion:0.0];
    _Block_release(v10);
    _Block_release(v7);

    v12 = *(a1 + v2);
    *(a1 + v2) = 0;
  }
}

id sub_257DDADE0(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9800);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9808);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-v10];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, sel_viewWillAppear_, a1 & 1);
  if ((v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] & 1) == 0)
  {
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v20[24])
    {
      v13 = sub_257ED0640();

      if ((v13 & 1) == 0)
      {
        return sub_257DDB9B8();
      }
    }

    else
    {
    }

    v14 = &v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset];
    swift_beginAccess();
    v15 = *&v14[*(type metadata accessor for Asset() + 20)];
    if (v15)
    {
      v16 = *&v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
      *&v1[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = v15;
      v17 = v15;

      v18 = v1;
      sub_257DD77B8();

      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5F10);
      sub_257ECDD30();
      swift_endAccess();
      sub_257ECCB70();
      sub_257BD2D4C(&qword_2815441A0, &qword_27F8F9800);
      sub_257ECDDA0();
      (*(v5 + 8))(v7, v4);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_257BD2D4C(&unk_27F8F9810, &qword_27F8F9808);
      v19 = sub_257ECDE50();

      (*(v9 + 8))(v11, v8);
      *&v18[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription] = v19;
    }

    return sub_257DDB9B8();
  }

  return result;
}

uint64_t sub_257DDB248(uint64_t a1)
{
  v2 = sub_257ECF120();
  MEMORY[0x28223BE20](v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECCB70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = sub_257ECF190();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v24 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24[1] = v10;
    v24[3] = v4;
    v16 = *(v6 + 16);
    v16(v13, a1, v5);
    (*(v6 + 56))(v13, 0, 1, v5);
    v24[2] = v2;
    v17 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
    swift_beginAccess();
    sub_257CB4B80(v13, &v15[v17]);
    swift_endAccess();
    sub_257ECF140();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v24[0];
    v16(v24[0], a1, v5);
    v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v6 + 32))(v21 + v20, v19, v5);
    aBlock[4] = sub_257DE0890;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_72_0;
    _Block_copy(aBlock);
    v24[4] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    sub_257ECF1F0();
    swift_allocObject();
    v22 = sub_257ECF1C0();

    *&v15[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem] = v22;
    sub_257ECC3F0();

    v23 = *&v15[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageProcessingQueue];
    sub_257ECFD70();
  }

  return result;
}

id sub_257DDB6C0(uint64_t a1, void *a2)
{
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 1;
  sub_257DD88DC();
  v4 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = a2;
  v5 = a2;

  sub_257DD77B8();
  return sub_257DDB720();
}

id sub_257DDB720()
{
  v1 = sub_257ECDA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
  [v5 minimumZoomScale];
  v7 = v6;
  result = [v5 maximumZoomScale];
  if (v7 <= v9)
  {
    sub_257ECD4D0();
    v10 = v0;
    v11 = sub_257ECDA20();
    v12 = sub_257ECFBD0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      [v5 zoomScale];
      *(v13 + 4) = v14;
      _os_log_impl(&dword_257BAC000, v11, v12, "%f", v13, 0xCu);
      MEMORY[0x259C74820](v13, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    sub_257ECC3F0();
    [v5 zoomScale];
    v16 = v15;
    [v5 minimumZoomScale];
    if (v16 <= v17)
    {
      v16 = v17;
    }

    [v5 maximumZoomScale];
    if (v18 < v16)
    {
      v16 = v18;
    }

    [v5 minimumZoomScale];
    v20 = v16 - v19;
    [v5 maximumZoomScale];
    v22 = v21;
    [v5 minimumZoomScale];
    v24 = v20 / (v22 - v23);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v25[1] = v24;
    return sub_257ECDD70();
  }

  return result;
}

uint64_t sub_257DDB9B8()
{
  v1 = v0;
  v2 = sub_257ECF1B0();
  v71 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v70 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = v60 - v5;
  v7 = sub_257ECF190();
  MEMORY[0x28223BE20](v7 - 8);
  v74 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_257ECF120();
  MEMORY[0x28223BE20](v68);
  v72 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v60 - v14;
  v16 = sub_257ECCB70();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v67 = v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v75 = v60 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = v60 - v22;
  v24 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
  swift_beginAccess();
  sub_257C1C614(v1 + v24, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_257BE4084(v15, &qword_27F8F5F30);
  }

  v69 = v17;
  v28 = *(v17 + 32);
  v27 = v17 + 32;
  v26 = v28;
  v28(v23, v15, v16);
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v63 = v26;
  v64 = v27;
  v61 = v6;
  v62 = v2;
  v29 = v75;
  v73 = v23;
  sub_257ECCA60();
  if (qword_27F8F46D8 != -1)
  {
    swift_once();
  }

  v30 = v69;
  v65 = *(v69 + 16);
  v66 = v69 + 16;
  v65(v13, v29, v16);
  v31 = *(v30 + 56);
  v31(v13, 0, 1, v16);
  v32 = sub_257C746A0(v13);
  sub_257BE4084(v13, &qword_27F8F5F30);
  if (v32)
  {
    v33 = v73;
    v34 = sub_257C76CCC(v73);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 1;
    sub_257DD88DC();
    v35 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = v34;
    v36 = v34;

    sub_257DD77B8();
    v37 = *(v30 + 8);
    v37(v29, v16);
    return (v37)(v33, v16);
  }

  else
  {
    if (qword_27F8F46E0 != -1)
    {
      swift_once();
    }

    v65(v13, v75, v16);
    v31(v13, 0, 1, v16);
    v38 = sub_257C746A0(v13);
    sub_257BE4084(v13, &qword_27F8F5F30);
    v39 = MEMORY[0x277D84F90];
    v40 = v69;
    if (v38)
    {
      v41 = sub_257C76CCC(v73);
      *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = 0;
      sub_257DD88DC();
      v42 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
      *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = v41;
      v43 = v41;

      sub_257DD77B8();
      v44 = v40;
      v45 = v67;
    }

    else
    {
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v45 = v67;
      v65(v67, v73, v16);
      v47 = (*(v40 + 80) + 24) & ~*(v40 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = v46;
      v63(v48 + v47, v45, v16);
      v81 = sub_257DE08C0;
      v82 = v48;
      aBlock = MEMORY[0x277D85DD0];
      v78 = 1107296256;
      v79 = sub_257D231C0;
      v80 = &block_descriptor_85;
      v60[1] = _Block_copy(&aBlock);
      v76 = v39;
      v60[0] = sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
      sub_257ECC3F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
      sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
      v44 = v40;
      sub_257ED0180();
      sub_257ECF1F0();
      swift_allocObject();
      v49 = sub_257ECF1D0();

      *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem) = v49;
      sub_257ECC3F0();

      sub_257ECFD70();
    }

    sub_257ECF140();
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v65(v45, v73, v16);
    v51 = (*(v44 + 80) + 24) & ~*(v44 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    v63(v52 + v51, v45, v16);
    v81 = sub_257DE09E8;
    v82 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_257D231C0;
    v80 = &block_descriptor_92_0;
    _Block_copy(&aBlock);
    v76 = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
    sub_257ECC3F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    sub_257ECF1F0();
    swift_allocObject();
    v53 = sub_257ECF1C0();

    v54 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem;
    *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem) = v53;

    v55 = v70;
    sub_257ECF1A0();
    v56 = v61;
    sub_257ECF220();
    v57 = *(v71 + 8);
    v58 = v62;
    result = v57(v55, v62);
    if (*(v1 + v54))
    {
      sub_257ECC3F0();
      sub_257ECFCD0();

      v57(v56, v58);
      v59 = *(v44 + 8);
      v59(v75, v16);
      return (v59)(v73, v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_257DDC4C8(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_zoomSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v5 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_delayedAssetSubscription])
  {
    sub_257ECC3F0();
    sub_257ECDCC0();
  }

  v6 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_fullSizeWorkItem])
  {
    sub_257ECC3F0();
    sub_257ECF1E0();
  }

  v7 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem;
  if (*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_thumbnailWorkItem])
  {
    sub_257ECC3F0();
    sub_257ECF1E0();
  }

  *&v2[v6] = 0;

  *&v2[v7] = 0;

  *&v2[v4] = 0;

  *&v2[v5] = 0;

  v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage] = 0;
  sub_257DD88DC();
  v8 = *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image] = 0;

  sub_257DD77B8();
  return [*&v2[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView] setImage_];
}

void sub_257DDC680()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView];
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setFrame_];
    v12 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image;
    v13 = *&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image];
    v14 = v13;
    LOBYTE(v13) = sub_257DDC7EC(v13);

    if (v13)
    {
      v15 = *&v0[v12];
      if (v15)
      {
        v16 = v15;
        [v16 size];
        if (v18 != 0.0 || v17 != 0.0)
        {
          [v16 size];
          [v1 setContentSize_];
        }
      }

      [*&v0[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView] sizeToFit];
      sub_257DDC90C();
      sub_257DD643C();
      sub_257DD6114();
      sub_257DD65E0();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257DDC7EC(void *a1)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v2 = a1;
  [v2 size];
  if (v4 == 0.0 && v3 == 0.0 || (v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView), [v5 bounds], v7 = v6, objc_msgSend(v2, sel_size), vabdd_f64(v7, v8) >= 3.0) || (objc_msgSend(v5, sel_bounds), v10 = v9, objc_msgSend(v2, sel_size), vabdd_f64(v10, v11) >= 3.0) || (v12 = objc_msgSend(v5, sel_image)) == 0)
  {

LABEL_9:
    v15 = 1;
    return v15 & 1;
  }

  v13 = v12;
  sub_257BD2C2C(0, &qword_281543DF0);
  v14 = sub_257ECFF50();

  v15 = v14 ^ 1;
  return v15 & 1;
}

void sub_257DDC90C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
  if (v1)
  {
    v17 = v1;
    [v17 size];
    if (v3 != 0.0 || v2 != 0.0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
      [v17 size];
      [v4 setContentSize_];
      [v4 frame];
      v6 = v5;
      v8 = v7;
      [v4 contentSize];
      v10 = v6 / v9;
      [v4 contentSize];
      v12 = v8 / v11;
      if (v8 / v11 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v13 = v8 / v11;
      }

      if (v10 > v12)
      {
        v14 = v10;
      }

      else
      {
        v14 = v12;
      }

      if (*(v0 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_resizeToMinDimension))
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      [v4 setMinimumZoomScale_];
      sub_257D15BB4();
      [v4 setMaximumZoomScale_];
      sub_257DDDFE4(0, v15);
    }
  }
}

uint64_t sub_257DDCB3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECF120();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF190();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v22 = v4;
    if (qword_27F8F46E0 != -1)
    {
      swift_once();
    }

    v20 = v8;
    v21 = v7;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v13 = sub_257C76CCC(a2);
    sub_257BD2C2C(0, &qword_281543F10);
    v14 = sub_257ECFD30();
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    *(v15 + 24) = v13;
    aBlock[4] = sub_257DE0AB0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_104_0;
    v16 = _Block_copy(aBlock);
    v19 = v13;
    v17 = v12;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v10, v6, v16);
    _Block_release(v16);

    (*(v22 + 8))(v6, v3);
    return (*(v20 + 8))(v10, v21);
  }

  return result;
}

uint64_t sub_257DDCEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v24 = a5;
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECF190();
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v23 = v8;
    if (qword_27F8F46D8 != -1)
    {
      swift_once();
    }

    v22 = v11;
    if (qword_281544FE0 != -1)
    {
      swift_once();
    }

    v16 = sub_257C76CCC(a2);
    sub_257BD2C2C(0, &qword_281543F10);
    v17 = sub_257ECFD30();
    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    aBlock[4] = a4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = v24;
    v19 = _Block_copy(aBlock);
    v24 = v16;
    v20 = v15;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    MEMORY[0x259C72880](0, v13, v10, v19);
    _Block_release(v19);

    (*(v23 + 8))(v10, v7);
    return (*(v25 + 8))(v13, v22);
  }

  return result;
}

void sub_257DDD294(uint64_t a1, void *a2, char a3)
{
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage) = a3;
  sub_257DD88DC();
  v5 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image);
  *(a1 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_image) = a2;
  v6 = a2;

  sub_257DD77B8();
}

uint64_t sub_257DDD2EC(uint64_t *a1)
{
  v2 = sub_257ECF120();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECF190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v19 = sub_257ECFD30();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v10;
    aBlock[4] = sub_257DE087C;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_64;
    v14 = _Block_copy(aBlock);
    v18 = v6;
    v15 = v14;
    v17 = v12;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257DE066C(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    sub_257ED0180();
    v16 = v19;
    MEMORY[0x259C72880](0, v9, v5, v15);
    _Block_release(v15);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v9, v18);
  }

  return result;
}

void sub_257DDD624(void *a1, double a2)
{
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  if (!v8)
  {

LABEL_10:
    sub_257DDD7C4(a2);
    return;
  }

  v4 = sub_257ED0640();

  if (v4)
  {
    goto LABEL_10;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = sub_257BDB730();
    swift_unknownObjectRelease();
    if (v5)
    {
      type metadata accessor for FreezeFramePageContentViewController();
      v6 = a1;
      v7 = sub_257ECFF50();

      if (v7)
      {
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_257DDD7C4(double a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v8 = sub_257ECDA20();
  v9 = sub_257ECFBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = a1;
    _os_log_impl(&dword_257BAC000, v8, v9, "zoomCenter to percentage: %f", v10, 0xCu);
    MEMORY[0x259C74820](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  result = sub_257DD909C();
  if ((result & 1) == 0)
  {
    v12 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
    [v12 minimumZoomScale];
    v14 = v13;
    v15 = 1.0;
    if (a1 <= 1.0)
    {
      v15 = a1;
    }

    if (a1 > 0.0)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0.0;
    }

    [v12 maximumZoomScale];
    v18 = v17;
    [v12 minimumZoomScale];
    return sub_257DDDFE4(0, v14 + v16 * (v18 - v19));
  }

  return result;
}

_OWORD *sub_257DDD9A0(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v12 = a1;
  v13 = sub_257ECDA20();
  v14 = sub_257ECFBD0();
  if (!os_log_type_enabled(v13, v14))
  {

    result = (*(v9 + 8))(v11, v8);
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  v40 = v8;
  v41 = v4;
  v15 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v42 = v38;
  v39 = v15;
  *v15 = 136315138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  result = swift_allocObject();
  result[1] = xmmword_257ED9BD0;
  if (!a1)
  {
    __break(1u);
    goto LABEL_19;
  }

  v17 = result;
  v37 = "n";
  *(result + 7) = sub_257BD2C2C(0, &unk_281543E00);
  v17[8] = sub_257CA64A0(&unk_27F8F97A0, &unk_281543E00);
  v17[4] = v12;
  v18 = sub_257ECFEB0();
  v17[12] = sub_257BD2C2C(0, &qword_27F8F93A0);
  v17[13] = sub_257CA64A0(&qword_27F8F97B0, &qword_27F8F93A0);
  v17[9] = v18;
  v19 = sub_257ECF540();
  v21 = sub_257BF1FC8(v19, v20, &v42);

  v22 = v39;
  *(v39 + 1) = v21;
  _os_log_impl(&dword_257BAC000, v13, v14, "%s", v22, 0xCu);
  v23 = v38;
  __swift_destroy_boxed_opaque_existential_0(v38);
  MEMORY[0x259C74820](v23, -1, -1);
  MEMORY[0x259C74820](v22, -1, -1);

  (*(v9 + 8))(v11, v40);
  v4 = v41;
LABEL_5:
  [v12 frame];
  v25 = v24;
  v27 = v26;
  v28 = *(v4 + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView);
  [v28 contentOffset];
  v31 = a2 - v25 * 0.5;
  v32 = a3 - v27 * 0.5;
  if (v31 >= 0.0)
  {
    v33 = a2 - v25 * 0.5;
  }

  else
  {
    v33 = 0.0;
  }

  if (v31 >= 0.0)
  {
    v34 = v29;
  }

  else
  {
    v34 = -v31;
  }

  if (v32 >= 0.0)
  {
    v35 = v32;
  }

  else
  {
    v35 = 0.0;
  }

  if (v32 >= 0.0)
  {
    v36 = v30;
  }

  else
  {
    v36 = -v32;
  }

  [v12 setFrame_];
  return [v28 setContentOffset_];
}

void sub_257DDDD60(void *a1)
{
  v2 = [a1 delegate];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector_])
    {
      v15 = [v3 viewForZoomingInScrollView_];
      swift_unknownObjectRelease();
      if (v15)
      {
        [v15 frame];
        v5 = v4;
        v7 = v6;
        [a1 bounds];
        v8 = 0.0;
        v9 = 0.0;
        if (v5 < v10)
        {
          [a1 bounds];
          v9 = (v11 - v5) * 0.5;
        }

        [a1 bounds];
        if (v7 < v12)
        {
          [a1 bounds];
          v8 = (v13 - v7) * 0.5;
        }

        [v15 setFrame_];
        if (sub_257DD909C())
        {
          sub_257DDB720();
          v14 = [objc_opt_self() defaultCenter];
          if (qword_281543EE8 != -1)
          {
            swift_once();
          }

          [v14 postNotificationName:qword_281548098 object:0];
        }

        sub_257DD65E0();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_257DDDFE4(int a1, double a2)
{
  LODWORD(v3) = a1;
  v5 = sub_257ECCB70();
  v28 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_257ECD4D0();
  v12 = v2;
  v13 = sub_257ECDA20();
  LODWORD(v14) = sub_257ECFBD0();
  if (os_log_type_enabled(v13, v14))
  {
    v26 = v8;
    v27 = v3;
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136315650;
    v16 = OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_asset;
    swift_beginAccess();
    if ((*(v28 + 48))(&v12[v16], 1, v5))
    {
      v17 = 0xE100000000000000;
      v18 = 63;
    }

    else
    {
      v24 = v14;
      v14 = v28;
      (*(v28 + 16))(v7, &v12[v16], v5);
      v18 = sub_257ECCAD0();
      v17 = v19;
      (*(v14 + 8))(v7, v5);
      LOBYTE(v14) = v24;
    }

    v3 = sub_257BF1FC8(v18, v17, &v29);

    *(v15 + 4) = v3;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    *(v15 + 22) = 1024;
    v20 = v12[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_isShowingFullSizeImage];

    *(v15 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v13, v14, "%s scale: %f, isShowingFullSizeImage? %{BOOL}d", v15, 0x1Cu);
    v21 = v25;
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x259C74820](v21, -1, -1);
    MEMORY[0x259C74820](v15, -1, -1);

    (*(v9 + 8))(v11, v26);
    LOBYTE(v3) = v27;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  return [*&v12[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_scrollView] setZoomScale:v3 & 1 animated:a2];
}

double sub_257DDE33C(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_257ECDA30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4D0();
  v12 = sub_257ECDA20();
  v13 = sub_257ECFBD0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v14 = 136315394;
    v16 = sub_257ECFA30();
    v18 = sub_257BF1FC8(v16, v17, &v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    sub_257DDE5D8(a2, a3);
    v21 = sub_257BF1FC8(v19, v20, &v31);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_257BAC000, v12, v13, "zoomRect forScale: %s, center: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v15, -1, -1);
    MEMORY[0x259C74820](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (a1 == 0.0)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = a1;
  }

  v23 = *&v4[OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_imageView];
  [v23 frame];
  [v23 frame];
  v25 = v24 / v22;
  v26 = [v4 view];
  [v23 convertPoint:v26 fromView:{a2, a3}];
  v28 = v27;

  return v28 - v25 * 0.5;
}

void sub_257DDE5D8(double a1, double a2)
{
  v2 = round(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = sub_257ED0600();
  MEMORY[0x259C72150](v4);

  MEMORY[0x259C72150](2128160, 0xE300000000000000);
  v5 = round(a2);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = sub_257ED0600();
    MEMORY[0x259C72150](v6);

    MEMORY[0x259C72150](125, 0xE100000000000000);
    return;
  }

LABEL_13:
  __break(1u);
}