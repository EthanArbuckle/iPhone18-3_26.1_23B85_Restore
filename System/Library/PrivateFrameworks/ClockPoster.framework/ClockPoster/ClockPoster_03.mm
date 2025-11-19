uint64_t sub_1E48F9D7C(long double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
    ;
  }

  if (i >= 4.71238898)
  {
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    v17 = CGRectGetHeight(v30) * -0.5;
    v31.origin.x = a2;
    v31.origin.y = a3;
    v31.size.width = a4;
    v31.size.height = a5;
    Width = CGRectGetWidth(v31);
    v19 = atan2(v17, Width * 0.5);
      ;
    }

    if (i < j)
    {
      return 1;
    }

    else
    {
      return 8;
    }
  }

  else if (i >= 3.14159265)
  {
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    v22 = CGRectGetHeight(v32) * -0.5;
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    v23 = CGRectGetWidth(v33);
    v24 = atan2(v22, v23 * -0.5);
      ;
    }

    if (i >= k)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    v10 = CGRectGetHeight(v28) * 0.5;
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    v11 = CGRectGetWidth(v29);
    if (i >= 1.57079633)
    {
      v26 = atan2(v10, v11 * -0.5);
        ;
      }

      v14 = i < m;
      v15 = 2;
      v16 = 4;
    }

    else
    {
      v12 = atan2(v10, v11 * 0.5);
        ;
      }

      v14 = i < n;
      v15 = 4;
      v16 = 8;
    }

    if (v14)
    {
      return v16;
    }

    else
    {
      return v15;
    }
  }
}

uint64_t sub_1E48F9F90()
{
  v1 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
    v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

LABEL_36:
  v3 = sub_1E49986EC();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    goto LABEL_3;
  }

  if (v2 < 0)
  {
    v63 = *&v0[v1];
  }

  v1 = sub_1E49986EC();
LABEL_4:
  v4 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler;
  v5 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame;
  v6 = OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_rightComplicationFrame;

  if (v1)
  {
    v7 = 0;
    v8 = &v0[v4];
    v65 = v2;
    v64 = &v0[v6];
    v68 = v2 & 0xFFFFFFFFFFFFFF8;
    v69 = v2 & 0xC000000000000001;
    v9 = &off_1E8761000;
    v67 = 6.28318531 / v3;
    v66 = v1;
    while (1)
    {
      if (v69)
      {
        v10 = MEMORY[0x1E691BDE0](v7, v2);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_33:
          __break(1u);
        }
      }

      else
      {
        if (v7 >= *(v68 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v10 = *(v2 + 8 * v7 + 32);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_33;
        }
      }

      v12 = v10;
      [v12 v9[282]];
      UIRectIntegralWithViewScale();
      [v12 setFrame_];
      [v0 bounds];
      v17 = sub_1E48F9B7C(v67 * v7, v13, v14, v15, v16);
      v19 = sqrt(v17 * v17 + v18 * v18);
      if (!v7)
      {
        break;
      }

      if (v7 == 2)
      {
        sub_1E48F8070(&v72);
        UIFloorToScale();
        goto LABEL_17;
      }

      if (v7 != 1)
      {
        sub_1E48F8070(&v73);
        UIFloorToScale();
        v28 = v29;
        [v12 _firstLineBaselineOffsetFromBoundsTop];
        v31 = v30;
        [v12 bounds];
        v26 = v31 + CGRectGetHeight(v77) * -0.5;
        goto LABEL_19;
      }

      sub_1E48F8070(&v71);
      UICeilToScale();
      v21 = v20;
      [v12 _capOffsetFromBoundsTop];
      v23 = v22;
      [v12 bounds];
      Height = CGRectGetHeight(v75);
      v25 = v19 - v21;
      v26 = Height * 0.5 - v23;
LABEL_20:
      v32 = v25 + v26;
      [v0 bounds];
      UIRectGetCenter();
      UIPointRoundToViewScale();
      v34 = v33;
      v36 = v35;
      v37 = v9;
      [v12 v9[282]];
      v38 = [v0 traitCollection];
      [v38 displayScale];

      v39 = v34;
      UIRectIntegralWithScale();
      [v12 setFrame_];
      __sincos_stret(v67 * v7);
      v40 = [v0 traitCollection];
      [v40 displayScale];

      UIPointRoundToScale();
      [v12 setCenter_];
      if (v7 == 3)
      {

        v9 = v37;
        v2 = v65;
        v1 = v66;
      }

      else
      {
        v9 = v37;
        v2 = v65;
        v1 = v66;
        if (v7 == 1)
        {
        }

        else
        {
          [v12 bounds];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v78.origin.x = v42;
          v78.origin.y = v44;
          v78.size.width = v46;
          v78.size.height = v48;
          v49 = v32 - CGRectGetWidth(v78) * 0.5;
          sub_1E48F8070(&v74);
          UIRoundToScale();
          v51 = v50;
          [v0 bounds];
          v52 = CGRectGetHeight(v79) - (v51 + v51);
          v53 = *v8;
          if (*(v8 + 4) >= *(v8 + 3))
          {
            v54 = *(v8 + 4);
          }

          if (*(v8 + 2) >= *(v8 + 1))
          {
            v55 = *(v8 + 2);
          }

          UIRoundToScale();
          v57 = v56;

          v58 = v36 - v52 * 0.5 + v57;
          if (v7)
          {
            v59 = v39 - v49 + v57;
            v60 = v39 - v57;
            v61 = &v0[v5];
          }

          else
          {
            v59 = v39 + v57;
            v60 = v39 + v49 - v57;
            v61 = v64;
          }

          *v61 = v59;
          v61[1] = v58;
          v61[2] = v60 - v59;
          v61[3] = v36 + v52 * 0.5 - v57 - v58;
        }
      }

      ++v7;
      if (v11 == v1)
      {
      }
    }

    sub_1E48F8070(&v70);
    UICeilToScale();
LABEL_17:
    v28 = v27;
    [v12 bounds];
    v26 = CGRectGetWidth(v76) * -0.5;
LABEL_19:
    v25 = v19 - v28;
    goto LABEL_20;
  }
}

id sub_1E48FA5B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalogClockDialView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1E48FA6A0()
{
  result = qword_1ECF7FC00;
  if (!qword_1ECF7FC00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF7FC00);
  }

  return result;
}

void sub_1E48FA6EC()
{
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_majorTickLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickMaskLayer) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_minorTickBackgroundLayer) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_tickLayers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_hourLabels) = v1;
  v2 = (v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_rightComplicationFrame);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView____lazy_storage___scaler;
  *(v4 + 32) = 0;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 40) = 1;
  sub_1E49986DC();
  __break(1u);
}

id sub_1E48FA7EC(uint64_t a1, const CGPath *a2, void *a3, char *a4, double a5)
{
  v132 = *MEMORY[0x1E69E9840];
  v111 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  v94 = a3;
  [a3 bounds];
  Width = CGRectGetWidth(v137);
  v105 = a2;
  v11 = sub_1E48FD59C(a2);
  if (*(v11 + 16))
  {
    v103 = a4;
    v12 = *(v11 + 32);
    a4 = v11;

    v13 = v12;
    v14 = *(v12 + 16);
    v95 = v13;
    if (v14)
    {
      v15 = 0;
      v16 = v13 + 32;
      v5 = 0.0;
      do
      {
        if (v15 >= *(v13 + 16))
        {
          goto LABEL_64;
        }

        a4 = *(v16 + 8 * v15);
        v24 = *(a4 + 2);
        if (v24 == 2)
        {
          v28 = vsubq_f64(*(a4 + 3), *(a4 + 2));
          v23 = sqrt(vaddvq_f64(vmulq_f64(v28, v28)));
        }

        else if (v24 == 3)
        {
          v17.f64[0] = *(a4 + 6);
          v18 = *(a4 + 2);
          v19 = *(a4 + 56);
          v20 = *(a4 + 8) - v17.f64[0];
          v17.f64[1] = *(a4 + 9);
          v21 = vsubq_f64(v17, v18);
          v22 = vsubq_f64(v19, vextq_s8(v18, v18, 8uLL));
          v23 = (sqrt(v20 * v20 + (*(a4 + 9) - v19.f64[0]) * (*(a4 + 9) - v19.f64[0])) + vaddvq_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v22, v22), vmulq_f64(v21, v21))))) * 0.5;
        }

        else
        {
          v23 = 0.0;
          if (v24 == 4)
          {
            v25 = *(v16 + 8 * v15);

            sub_1E48FD7A0(v26);
            v23 = v27;

            v13 = v95;
          }
        }

        ++v15;
        v5 = v5 + v23;
      }

      while (v14 != v15);
    }

    [a1 size];
    v93 = [objc_opt_self() systemFontOfSize_];
    CTFontGetCapHeight(v93);
    v91 = CTLineCreateWithAttributedString(a1);
    CTLineGetGlyphRuns(v91);
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    *&v131[0] = 0;
    type metadata accessor for CTRun(0);
    sub_1E49980AC();
LABEL_70:
    __break(1u);
  }

LABEL_67:
  __break(1u);
  v86 = sub_1E49986EC();
  if (v86)
  {
    v29 = 0;
    v102 = a1 & 0xC000000000000001;
    v100 = a1 + 32;
    v101 = *MEMORY[0x1E69DB648];
    v96 = (v5 - (Width + v6)) * 0.5;
    v98 = a4;
    v99 = a1;
    v97 = v86;
    do
    {
      if (v102)
      {
        v30 = MEMORY[0x1E691BDE0](v29, a1);
        v31 = __OFADD__(v29, 1);
        v32 = v29 + 1;
        if (v31)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v29 >= *(a4 + 2))
        {
          goto LABEL_65;
        }

        v30 = *(v100 + 8 * v29);
        v31 = __OFADD__(v29, 1);
        v32 = v29 + 1;
        if (v31)
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }

      v107 = v32;
      v33 = v30;
      v34 = CTRunGetAttributes(v30);
      *&v125 = v101;
      type metadata accessor for Key(0);
      v35 = v101;
      a1 = sub_1E499885C();
      v106 = v34;
      a4 = [(__CFDictionary *)v34 __swift_objectForKeyedSubscript:a1];
      swift_unknownObjectRelease();
      if (!a4)
      {
        __break(1u);
        goto LABEL_70;
      }

      sub_1E49984FC();
      swift_unknownObjectRelease();
      sub_1E48C42DC(&matrix, &v125);
      type metadata accessor for CTFont(0);
      swift_dynamicCast();
      font = *&v120.a;
      run = v33;
      GlyphCount = CTRunGetGlyphCount(v33);
      if (GlyphCount < 0)
      {
        goto LABEL_66;
      }

      v37 = GlyphCount;
      if (GlyphCount)
      {
        type metadata accessor for CGPoint(0);
        v38 = sub_1E49980EC();
        *(v38 + 16) = v37;
        bzero((v38 + 32), 16 * v37);
        v39 = v33;
        v133.location = 0;
        v133.length = v37;
        CTRunGetPositions(v33, v133, (v38 + 32));
        type metadata accessor for CGSize(0);
        v40 = sub_1E49980EC();
        *(v40 + 16) = v37;
        bzero((v40 + 32), 16 * v37);
        v41 = v37;
      }

      else
      {
        v38 = MEMORY[0x1E69E7CC0];
        v39 = v33;
        v134.location = 0;
        v134.length = 0;
        CTRunGetPositions(v33, v134, (MEMORY[0x1E69E7CC0] + 32));
        v41 = 0;
        v40 = v38;
      }

      v135.location = 0;
      v135.length = v41;
      CTRunGetAdvances(v39, v135, (v40 + 32));
      v42 = *(v40 + 16);
      if (v42)
      {
        *&v125 = MEMORY[0x1E69E7CC0];
        sub_1E4906F18(0, v42, 0);
        a1 = v125;
        v43 = *(v125 + 16);
        v44 = 32;
        do
        {
          v45 = *(v40 + v44);
          *&v125 = a1;
          v46 = *(a1 + 24);
          if (v43 >= v46 >> 1)
          {
            sub_1E4906F18((v46 > 1), v43 + 1, 1);
            a1 = v125;
          }

          *(a1 + 16) = v43 + 1;
          *(a1 + 8 * v43 + 32) = v45;
          v44 += 16;
          ++v43;
          --v42;
        }

        while (v42);

        if (v37)
        {
LABEL_29:
          v47 = sub_1E49980EC();
          *(v47 + 16) = v37;
          bzero((v47 + 32), 2 * v37);
          goto LABEL_32;
        }
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
        if (v37)
        {
          goto LABEL_29;
        }
      }

      v47 = MEMORY[0x1E69E7CC0];
LABEL_32:
      v136.location = 0;
      v136.length = v41;
      v114 = v47 + 32;
      CTRunGetGlyphs(run, v136, (v47 + 32));
      v130 = 0;
      v128 = 0u;
      v129 = 0u;
      v116 = a1;
      if (v103)
      {
        v48 = *(a1 + 16);
        if (v48)
        {
          v49 = sub_1E48FD854(v38, a1, Width + v96 + *(a1 + 8 * v48 + 24) * 0.5);
          v50 = sub_1E48FB568(v105, v49, 1, a5);

          v51 = *(v50 + 16);
          if (v51)
          {
            sub_1E48CD210(v50 + 40 * v51 - 8, &v125);

            sub_1E48C1338(&v128, &qword_1ECF7FC18, &unk_1E499E580);
          }

          else
          {
            sub_1E48C1338(&v128, &qword_1ECF7FC18, &unk_1E499E580);

            *&v127 = 0;
            v125 = 0u;
            v126 = 0u;
          }

          v128 = v125;
          v129 = v126;
          v130 = v127;
        }

        v54 = v96;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC10, &qword_1E499E578);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E499B670;
        *(inited + 32) = Width * 0.5 + v96;
        v53 = sub_1E48FB568(v105, inited, 0, a5);
        swift_setDeallocating();
        if (*(v53 + 16))
        {
          sub_1E48CD210(v53 + 32, &v125);

          sub_1E48C1338(&v128, &qword_1ECF7FC18, &unk_1E499E580);
        }

        else
        {
          sub_1E48C1338(&v128, &qword_1ECF7FC18, &unk_1E499E580);

          *&v127 = 0;
          v125 = 0u;
          v126 = 0u;
        }

        v128 = v125;
        v129 = v126;
        v130 = v127;
        v54 = Width * 0.5 + v96;
      }

      a4 = sub_1E48FD854(v38, a1, v54);

      v110 = sub_1E48FB568(v105, a4, v103 & 1, a5);

      sub_1E48C12D0(&v128, &v125, &qword_1ECF7FC18, &unk_1E499E580);
      if (*(&v126 + 1))
      {
        sub_1E48B7448(&v125, &matrix);
        sub_1E48FDC7C(&matrix, v131, Width, v112);
        v125 = v131[0];
        v126 = v131[1];
        v127 = v131[2];
        [v94 setAffineTransform_];
        __swift_destroy_boxed_opaque_existential_0Tm(&matrix);
      }

      else
      {
        sub_1E48C1338(&v125, &qword_1ECF7FC18, &unk_1E499E580);
      }

      v55 = 0.0;
      v118 = *(v110 + 16);
      v113 = a1 + 32;
      v115 = v47;
      while (1)
      {
        v56 = 0uLL;
        v57 = v118;
        v58 = 0uLL;
        v59 = 0uLL;
        if (*&v55 != *&v118)
        {
          if (*&v55 >= *(v110 + 16))
          {
            goto LABEL_63;
          }

          *&v57 = *&v55 + 1;
          matrix.a = v55;
          sub_1E48CD210(v110 + 32 + 40 * *&v55, &matrix.b);
          v56 = *&matrix.a;
          v58 = *&matrix.c;
          v59 = *&matrix.tx;
        }

        v125 = v56;
        v126 = v58;
        v127 = v59;
        if (!v59)
        {
          break;
        }

        v119 = v56;
        sub_1E48B7448((&v125 + 8), v121);
        if ((v119 & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        if (v119 >= *(v47 + 16))
        {
          goto LABEL_61;
        }

        if (v119 >= *(a1 + 16))
        {
          goto LABEL_62;
        }

        v60 = *(v114 + 2 * v119);
        v61 = *(v113 + 8 * v119);
        v63 = v122;
        v62 = v123;
        __swift_project_boxed_opaque_existential_1(v121, v122);
        v64 = *(v62 + 56);
        v65 = v64(v63, v62) * v61 * 0.5;
        v66 = v122;
        v67 = v123;
        __swift_project_boxed_opaque_existential_1(v121, v122);
        v68 = (*(v67 + 80))(v66, v67) * v61 * 0.5;
        v69 = v122;
        v70 = v123;
        __swift_project_boxed_opaque_existential_1(v121, v122);
        v71 = v112 * (*(v70 + 80))(v69, v70) * 0.5;
        v72 = v112 * v64(v63, v62) * 0.5;
        v73 = v64(v63, v62);
        v74 = v122;
        v75 = v123;
        __swift_project_boxed_opaque_existential_1(v121, v122);
        v76 = (*(v75 + 80))(v74, v75);
        v77 = v122;
        v78 = v123;
        __swift_project_boxed_opaque_existential_1(v121, v122);
        v79 = -(*(v78 + 80))(v77, v78);
        v6 = v64(v63, v62);
        v80 = v122;
        v81 = v123;
        __swift_project_boxed_opaque_existential_1(v121, v122);
        v5 = (*(v81 + 8))(v80, v81) + v71 - v65;
        a4 = v122;
        v82 = v123;
        __swift_project_boxed_opaque_existential_1(v121, v122);
        v83 = (*(v82 + 32))(a4, v82);
        CGAffineTransformMake(&v120, v73, v76, v79, v6, v5, v83 - v72 - v68);
        matrix = v120;
        v84 = CTFontCreatePathForGlyph(font, v60, &matrix);
        if (v84)
        {
          a4 = v84;
          v85 = [objc_opt_self() bezierPathWithCGPath_];
          [v111 appendPath_];
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v121);
        v55 = v57;
        v47 = v115;
        a1 = v116;
      }

      sub_1E48C1338(&v128, &qword_1ECF7FC18, &unk_1E499E580);

      a4 = v98;
      v29 = v107;
      a1 = v99;
    }

    while (v107 != v97);
  }

  v87 = [v111 CGPath];

  v88 = *MEMORY[0x1E69E9840];
  return v87;
}

uint64_t getEnumTagSinglePayload for CurvedTextPathProvider(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CurvedTextPathProvider(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E48FB568(const CGPath *a1, uint64_t a2, int a3, double a4)
{
  HIDWORD(v44) = a3;
  result = sub_1E48FD59C(a1);
  if (!*(result + 16))
  {
    goto LABEL_49;
  }

  v7 = *(result + 32);

  result = v7;
  v48 = *(v7 + 16);
  if (!v48)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = 0;
  v9 = 0;
  v10 = *(a2 + 16);
  v47 = result + 32;
  v49 = a2 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 0.0;
  v46 = result;
  while (v9 < *(result + 16))
  {
    v13 = v8;
    v14 = *(v47 + 8 * v9);
    v15 = *(v14 + 16);
    v50 = v9;
    switch(v15)
    {
      case 2:
        v20 = vsubq_f64(*(v14 + 48), *(v14 + 32));
        v19 = sqrt(vaddvq_f64(vmulq_f64(v20, v20)));

        break;
      case 3:

        result = sub_1E48FD970(v18);
        goto LABEL_11;
      case 4:

        result = sub_1E48FD7A0(v16);
LABEL_11:
        v19 = v17;
        break;
      default:

        v19 = 0.0;
        break;
    }

    v21 = v12;
    if (v8 < v10)
    {
      while (1)
      {
        if (v13 < 0)
        {
          __break(1u);
          goto LABEL_44;
        }

        v22 = v21 + *(v49 + 8 * v8);
        if (v22 > v19)
        {
          break;
        }

        ++v8;
        v21 = v22;
        if (v10 == v8)
        {
          v21 = v22;
          v8 = v10;
          break;
        }
      }

      if (v8 < v13)
      {
        goto LABEL_45;
      }
    }

    v23 = v8 - v13;
    if (v8 != v13)
    {
      if (v13 < 0)
      {
        goto LABEL_46;
      }

      if (v13 >= v10)
      {
        goto LABEL_47;
      }

      if (v8 - 1 >= v10)
      {
        goto LABEL_48;
      }

      v24 = sub_1E49062AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v40 = *(v24 + 2);
      v41 = (v49 + 8 * v13);
      do
      {
        v42 = *v41;
        v43 = *(v24 + 3);
        if (v40 >= v43 >> 1)
        {
          v24 = sub_1E49062AC((v43 > 1), v40 + 1, 1, v24);
        }

        v12 = v12 + v42;
        *(v24 + 2) = v40 + 1;
        *&v24[8 * v40 + 32] = v12;
        ++v41;
        ++v40;
        --v23;
      }

      while (v23);
LABEL_22:
      sub_1E48FB99C(v14, v24, BYTE4(v44) & 1, a4);
      v26 = v25;

      v27 = *(v26 + 16);
      if (v27)
      {
        v45 = v26;
        v28 = v26 + 32;
        do
        {
          sub_1E48CD210(v28, v51);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = sub_1E49063D4(0, v11[2] + 1, 1, v11);
            v54 = v11;
          }

          v31 = v11[2];
          v30 = v11[3];
          if (v31 >= v30 >> 1)
          {
            v11 = sub_1E49063D4((v30 > 1), v31 + 1, 1, v11);
            v54 = v11;
          }

          v32 = v52;
          v33 = v53;
          v34 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
          v35 = *(*(v32 - 8) + 64);
          v36 = MEMORY[0x1EEE9AC00](v34, v34);
          v38 = &v44 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v39 + 16))(v38, v36);
          sub_1E48FD504(v31, v38, &v54, v32, v33);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          v28 += 40;
          --v27;
        }

        while (v27);
      }

      goto LABEL_4;
    }

    v24 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_22;
    }

LABEL_4:

    v9 = v50 + 1;
    v12 = v21 - v19;
    result = v46;
    if (v50 + 1 == v48)
    {

      return v11;
    }
  }

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
  return result;
}

void sub_1E48FB99C(void *a1, uint64_t a2, char a3, double a4)
{
  v45 = a2;
  v7 = sub_1E48FD9F4(a1) * 10.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v8 = v7;
  if (v7 >= 1)
  {
    v9 = (v7 - 1);
    v10 = sub_1E49062AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v11 = 0;
    v12 = *(v10 + 2);
    do
    {
      v13 = *(v10 + 3);
      if (v12 >= v13 >> 1)
      {
        v10 = sub_1E49062AC((v13 > 1), v12 + 1, 1, v10);
      }

      *(v10 + 2) = v12 + 1;
      *&v10[8 * v12++ + 32] = v11++ / v9;
    }

    while (v8 != v11);
    v14 = sub_1E49130A8(a1);
    v15 = sub_1E48FBD84(v14, v10, a3 & 1, a4);

    v43 = v15[2];
    if (!v43)
    {
      goto LABEL_30;
    }

    v16 = (v15 + 4);
    sub_1E48CD210((v15 + 4), v52);
    v17 = 0;
    v18 = 0;
    v42 = v45 + 32;
    v19 = 0.0;
    v44 = MEMORY[0x1E69E7CC0];
    while (v17 < v15[2])
    {
      sub_1E48CD210(v16, &v49);
      v20 = *(v45 + 16);
      if (v18 == v20)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(&v49);
LABEL_24:

        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        return;
      }

      v21 = v15;
      v22 = v53;
      v23 = v54;
      v24 = __swift_project_boxed_opaque_existential_1(v52, v53);
      v25 = v50;
      v26 = v51;
      v27 = __swift_project_boxed_opaque_existential_1(&v49, v50);
      v28 = sub_1E48FDA38(v24, v27, v22, v25, v23, v26);
      if (v18 >= v20)
      {
        goto LABEL_26;
      }

      v19 = v19 + v28;
      if (*(v42 + 8 * v18) > v19)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
      }

      else
      {
        sub_1E48CD210(&v49, v46);
        v29 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_1E49063D4(0, v29[2] + 1, 1, v29);
          v55 = v29;
        }

        v32 = v29[2];
        v31 = v29[3];
        v44 = v29;
        if (v32 >= v31 >> 1)
        {
          v44 = sub_1E49063D4((v31 > 1), v32 + 1, 1, v44);
          v55 = v44;
        }

        v33 = v47;
        v34 = v48;
        v35 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
        v36 = *(*(v33 - 8) + 64);
        v37 = MEMORY[0x1EEE9AC00](v35, v35);
        v39 = &v41 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v40 + 16))(v39, v37);
        sub_1E48FD504(v32, v39, &v55, v33, v34);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        ++v18;
      }

      v15 = v21;
      ++v17;
      sub_1E48B7448(&v49, v52);
      v16 += 40;
      if (v43 == v17)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void *sub_1E48FBD84(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v78 = a3;
  v5 = *(a1 + 16);
  if (v5 == 2)
  {
    v43 = *(a2 + 16);
    if (!v43)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v44 = (a2 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      v45 = *v44;
      sub_1E48CD210(a1 + 32, &v83);
      sub_1E48CD210(a1 + 72, v80);
      v46 = v84;
      v47 = v85;
      __swift_project_boxed_opaque_existential_1(&v83, v84);
      v48 = (v47[1])(v46, v47);
      v49 = v81;
      v50 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v51 = (*(v50 + 8))(v49, v50);
      v52 = v84;
      v53 = v85;
      __swift_project_boxed_opaque_existential_1(&v83, v84);
      v54 = (v53[4])(v52, v53);
      v55 = v81;
      v56 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v57 = (*(v56 + 32))(v55, v56);
      v58 = v81;
      v59 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v60 = (*(v59 + 8))(v58, v59);
      v61 = v84;
      v62 = v85;
      __swift_project_boxed_opaque_existential_1(&v83, v84);
      v63 = v60 - (v62[1])(v61, v62);
      v64 = v81;
      v65 = v82;
      __swift_project_boxed_opaque_existential_1(v80, v81);
      v66 = (*(v65 + 32))(v64, v65);
      v67 = v84;
      v68 = v85;
      __swift_project_boxed_opaque_existential_1(&v83, v84);
      v69 = v66 - (v68[4])(v67, v68);
      v70 = sqrt(v63 * v63 + v69 * v69);
      v71 = 0.0;
      v72 = 0.0;
      if (v70 > 0.0)
      {
        v71 = v63 / v70;
        v72 = v69 / v70;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      __swift_destroy_boxed_opaque_existential_0Tm(&v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_1E49063D4(0, v9[2] + 1, 1, v9);
      }

      v74 = v9[2];
      v73 = v9[3];
      if (v74 >= v73 >> 1)
      {
        v9 = sub_1E49063D4((v73 > 1), v74 + 1, 1, v9);
      }

      v84 = &type metadata for SamplePoint;
      v85 = &off_1F5E84FA8;
      v75 = swift_allocObject();
      *&v83 = v75;
      *(v75 + 16) = (1.0 - v45) * v48 + v45 * v51;
      *(v75 + 24) = (1.0 - v45) * v54 + v45 * v57;
      *(v75 + 32) = v71;
      *(v75 + 40) = v72;
      *(v75 + 48) = 0;
      v9[2] = v74 + 1;
      sub_1E48B7448(&v83, &v9[5 * v74 + 4]);
      ++v44;
      --v43;
    }

    while (v43);
  }

  else
  {
    if (v5 != 3)
    {
      if (v5 == 4)
      {
        v7 = *(a2 + 16);
        if (v7)
        {
          v8 = (a2 + 32);
          v9 = MEMORY[0x1E69E7CC0];
          v79 = xmmword_1E499A180;
          v77 = xmmword_1E499E4C0;
          do
          {
            v10 = *v8;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC20, &unk_1E49A02B0);
            inited = swift_initStackObject();
            *(inited + 16) = v79;
            sub_1E48CD210(a1 + 32, inited + 32);
            sub_1E48CD210(a1 + 72, inited + 72);
            v12 = swift_initStackObject();
            *(v12 + 16) = v79;
            sub_1E48CD210(a1 + 72, v12 + 32);
            sub_1E48CD210(a1 + 112, v12 + 72);
            v13 = swift_initStackObject();
            *(v13 + 16) = v79;
            sub_1E48CD210(a1 + 112, v13 + 32);
            sub_1E48CD210(a1 + 152, v13 + 72);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC28, &qword_1E499E590);
            v14 = swift_initStackObject();
            *(v14 + 16) = v77;
            *(v14 + 32) = inited;
            *(v14 + 40) = v12;
            *(v14 + 48) = v13;
            sub_1E48FCF34(v14, v78 & 1, &v83, v10, a4);
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC30, &qword_1E499E598);
            swift_arrayDestroy();
            sub_1E48CD210(&v83, v80);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v86[0] = v9;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v9 = sub_1E49063D4(0, v9[2] + 1, 1, v9);
              v86[0] = v9;
            }

            v17 = v9[2];
            v16 = v9[3];
            if (v17 >= v16 >> 1)
            {
              v9 = sub_1E49063D4((v16 > 1), v17 + 1, 1, v9);
              v86[0] = v9;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v83);
            v18 = v81;
            v19 = v82;
            v20 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
            v21 = *(*(v18 - 8) + 64);
            v22 = MEMORY[0x1EEE9AC00](v20, v20);
            v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v25 + 16))(v24, v22);
            sub_1E48FD504(v17, v24, v86, v18, v19);
            __swift_destroy_boxed_opaque_existential_0Tm(v80);
            ++v8;
            --v7;
          }

          while (v7);
          return v9;
        }
      }

      return MEMORY[0x1E69E7CC0];
    }

    v26 = *(a2 + 16);
    if (!v26)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v27 = (a2 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    v79 = xmmword_1E499A180;
    do
    {
      v28 = *v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC20, &unk_1E49A02B0);
      v29 = swift_initStackObject();
      *(v29 + 16) = v79;
      sub_1E48CD210(a1 + 32, v29 + 32);
      sub_1E48CD210(a1 + 72, v29 + 72);
      v30 = swift_initStackObject();
      *(v30 + 16) = v79;
      sub_1E48CD210(a1 + 72, v30 + 32);
      sub_1E48CD210(a1 + 112, v30 + 72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC28, &qword_1E499E590);
      v31 = swift_initStackObject();
      *(v31 + 16) = v79;
      *(v31 + 32) = v29;
      *(v31 + 40) = v30;
      sub_1E48FCF34(v31, v78 & 1, &v83, v28, a4);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC30, &qword_1E499E598);
      swift_arrayDestroy();
      sub_1E48CD210(&v83, v80);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v9;
      if ((v32 & 1) == 0)
      {
        v9 = sub_1E49063D4(0, v9[2] + 1, 1, v9);
        v86[0] = v9;
      }

      v34 = v9[2];
      v33 = v9[3];
      if (v34 >= v33 >> 1)
      {
        v9 = sub_1E49063D4((v33 > 1), v34 + 1, 1, v9);
        v86[0] = v9;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v83);
      v35 = v81;
      v36 = v82;
      v37 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
      v38 = *(*(v35 - 8) + 64);
      v39 = MEMORY[0x1EEE9AC00](v37, v37);
      v41 = &v77 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v42 + 16))(v41, v39);
      sub_1E48FD504(v34, v41, v86, v35, v36);
      __swift_destroy_boxed_opaque_existential_0Tm(v80);
      ++v27;
      --v26;
    }

    while (v26);
  }

  return v9;
}

unint64_t sub_1E48FC5F4(unint64_t result, unsigned int *a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = *a2;
  v4 = *(a2 + 1);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      goto LABEL_30;
    }

    if (v3 != 4)
    {
LABEL_29:
      v3 = v3 == 1;
      goto LABEL_30;
    }

    v5 = *result;
    if (!*(*result + 16))
    {
      return result;
    }

    v6 = 0x7368746170627573;
    result = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
    if ((v7 & 1) == 0)
    {
      return result;
    }

    sub_1E48C12D0(*(v5 + 56) + 32 * result, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
    v78 = v76;
    v79 = v77;
    if (!*(&v77 + 1))
    {
      return sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
    v9 = MEMORY[0x1E69E7CA0];
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    x = v75.x;
    v11 = *(*&v75.x + 16);
    if (!v11)
    {
    }

    v12 = *(*&v75.x + 8 * v11 + 24);
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);
      if (*(v13 + 2))
      {
        v14 = *v2;
        if (*(*v2 + 16))
        {
          v15 = v13[4];
          v16 = v13[5];
          v17 = sub_1E494812C(0x50746E6572727563, 0xEC000000746E696FLL);
          if (v18)
          {
            sub_1E48C12D0(*(v14 + 56) + 32 * v17, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
            v78 = v76;
            v79 = v77;
            if (*(&v77 + 1))
            {
              type metadata accessor for CGPoint(0);
              if (swift_dynamicCast())
              {
                v80.x = v15;
                v80.y = v16;
                if (!CGPointEqualToPoint(v75, v80))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC50, &qword_1E499E5C0);
                  v5 = swift_allocObject();
                  *(v5 + 16) = xmmword_1E499A180;
                  *(v5 + 32) = v75;
                  *(v5 + 48) = v15;
                  *(v5 + 56) = v16;
                  if (!*(*&v75.x + 16))
                  {
                  }

                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v19 = *(*&v75.x + 16);
                    if (v19)
                    {
                      goto LABEL_23;
                    }

                    goto LABEL_94;
                  }

LABEL_93:
                  x = COERCE_DOUBLE(sub_1E48EA4D0(*&x));
                  v19 = *(*&x + 16);
                  if (v19)
                  {
LABEL_23:
                    v20 = v19 - 1;
                    v9 = *(*&x + 8 * v20 + 32);
                    *(*&x + 16) = v20;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
LABEL_24:
                      v22 = v9[2];
                      v21 = v9[3];
                      if (v22 >= v21 >> 1)
                      {
                        v9 = sub_1E4906620((v21 > 1), v22 + 1, 1, v9);
                      }

                      v9[2] = v22 + 1;
                      v9[v22 + 4] = v5;
                      v24 = *(*&x + 16);
                      v23 = *(*&x + 24);
                      if (v24 >= v23 >> 1)
                      {
                        x = COERCE_DOUBLE(sub_1E4906644((v23 > 1), v24 + 1, 1, *&x));
                      }

                      *(*&x + 16) = v24 + 1;
                      *(*&x + 8 * v24 + 32) = v9;
                      goto LABEL_84;
                    }

LABEL_95:
                    v9 = sub_1E4906620(0, v9[2] + 1, 1, v9);
                    goto LABEL_24;
                  }

LABEL_94:
                  __break(1u);
                  goto LABEL_95;
                }
              }
            }

            else
            {
              sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
            }
          }
        }
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v62 = *(*&v75.x + 16);
      if (v62)
      {
LABEL_83:
        v63 = v62 - 1;
        v64 = *(*&x + 8 * v63 + 32);
        *(*&x + 16) = v63;

LABEL_84:
        *(&v79 + 1) = v8;
        *&v78 = x;
LABEL_45:
        v40 = v6;
        v41 = 0xE800000000000000;
        return sub_1E4970CBC(&v78, v40, v41);
      }
    }

    else
    {
      x = COERCE_DOUBLE(sub_1E48EA4D0(*&v75.x));
      v62 = *(*&x + 16);
      if (v62)
      {
        goto LABEL_83;
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  if (v3)
  {
    if (v3 == 2)
    {
      v3 = 2;
LABEL_30:
      v6 = 0xEC000000746E696FLL;
      v25 = 0x50746E6572727563;
      v26 = *result;
      if (*(*result + 16))
      {
        v27 = sub_1E494812C(0x50746E6572727563, 0xEC000000746E696FLL);
        if (v28)
        {
          sub_1E48C12D0(*(v26 + 56) + 32 * v27, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
          v78 = v76;
          v79 = v77;
          if (*(&v77 + 1))
          {
            type metadata accessor for CGPoint(0);
            if (swift_dynamicCast())
            {
              v29 = sub_1E490640C(0, 1, 1, MEMORY[0x1E69E7CC0]);
              v31 = *(v29 + 2);
              v30 = *(v29 + 3);
              if (v31 >= v30 >> 1)
              {
                v29 = sub_1E490640C((v30 > 1), v31 + 1, 1, v29);
              }

              *(v29 + 2) = v31 + 1;
              *&v29[16 * v31 + 32] = v75;
LABEL_48:
              if (v3)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v29 = sub_1E490640C(0, *(v29 + 2) + 1, 1, v29);
                }

                v42 = *(v29 + 2);
                do
                {
                  v43 = *v4;
                  v44 = *(v29 + 3);
                  if (v42 >= v44 >> 1)
                  {
                    v71 = *v4;
                    v45 = sub_1E490640C((v44 > 1), v42 + 1, 1, v29);
                    v43 = v71;
                    v29 = v45;
                  }

                  *(v29 + 2) = v42 + 1;
                  *&v29[16 * v42 + 32] = v43;
                  ++v4;
                  ++v42;
                  --v3;
                }

                while (v3);
              }

              v46 = *v2;
              if (!*(*v2 + 16))
              {
                goto LABEL_75;
              }

              v47 = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
              if ((v48 & 1) == 0)
              {
                goto LABEL_75;
              }

              sub_1E48C12D0(*(v46 + 56) + 32 * v47, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
              v78 = v76;
              v79 = v77;
              if (*(&v77 + 1))
              {
                v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
                if (swift_dynamicCast())
                {
                  v49 = v75.x;
                  if (!*(*&v75.x + 16))
                  {
                    v52 = MEMORY[0x1E69E7CC0];
                    goto LABEL_66;
                  }

                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v50 = *(*&v75.x + 16);
                    if (v50)
                    {
LABEL_62:
                      v51 = v50 - 1;
                      v52 = *(*&v49 + 8 * v51 + 32);
                      *(*&v49 + 16) = v51;
LABEL_66:

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v52 = sub_1E4906620(0, v52[2] + 1, 1, v52);
                      }

                      v53 = v52[2];
                      v54 = v52[3];
                      v55 = v53 + 1;
                      if (v53 >= v54 >> 1)
                      {
                        v73 = v53 + 1;
                        v65 = v52;
                        v66 = v52[2];
                        v67 = sub_1E4906620((v54 > 1), v53 + 1, 1, v65);
                        v53 = v66;
                        v55 = v73;
                        v52 = v67;
                      }

                      v52[2] = v55;
                      v52[v53 + 4] = v29;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v49 = COERCE_DOUBLE(sub_1E4906644(0, *(*&v49 + 16) + 1, 1, *&v49));
                      }

                      v56 = *(*&v49 + 16);
                      v57 = *(*&v49 + 24);
                      v58 = v56 + 1;
                      if (v56 >= v57 >> 1)
                      {
                        v74 = v56 + 1;
                        v68 = v49;
                        v69 = *(*&v49 + 16);
                        v70 = COERCE_DOUBLE(sub_1E4906644((v57 > 1), v56 + 1, 1, *&v68));
                        v56 = v69;
                        v58 = v74;
                        v49 = v70;
                      }

                      *(*&v49 + 16) = v58;
                      *(*&v49 + 8 * v56 + 32) = v52;
                      *(&v79 + 1) = v37;
                      *&v78 = v49;
                      sub_1E4970CBC(&v78, 0x7368746170627573, 0xE800000000000000);
                      goto LABEL_75;
                    }
                  }

                  else
                  {
                    v49 = COERCE_DOUBLE(sub_1E48EA4D0(*&v75.x));
                    v50 = *(*&v49 + 16);
                    if (v50)
                    {
                      goto LABEL_62;
                    }
                  }

                  __break(1u);
LABEL_90:
                  v25 = sub_1E4906644(0, *(v25 + 16) + 1, 1, v25);
LABEL_42:
                  v39 = *(v25 + 16);
                  v38 = *(v25 + 24);
                  if (v39 >= v38 >> 1)
                  {
                    v25 = sub_1E4906644((v38 > 1), v39 + 1, 1, v25);
                  }

                  *(v25 + 16) = v39 + 1;
                  *(v25 + 8 * v39 + 32) = MEMORY[0x1E69E7CC0];
                  *(&v79 + 1) = v37;
                  *&v78 = v25;
                  goto LABEL_45;
                }
              }

              else
              {
                sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
              }

LABEL_75:
              v59 = *(v29 + 2);
              if (v59)
              {
                v72 = *&v29[16 * v59 + 16];

                type metadata accessor for CGPoint(0);
                v61 = v72;
              }

              else
              {

                *&v79 = 0;
                v61 = 0uLL;
                v60 = 1;
              }

              v78 = v61;
              *(&v79 + 1) = v60;
              v40 = 0x50746E6572727563;
              v41 = 0xEC000000746E696FLL;
              return sub_1E4970CBC(&v78, v40, v41);
            }
          }

          else
          {
            sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
          }
        }
      }

      v29 = MEMORY[0x1E69E7CC0];
      goto LABEL_48;
    }

    goto LABEL_29;
  }

  v32 = *v4;
  v33 = *(v4 + 1);
  type metadata accessor for CGPoint(0);
  *(&v79 + 1) = v34;
  *&v78 = v32;
  *(&v78 + 1) = v33;
  result = sub_1E4970CBC(&v78, 0x50746E6572727563, 0xEC000000746E696FLL);
  v35 = *v2;
  if (*(*v2 + 16))
  {
    v6 = 0x7368746170627573;
    result = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
    if (v36)
    {
      sub_1E48C12D0(*(v35 + 56) + 32 * result, &v76, &unk_1ECF81660, &qword_1E49A3AE0);
      v78 = v76;
      v79 = v77;
      if (*(&v77 + 1))
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          return result;
        }

        v25 = *&v75.x;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_42;
        }

        goto LABEL_90;
      }

      return sub_1E48C1338(&v78, &unk_1ECF81660, &qword_1E49A3AE0);
    }
  }

  return result;
}

void sub_1E48FCF34(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v62 = a2;
  v63 = a5;
  v64 = a3;
  type metadata accessor for CGPoint(0);
  v73 = v7;
  v74 = &off_1F5E84E08;
  v72 = 0uLL;
  v8 = *(a1 + 16);
  if (v8)
  {
    *&v65 = 1.0 - a4;
    v9 = (a1 + 32);
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *v9;
      v12 = *(*v9 + 16);
      if (!v12)
      {
        break;
      }

      sub_1E48CD210(v11 + 32, &v69);
      if (v12 == 1)
      {
        goto LABEL_24;
      }

      sub_1E48CD210(v11 + 72, v66);
      v13 = v70;
      v14 = v71;
      __swift_project_boxed_opaque_existential_1(&v69, v70);
      v15 = (v14[1])(v13, v14);
      v16 = v67;
      v17 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v18 = (*(v17 + 8))(v16, v17);
      v19 = v70;
      v20 = v71;
      __swift_project_boxed_opaque_existential_1(&v69, v70);
      v21 = (v20[4])(v19, v20);
      v22 = v67;
      v23 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v24 = (*(v23 + 32))(v22, v23);
      v25 = v67;
      v26 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v27 = (*(v26 + 8))(v25, v26);
      v28 = v70;
      v29 = v71;
      __swift_project_boxed_opaque_existential_1(&v69, v70);
      v30 = v27 - (v29[1])(v28, v29);
      v31 = v67;
      v32 = v68;
      __swift_project_boxed_opaque_existential_1(v66, v67);
      v33 = (*(v32 + 32))(v31, v32);
      v34 = v70;
      v35 = v71;
      __swift_project_boxed_opaque_existential_1(&v69, v70);
      v36 = v33 - (v35[4])(v34, v35);
      v37 = sqrt(v30 * v30 + v36 * v36);
      v38 = 0.0;
      v39 = 0.0;
      if (v37 > 0.0)
      {
        v38 = v30 / v37;
        v39 = v36 / v37;
      }

      v40 = *&v65 * v15 + v18 * a4;
      v41 = *&v65 * v21 + v24 * a4;
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      __swift_destroy_boxed_opaque_existential_0Tm(&v69);
      v70 = &type metadata for SamplePoint;
      v71 = &off_1F5E84FA8;
      v42 = swift_allocObject();
      *&v69 = v42;
      *(v42 + 16) = v40;
      *(v42 + 24) = v41;
      *(v42 + 32) = v38;
      *(v42 + 40) = v39;
      *(v42 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_0Tm(&v72);
      sub_1E48B7448(&v69, &v72);
      sub_1E48CD210(&v72, &v69);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_1E49063D4(0, v10[2] + 1, 1, v10);
        v75 = v10;
      }

      v45 = v10[2];
      v44 = v10[3];
      if (v45 >= v44 >> 1)
      {
        v10 = sub_1E49063D4((v44 > 1), v45 + 1, 1, v10);
        v75 = v10;
      }

      v46 = v70;
      v47 = v71;
      v48 = __swift_mutable_project_boxed_opaque_existential_1(&v69, v70);
      v49 = *(v46[-1].Description + 8);
      v50 = MEMORY[0x1EEE9AC00](v48, v48);
      v52 = &v61 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v53 + 16))(v52, v50);
      sub_1E48FD504(v45, v52, &v75, v46, v47);
      __swift_destroy_boxed_opaque_existential_0Tm(&v69);
      ++v9;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v54 = v10[2];
    if (v54 >= 2)
    {
      v55 = v54 - 1;
      v56 = (v10 + 9);
      v57 = MEMORY[0x1E69E7CC0];
      v65 = xmmword_1E499A180;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC20, &unk_1E49A02B0);
        v58 = swift_allocObject();
        *(v58 + 16) = v65;
        sub_1E48CD210(v56 - 40, v58 + 32);
        sub_1E48CD210(v56, v58 + 72);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1E49063B0(0, v57[2] + 1, 1, v57);
        }

        v60 = v57[2];
        v59 = v57[3];
        if (v60 >= v59 >> 1)
        {
          v57 = sub_1E49063B0((v59 > 1), v60 + 1, 1, v57);
        }

        v57[2] = v60 + 1;
        v57[v60 + 4] = v58;
        v56 += 40;
        --v55;
      }

      while (v55);
      sub_1E48FCF34(&v69, v57, v62 & 1, a4, v63);

      __swift_destroy_boxed_opaque_existential_0Tm(&v72);
      sub_1E48B7448(&v69, &v72);
    }

    sub_1E48B7448(&v72, v64);
  }
}

uint64_t sub_1E48FD504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1E48B7448(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E48FD59C(const CGPath *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC38, &qword_1E499E5A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499A180;
  strcpy((inited + 32), "currentPoint");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = 0u;
  *(inited + 64) = 0u;
  *(inited + 80) = 0x7368746170627573;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC40, &qword_1E499E5A8);
  *(inited + 96) = MEMORY[0x1E69E7CC0];
  v3 = sub_1E494962C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC48, &unk_1E499E5B0);
  swift_arrayDestroy();
  info = v3;
  CGPathApply(a1, &info, sub_1E48FCF30);
  v4 = info;
  if (!*(info + 16))
  {
    goto LABEL_7;
  }

  v5 = sub_1E494812C(0x7368746170627573, 0xE800000000000000);
  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E48C12D0(*(v4 + 56) + 32 * v5, &v12, &unk_1ECF81660, &qword_1E49A3AE0);
  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1E48C1338(v14, &unk_1ECF81660, &qword_1E49A3AE0);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v7 = v10;
LABEL_8:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void *sub_1E48FD7A0(void *result)
{
  v1 = result[2];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v1 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v1 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v1 != 3)
  {
    v2 = result[4];
    v3 = result[5];
    v4 = result[6];
    v5 = result[7];
    v7 = result[8];
    v6 = result[9];
    v8 = result[10];
    v9 = result[11];
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_1E48FD854(char *result, uint64_t a2, double a3)
{
  v3 = *(result + 2);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (v3 <= *(a2 + 16))
  {
    v5 = (result + 32);
    v6 = (a2 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = 0.0;
    do
    {
      v9 = *v5;
      v10 = *v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1E49062AC(0, *(v7 + 2) + 1, 1, v7);
      }

      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      if (v12 >= v11 >> 1)
      {
        v7 = sub_1E49062AC((v11 > 1), v12 + 1, 1, v7);
      }

      *(v7 + 2) = v12 + 1;
      *&v7[8 * v12 + 32] = v9 + a3 + v10 * 0.5 - v8;
      ++v6;
      v5 += 2;
      v8 = v9 + a3 + v10 * 0.5;
      --v3;
    }

    while (v3);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E48FD970(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 3)
  {
    v2 = *(result + 32);
    v3 = *(result + 48);
    v4 = *(result + 56);
    v5 = *(result + 72);
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1E48FD9F4(void *result)
{
  v1 = result[2];
  switch(v1)
  {
    case 2:
      v3 = vsubq_f64(*(result + 3), *(result + 2));
      return sqrt(vaddvq_f64(vmulq_f64(v3, v3)));
    case 3:
      sub_1E48FD970(result);
      break;
    case 4:
      sub_1E48FD7A0(result);
      break;
    default:
      return 0.0;
  }

  return v2;
}

double sub_1E48FDA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](a1, a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v13, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21);
  (*(v11 + 16))(v15, a2, a4);
  v22 = (*(a6 + 8))(a4, a6);
  v23 = v22 - (*(a5 + 8))(a3, a5);
  v24 = (*(a6 + 32))(a4, a6);
  v25 = (*(a5 + 32))(a3, a5);
  v26 = sqrt(v23 * v23 + (v24 - v25) * (v24 - v25));
  (*(v17 + 8))(v21, a3);
  (*(v11 + 8))(v15, a4);
  return v26;
}

CGFloat sub_1E48FDC7C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v9 + 56);
  v11 = v10(v8, v9) * a3 * 0.5;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = (*(v13 + 80))(v12, v13) * a3 * 0.5;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = (*(v16 + 80))(v15, v16) * a4 * 0.5;
  v18 = v10(v8, v9) * a4 * 0.5;
  v19 = v10(v8, v9);
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 80))(v20, v21);
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = -(*(v24 + 80))(v23, v24);
  v26 = v10(v8, v9);
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = (*(v28 + 8))(v27, v28) + v17 - v11;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v30);
  v32 = (*(v31 + 32))(v30, v31);
  CGAffineTransformMake(&v36, v19, v22, v25, v26, v29, v32 - v18 - v14);
  result = v36.a;
  v34 = *&v36.c;
  v35 = *&v36.tx;
  *a2 = *&v36.a;
  a2[1] = v34;
  a2[2] = v35;
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

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1E48FDFB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E48FDFD8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 28) = v3;
  return result;
}

uint64_t sub_1E48FE018()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FB58, &unk_1E499E500);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E499B670;
  v2 = *v0;
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v4);

  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](0x3D656D6974, 0xE500000000000000);

  v5 = *(v0 + 2);
  noise2();
  v7 = *(v0 + 5);
  v8 = -v7;
  if (v7 < fabsf(v6))
  {
    if (v6 < v8)
    {
      v6 = -v7;
    }

    if (v6 >= v7)
    {
      v6 = *(v0 + 5);
    }
  }

  v9 = *(v0 + 3);
  v10 = *(v0 + 4) - v9;
  v11 = *(v0 + 6);
  v12 = fmodf(v9 + ((1.0 - ((v7 - v6) / (v7 + v7))) * v10), v11);
  if (v12 >= 0.0)
  {
    v13 = 43;
  }

  else
  {
    v13 = 0;
  }

  if (v12 >= 0.0)
  {
    v14 = 0xE100000000000000;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x1E691B7A0](v13, v14);

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E499B670;
  noise2();
  if (v7 < fabsf(v16))
  {
    if (v16 < v8)
    {
      v16 = -v7;
    }

    if (v16 >= v7)
    {
      v16 = v7;
    }
  }

  v17 = fmodf(v9 + (v10 * (1.0 - ((v7 - v16) / (v7 + v7)))), v11);
  v18 = MEMORY[0x1E69E64A8];
  *(v15 + 56) = MEMORY[0x1E69E6448];
  *(v15 + 64) = v18;
  *(v15 + 32) = v17;
  v19 = sub_1E4997EFC();
  MEMORY[0x1E691B7A0](v19);

  MEMORY[0x1E691B7A0](2107689, 0xE300000000000000);

  MEMORY[0x1E691B7A0](0x3D6573696F6ELL, 0xE600000000000000);

  return 0x28326573696F6E70;
}

unint64_t sub_1E48FE338(uint64_t a1)
{
  *(a1 + 8) = sub_1E48FE368();
  result = sub_1E48FE3BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E48FE368()
{
  result = qword_1ECF7FC58;
  if (!qword_1ECF7FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FC58);
  }

  return result;
}

unint64_t sub_1E48FE3BC()
{
  result = qword_1ECF7FC60;
  if (!qword_1ECF7FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FC60);
  }

  return result;
}

CTFontRef sub_1E48FE410()
{
  result = sub_1E48C4014(400.0, 3, 0x4055400000000000, 0);
  qword_1ECF81920 = result;
  return result;
}

id sub_1E48FE448()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints__:v1 :{0.0, v2, v3}];
  qword_1ECF81928 = result;
  return result;
}

void sub_1E48FE49C()
{
  v0 = [objc_opt_self() systemFontOfSize:22.0 weight:*MEMORY[0x1E69DB980]];
  v1 = [v0 fontDescriptor];

  v2 = [v1 fontDescriptorWithDesign_];
  if (!v2)
  {
    v2 = v1;
  }

  v3 = v2;
  v4 = CTFontCreateWithFontDescriptor(v2, 0.0, 0);

  qword_1ECF81930 = v4;
}

uint64_t sub_1E48FE560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC78, &qword_1E499FCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = qword_1ECF7EB00;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECF81930;
  *(inited + 40) = qword_1ECF81930;
  v5 = v4;
  v6 = sub_1E4949534(inited);
  swift_setDeallocating();
  result = sub_1E49018D4(inited + 32);
  qword_1ECF81938 = v6;
  return result;
}

uint64_t sub_1E48FE634()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC68, &qword_1E499FCE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E499E6E0;
  *(v0 + 32) = 48;
  *(v0 + 40) = 0xE100000000000000;
  sub_1E48FEFF4(48, 0xE100000000000000);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E48FF1C4(48, 0xE100000000000000);
  *(v0 + 48) = v2;
  *(v0 + 56) = v4;
  *(v0 + 64) = v6;
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  *(v0 + 88) = 49;
  *(v0 + 96) = 0xE100000000000000;
  sub_1E48FEFF4(49, 0xE100000000000000);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1E48FF1C4(49, 0xE100000000000000);
  *(v0 + 104) = v11;
  *(v0 + 112) = v13;
  *(v0 + 120) = v15;
  *(v0 + 128) = v17;
  *(v0 + 136) = v18;
  *(v0 + 144) = 50;
  *(v0 + 152) = 0xE100000000000000;
  sub_1E48FEFF4(50, 0xE100000000000000);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1E48FF1C4(50, 0xE100000000000000);
  *(v0 + 160) = v20;
  *(v0 + 168) = v22;
  *(v0 + 176) = v24;
  *(v0 + 184) = v26;
  *(v0 + 192) = v27;
  *(v0 + 200) = 51;
  *(v0 + 208) = 0xE100000000000000;
  sub_1E48FEFF4(51, 0xE100000000000000);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_1E48FF1C4(51, 0xE100000000000000);
  *(v0 + 216) = v29;
  *(v0 + 224) = v31;
  *(v0 + 232) = v33;
  *(v0 + 240) = v35;
  *(v0 + 248) = v36;
  *(v0 + 256) = 52;
  *(v0 + 264) = 0xE100000000000000;
  sub_1E48FEFF4(52, 0xE100000000000000);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = sub_1E48FF1C4(52, 0xE100000000000000);
  *(v0 + 272) = v38;
  *(v0 + 280) = v40;
  *(v0 + 288) = v42;
  *(v0 + 296) = v44;
  *(v0 + 304) = v45;
  *(v0 + 312) = 53;
  *(v0 + 320) = 0xE100000000000000;
  sub_1E48FEFF4(53, 0xE100000000000000);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = sub_1E48FF1C4(53, 0xE100000000000000);
  *(v0 + 328) = v47;
  *(v0 + 336) = v49;
  *(v0 + 344) = v51;
  *(v0 + 352) = v53;
  *(v0 + 360) = v54;
  *(v0 + 368) = 54;
  *(v0 + 376) = 0xE100000000000000;
  sub_1E48FEFF4(54, 0xE100000000000000);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = sub_1E48FF1C4(54, 0xE100000000000000);
  *(v0 + 384) = v56;
  *(v0 + 392) = v58;
  *(v0 + 400) = v60;
  *(v0 + 408) = v62;
  *(v0 + 416) = v63;
  *(v0 + 424) = 55;
  *(v0 + 432) = 0xE100000000000000;
  sub_1E48FEFF4(55, 0xE100000000000000);
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = sub_1E48FF1C4(55, 0xE100000000000000);
  *(v0 + 440) = v65;
  *(v0 + 448) = v67;
  *(v0 + 456) = v69;
  *(v0 + 464) = v71;
  *(v0 + 472) = v72;
  *(v0 + 480) = 56;
  *(v0 + 488) = 0xE100000000000000;
  sub_1E48FEFF4(56, 0xE100000000000000);
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = sub_1E48FF1C4(56, 0xE100000000000000);
  *(v0 + 496) = v74;
  *(v0 + 504) = v76;
  *(v0 + 512) = v78;
  *(v0 + 520) = v80;
  *(v0 + 528) = v81;
  *(v0 + 536) = 57;
  *(v0 + 544) = 0xE100000000000000;
  sub_1E48FEFF4(57, 0xE100000000000000);
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  v90 = sub_1E48FF1C4(57, 0xE100000000000000);
  *(v0 + 552) = v83;
  *(v0 + 560) = v85;
  *(v0 + 568) = v87;
  *(v0 + 576) = v89;
  *(v0 + 584) = v90;
  *(v0 + 592) = 41177;
  *(v0 + 600) = 0xA200000000000000;
  sub_1E48FEFF4(41177, 0xA200000000000000);
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;
  v99 = sub_1E48FF1C4(41177, 0xA200000000000000);
  *(v0 + 608) = v92;
  *(v0 + 616) = v94;
  *(v0 + 624) = v96;
  *(v0 + 632) = v98;
  *(v0 + 640) = v99;
  *(v0 + 648) = 41433;
  *(v0 + 656) = 0xA200000000000000;
  sub_1E48FEFF4(41433, 0xA200000000000000);
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = sub_1E48FF1C4(41433, 0xA200000000000000);
  *(v0 + 664) = v101;
  *(v0 + 672) = v103;
  *(v0 + 680) = v105;
  *(v0 + 688) = v107;
  *(v0 + 696) = v108;
  *(v0 + 704) = 41689;
  *(v0 + 712) = 0xA200000000000000;
  sub_1E48FEFF4(41689, 0xA200000000000000);
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = sub_1E48FF1C4(41689, 0xA200000000000000);
  *(v0 + 720) = v110;
  *(v0 + 728) = v112;
  *(v0 + 736) = v114;
  *(v0 + 744) = v116;
  *(v0 + 752) = v117;
  *(v0 + 760) = 41945;
  *(v0 + 768) = 0xA200000000000000;
  sub_1E48FEFF4(41945, 0xA200000000000000);
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v125 = v124;
  v126 = sub_1E48FF1C4(41945, 0xA200000000000000);
  *(v0 + 776) = v119;
  *(v0 + 784) = v121;
  *(v0 + 792) = v123;
  *(v0 + 800) = v125;
  *(v0 + 808) = v126;
  *(v0 + 816) = 42201;
  *(v0 + 824) = 0xA200000000000000;
  sub_1E48FEFF4(42201, 0xA200000000000000);
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v134 = v133;
  v135 = sub_1E48FF1C4(42201, 0xA200000000000000);
  *(v0 + 832) = v128;
  *(v0 + 840) = v130;
  *(v0 + 848) = v132;
  *(v0 + 856) = v134;
  *(v0 + 864) = v135;
  *(v0 + 872) = 42457;
  *(v0 + 880) = 0xA200000000000000;
  sub_1E48FEFF4(42457, 0xA200000000000000);
  v137 = v136;
  v139 = v138;
  v141 = v140;
  v143 = v142;
  v144 = sub_1E48FF1C4(42457, 0xA200000000000000);
  *(v0 + 888) = v137;
  *(v0 + 896) = v139;
  *(v0 + 904) = v141;
  *(v0 + 912) = v143;
  *(v0 + 920) = v144;
  *(v0 + 928) = 42713;
  *(v0 + 936) = 0xA200000000000000;
  sub_1E48FEFF4(42713, 0xA200000000000000);
  v146 = v145;
  v148 = v147;
  v150 = v149;
  v152 = v151;
  v153 = sub_1E48FF1C4(42713, 0xA200000000000000);
  *(v0 + 944) = v146;
  *(v0 + 952) = v148;
  *(v0 + 960) = v150;
  *(v0 + 968) = v152;
  *(v0 + 976) = v153;
  *(v0 + 984) = 42969;
  *(v0 + 992) = 0xA200000000000000;
  sub_1E48FEFF4(42969, 0xA200000000000000);
  v155 = v154;
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v162 = sub_1E48FF1C4(42969, 0xA200000000000000);
  *(v0 + 1000) = v155;
  *(v0 + 1008) = v157;
  *(v0 + 1016) = v159;
  *(v0 + 1024) = v161;
  *(v0 + 1032) = v162;
  *(v0 + 1040) = 43225;
  *(v0 + 1048) = 0xA200000000000000;
  sub_1E48FEFF4(43225, 0xA200000000000000);
  v164 = v163;
  v166 = v165;
  v168 = v167;
  v170 = v169;
  v171 = sub_1E48FF1C4(43225, 0xA200000000000000);
  *(v0 + 1056) = v164;
  *(v0 + 1064) = v166;
  *(v0 + 1072) = v168;
  *(v0 + 1080) = v170;
  *(v0 + 1088) = v171;
  *(v0 + 1096) = 43481;
  *(v0 + 1104) = 0xA200000000000000;
  sub_1E48FEFF4(43481, 0xA200000000000000);
  v173 = v172;
  v175 = v174;
  v177 = v176;
  v179 = v178;
  v180 = sub_1E48FF1C4(43481, 0xA200000000000000);
  *(v0 + 1112) = v173;
  *(v0 + 1120) = v175;
  *(v0 + 1128) = v177;
  *(v0 + 1136) = v179;
  *(v0 + 1144) = v180;
  *(v0 + 1152) = 46299;
  *(v0 + 1160) = 0xA200000000000000;
  sub_1E48FEFF4(46299, 0xA200000000000000);
  v182 = v181;
  v184 = v183;
  v186 = v185;
  v188 = v187;
  v189 = sub_1E48FF1C4(46299, 0xA200000000000000);
  *(v0 + 1168) = v182;
  *(v0 + 1176) = v184;
  *(v0 + 1184) = v186;
  *(v0 + 1192) = v188;
  *(v0 + 1200) = v189;
  *(v0 + 1208) = 46555;
  *(v0 + 1216) = 0xA200000000000000;
  sub_1E48FEFF4(46555, 0xA200000000000000);
  v191 = v190;
  v193 = v192;
  v195 = v194;
  v197 = v196;
  v198 = sub_1E48FF1C4(46555, 0xA200000000000000);
  *(v0 + 1224) = v191;
  *(v0 + 1232) = v193;
  *(v0 + 1240) = v195;
  *(v0 + 1248) = v197;
  *(v0 + 1256) = v198;
  *(v0 + 1264) = 46811;
  *(v0 + 1272) = 0xA200000000000000;
  sub_1E48FEFF4(46811, 0xA200000000000000);
  v200 = v199;
  v202 = v201;
  v204 = v203;
  v206 = v205;
  v207 = sub_1E48FF1C4(46811, 0xA200000000000000);
  *(v0 + 1280) = v200;
  *(v0 + 1288) = v202;
  *(v0 + 1296) = v204;
  *(v0 + 1304) = v206;
  *(v0 + 1312) = v207;
  *(v0 + 1320) = 10921440;
  *(v0 + 1328) = 0xA300000000000000;
  sub_1E48FEFF4(10921440, 0xA300000000000000);
  v209 = v208;
  v211 = v210;
  v213 = v212;
  v215 = v214;
  v216 = sub_1E48FF1C4(10921440, 0xA300000000000000);
  *(v0 + 1336) = v209;
  *(v0 + 1344) = v211;
  *(v0 + 1352) = v213;
  *(v0 + 1360) = v215;
  *(v0 + 1368) = v216;
  *(v0 + 1376) = 10986976;
  *(v0 + 1384) = 0xA300000000000000;
  sub_1E48FEFF4(10986976, 0xA300000000000000);
  v218 = v217;
  v220 = v219;
  v222 = v221;
  v224 = v223;
  v225 = sub_1E48FF1C4(10986976, 0xA300000000000000);
  *(v0 + 1392) = v218;
  *(v0 + 1400) = v220;
  *(v0 + 1408) = v222;
  *(v0 + 1416) = v224;
  *(v0 + 1424) = v225;
  *(v0 + 1432) = 11052512;
  *(v0 + 1440) = 0xA300000000000000;
  sub_1E48FEFF4(11052512, 0xA300000000000000);
  v227 = v226;
  v229 = v228;
  v231 = v230;
  v233 = v232;
  v234 = sub_1E48FF1C4(11052512, 0xA300000000000000);
  *(v0 + 1448) = v227;
  *(v0 + 1456) = v229;
  *(v0 + 1464) = v231;
  *(v0 + 1472) = v233;
  *(v0 + 1480) = v234;
  *(v0 + 1488) = 11118048;
  *(v0 + 1496) = 0xA300000000000000;
  sub_1E48FEFF4(11118048, 0xA300000000000000);
  v236 = v235;
  v238 = v237;
  v240 = v239;
  v242 = v241;
  v243 = sub_1E48FF1C4(11118048, 0xA300000000000000);
  *(v0 + 1504) = v236;
  *(v0 + 1512) = v238;
  *(v0 + 1520) = v240;
  *(v0 + 1528) = v242;
  *(v0 + 1536) = v243;
  *(v0 + 1544) = 11183584;
  *(v0 + 1552) = 0xA300000000000000;
  sub_1E48FEFF4(11183584, 0xA300000000000000);
  v245 = v244;
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v252 = sub_1E48FF1C4(11183584, 0xA300000000000000);
  *(v0 + 1560) = v245;
  *(v0 + 1568) = v247;
  *(v0 + 1576) = v249;
  *(v0 + 1584) = v251;
  *(v0 + 1592) = v252;
  *(v0 + 1600) = 11249120;
  *(v0 + 1608) = 0xA300000000000000;
  sub_1E48FEFF4(11249120, 0xA300000000000000);
  v254 = v253;
  v256 = v255;
  v258 = v257;
  v260 = v259;
  v261 = sub_1E48FF1C4(11249120, 0xA300000000000000);
  *(v0 + 1616) = v254;
  *(v0 + 1624) = v256;
  *(v0 + 1632) = v258;
  *(v0 + 1640) = v260;
  *(v0 + 1648) = v261;
  *(v0 + 1656) = 11314656;
  *(v0 + 1664) = 0xA300000000000000;
  sub_1E48FEFF4(11314656, 0xA300000000000000);
  v263 = v262;
  v265 = v264;
  v267 = v266;
  v269 = v268;
  v270 = sub_1E48FF1C4(11314656, 0xA300000000000000);
  *(v0 + 1672) = v263;
  *(v0 + 1680) = v265;
  *(v0 + 1688) = v267;
  *(v0 + 1696) = v269;
  *(v0 + 1704) = v270;
  *(v0 + 1712) = 11380192;
  *(v0 + 1720) = 0xA300000000000000;
  sub_1E48FEFF4(11380192, 0xA300000000000000);
  v272 = v271;
  v274 = v273;
  v276 = v275;
  v278 = v277;
  v279 = sub_1E48FF1C4(11380192, 0xA300000000000000);
  *(v0 + 1728) = v272;
  *(v0 + 1736) = v274;
  *(v0 + 1744) = v276;
  *(v0 + 1752) = v278;
  *(v0 + 1760) = v279;
  *(v0 + 1768) = 11445728;
  *(v0 + 1776) = 0xA300000000000000;
  sub_1E48FEFF4(11445728, 0xA300000000000000);
  v281 = v280;
  v283 = v282;
  v285 = v284;
  v287 = v286;
  v288 = sub_1E48FF1C4(11445728, 0xA300000000000000);
  *(v0 + 1784) = v281;
  *(v0 + 1792) = v283;
  *(v0 + 1800) = v285;
  *(v0 + 1808) = v287;
  *(v0 + 1816) = v288;
  *(v0 + 1824) = 11511264;
  *(v0 + 1832) = 0xA300000000000000;
  sub_1E48FEFF4(11511264, 0xA300000000000000);
  v290 = v289;
  v292 = v291;
  v294 = v293;
  v296 = v295;
  v297 = sub_1E48FF1C4(11511264, 0xA300000000000000);
  *(v0 + 1840) = v290;
  *(v0 + 1848) = v292;
  *(v0 + 1856) = v294;
  *(v0 + 1864) = v296;
  *(v0 + 1872) = v297;
  v298 = sub_1E4949988(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC70, &qword_1E499FCE8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ECF81940 = v298;
  return result;
}

void sub_1E48FEFF4(uint64_t a1, unint64_t a2)
{
  if (qword_1ECF7EAF0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECF81920;

  v5 = MEMORY[0x1E691B810](a1, a2);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1E4918244(v5, 0);

    v8 = sub_1E4917F70(v14, (v7 + 16), v6, a1, a2);

    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = *(v7 + 2);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v7 = MEMORY[0x1E69E7CC0];
  v9 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v10 = sub_1E49980EC();
  *(v10 + 16) = v9;
  bzero((v10 + 32), 2 * v9);
LABEL_9:
  GlyphsForCharacters = CTFontGetGlyphsForCharacters(v4, v7 + 16, (v10 + 32), v9);

  if (!GlyphsForCharacters)
  {
LABEL_13:

    return;
  }

  if (*(v10 + 16))
  {
    PathForGlyph = CTFontCreatePathForGlyph(v4, *(v10 + 32), 0);
    if (PathForGlyph)
    {
      v13 = PathForGlyph;
      CGPathGetBoundingBox(PathForGlyph);

      return;
    }

    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
}

CGMutablePathRef sub_1E48FF1C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 48 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
  {
    goto LABEL_4;
  }

  if (a1 == 49 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
  {
LABEL_134:
    Mutable = CGPathCreateMutable();
    sub_1E499833C();
    sub_1E499835C();
    sub_1E499835C();
    sub_1E499835C();
    goto LABEL_5;
  }

  if (a1 == 50 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
  {
    Mutable = CGPathCreateMutable();
    sub_1E499833C();
    sub_1E499834C();
    goto LABEL_5;
  }

  if ((a1 != 51 || a2 != 0xE100000000000000) && (sub_1E499884C() & 1) == 0)
  {
    if (a1 == 52 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 53 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 54 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_4;
    }

    if (a1 == 55 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      Mutable = CGPathCreateMutable();
      sub_1E499833C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499834C();
      return Mutable;
    }

    if (a1 == 56 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 57 && a2 == 0xE100000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_4;
    }

    if (a1 == 41177 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_94;
    }

    if (a1 == 41433 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 41689 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 41945 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_4;
    }

    if (a1 == 42201 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 42457 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      Mutable = CGPathCreateMutable();
      sub_1E499833C();
      sub_1E499835C();
      goto LABEL_5;
    }

    if (a1 == 42713 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 42969 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 43225 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 43481 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 46299 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_94;
    }

    if (a1 == 46555 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
      goto LABEL_134;
    }

    if (a1 == 46811 && a2 == 0xA200000000000000 || (sub_1E499884C() & 1) != 0)
    {
LABEL_94:
      Mutable = CGPathCreateMutable();
      sub_1E499833C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      sub_1E499835C();
      goto LABEL_5;
    }

    if ((a1 != 10921440 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0)
    {
      if (a1 == 10986976 && a2 == 0xA300000000000000 || (sub_1E499884C() & 1) != 0)
      {
        Mutable = CGPathCreateMutable();
        sub_1E499833C();
        sub_1E499834C();
        sub_1E499835C();
        sub_1E499835C();
        sub_1E499835C();
        goto LABEL_5;
      }

      if (a1 == 11052512 && a2 == 0xA300000000000000 || (sub_1E499884C() & 1) != 0 || a1 == 11118048 && a2 == 0xA300000000000000 || (sub_1E499884C() & 1) != 0)
      {
        goto LABEL_134;
      }

      if ((a1 != 11183584 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11249120 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11314656 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11380192 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0 && (a1 != 11445728 || a2 != 0xA300000000000000) && (sub_1E499884C() & 1) == 0)
      {
        if (a1 != 11511264 || a2 != 0xA300000000000000)
        {
          sub_1E499884C();
        }

        goto LABEL_134;
      }
    }
  }

LABEL_4:
  Mutable = CGPathCreateMutable();
  sub_1E499833C();
  sub_1E499835C();
  sub_1E499835C();
LABEL_5:
  sub_1E499835C();
  return Mutable;
}

uint64_t sub_1E49018D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC80, qword_1E499FCF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E490195C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E49019A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4901A64()
{
  result = type metadata accessor for SolarEvent(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4901B04()
{
  result = sub_1E4996D8C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E4901B98()
{
  v1 = v0;
  v2 = type metadata accessor for SolarEvent(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E4996D8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v12);
  v13 = type metadata accessor for SolarCycle(0);
  sub_1E4902EB4(v1 + v13[7], v6);
  v14 = sub_1E4996CFC();
  v15 = *(v8 + 8);
  v15(v6, v7);
  if (v14)
  {
    v15(v12, v7);
    return 0;
  }

  else
  {
    sub_1E4902EB4(v1 + v13[6], v6);
    v17 = sub_1E4996CFC();
    v15(v6, v7);
    if (v17)
    {
      v15(v12, v7);
      return 3;
    }

    else
    {
      sub_1E4902EB4(v1 + v13[5], v6);
      v18 = sub_1E4996CFC();
      v15(v12, v7);
      v15(v6, v7);
      if (v18)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }
}

uint64_t sub_1E4901DDC(float a1)
{
  v2 = v1;
  v4 = type metadata accessor for SolarEvent(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4996D8C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4901B98();
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  sub_1E493BA48(v14);
  v16 = type metadata accessor for SolarCycle(0);
  sub_1E4902EB4(v2 + *(v16 + 24), v8);
  v17 = sub_1E4996D0C();
  v18 = *(v10 + 8);
  v18(v14, v9);
  result = (v18)(v8, v9);
  v20 = 28;
  if (v17)
  {
    v20 = 20;
  }

  v21 = fabsf(a1 / *(v2 + *(v16 + v20) + *(v4 + 24)));
  if (v15 > 1u)
  {
    v22 = 0.25;
    v23 = 180.0;
    if (v15 != 2)
    {
      v22 = 0.5;
      v23 = 270.0;
    }
  }

  else
  {
    if (v15)
    {
      return result;
    }

    v22 = 0.75;
    v23 = 360.0;
  }

  if (v22 > (v23 / 360.0))
  {
    __break(1u);
  }

  return result;
}

void sub_1E490203C(uint64_t a1, double a2, double a3)
{
  v6 = sub_1E4996D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v46 - v15;
  v17 = sub_1E499708C();
  v49 = *(v17 - 8);
  v18 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = GEOLocationCoordinate2DMake(a2, a3);
  v24 = v23;
  v25 = objc_allocWithZone(MEMORY[0x1E69A1DF0]);
  v26 = sub_1E4996CEC();
  v27 = [v25 initWithLocation:v26 date:0 body:{v22, v24}];

  if (v27)
  {
    [v27 altitude];
  }

  else
  {
    v48 = v17;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v28 = qword_1EE2BB458;
    v29 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v28 + v29, v16);
    v30 = v48;
    v31 = *(v49 + 48);
    if (v31(v16, 1, v48) == 1)
    {
      sub_1E4904BF4(v21);
      if (v31(v16, 1, v30) != 1)
      {
        sub_1E48EF578(v16);
      }
    }

    else
    {
      (*(v49 + 32))(v21, v16, v30);
    }

    v32 = v6;
    (*(v7 + 16))(v11, a1, v6);
    v33 = sub_1E499706C();
    v34 = sub_1E499830C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v35 = 141558531;
      *(v35 + 4) = 1752392040;
      *(v35 + 12) = 2081;
      v50 = a2;
      v51 = a3;
      type metadata accessor for CLLocationCoordinate2D(0);
      v36 = sub_1E4997F0C();
      v38 = sub_1E48CA094(v36, v37, &v52);
      v39 = v49;
      v40 = v38;

      *(v35 + 14) = v40;
      *(v35 + 22) = 2082;
      sub_1E4902B58(&qword_1ECF7F8F0, MEMORY[0x1E6969530]);
      v41 = sub_1E49987FC();
      v43 = v42;
      (*(v7 + 8))(v11, v32);
      v44 = sub_1E48CA094(v41, v43, &v52);

      *(v35 + 24) = v44;
      _os_log_impl(&dword_1E48B0000, v33, v34, "Failed to get elevationDegrees for location:%{private,mask.hash}s, date: %{public}s", v35, 0x20u);
      v45 = v47;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v45, -1, -1);
      MEMORY[0x1E691CED0](v35, -1, -1);

      (*(v39 + 8))(v21, v48);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
      (*(v49 + 8))(v21, v48);
    }
  }
}

uint64_t sub_1E4902540@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_1E4996BAC();
  v7 = v6;
  v8 = objc_opt_self();
  v9 = GEOLocationCoordinate2DMake(a2, a3);
  v11 = v10;
  [v8 nextEventOfType:8 after:v7 forLocation:v9 altitudeInDegrees:v10 accuracy:{0.0, 60.0}];
  v12 = type metadata accessor for SolarCycle(0);
  v13 = a1 + v12[8];
  sub_1E4996B9C();
  v14 = *MEMORY[0x1E69A15F8];
  [v8 prevEventOfType:8 before:v7 forLocation:v9 altitudeInDegrees:v11 accuracy:{*MEMORY[0x1E69A15F8], 60.0}];
  sub_1E4996B9C();
  sub_1E4996BAC();
  v16 = [objc_allocWithZone(MEMORY[0x1E69A2598]) initWithLocation:v9 time:v11 altitudeInDegrees:v15 accuracy:{v14, 60.0}];
  [v16 nextEventOfType_];
  v17 = a1 + v12[5];
  sub_1E4996B9C();
  [v16 nextEventOfType_];
  v18 = a1 + v12[6];
  sub_1E4996B9C();
  sub_1E4996BAC();
  [v8 prevEventOfType:512 before:? forLocation:? altitudeInDegrees:? accuracy:?];
  v19 = a1 + v12[7];
  sub_1E4996B9C();

  sub_1E490203C(v17, a2, a3);
  LODWORD(v9) = v20;
  sub_1E490203C(v19, a2, a3);
  LODWORD(a3) = v21;
  result = type metadata accessor for SolarEvent(0);
  *(a1 + *(result + 20)) = 0;
  *(a1 + *(result + 24)) = 0;
  *(v17 + *(result + 20)) = 2;
  *(v17 + *(result + 24)) = LODWORD(v9);
  *(v18 + *(result + 20)) = 1;
  *(v18 + *(result + 24)) = 0;
  *(v19 + *(result + 20)) = 3;
  *(v19 + *(result + 24)) = LODWORD(a3);
  *(v13 + *(result + 20)) = 0;
  *(v13 + *(result + 24)) = 0;
  return result;
}

unint64_t sub_1E49027AC()
{
  result = qword_1ECF7FCA8;
  if (!qword_1ECF7FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCA8);
  }

  return result;
}

uint64_t sub_1E4902800()
{
  sub_1E499892C();
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530]);
  sub_1E4997E5C();
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x1E691C150](*(v0 + *(v1 + 20)));
  *(v0 + *(v1 + 24));
  sub_1E499894C();
  return sub_1E499896C();
}

uint64_t sub_1E490293C(uint64_t a1, uint64_t a2)
{
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530]);
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v2 + *(a2 + 20)));
  *(v2 + *(a2 + 24));
  return sub_1E499894C();
}

uint64_t sub_1E49029F0(uint64_t a1, uint64_t a2)
{
  sub_1E499892C();
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530]);
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v2 + *(a2 + 20)));
  *(v2 + *(a2 + 24));
  sub_1E499894C();
  return sub_1E499896C();
}

uint64_t sub_1E4902AB8(uint64_t a1)
{
  result = sub_1E4902B58(&qword_1ECF7FCB0, type metadata accessor for SolarEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4902B58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4902BA0()
{
  sub_1E4996D8C();
  sub_1E4902B58(&qword_1ECF7FCD0, MEMORY[0x1E6969530]);
  sub_1E4997E5C();
  v1 = type metadata accessor for SolarEvent(0);
  MEMORY[0x1E691C150](*(v0 + *(v1 + 20)));
  *(v0 + *(v1 + 24));
  sub_1E499894C();
  v2 = type metadata accessor for SolarCycle(0);
  v3 = v0 + v2[5];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v3 + *(v1 + 20)));
  *(v3 + *(v1 + 24));
  sub_1E499894C();
  v4 = v0 + v2[6];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v4 + *(v1 + 20)));
  *(v4 + *(v1 + 24));
  sub_1E499894C();
  v5 = v0 + v2[7];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v5 + *(v1 + 20)));
  *(v5 + *(v1 + 24));
  sub_1E499894C();
  v6 = v0 + v2[8];
  sub_1E4997E5C();
  MEMORY[0x1E691C150](*(v6 + *(v1 + 20)));
  *(v6 + *(v1 + 24));
  return sub_1E499894C();
}

uint64_t sub_1E4902D90()
{
  sub_1E499892C();
  sub_1E4902BA0();
  return sub_1E499896C();
}

uint64_t sub_1E4902DD4()
{
  sub_1E499892C();
  sub_1E4902BA0();
  return sub_1E499896C();
}

uint64_t sub_1E4902E14(uint64_t a1)
{
  result = sub_1E4902B58(&qword_1ECF7FCC0, type metadata accessor for SolarCycle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4902EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SolarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1E4902F18(uint64_t a1, uint64_t a2)
{
  if ((sub_1E4996D2C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SolarEvent(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = v4;
  v6 = type metadata accessor for SolarCycle(0);
  v7 = v6[5];
  v8 = a1 + v7;
  v9 = a2 + v7;
  if ((sub_1E4996D2C() & 1) == 0)
  {
    return 0;
  }

  if (*(v8 + *(v5 + 20)) == *(v9 + *(v5 + 20)) && *(v8 + *(v5 + 24)) == *(v9 + *(v5 + 24)) && (v10 = v6[6], v11 = a1 + v10, v12 = a2 + v10, (sub_1E4996D2C() & 1) != 0) && *(v11 + *(v5 + 20)) == *(v12 + *(v5 + 20)) && *(v11 + *(v5 + 24)) == *(v12 + *(v5 + 24)) && (v13 = v6[8], v14 = a1 + v13, v15 = a2 + v13, (sub_1E4996D2C() & 1) != 0) && *(v14 + *(v5 + 20)) == *(v15 + *(v5 + 20)))
  {
    return *(v14 + *(v5 + 24)) == *(v15 + *(v5 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for SolarContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SolarContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E49031BC()
{
  result = qword_1ECF7FCD8;
  if (!qword_1ECF7FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCD8);
  }

  return result;
}

uint64_t CustomStringConvertibleViaMirror.description.getter(uint64_t a1)
{
  v3 = sub_1E499899C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v1, a1);
  sub_1E499897C();
  sub_1E499898C();
  (*(v4 + 8))(v8, v3);
  v10 = sub_1E499868C();

  v17[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F270, &qword_1E499B8A0);
  sub_1E48C1B44(&qword_1ECF7F278, &qword_1ECF7F270, &qword_1E499B8A0);
  v11 = sub_1E4997E8C();
  v13 = v12;

  v17[0] = 60;
  v17[1] = 0xE100000000000000;
  swift_getDynamicType();
  v14 = sub_1E4998A4C();
  MEMORY[0x1E691B7A0](v14);

  MEMORY[0x1E691B7A0](0x20200A5B20, 0xE500000000000000);
  MEMORY[0x1E691B7A0](v11, v13);

  MEMORY[0x1E691B7A0](4087050, 0xE300000000000000);
  return v17[0];
}

ClockPoster::ClockLogger::Host_optional __swiftcall ClockLogger.Host.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t ClockLogger.Host.rawValue.getter()
{
  if (*v0)
  {
    result = 0x746E6569626D61;
  }

  else
  {
    result = 7368801;
  }

  *v0;
  return result;
}

uint64_t sub_1E490356C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E6569626D61;
  }

  else
  {
    v4 = 7368801;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x746E6569626D61;
  }

  else
  {
    v6 = 7368801;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E499884C();
  }

  return v9 & 1;
}

uint64_t sub_1E490360C()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4903688()
{
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E49036F0()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4903768@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1E499873C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1E49037C8(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x746E6569626D61;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

ClockPoster::ClockLogger::Role_optional __swiftcall ClockLogger.Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E499873C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ClockLogger.Role.rawValue.getter()
{
  v1 = 0x7265646E6572;
  if (*v0 != 1)
  {
    v1 = 0x657461647075;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953064037;
  }
}

uint64_t sub_1E49038C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7265646E6572;
  if (v2 != 1)
  {
    v3 = 0x657461647075;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1953064037;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x7265646E6572;
  if (*a2 != 1)
  {
    v6 = 0x657461647075;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1953064037;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E499884C();
  }

  return v9 & 1;
}

uint64_t sub_1E49039B0()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

uint64_t sub_1E4903A44()
{
  *v0;
  *v0;
  sub_1E4997F5C();
}

uint64_t sub_1E4903AC4()
{
  v1 = *v0;
  sub_1E499892C();
  sub_1E4997F5C();

  return sub_1E499896C();
}

void sub_1E4903B60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x7265646E6572;
  if (v2 != 1)
  {
    v4 = 0x657461647075;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1953064037;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1E4903BC0()
{
  v0 = type metadata accessor for ClockLogger();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger;
  v5 = sub_1E499708C();
  v6 = *(*(v5 - 8) + 56);
  v6(v3 + v4, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private, 1, 1, v5);
  v6(v3 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private, 1, 1, v5);
  result = (v6)(v3 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles) = MEMORY[0x1E69E7CC0];
  *(v3 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind) = 5;
  *(v3 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host) = 2;
  qword_1EE2BB458 = v3;
  return result;
}

uint64_t static ClockLogger.sharedInstance.getter()
{
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1E4903D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v15 - v7;
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2BB458;
  v10 = *a1;
  swift_beginAccess();
  sub_1E48CC978(v9 + v10, v8);
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v8, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v8, v11);
  }

  sub_1E4904BF4(a2);
  result = (v13)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1E48EF578(v8);
  }

  return result;
}

unint64_t static ClockLogger.processDescription.getter()
{
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v2 = sub_1E49054F0();
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  v0 = sub_1E4905BE4();
  MEMORY[0x1E691B7A0](v0);

  return v2;
}

uint64_t sub_1E4903FC0(unsigned __int8 *a1, char *a2, _BYTE *a3)
{
  v4 = v3;
  v8 = sub_1E499708C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v70[-v21];
  v23 = *a2;
  v24 = *a1;
  v25 = *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind);
  *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind) = *a3;
  v80[0] = v25;
  sub_1E4904F4C(v80);
  v26 = *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host);
  *(v4 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host) = v23;
  v80[0] = v26;
  sub_1E4905638(v80);
  v27 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
  swift_beginAccess();
  sub_1E48CC978(v4 + v27, v22);
  v75 = v9;
  v28 = (*(v9 + 48))(v22, 1, v8);
  result = sub_1E48EF578(v22);
  if (v24 == 3)
  {
    if (v28 != 1)
    {
      return result;
    }

LABEL_11:
    v73 = v28;
    v71 = v24;
    v37 = sub_1E4905BE4();
    v72 = v37;
    v38 = v8;
    v40 = v39;
    sub_1E49054F0();
    v74 = v13;
    v79[0] = 0;
    v79[1] = 0xE000000000000000;
    sub_1E49985BC();

    v79[0] = v37;
    v79[1] = v40;
    MEMORY[0x1E691B7A0](0x6769666E6F43203ALL, 0xEF6E6F6974617275);
    sub_1E499707C();
    v41 = v75;
    (*(v75 + 16))(v18, v74, v38);
    v42 = *(v41 + 56);
    v42(v18, 0, 1, v38);
    swift_beginAccess();
    sub_1E4907080(v18, v4 + v27);
    swift_endAccess();
    sub_1E49054F0();
    v43 = v72;
    v79[0] = v72;
    v79[1] = v40;

    MEMORY[0x1E691B7A0](0x7265646E6552203ALL, 0xEB00000000676E69);
    sub_1E499707C();
    v42(v18, 0, 1, v38);
    v44 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    sub_1E4907080(v18, v4 + v44);
    swift_endAccess();
    sub_1E49054F0();
    v79[0] = v43;
    v79[1] = v40;

    MEMORY[0x1E691B7A0](0x61746144203ALL, 0xE600000000000000);
    sub_1E499707C();
    v42(v18, 0, 1, v38);
    v45 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E4907080(v18, v4 + v45);
    swift_endAccess();
    sub_1E49054F0();
    v79[0] = v43;
    v79[1] = v40;
    v46 = v38;
    MEMORY[0x1E691B7A0](0x697461636F4C203ALL, 0xEA00000000006E6FLL);
    v47 = v74;
    sub_1E499707C();
    v42(v18, 0, 1, v38);
    v48 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private;
    swift_beginAccess();
    sub_1E4907080(v18, v4 + v48);
    swift_endAccess();

    v49 = sub_1E499706C();
    v50 = sub_1E49982EC();

    v51 = os_log_type_enabled(v49, v50);
    if (v73 == 1)
    {
      if (v51)
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v78 = v60;
        v79[0] = 0;
        *v59 = 136446210;
        v79[1] = 0xE000000000000000;
        sub_1E49985BC();

        strcpy(v79, "[ClockLogger: ");
        HIBYTE(v79[1]) = -18;
        if (qword_1EE2BB450 != -1)
        {
          swift_once();
        }

        v76 = sub_1E49054F0();
        v77 = v61;
        MEMORY[0x1E691B7A0](32, 0xE100000000000000);
        v62 = sub_1E4905BE4();
        MEMORY[0x1E691B7A0](v62);

        MEMORY[0x1E691B7A0](v76, v77);

        MEMORY[0x1E691B7A0](93, 0xE100000000000000);
        v63 = sub_1E48CA094(v79[0], v79[1], &v78);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_1E48B0000, v49, v50, "%{public}s: Starting up logging", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v60);
        MEMORY[0x1E691CED0](v60, -1, -1);
        v64 = v59;
        goto LABEL_28;
      }
    }

    else if (v51)
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v78 = v53;
      v79[0] = 0;
      *v52 = 136446466;
      v79[1] = 0xE000000000000000;
      sub_1E49985BC();

      strcpy(v79, "[ClockLogger: ");
      HIBYTE(v79[1]) = -18;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v76 = sub_1E49054F0();
      v77 = v54;
      MEMORY[0x1E691B7A0](32, 0xE100000000000000);
      v55 = sub_1E4905BE4();
      MEMORY[0x1E691B7A0](v55);

      MEMORY[0x1E691B7A0](v76, v77);

      MEMORY[0x1E691B7A0](93, 0xE100000000000000);
      v56 = sub_1E48CA094(v79[0], v79[1], &v78);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2082;
      if (v71 == 3)
      {
        v57 = 0xE600000000000000;
        v58 = 0x3E4C4C554E3CLL;
      }

      else
      {
        if (v71)
        {
          v65 = 0xE600000000000000;
          if (v71 == 1)
          {
            v66 = 0x7265646E6572;
          }

          else
          {
            v66 = 0x657461647075;
          }
        }

        else
        {
          v65 = 0xE400000000000000;
          v66 = 1953064037;
        }

        v79[0] = v66;
        v79[1] = v65;
        sub_1E48D2EE4();
        v67 = sub_1E49984EC();
        v57 = v68;

        v58 = v67;
      }

      v69 = sub_1E48CA094(v58, v57, &v78);

      *(v52 + 14) = v69;
      _os_log_impl(&dword_1E48B0000, v49, v50, "%{public}s: Adding role to logging: '%{public}s'", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v53, -1, -1);
      v64 = v52;
LABEL_28:
      MEMORY[0x1E691CED0](v64, -1, -1);
    }

    return (*(v75 + 8))(v47, v46);
  }

  v30 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles;
  swift_beginAccess();
  v31 = *(v4 + v30);

  v32 = sub_1E490496C(v24, v31);

  if (v28 == 1 || !v32)
  {
    swift_beginAccess();
    v33 = *(v4 + v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v30) = v33;
    v73 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_1E490679C(0, *(v33 + 2) + 1, 1, v33);
      *(v4 + v30) = v33;
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v33 = sub_1E490679C((v35 > 1), v36 + 1, 1, v33);
    }

    *(v33 + 2) = v36 + 1;
    v33[v36 + 32] = v24;
    *(v4 + v30) = v33;
    swift_endAccess();
    v28 = v73;
    goto LABEL_11;
  }

  return result;
}

BOOL sub_1E490496C(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v6 = v3;
    if (v3-- == 0)
    {
      break;
    }

    if (*v4 == 1)
    {
      v8 = 0x7265646E6572;
    }

    else
    {
      v8 = 0x657461647075;
    }

    if (*v4)
    {
      v9 = v8;
    }

    else
    {
      v9 = 1953064037;
    }

    if (*v4)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE400000000000000;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0x7265646E6572;
      }

      else
      {
        v11 = 0x657461647075;
      }

      v12 = 0xE600000000000000;
      if (v9 != v11)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v9 != 1953064037)
      {
        goto LABEL_2;
      }
    }

    if (v10 == v12)
    {

      return v6 != 0;
    }

LABEL_2:
    v5 = sub_1E499884C();

    ++v4;
  }

  while ((v5 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1E4904A88(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles;
  swift_beginAccess();
  v14 = v4;
  v5 = *(v2 + v4);
  v6 = *(v5 + 16);

  if (v6)
  {
    v8 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v15 = v3;
    while (v8 < *(v5 + 16))
    {
      v16 = *(v5 + 32 + v8);
      result = sub_1E49071F0(&v16, v3, v2);
      if (result)
      {
        v12 = v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        v17 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1E4906F58(0, *(v9 + 16) + 1, 1);
          v9 = v17;
        }

        v11 = *(v9 + 16);
        v10 = *(v9 + 24);
        if (v11 >= v10 >> 1)
        {
          result = sub_1E4906F58((v10 > 1), v11 + 1, 1);
          v9 = v17;
        }

        *(v9 + 16) = v11 + 1;
        *(v9 + v11 + 32) = v12;
        v3 = v15;
      }

      if (v6 == ++v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_12:

    v13 = *(v2 + v14);
    *(v2 + v14) = v9;
  }

  return result;
}

uint64_t sub_1E4904BF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v17[-v11];
  v13 = OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger;
  swift_beginAccess();
  sub_1E48CC978(v1 + v13, v12);
  v14 = sub_1E499708C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) != 1)
  {
    return (*(v15 + 32))(a1, v12, v14);
  }

  sub_1E48EF578(v12);
  sub_1E4904DF0();
  (*(v15 + 16))(v9, a1, v14);
  (*(v15 + 56))(v9, 0, 1, v14);
  swift_beginAccess();
  sub_1E4907080(v9, v1 + v13);
  return swift_endAccess();
}

void sub_1E4904DF0()
{
  sub_1E499707C();

  oslog = sub_1E499706C();
  v0 = sub_1E499830C();

  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v7 = v2;
    *v1 = 136446210;
    v3 = sub_1E49070F0();
    v5 = sub_1E48CA094(v3, v4, &v7);

    *(v1 + 4) = v5;
    _os_log_impl(&dword_1E48B0000, oslog, v0, "%{public}s: ***** MUST SETUP ClockLogger before using its loggers. Call ClockLogger.add(...) to do this *****", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
    MEMORY[0x1E691CED0](v2, -1, -1);
    MEMORY[0x1E691CED0](v1, -1, -1);
  }
}

void sub_1E4904F4C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v44 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (v15 != 5)
  {
    v16 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind;
    v17 = *(v2 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind);
    if (v17 == 5 || (sub_1E4945D04(v15, v17) & 1) == 0)
    {
      v47 = v16;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v18 = qword_1EE2BB458;
      v19 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
      swift_beginAccess();
      sub_1E48CC978(v18 + v19, v8);
      v20 = *(v10 + 48);
      if (v20(v8, 1, v9) == 1)
      {
        sub_1E4904BF4(v14);
        if (v20(v8, 1, v9) != 1)
        {
          sub_1E48EF578(v8);
        }
      }

      else
      {
        (*(v10 + 32))(v14, v8, v9);
      }

      v21 = sub_1E499706C();
      v22 = sub_1E499830C();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_32;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136446722;
      v50[0] = 0;
      v50[1] = 0xE000000000000000;
      v51 = v24;
      sub_1E49985BC();

      strcpy(v50, "[ClockLogger: ");
      HIBYTE(v50[1]) = -18;
      v48 = sub_1E49054F0();
      v49 = v25;
      MEMORY[0x1E691B7A0](32, 0xE100000000000000);
      v26 = sub_1E4905BE4();
      MEMORY[0x1E691B7A0](v26);

      MEMORY[0x1E691B7A0](v48, v49);

      MEMORY[0x1E691B7A0](93, 0xE100000000000000);
      v27 = sub_1E48CA094(v50[0], v50[1], &v51);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v46 = v21;
      v28 = v22;
      if (v15 <= 1)
      {
        v30 = 0x6C617469676964;
        if (v15)
        {
          v30 = 0x676F6C616E61;
          v29 = 0xE600000000000000;
        }

        else
        {
          v29 = 0xE700000000000000;
        }
      }

      else if (v15 == 2)
      {
        v29 = 0xE500000000000000;
        v30 = 0x646C726F77;
      }

      else if (v15 == 3)
      {
        v29 = 0xE500000000000000;
        v30 = 0x72616C6F73;
      }

      else
      {
        v29 = 0xE400000000000000;
        v30 = 2036427888;
      }

      v50[0] = v30;
      v50[1] = v29;
      sub_1E48D2EE4();
      v31 = sub_1E49984EC();
      v33 = v32;

      v34 = sub_1E48CA094(v31, v33, &v51);

      *(v23 + 14) = v34;
      *(v23 + 22) = 2082;
      v35 = *(v2 + v47);
      if (v35 > 2)
      {
        v36 = v28;
        if (v35 == 3)
        {
          v37 = 0xE500000000000000;
          v38 = 0x72616C6F73;
          v21 = v46;
        }

        else
        {
          v21 = v46;
          if (v35 != 4)
          {
            v41 = 0xE600000000000000;
            v39 = 0x3E656E6F4E3CLL;
            goto LABEL_31;
          }

          v37 = 0xE400000000000000;
          v38 = 2036427888;
        }
      }

      else
      {
        v36 = v28;
        if (*(v2 + v47))
        {
          v21 = v46;
          if (v35 == 1)
          {
            v37 = 0xE600000000000000;
            v38 = 0x676F6C616E61;
          }

          else
          {
            v37 = 0xE500000000000000;
            v38 = 0x646C726F77;
          }
        }

        else
        {
          v37 = 0xE700000000000000;
          v38 = 0x6C617469676964;
          v21 = v46;
        }
      }

      v50[0] = v38;
      v50[1] = v37;
      v39 = sub_1E49984EC();
      v41 = v40;

LABEL_31:
      v42 = sub_1E48CA094(v39, v41, &v51);

      *(v23 + 24) = v42;
      _os_log_impl(&dword_1E48B0000, v21, v36, "%{public}s: Specific clock face changed from '%{public}s' to '%{public}s'\nThe face this process is serving should never change.", v23, 0x20u);
      v43 = v45;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v43, -1, -1);
      MEMORY[0x1E691CED0](v23, -1, -1);
LABEL_32:

      (*(v10 + 8))(v14, v9);
    }
  }
}

unint64_t sub_1E49054F0()
{
  result = 0xD000000000000015;
  v2 = *(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_specificFaceKind);
  if (v2 != 5)
  {
    MEMORY[0x1E691B7A0](46, 0xE100000000000000);
    sub_1E48D2EE4();
    v3 = sub_1E49984EC();
    v5 = v4;

    MEMORY[0x1E691B7A0](v3, v5);

    MEMORY[0x1E691B7A0](1701011782, 0xE400000000000000);
    return 0xD000000000000015;
  }

  return result;
}

void sub_1E4905638(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v51 - v7;
  v9 = sub_1E499708C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (v15 == 2)
  {
    return;
  }

  v16 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_host;
  v17 = *(v2 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host);
  if (v17 == 2)
  {
    goto LABEL_3;
  }

  if (v15)
  {
    v21 = 0x746E6569626D61;
  }

  else
  {
    v21 = 7368801;
  }

  if (v15)
  {
    v22 = 0xE700000000000000;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  if (v17)
  {
    v23 = 0x746E6569626D61;
  }

  else
  {
    v23 = 7368801;
  }

  if (v17)
  {
    v24 = 0xE700000000000000;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  if (v21 != v23 || v22 != v24)
  {
    v26 = sub_1E499884C();

    if (v26)
    {
      return;
    }

LABEL_3:
    v54 = v16;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v18 = qword_1EE2BB458;
    v19 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
    swift_beginAccess();
    sub_1E48CC978(v18 + v19, v8);
    v20 = *(v10 + 48);
    if (v20(v8, 1, v9) == 1)
    {
      sub_1E4904BF4(v14);
      if (v20(v8, 1, v9) != 1)
      {
        sub_1E48EF578(v8);
      }
    }

    else
    {
      (*(v10 + 32))(v14, v8, v9);
    }

    v27 = sub_1E499706C();
    v28 = sub_1E499830C();

    if (os_log_type_enabled(v27, v28))
    {
      v52 = v28;
      v53 = v10;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v51 = v30;
      *v29 = 136446722;
      v57[0] = 0;
      v57[1] = 0xE000000000000000;
      v58 = v30;
      sub_1E49985BC();

      strcpy(v57, "[ClockLogger: ");
      HIBYTE(v57[1]) = -18;
      v55 = sub_1E49054F0();
      v56 = v31;
      MEMORY[0x1E691B7A0](32, 0xE100000000000000);
      v32 = sub_1E4905BE4();
      MEMORY[0x1E691B7A0](v32);

      MEMORY[0x1E691B7A0](v55, v56);

      MEMORY[0x1E691B7A0](93, 0xE100000000000000);
      v33 = sub_1E48CA094(v57[0], v57[1], &v58);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      v34 = 7368801;
      if (v15)
      {
        v34 = 0x746E6569626D61;
        v35 = 0xE700000000000000;
      }

      else
      {
        v35 = 0xE300000000000000;
      }

      v57[0] = v34;
      v57[1] = v35;
      sub_1E48D2EE4();
      v36 = sub_1E49984EC();
      v38 = v37;

      v39 = sub_1E48CA094(v36, v38, &v58);

      *(v29 + 14) = v39;
      *(v29 + 22) = 2082;
      v40 = *(v2 + v54);
      if (v40 == 2)
      {
        v41 = 0xE600000000000000;
        v42 = 0x3E656E6F4E3CLL;
      }

      else
      {
        v43 = (v40 & 1) == 0;
        v44 = 0x746E6569626D61;
        if (v43)
        {
          v44 = 7368801;
        }

        if (v43)
        {
          v45 = 0xE300000000000000;
        }

        else
        {
          v45 = 0xE700000000000000;
        }

        v57[0] = v44;
        v57[1] = v45;
        v46 = sub_1E49984EC();
        v41 = v47;

        v42 = v46;
      }

      v48 = v53;
      v49 = sub_1E48CA094(v42, v41, &v58);

      *(v29 + 24) = v49;
      _os_log_impl(&dword_1E48B0000, v27, v52, "%{public}s: Host cannot change for life of process - trying to change '%{public}s' to '%{public}s'", v29, 0x20u);
      v50 = v51;
      swift_arrayDestroy();
      MEMORY[0x1E691CED0](v50, -1, -1);
      MEMORY[0x1E691CED0](v29, -1, -1);

      (*(v48 + 8))(v14, v9);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    return;
  }
}

uint64_t sub_1E4905BE4()
{
  if (*(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_host) == 2)
  {
    v1 = 0xEB0000000074736FLL;
    v2 = 0x486E776F6E6B6E55;
  }

  else
  {
    sub_1E48D2EE4();
    v3 = sub_1E49984EC();
    v1 = v4;

    v2 = v3;
  }

  MEMORY[0x1E691B7A0](v2, v1);

  MEMORY[0x1E691B7A0](40, 0xE100000000000000);
  v5 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles;
  swift_beginAccess();
  v23 = v5;
  v6 = *(v24 + v5);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 0;
    do
    {
      v9 = *(*(v24 + v23) + 16);
      v10 = v9 > 1;
      v11 = v9 - 1;
      v12 = v6 + v8;
      v13 = 124;
      if (!v10)
      {
        v13 = 0;
      }

      v14 = 0xE100000000000000;
      if (!v10)
      {
        v14 = 0xE000000000000000;
      }

      v15 = v8++ == v11;
      v16 = *(v12 + 32);
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v13;
      }

      if (v15)
      {
        v18 = 0xE000000000000000;
      }

      else
      {
        v18 = v14;
      }

      sub_1E48D2EE4();
      v19 = sub_1E49984EC();
      v21 = v20;

      MEMORY[0x1E691B7A0](v19, v21);

      MEMORY[0x1E691B7A0](v17, v18);
    }

    while (v7 != v8);
  }

  MEMORY[0x1E691B7A0](41, 0xE100000000000000);
  return 0;
}

uint64_t ClockLogger.deinit()
{
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles);

  return v0;
}

uint64_t ClockLogger.__deallocating_deinit()
{
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger____lazy_storage___fallbackLogger);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private);
  sub_1E48EF578(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_location_private);
  v1 = *(v0 + OBJC_IVAR____TtC11ClockPoster11ClockLogger_roles);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *sub_1E4905F5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E4906060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD38, &qword_1E49A0280);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1E490615C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD40, &qword_1E49A0288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E49062AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC10, &qword_1E499E578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1E4906420(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1E490651C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD88, &qword_1E49A02F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1E4906668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E490679C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD80, &qword_1E49A02F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1E49068B4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1E4906A4C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1E4906C28(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD20, &qword_1E49A0268);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD28, &unk_1E49A0270);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E4906D5C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD10, &unk_1E49A49F0);
  v4 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1E4906E58(char *a1, int64_t a2, char a3)
{
  result = sub_1E4951E00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E4906E78(void *a1, int64_t a2, char a3)
{
  result = sub_1E4951F0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906E98(char *a1, int64_t a2, char a3)
{
  result = sub_1E4951F30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906EB8(char *a1, int64_t a2, char a3)
{
  result = sub_1E4952050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906ED8(char *a1, int64_t a2, char a3)
{
  result = sub_1E495215C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E4906EF8(void *a1, int64_t a2, char a3)
{
  result = sub_1E4952438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F18(char *a1, int64_t a2, char a3)
{
  result = sub_1E49525A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F38(char *a1, int64_t a2, char a3)
{
  result = sub_1E49526A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F58(char *a1, int64_t a2, char a3)
{
  result = sub_1E49527AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F78(char *a1, int64_t a2, char a3)
{
  result = sub_1E49528A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4906F98(char *a1, int64_t a2, char a3)
{
  result = sub_1E49529AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1E4906FB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1280070990;
  }

  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1E691B7A0](v5, v6);

  MEMORY[0x1E691B7A0](538976314, 0xE400000000000000);
  result = sub_1E49986CC();
  *a2 = 0;
  a2[1] = v8;
  return result;
}

uint64_t sub_1E4907080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E49070F0()
{
  sub_1E49985BC();

  strcpy(v5, "[ClockLogger: ");
  HIBYTE(v5[1]) = -18;
  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v3 = sub_1E49054F0();
  v4 = v0;
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  v1 = sub_1E4905BE4();
  MEMORY[0x1E691B7A0](v1);

  MEMORY[0x1E691B7A0](v3, v4);

  MEMORY[0x1E691B7A0](93, 0xE100000000000000);
  return v5[0];
}

uint64_t sub_1E49071F0(_BYTE *a1, int a2, uint64_t a3)
{
  v51[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = v51 - v9;
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  v52 = v11;
  v53 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (v17 == 1)
  {
    v18 = 0x7265646E6572;
  }

  else
  {
    v18 = 0x657461647075;
  }

  if (*a1)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1953064037;
  }

  if (*a1)
  {
    v20 = 0xE600000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v21 = 0x7265646E6572;
    }

    else
    {
      v21 = 0x657461647075;
    }

    v22 = 0xE600000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
    v21 = 1953064037;
  }

  v54 = a2;
  if (v19 == v21 && v20 == v22)
  {

    v23 = v53;
  }

  else
  {
    v24 = sub_1E499884C();

    v23 = v53;
    if ((v24 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v25 = qword_1EE2BB458;
  v26 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_configuration_private;
  swift_beginAccess();
  sub_1E48CC978(v25 + v26, v10);
  v27 = *(v23 + 48);
  v28 = v52;
  v29 = v27(v10, 1, v52);
  v51[0] = v3;
  if (v29 == 1)
  {
    sub_1E4904BF4(v16);
    if (v27(v10, 1, v28) != 1)
    {
      sub_1E48EF578(v10);
    }
  }

  else
  {
    (*(v23 + 32))(v16, v10, v28);
  }

  v30 = sub_1E499706C();
  v31 = sub_1E49982EC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    *v32 = 136446466;
    v34 = sub_1E49070F0();
    v36 = sub_1E48CA094(v34, v35, &v57);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    if (v54)
    {
      v37 = 0x7265646E6572;
      if (v54 != 1)
      {
        v37 = 0x657461647075;
      }

      v38 = 0xE600000000000000;
    }

    else
    {
      v38 = 0xE400000000000000;
      v37 = 1953064037;
    }

    v55 = v37;
    v56 = v38;
    sub_1E48D2EE4();
    v39 = sub_1E49984EC();
    v41 = v40;

    v42 = sub_1E48CA094(v39, v41, &v57);

    *(v32 + 14) = v42;
    _os_log_impl(&dword_1E48B0000, v30, v31, "%{public}s: Removing role from logging: '%{public}s'", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691CED0](v33, -1, -1);
    MEMORY[0x1E691CED0](v32, -1, -1);

    (*(v53 + 8))(v16, v52);
  }

  else
  {

    (*(v23 + 8))(v16, v28);
  }

LABEL_35:
  v43 = 0x7265646E6572;
  if (!v17)
  {
    v44 = 0xE400000000000000;
    v45 = 1953064037;
    v46 = v54;
    if (!v54)
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  v44 = 0xE600000000000000;
  if (v17 != 1)
  {
    v45 = 0x657461647075;
    v46 = v54;
    if (!v54)
    {
      goto LABEL_45;
    }

LABEL_40:
    v47 = 0xE600000000000000;
    if (v46 != 1)
    {
      v43 = 0x657461647075;
    }

    if (v45 != v43)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v45 = 0x7265646E6572;
  v46 = v54;
  if (v54)
  {
    goto LABEL_40;
  }

LABEL_45:
  v47 = 0xE400000000000000;
  if (v45 != 1953064037)
  {
LABEL_48:
    v49 = sub_1E499884C();

    v48 = v49 ^ 1;
    return v48 & 1;
  }

LABEL_46:
  if (v44 != v47)
  {
    goto LABEL_48;
  }

  v48 = 0;
  return v48 & 1;
}

unint64_t sub_1E4907754()
{
  result = qword_1ECF7FCE0;
  if (!qword_1ECF7FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCE0);
  }

  return result;
}

unint64_t sub_1E49077F0()
{
  result = qword_1ECF7FCF8;
  if (!qword_1ECF7FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF7FCF8);
  }

  return result;
}

uint64_t type metadata accessor for ClockLogger()
{
  result = qword_1EE2BB410;
  if (!qword_1EE2BB410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E49078DC()
{
  sub_1E4907A18();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E4907A18()
{
  if (!qword_1EE2BB150)
  {
    sub_1E499708C();
    v0 = sub_1E49984BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2BB150);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClockLogger.Host(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ClockLogger.Host(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_1E4907D74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RollingClockView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RollingClockView()
{
  result = qword_1EE2BB470;
  if (!qword_1EE2BB470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4907E8C()
{
  result = sub_1E4996F4C();
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

void sub_1E4907F80()
{
  sub_1E490803C(319, &qword_1ECF7FDB0, type metadata accessor for WorldViewModel);
  if (v0 <= 0x3F)
  {
    sub_1E490803C(319, &qword_1ECF7FDB8, MEMORY[0x1E697E7E0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E490803C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E49971DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E49080AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  *a2 = *(v3 + 120);
}

uint64_t sub_1E4908158(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1E48DCCCC(v4);
}

uint64_t sub_1E4908184@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  return sub_1E48C12D0(v3 + v4, a2, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E490825C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v11 - v7;
  sub_1E48C12D0(a1, &v11 - v7, &qword_1ECF809D0, &qword_1E499D6C0);
  v9 = *a2;
  return sub_1E48E4114(v8);
}

uint64_t sub_1E4908308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDD8, &qword_1E49A0478);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v50 = (&v47 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDE0, &qword_1E49A0480);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDE8, &qword_1E49A0488);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v54 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v47 - v25;
  KeyPath = swift_getKeyPath();
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  v28 = sub_1E49971EC();
  v55 = KeyPath;
  v56 = 0;
  v57 = v28;
  v58 = v29 & 1;
  sub_1E4961CE4(*a1, *(a1 + 8));
  sub_1E49110B4();
  sub_1E499793C();

  v30 = swift_getKeyPath();
  v31 = &v26[*(v19 + 44)];
  v49 = v26;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDF8, &qword_1E49A04C0) + 28);
  v33 = *MEMORY[0x1E697E7D0];
  v34 = sub_1E499732C();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = v30;
  *v17 = sub_1E499762C();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v35 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE00, &qword_1E49A04C8) + 44)];
  v48 = v17;
  v36 = a1;
  sub_1E49087B8(a1, v35);
  v37 = sub_1E499762C();
  v38 = v50;
  *v50 = v37;
  *(v38 + 8) = 0;
  *(v38 + 16) = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE08, &qword_1E49A04D0);
  sub_1E4908E04(v36, v38 + *(v39 + 44));
  v40 = v54;
  sub_1E48C12D0(v26, v54, &qword_1ECF7FDE8, &qword_1E49A0488);
  v41 = v51;
  sub_1E48C12D0(v17, v51, &qword_1ECF7FDE0, &qword_1E49A0480);
  v42 = v52;
  sub_1E48C12D0(v38, v52, &qword_1ECF7FDD8, &qword_1E49A0478);
  v43 = v40;
  v44 = v53;
  sub_1E48C12D0(v43, v53, &qword_1ECF7FDE8, &qword_1E49A0488);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE10, &qword_1E49A04D8);
  sub_1E48C12D0(v41, v44 + *(v45 + 48), &qword_1ECF7FDE0, &qword_1E49A0480);
  sub_1E48C12D0(v42, v44 + *(v45 + 64), &qword_1ECF7FDD8, &qword_1E49A0478);
  sub_1E48C1338(v38, &qword_1ECF7FDD8, &qword_1E49A0478);
  sub_1E48C1338(v48, &qword_1ECF7FDE0, &qword_1E49A0480);
  sub_1E48C1338(v49, &qword_1ECF7FDE8, &qword_1E49A0488);
  sub_1E48C1338(v42, &qword_1ECF7FDD8, &qword_1E49A0478);
  sub_1E48C1338(v41, &qword_1ECF7FDE0, &qword_1E49A0480);
  return sub_1E48C1338(v54, &qword_1ECF7FDE8, &qword_1E49A0488);
}

uint64_t sub_1E49087B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorldClockFace(0);
  v5 = v4 - 8;
  v38 = *(v4 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v40 = sub_1E499732C();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v40, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEC8, &qword_1E49A0670);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  v39 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  sub_1E4997CEC();
  sub_1E499736C();
  *&v44[55] = v49;
  *&v44[71] = v50;
  *&v44[87] = v51;
  *&v44[103] = v52;
  *&v44[7] = v46;
  *&v44[23] = v47;
  v45 = 1;
  *&v44[39] = v48;
  v21 = a1 + *(v5 + 28);
  sub_1E4961D08(v12);
  sub_1E4911B70(a1, &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorldClockFace);
  v22 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v23 = swift_allocObject();
  sub_1E4911190(&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for WorldClockFace);
  *v20 = sub_1E49975AC();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FED0, &qword_1E49A0678);
  sub_1E490AC5C(v12, sub_1E491148C, v23, &v20[*(v24 + 44)]);

  (*(v8 + 8))(v12, v40);
  sub_1E4997CEC();
  sub_1E499722C();
  v40 = v53;
  v37 = v57;
  v38 = v55;
  v36 = v58;
  v43 = 1;
  v42 = v54;
  v41 = v56;
  v25 = v39;
  sub_1E48C12D0(v20, v39, &qword_1ECF7FEC8, &qword_1E49A0670);
  v26 = *&v44[80];
  *(a2 + 73) = *&v44[64];
  *(a2 + 89) = v26;
  *(a2 + 105) = *&v44[96];
  v27 = *&v44[16];
  *(a2 + 9) = *v44;
  *(a2 + 25) = v27;
  v28 = *&v44[48];
  *(a2 + 41) = *&v44[32];
  LOBYTE(v22) = v43;
  LOBYTE(v12) = v42;
  v29 = v41;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 120) = *&v44[111];
  *(a2 + 57) = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FED8, &qword_1E49A0680);
  sub_1E48C12D0(v25, a2 + *(v30 + 48), &qword_1ECF7FEC8, &qword_1E49A0670);
  v31 = a2 + *(v30 + 64);
  *v31 = 0;
  *(v31 + 8) = v22;
  *(v31 + 16) = v40;
  *(v31 + 24) = v12;
  v32 = v37;
  *(v31 + 32) = v38;
  *(v31 + 40) = v29;
  v33 = v36;
  *(v31 + 48) = v32;
  *(v31 + 56) = v33;
  sub_1E48C1338(v20, &qword_1ECF7FEC8, &qword_1E49A0670);
  return sub_1E48C1338(v25, &qword_1ECF7FEC8, &qword_1E49A0670);
}

uint64_t sub_1E4908C44(uint64_t a1)
{
  v2 = type metadata accessor for Dashboard(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  *v6 = sub_1E49971EC();
  v6[8] = v7 & 1;
  v8 = *(v2 + 20);
  *&v6[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);
  swift_storeEnumTagMultiPayload();
  *&v6[*(v2 + 24)] = 0x3FD51EB851EB851FLL;
  sub_1E4961CE4(*a1, *(a1 + 8));
  sub_1E490C1B8(&qword_1ECF7FEF0, type metadata accessor for Dashboard);
  sub_1E499793C();

  return sub_1E4911548(v6, type metadata accessor for Dashboard);
}

uint64_t sub_1E4908E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WorldClockFace(0);
  v5 = v4 - 8;
  v47 = *(v4 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v48 = sub_1E499732C();
  v8 = *(v48 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v48, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE18, &qword_1E49A04E0);
  v14 = *(v13 - 8);
  v49 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v16);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v47 - v20;
  sub_1E4997CEC();
  sub_1E499722C();
  v52 = v59;
  v53 = v57;
  v50 = v62;
  v51 = v61;
  v72 = 1;
  v71 = v58;
  v70 = v60;
  v22 = a1 + *(v5 + 28);
  sub_1E4961D08(v12);
  sub_1E4911B70(a1, &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorldClockFace);
  v23 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v24 = swift_allocObject();
  sub_1E4911190(&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for WorldClockFace);
  *v21 = sub_1E49975AC();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE20, &qword_1E49A04E8);
  sub_1E490B654(v12, sub_1E4911108, v24, &v21[*(v25 + 44)]);

  (*(v8 + 8))(v12, v48);
  v26 = sub_1E4997D2C();
  v27 = *a1;
  v28 = *(a1 + 8);
  v29 = sub_1E4961CE4(*a1, v28);
  swift_getKeyPath();
  *&v63 = v29;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v30 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  v31 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE28, &qword_1E49A0518) + 36)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F478, &unk_1E499BE60);
  sub_1E48C12D0(v29 + v30, v31 + *(v32 + 36), &qword_1ECF809D0, &qword_1E499D6C0);

  *v31 = v26;
  v33 = sub_1E4997D2C();
  v34 = sub_1E4961CE4(v27, v28);
  swift_getKeyPath();
  *&v63 = v34;
  sub_1E4996FCC();

  v35 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v36 = &v21[*(v49 + 44)];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE30, &qword_1E49A0548);
  sub_1E48C12D0(v34 + v35, v36 + *(v37 + 36), &qword_1ECF7F848, &qword_1E499D520);

  *v36 = v33;
  sub_1E4997CEC();
  sub_1E499736C();
  *&v55[55] = v66;
  *&v55[71] = v67;
  *&v55[87] = v68;
  *&v55[103] = v69;
  *&v55[7] = v63;
  *&v55[23] = v64;
  v56 = 1;
  *&v55[39] = v65;
  LOBYTE(v35) = v72;
  LOBYTE(v34) = v71;
  LOBYTE(v36) = v70;
  v38 = v54;
  sub_1E48C12D0(v21, v54, &qword_1ECF7FE18, &qword_1E49A04E0);
  *a2 = 0;
  *(a2 + 8) = v35;
  v39 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v34;
  *(a2 + 32) = v39;
  *(a2 + 40) = v36;
  v40 = v50;
  *(a2 + 48) = v51;
  *(a2 + 56) = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE38, &qword_1E49A0550);
  sub_1E48C12D0(v38, a2 + *(v41 + 48), &qword_1ECF7FE18, &qword_1E49A04E0);
  v42 = a2 + *(v41 + 64);
  v43 = *&v55[80];
  *(v42 + 73) = *&v55[64];
  *(v42 + 89) = v43;
  *(v42 + 105) = *&v55[96];
  v44 = *&v55[16];
  *(v42 + 9) = *v55;
  *(v42 + 25) = v44;
  v45 = *&v55[48];
  *(v42 + 41) = *&v55[32];
  *v42 = 0;
  *(v42 + 8) = 1;
  *(v42 + 120) = *&v55[111];
  *(v42 + 57) = v45;
  sub_1E48C1338(v21, &qword_1ECF7FE18, &qword_1E49A04E0);
  return sub_1E48C1338(v38, &qword_1ECF7FE18, &qword_1E49A04E0);
}

uint64_t sub_1E490943C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE70, &qword_1E49A0578);
  v3 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61, v4);
  v56 = (&v54 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v62 = &v54 - v9;
  v10 = sub_1E4996D8C();
  v63 = *(v10 - 8);
  v64 = v10;
  v11 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  v55 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE78, &qword_1E49A0580);
  v14 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57, v15);
  v59 = &v54 - v16;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE80, &qword_1E49A0588);
  v17 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58, v18);
  v54 = (&v54 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v54 - v23;
  v25 = type metadata accessor for WorldViewModel.Pin(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v60 = a1;
  v32 = *(a1 + 8);
  v33 = sub_1E4961CE4(v31, v32);
  swift_getKeyPath();
  v67 = v33;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v34 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v33 + v34, v24, &qword_1ECF7F848, &qword_1E499D520);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1E48C1338(v24, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    sub_1E4911190(v24, v30, type metadata accessor for WorldViewModel.Pin);
    if ((v30[16] & 1) == 0)
    {
      v49 = sub_1E49975AC();
      v50 = v54;
      *v54 = v49;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEA8, &qword_1E49A05A0);
      sub_1E4909C4C(v60, v50 + *(v51 + 44));
      sub_1E48C12D0(v50, v59, &qword_1ECF7FE80, &qword_1E49A0588);
      swift_storeEnumTagMultiPayload();
      sub_1E48C1B44(&qword_1ECF7FE98, &qword_1ECF7FE80, &qword_1E49A0588);
      sub_1E48C1B44(&qword_1ECF7FEA0, &qword_1ECF7FE70, &qword_1E49A0578);
      v52 = v65;
      sub_1E499772C();
      sub_1E48C1338(v50, &qword_1ECF7FE80, &qword_1E49A0588);
      sub_1E4911548(v30, type metadata accessor for WorldViewModel.Pin);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE88, &qword_1E49A0590);
      return (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    }

    sub_1E4911548(v30, type metadata accessor for WorldViewModel.Pin);
  }

  v35 = sub_1E4961CE4(v31, v32);
  swift_getKeyPath();
  v66 = v35;
  sub_1E4996FCC();

  v36 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__alarmTime;
  swift_beginAccess();
  v37 = v35 + v36;
  v38 = v62;
  sub_1E48C12D0(v37, v62, &qword_1ECF809D0, &qword_1E499D6C0);

  v40 = v63;
  v39 = v64;
  if ((*(v63 + 48))(v38, 1, v64) == 1)
  {
    sub_1E48C1338(v38, &qword_1ECF809D0, &qword_1E499D6C0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE88, &qword_1E49A0590);
    return (*(*(v41 - 8) + 56))(v65, 1, 1, v41);
  }

  else
  {
    v43 = v55;
    (*(v40 + 32))(v55, v38, v39);
    v44 = sub_1E49975AC();
    v45 = v56;
    *v56 = v44;
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE90, &qword_1E49A0598);
    sub_1E490A558(v60, v43, v45 + *(v46 + 44));
    sub_1E48C12D0(v45, v59, &qword_1ECF7FE70, &qword_1E49A0578);
    swift_storeEnumTagMultiPayload();
    sub_1E48C1B44(&qword_1ECF7FE98, &qword_1ECF7FE80, &qword_1E49A0588);
    sub_1E48C1B44(&qword_1ECF7FEA0, &qword_1ECF7FE70, &qword_1E49A0578);
    v47 = v65;
    sub_1E499772C();
    sub_1E48C1338(v45, &qword_1ECF7FE70, &qword_1E49A0578);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE88, &qword_1E49A0590);
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    return (*(v40 + 8))(v43, v39);
  }
}

uint64_t sub_1E4909C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F448, &qword_1E499BDE0);
  v80 = *(v81 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81, v4);
  v79 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v84 = v69 - v8;
  v74 = sub_1E49979EC();
  v9 = *(v74 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v74, v11);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB0, &qword_1E49A05A8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  v83 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v69 - v21);
  MEMORY[0x1EEE9AC00](v23, v24);
  v85 = v69 - v25;
  v78 = sub_1E4997ADC();
  v26 = sub_1E4997A6C();
  v73 = *MEMORY[0x1E69814D8];
  v72 = *(v9 + 104);
  v72(v13);
  v27 = sub_1E4997AAC();
  v71 = *a1;
  v70 = *(a1 + 8);
  v28 = sub_1E4961CE4(v71, v70);
  swift_getKeyPath();
  *&v90[0] = v28;
  v69[1] = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  LODWORD(a1) = *(v28 + 176);

  if (a1)
  {
    v29 = v27;
  }

  else
  {
    v29 = v26;
  }

  v30 = objc_opt_self();
  v31 = *MEMORY[0x1E69DB980];
  v32 = [v30 systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
  v33 = sub_1E499782C();
  KeyPath = swift_getKeyPath();
  v35 = (v22 + *(v15 + 44));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
  v37 = *MEMORY[0x1E69816C8];
  v38 = sub_1E4997B1C();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  *v22 = v78;
  v22[1] = v29;
  v22[2] = KeyPath;
  v22[3] = v33;
  sub_1E48C15C8(v22, v85, &qword_1ECF7FEB0, &qword_1E49A05A8);
  sub_1E4997CEC();
  sub_1E499722C();
  v78 = v95;
  v77 = v97;
  v76 = v99;
  v75 = v100;
  v94 = 1;
  v93 = v96;
  v92 = v98;
  v39 = [v30 systemFontOfSize:26.0 weight:v31];
  v40 = sub_1E4997A6C();
  (v72)(v13, v73, v74);
  v41 = sub_1E4997AAC();
  v42 = v71;
  v43 = v70;
  v44 = sub_1E4961CE4(v71, v70);
  swift_getKeyPath();
  *&v90[0] = v44;
  sub_1E4996FCC();

  LODWORD(v30) = *(v44 + 176);

  if (v30)
  {
    v45 = v41;
  }

  else
  {
    v45 = v40;
  }

  v46 = sub_1E4997EAC();
  v47 = CTFontCreateWithNameAndOptions(v46, 92.0, 0, 0x400uLL);

  type metadata accessor for RollingClockViewModel();
  sub_1E490C1B8(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  v48 = sub_1E49971EC();
  LOBYTE(v90[0]) = v49 & 1;
  v50 = v39;
  v51 = sub_1E48C36F4();

  *&v86 = v48;
  BYTE8(v86) = v90[0];
  *&v87 = v51;
  *(&v87 + 1) = v45;
  v88 = 0uLL;
  LOBYTE(v89[0]) = 0;
  *(&v89[0] + 1) = v50;
  *&v89[1] = v47;
  WORD4(v89[1]) = 896;
  v52 = sub_1E4961CE4(v42, v43);
  swift_getKeyPath();
  *&v90[0] = v52;
  sub_1E4996FCC();

  v53 = *(v52 + 120);

  sub_1E48D2BC4();
  v54 = v84;
  sub_1E499793C();

  v90[2] = v88;
  *v91 = v89[0];
  *&v91[10] = *(v89 + 10);
  v90[0] = v86;
  v90[1] = v87;
  sub_1E48C1180(v90);
  v55 = v83;
  sub_1E48C12D0(v85, v83, &qword_1ECF7FEB0, &qword_1E49A05A8);
  LOBYTE(v52) = v94;
  v56 = v93;
  LODWORD(v74) = v92;
  v57 = v80;
  v58 = *(v80 + 16);
  v59 = v79;
  v60 = v54;
  v61 = v81;
  v58(v79, v60, v81);
  v62 = v55;
  v63 = v82;
  sub_1E48C12D0(v62, v82, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB8, &qword_1E49A0660);
  v65 = v63 + *(v64 + 48);
  *v65 = 0;
  *(v65 + 8) = v52;
  *(v65 + 16) = v78;
  *(v65 + 24) = v56;
  *(v65 + 32) = v77;
  *(v65 + 40) = v74;
  v66 = v75;
  *(v65 + 48) = v76;
  *(v65 + 56) = v66;
  v58((v63 + *(v64 + 64)), v59, v61);
  v67 = *(v57 + 8);
  v67(v84, v61);
  sub_1E48C1338(v85, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v67(v59, v61);
  return sub_1E48C1338(v83, &qword_1ECF7FEB0, &qword_1E49A05A8);
}

uint64_t sub_1E490A558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v84 = a3;
  v4 = sub_1E4996A4C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v82 = v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1E49979EC();
  v8 = *(v80 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v80, v10);
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB0, &qword_1E49A05A8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v85 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (v70 - v20);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v70 - v24;
  v71 = v70 - v24;
  v75 = sub_1E4997ADC();
  v26 = sub_1E4997A6C();
  v79 = *MEMORY[0x1E69814D8];
  v78 = *(v8 + 104);
  v78(v12);
  v27 = sub_1E4997AAC();
  v77 = *a1;
  v76 = *(a1 + 8);
  v28 = sub_1E4961CE4(v77, v76);
  swift_getKeyPath();
  v90 = v28;
  v70[1] = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v29 = *(v28 + 176);

  if (!v29)
  {
    v27 = v26;
  }

  v81 = objc_opt_self();
  v30 = *MEMORY[0x1E69DB980];
  v31 = [v81 systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
  v32 = sub_1E499782C();
  KeyPath = swift_getKeyPath();
  v34 = (v21 + *(v14 + 44));
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
  v36 = *MEMORY[0x1E69816C8];
  v37 = sub_1E4997B1C();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  *v21 = v75;
  v21[1] = v27;
  v21[2] = KeyPath;
  v21[3] = v32;
  sub_1E48C15C8(v21, v25, &qword_1ECF7FEB0, &qword_1E49A05A8);
  sub_1E4997CEC();
  sub_1E499722C();
  v75 = v90;
  v74 = v92;
  v73 = v94;
  v72 = v95;
  v89 = 1;
  v88 = v91;
  v87 = v93;
  sub_1E48F2DA8(v82);
  v38 = sub_1E49978CC();
  v40 = v39;
  v42 = v41;
  v43 = sub_1E4997A6C();
  (v78)(v12, v79, v80);
  v44 = sub_1E4997AAC();
  v45 = sub_1E4961CE4(v77, v76);
  swift_getKeyPath();
  v86 = v45;
  sub_1E4996FCC();

  LODWORD(KeyPath) = *(v45 + 176);

  if (KeyPath)
  {
    v43 = v44;
  }

  v86 = v43;
  v46 = sub_1E499786C();
  v48 = v47;
  v50 = v49;
  sub_1E48C1564(v38, v40, v42 & 1);

  v51 = [v81 systemFontOfSize:26.0 weight:v30];
  sub_1E499782C();
  v52 = sub_1E499788C();
  v54 = v53;
  LODWORD(v83) = v55;
  v57 = v56;

  sub_1E48C1564(v46, v48, v50 & 1);

  v58 = v71;
  v59 = v85;
  sub_1E48C12D0(v71, v85, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v60 = v89;
  LOBYTE(v46) = v88;
  v61 = v87;
  v62 = v59;
  v63 = v84;
  sub_1E48C12D0(v62, v84, &qword_1ECF7FEB0, &qword_1E49A05A8);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEC0, &qword_1E49A0668);
  v65 = v63 + *(v64 + 48);
  *v65 = 0;
  *(v65 + 8) = v60;
  *(v65 + 16) = v75;
  *(v65 + 24) = v46;
  *(v65 + 32) = v74;
  *(v65 + 40) = v61;
  v66 = v72;
  *(v65 + 48) = v73;
  *(v65 + 56) = v66;
  v67 = v63 + *(v64 + 64);
  *v67 = v52;
  *(v67 + 8) = v54;
  LOBYTE(v66) = v83;
  v68 = v83 & 1;
  *(v67 + 16) = v83 & 1;
  *(v67 + 24) = v57;
  sub_1E48C14F4(v52, v54, v66 & 1);

  sub_1E48C1338(v58, &qword_1ECF7FEB0, &qword_1E49A05A8);
  sub_1E48C1564(v52, v54, v68);

  return sub_1E48C1338(v85, &qword_1ECF7FEB0, &qword_1E49A05A8);
}

uint64_t sub_1E490AC5C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v51 = a2;
  v53 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEE0, &qword_1E49A0688);
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v57 = &v43 - v11;
  v12 = sub_1E499732C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v13[13];
  v47 = *MEMORY[0x1E697E7D0];
  v45 = v19;
  v46 = v13 + 13;
  v19(v18, v16);
  v52 = a1;
  LOBYTE(a1) = sub_1E499731C();
  v20 = v13[1];
  v48 = v13 + 1;
  v49 = v12;
  v44 = v20;
  v20(v18, v12);
  sub_1E4997CEC();
  if (a1)
  {
    sub_1E499722C();
    LOBYTE(v59) = 1;
    LOBYTE(v83) = BYTE8(v76);
    v70 = BYTE8(v77);
    *&v73[0] = 0;
    BYTE8(v73[0]) = 1;
    *&v73[1] = v76;
    BYTE8(v73[1]) = BYTE8(v76);
    *&v73[2] = v77;
    BYTE8(v73[2]) = BYTE8(v77);
    v73[3] = v78;
    sub_1E48B3E7C(v73);
  }

  else
  {
    sub_1E499736C();
    LOBYTE(v59) = 1;
    *&v75[55] = v79;
    *&v75[71] = v80;
    *&v75[87] = v81;
    *&v75[103] = v82;
    *&v75[7] = v76;
    *&v75[23] = v77;
    *&v75[39] = v78;
    *&v73[0] = 0;
    BYTE8(v73[0]) = 1;
    *(&v73[3] + 9) = *&v75[48];
    *(&v73[2] + 9) = *&v75[32];
    *(&v73[1] + 9) = *&v75[16];
    *(v73 + 9) = *v75;
    *(&v73[7] + 1) = *(&v82 + 1);
    *(&v73[6] + 9) = *&v75[96];
    *(&v73[5] + 9) = *&v75[80];
    *(&v73[4] + 9) = *&v75[64];
    sub_1E48B3E70(v73);
  }

  v71[6] = v73[6];
  v71[7] = v73[7];
  v72 = v74;
  v71[2] = v73[2];
  v71[3] = v73[3];
  v71[4] = v73[4];
  v71[5] = v73[5];
  v71[0] = v73[0];
  v71[1] = v73[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  v21 = sub_1E499772C();
  v51(v21);
  v22 = v49;
  v45(v18, v47, v49);
  v23 = sub_1E499731C();
  v44(v18, v22);
  sub_1E4997CEC();
  if (v23)
  {
    sub_1E499736C();
    v70 = 1;
    *&v58[55] = v86;
    *&v58[71] = v87;
    *&v58[87] = v88;
    *&v58[103] = v89;
    *&v58[7] = v83;
    *&v58[23] = v84;
    *&v58[39] = v85;
    *&v71[0] = 0;
    BYTE8(v71[0]) = 1;
    *(&v71[3] + 9) = *&v58[48];
    *(&v71[2] + 9) = *&v58[32];
    *(&v71[1] + 9) = *&v58[16];
    *(v71 + 9) = *v58;
    *(&v71[7] + 1) = *(&v89 + 1);
    *(&v71[6] + 9) = *&v58[96];
    *(&v71[5] + 9) = *&v58[80];
    *(&v71[4] + 9) = *&v58[64];
    sub_1E48B3E7C(v71);
  }

  else
  {
    sub_1E499722C();
    v70 = 1;
    v69 = BYTE8(v83);
    v68 = BYTE8(v84);
    *&v71[0] = 0;
    BYTE8(v71[0]) = 1;
    *&v71[1] = v83;
    BYTE8(v71[1]) = BYTE8(v83);
    *&v71[2] = v84;
    BYTE8(v71[2]) = BYTE8(v84);
    v71[3] = v85;
    sub_1E48B3E70(v71);
  }

  v64 = v71[5];
  v65 = v71[6];
  v66 = v71[7];
  v60 = v71[1];
  v61 = v71[2];
  v62 = v71[3];
  v63 = v71[4];
  v67 = v72;
  v59 = v71[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E499772C();
  v64 = v95;
  v65 = v96;
  v66 = v97;
  v60 = v91;
  v61 = v92;
  v62 = v93;
  v63 = v94;
  v67 = v98;
  v59 = v90;
  v25 = v54;
  v24 = v55;
  v26 = *(v55 + 16);
  v28 = v56;
  v27 = v57;
  v26(v54, v57, v56);
  v71[6] = v73[6];
  v71[7] = v73[7];
  v71[2] = v73[2];
  v71[3] = v73[3];
  v71[4] = v73[4];
  v71[5] = v73[5];
  v71[0] = v73[0];
  v71[1] = v73[1];
  v29 = v64;
  v30 = v66;
  v31 = v53;
  *(v53 + 96) = v65;
  *(v31 + 112) = v30;
  v32 = v60;
  v33 = v62;
  v34 = v63;
  *(v31 + 32) = v61;
  *(v31 + 48) = v33;
  v72 = v74;
  *(v31 + 128) = v67;
  *(v31 + 64) = v34;
  *(v31 + 80) = v29;
  *v31 = v59;
  *(v31 + 16) = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEE8, &qword_1E49A0690);
  v26((v31 + *(v35 + 48)), v25, v28);
  v36 = v31 + *(v35 + 64);
  v37 = v71[7];
  *(v36 + 96) = v71[6];
  *(v36 + 112) = v37;
  *(v36 + 128) = v72;
  v38 = v71[3];
  *(v36 + 32) = v71[2];
  *(v36 + 48) = v38;
  v39 = v71[5];
  *(v36 + 64) = v71[4];
  *(v36 + 80) = v39;
  v40 = v71[1];
  *v36 = v71[0];
  *(v36 + 16) = v40;
  v41 = *(v24 + 8);
  v41(v27, v28);
  return (v41)(v25, v28);
}

uint64_t sub_1E490B654@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v45 = a2;
  v48 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE40, &qword_1E49A0558);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v49 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v39 - v11;
  v12 = sub_1E499732C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v13[13];
  v42 = *MEMORY[0x1E697E7D0];
  v40 = v19;
  v41 = v13 + 13;
  v19(v18, v16);
  v46 = a1;
  LOBYTE(a1) = sub_1E499731C();
  v20 = v13[1];
  v43 = v12;
  v39 = v20;
  v20(v18, v12);
  sub_1E4997CEC();
  if (a1)
  {
    sub_1E499722C();
    LOBYTE(v51) = 1;
    LOBYTE(v75) = BYTE8(v68);
    v62 = BYTE8(v69);
    *&v65[0] = 0;
    BYTE8(v65[0]) = 1;
    *&v65[1] = v68;
    BYTE8(v65[1]) = BYTE8(v68);
    *&v65[2] = v69;
    BYTE8(v65[2]) = BYTE8(v69);
    v65[3] = v70;
    sub_1E48B3E7C(v65);
  }

  else
  {
    sub_1E499736C();
    LOBYTE(v51) = 1;
    *&v67[55] = v71;
    *&v67[71] = v72;
    *&v67[87] = v73;
    *&v67[103] = v74;
    *&v67[7] = v68;
    *&v67[23] = v69;
    *&v67[39] = v70;
    *&v65[0] = 0;
    BYTE8(v65[0]) = 1;
    *(&v65[3] + 9) = *&v67[48];
    *(&v65[2] + 9) = *&v67[32];
    *(&v65[1] + 9) = *&v67[16];
    *(v65 + 9) = *v67;
    *(&v65[7] + 1) = *(&v74 + 1);
    *(&v65[6] + 9) = *&v67[96];
    *(&v65[5] + 9) = *&v67[80];
    *(&v65[4] + 9) = *&v67[64];
    sub_1E48B3E70(v65);
  }

  v63[6] = v65[6];
  v63[7] = v65[7];
  v64 = v66;
  v63[2] = v65[2];
  v63[3] = v65[3];
  v63[4] = v65[4];
  v63[5] = v65[5];
  v63[0] = v65[0];
  v63[1] = v65[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  v21 = sub_1E499772C();
  v22 = v47;
  v45(v21);
  v23 = v43;
  v40(v18, v42, v43);
  v24 = sub_1E499731C();
  v39(v18, v23);
  sub_1E4997CEC();
  if (v24)
  {
    sub_1E499736C();
    v62 = 1;
    *&v50[55] = v78;
    *&v50[71] = v79;
    *&v50[87] = v80;
    *&v50[103] = v81;
    *&v50[7] = v75;
    *&v50[23] = v76;
    *&v50[39] = v77;
    *&v63[0] = 0;
    BYTE8(v63[0]) = 1;
    *(&v63[3] + 9) = *&v50[48];
    *(&v63[2] + 9) = *&v50[32];
    *(&v63[1] + 9) = *&v50[16];
    *(v63 + 9) = *v50;
    *(&v63[7] + 1) = *(&v81 + 1);
    *(&v63[6] + 9) = *&v50[96];
    *(&v63[5] + 9) = *&v50[80];
    *(&v63[4] + 9) = *&v50[64];
    sub_1E48B3E7C(v63);
  }

  else
  {
    sub_1E499722C();
    v62 = 1;
    v61 = BYTE8(v75);
    v60 = BYTE8(v76);
    *&v63[0] = 0;
    BYTE8(v63[0]) = 1;
    *&v63[1] = v75;
    BYTE8(v63[1]) = BYTE8(v75);
    *&v63[2] = v76;
    BYTE8(v63[2]) = BYTE8(v76);
    v63[3] = v77;
    sub_1E48B3E70(v63);
  }

  v56 = v63[5];
  v57 = v63[6];
  v58 = v63[7];
  v52 = v63[1];
  v53 = v63[2];
  v54 = v63[3];
  v55 = v63[4];
  v59 = v64;
  v51 = v63[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE50, &qword_1E49A0568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E4911120(&qword_1ECF7FE60, &qword_1ECF7FE50, &qword_1E49A0568);
  sub_1E4911120(&qword_1ECF7FE58, &qword_1ECF7FE48, &qword_1E49A0560);
  sub_1E499772C();
  v56 = v87;
  v57 = v88;
  v58 = v89;
  v52 = v83;
  v53 = v84;
  v54 = v85;
  v55 = v86;
  v59 = v90;
  v51 = v82;
  v25 = v49;
  sub_1E48C12D0(v22, v49, &qword_1ECF7FE40, &qword_1E49A0558);
  v63[6] = v65[6];
  v63[7] = v65[7];
  v63[2] = v65[2];
  v63[3] = v65[3];
  v63[4] = v65[4];
  v63[5] = v65[5];
  v63[0] = v65[0];
  v63[1] = v65[1];
  v26 = v56;
  v27 = v58;
  v28 = v48;
  *(v48 + 96) = v57;
  *(v28 + 112) = v27;
  v29 = v52;
  v30 = v54;
  v31 = v55;
  *(v28 + 32) = v53;
  *(v28 + 48) = v30;
  v64 = v66;
  *(v28 + 128) = v59;
  *(v28 + 64) = v31;
  *(v28 + 80) = v26;
  *v28 = v51;
  *(v28 + 16) = v29;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE68, &qword_1E49A0570);
  sub_1E48C12D0(v25, v28 + *(v32 + 48), &qword_1ECF7FE40, &qword_1E49A0558);
  v33 = v28 + *(v32 + 64);
  v34 = v63[7];
  *(v33 + 96) = v63[6];
  *(v33 + 112) = v34;
  *(v33 + 128) = v64;
  v35 = v63[3];
  *(v33 + 32) = v63[2];
  *(v33 + 48) = v35;
  v36 = v63[5];
  *(v33 + 64) = v63[4];
  *(v33 + 80) = v36;
  v37 = v63[1];
  *v33 = v63[0];
  *(v33 + 16) = v37;
  sub_1E48C1338(v22, &qword_1ECF7FE40, &qword_1E49A0558);
  return sub_1E48C1338(v25, &qword_1ECF7FE40, &qword_1E49A0558);
}

uint64_t sub_1E490C00C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  *a2 = sub_1E49971EC();
  *(a2 + 8) = v4 & 1;
  v5 = *(a1 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC0, &qword_1E49A0460);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E490C0D8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1E4997CEC();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDC8, &qword_1E49A0468);
  sub_1E4908308(v1, a1 + *(v4 + 44));
  v5 = sub_1E499734C();
  v6 = sub_1E49977CC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FDD0, &qword_1E49A0470);
  v8 = a1 + *(result + 36);
  *v8 = v5;
  v8[8] = v6;
  return result;
}

uint64_t sub_1E490C160(uint64_t a1)
{
  result = sub_1E490C1B8(&qword_1ECF7F300, type metadata accessor for WorldClockFace);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E490C1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E490C200@<X0>(uint64_t a1@<X3>, char a2@<W4>, uint64_t *a3@<X8>)
{
  *a3 = sub_1E4997CEC();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF20, &qword_1E49A0818);
  v8 = a2 & 1;
  sub_1E490C488(a1, a2 & 1, a3 + *(v7 + 44));
  v9 = sub_1E4961CE4(a1, a2 & 1);
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v10 = *(v9 + 160);

  v11 = sub_1E4961CE4(a1, a2 & 1);
  swift_getKeyPath();
  *&v20 = v11;
  sub_1E4996FCC();

  v12 = *(v11 + 168);

  sub_1E4997CEC();
  sub_1E499722C();
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF28, &qword_1E49A0848) + 36));
  *v13 = v20;
  v13[1] = v21;
  v13[2] = v22;
  v14 = sub_1E4961CE4(a1, v8);
  swift_getKeyPath();
  sub_1E4996FCC();

  v15 = *(v14 + 144);

  v16 = sub_1E4961CE4(a1, v8);
  swift_getKeyPath();
  sub_1E4996FCC();

  v17 = *(v16 + 152);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF30, &qword_1E49A0850);
  v19 = (a3 + *(result + 36));
  *v19 = v15;
  v19[1] = v17;
  return result;
}

uint64_t sub_1E490C488@<X0>(uint64_t a1@<X2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v156 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF38, &qword_1E49A0858);
  v165 = *(v5 - 8);
  v6 = v165[8];
  MEMORY[0x1EEE9AC00](v5, v7);
  v157 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v164 = &v138 - v11;
  v161 = sub_1E49979EC();
  v166 = *(v161 - 8);
  v12 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v161, v13);
  v160 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1E4997AEC();
  v155 = *(v159 - 8);
  v15 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v159, v16);
  v154 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF40, &qword_1E49A0860);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v22 = &v138 - v21;
  v23 = sub_1E4961CE4(a1, a2 & 1);
  swift_getKeyPath();
  *&v210 = v23;
  v24 = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v25 = *(v23 + 136);

  v162 = a2;
  v163 = a1;
  v26 = sub_1E4961CE4(a1, a2 & 1);
  swift_getKeyPath();
  v167 = v24;
  v158 = v5;
  if (v25 == 1)
  {
    *&v210 = v26;
    sub_1E4996FCC();

    v27 = *(v26 + 200);
    v28 = *(v26 + 208);

    if (qword_1ECF7EB48 != -1)
    {
      swift_once();
    }

    v29 = qword_1ECF819A8;
    sub_1E4997B3C();
    v30 = *MEMORY[0x1E6981698];
    v31 = sub_1E4997B0C();
    v32 = *(v31 - 8);
    (*(v32 + 104))(v22, v30, v31);
    (*(v32 + 56))(v22, 0, 1, v31);
    sub_1E4997AFC();

    sub_1E48C1338(v22, &qword_1ECF7FF40, &qword_1E49A0860);
    v34 = v154;
    v33 = v155;
    v35 = v159;
    (*(v155 + 104))(v154, *MEMORY[0x1E6981630], v159);
    v36 = sub_1E4997B2C();

    (*(v33 + 8))(v34, v35);
    v199 = v36;
    LOWORD(v200) = 1;
    BYTE2(v200) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF48, &qword_1E49A08B8);
    sub_1E49119BC();
    sub_1E499772C();
    v154 = *(&v210 + 1);
    v155 = v210;
    v152 = BYTE2(v211);
    v153 = v211;
  }

  else
  {
    *&v210 = v26;
    sub_1E4996FCC();

    v37 = *(v26 + 200);
    v38 = *(v26 + 208);

    if (qword_1ECF7EB48 != -1)
    {
      swift_once();
    }

    v39 = qword_1ECF819A8;
    sub_1E4997B3C();
    v40 = *MEMORY[0x1E6981698];
    v41 = sub_1E4997B0C();
    v42 = *(v41 - 8);
    (*(v42 + 104))(v22, v40, v41);
    (*(v42 + 56))(v22, 0, 1, v41);
    v43 = sub_1E4997AFC();

    sub_1E48C1338(v22, &qword_1ECF7FF40, &qword_1E49A0860);
    v199 = v43;
    LOWORD(v200) = 0;
    BYTE2(v200) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF48, &qword_1E49A08B8);
    sub_1E49119BC();
    sub_1E499772C();
    v154 = *(&v210 + 1);
    v155 = v210;
    v152 = BYTE2(v211);
    v153 = v211;
  }

  v44 = v166;
  v45 = v160;
  sub_1E4997A6C();
  v46 = sub_1E4997A8C();

  v47 = *MEMORY[0x1E69814D8];
  v48 = *(v44 + 104);
  v166 = v44 + 104;
  v148 = v47;
  v147 = v48;
  (v48)(v45);
  v49 = sub_1E4997AAC();
  v50 = v162;
  v51 = v163;
  v52 = sub_1E4961CE4(v163, v162 & 1);
  swift_getKeyPath();
  *&v210 = v52;
  sub_1E4996FCC();

  v53 = *(v52 + 176);

  v149 = v53;
  v150 = v49;
  v151 = v46;

  v54 = sub_1E4961CE4(v51, v50 & 1);
  swift_getKeyPath();
  *&v210 = v54;
  sub_1E4996FCC();

  v56 = *(v54 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath);
  v55 = *(v54 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 8);
  v159 = *(v54 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 16);
  v57 = *(v54 + OBJC_IVAR____TtC11ClockPoster14WorldViewModel__solarTerminatorPath + 24);

  if (v55)
  {
    v58 = sub_1E4961CE4(v51, v50 & 1);
    swift_getKeyPath();
    *&v210 = v58;
    v140 = v57;
    sub_1E4996FCC();

    v59 = *(v58 + 296);
    v60 = *(v58 + 312);
    v61 = *(v58 + 264);
    v231[6] = *(v58 + 280);
    v231[7] = v59;
    v231[8] = v60;
    v232 = *(v58 + 328);
    v62 = *(v58 + 232);
    v231[2] = *(v58 + 216);
    v231[3] = v62;
    v231[4] = *(v58 + 248);
    v231[5] = v61;
    v63 = *(v58 + 200);
    v231[0] = *(v58 + 184);
    v231[1] = v63;
    sub_1E48CCDD4(v231, &v210);

    v64 = sub_1E4961CE4(v51, v50 & 1);
    swift_getKeyPath();
    *&v210 = v64;
    sub_1E4996FCC();

    v65 = *(v64 + 160);
    v66 = *(v64 + 168);

    v139 = v56;
    v67 = v55;
    v68 = sub_1E48DAA8C(v56 & 1, v55, v159, v57 & 1, v231, 1, v65, v66);
    sub_1E48EB6DC(v231);
    v69 = [v68 CGPath];

    sub_1E499783C();
    v145 = v222;
    v146 = v221;
    v143 = v224;
    v144 = v223;
    v142 = v225;
    sub_1E4997A3C();
    v70 = sub_1E4997A8C();

    sub_1E4997A3C();
    v71 = sub_1E4997A8C();

    v72 = v51;
    v73 = sub_1E4961CE4(v51, v50 & 1);
    swift_getKeyPath();
    *&v210 = v73;
    sub_1E4996FCC();

    LODWORD(v68) = *(v73 + 176);

    if (v68)
    {
      v74 = v71;
    }

    else
    {
      v74 = v70;
    }

    v141 = v74;

    v75 = sub_1E4961CE4(v51, v50 & 1);
    swift_getKeyPath();
    *&v210 = v75;
    sub_1E4996FCC();

    v76 = *(v75 + 296);
    v77 = *(v75 + 312);
    v78 = *(v75 + 264);
    v229[6] = *(v75 + 280);
    v229[7] = v76;
    v229[8] = v77;
    v230 = *(v75 + 328);
    v79 = *(v75 + 232);
    v229[2] = *(v75 + 216);
    v229[3] = v79;
    v229[4] = *(v75 + 248);
    v229[5] = v78;
    v80 = *(v75 + 200);
    v229[0] = *(v75 + 184);
    v229[1] = v80;
    sub_1E48CCDD4(v229, &v210);

    v81 = sub_1E4961CE4(v51, v50 & 1);
    swift_getKeyPath();
    *&v210 = v81;
    sub_1E4996FCC();

    v82 = *(v81 + 160);
    v83 = *(v81 + 168);

    v84 = sub_1E48DAA8C(v139 & 1, v67, v159, v140 & 1, v229, 0, v82, v83);

    sub_1E48EB6DC(v229);
    v85 = [v84 CGPath];

    sub_1E499783C();
    v86 = MEMORY[0x1E69E7CC0];
    sub_1E49971FC();
    v87 = v160;
    v88 = v161;
    v89 = v148;
    v90 = v147;
    v147(v160, v148, v161);
    v91 = sub_1E4997AAC();
    v90(v87, v89, v88);
    v92 = sub_1E4997AAC();
    v93 = sub_1E4961CE4(v72, v50 & 1);
    swift_getKeyPath();
    *&v210 = v93;
    sub_1E4996FCC();

    LODWORD(v89) = *(v93 + 176);

    if (v89)
    {
      v94 = v92;
    }

    else
    {
      v94 = v91;
    }

    v95 = sub_1E48C4318();
    v96 = *(v95 + 16);
    if (v96)
    {
      *&v210 = v86;
      sub_1E4906F78(0, v96, 0);
      v97 = v210;
      v98 = (v95 + 40);
      do
      {
        v99 = *(v98 - 1);
        v100 = *v98;

        v101 = sub_1E4997CAC();
        *&v210 = v97;
        v104 = *(v97 + 16);
        v103 = *(v97 + 24);
        if (v104 >= v103 >> 1)
        {
          v166 = v101;
          v106 = v102;
          sub_1E4906F78((v103 > 1), v104 + 1, 1);
          v102 = v106;
          v101 = v166;
          v97 = v210;
        }

        *(v97 + 16) = v104 + 1;
        v105 = v97 + 16 * v104;
        *(v105 + 32) = v101;
        *(v105 + 40) = v102;
        v98 += 2;
        --v96;
      }

      while (v96);
    }

    sub_1E4997D8C();
    sub_1E4997D9C();
    sub_1E4997CBC();
    sub_1E49972FC();
    v168[2] = v174;
    v168[3] = v175;
    v168[4] = v176;
    v168[0] = v172;
    v168[1] = v173;
    *&v169 = v94;
    *(&v169 + 1) = v226;
    v170 = v227;
    v171 = v228;
    v179 = v174;
    v180 = v175;
    v177 = v172;
    v178 = v173;
    v181 = v176;
    v182 = v169;
    v183 = v227;
    v184 = v228;
    v191 = v175;
    v192 = v176;
    v189 = v173;
    v190 = v174;
    v188 = v172;
    *&v193 = v94;
    *(&v193 + 1) = v226;
    v194 = v227;
    v195 = v228;
    v109 = v145;
    v108 = v146;
    v111 = v143;
    v110 = v144;
    v112 = v142;
    sub_1E4911ABC(v146, v145, v144, v143, v142);
    v113 = v141;

    sub_1E48C12D0(v168, &v210, &qword_1ECF7FF70, &qword_1E49A08F8);
    sub_1E48C1338(&v188, &qword_1ECF7FF70, &qword_1E49A08F8);
    sub_1E4911AD4(v108, v109, v110, v111, v112);

    *&v199 = v108;
    *(&v199 + 1) = v109;
    *&v200 = v110;
    *(&v200 + 1) = v111;
    LOBYTE(v201) = v112;
    *(&v201 + 1) = v113;
    v206 = v181;
    v207 = v182;
    v208 = v183;
    v209 = v184;
    v202 = v177;
    v203 = v178;
    v204 = v179;
    v205 = v180;
    GEOLocationCoordinate2DMake(*&v179, *&v180);
    v218 = v207;
    v219 = v208;
    v220 = v209;
    v215 = v204;
    v217 = v206;
    v216 = v205;
    v210 = v199;
    v211 = v200;
    v213 = v202;
    v214 = v203;
    v212 = v201;
    v51 = v163;
    v107 = v158;
    v50 = v162;
  }

  else
  {
    sub_1E4911A40(&v210);
    v107 = v158;
  }

  v114 = v151;
  if (v149)
  {
    v114 = v150;
  }

  v166 = v114;
  v115 = sub_1E4961CE4(v51, v50 & 1);
  swift_getKeyPath();
  *&v199 = v115;
  sub_1E4996FCC();

  v116 = *(v115 + 160);
  v117 = *(v115 + 168);

  type metadata accessor for WorldViewModel(0);
  *&v199 = sub_1E49971EC();
  BYTE8(v199) = v118 & 1;
  *&v200 = v116;
  *(&v200 + 1) = v117;
  sub_1E4961CE4(v51, v50 & 1);
  sub_1E4911A60();
  v119 = v164;
  sub_1E499793C();

  v185 = v218;
  v186 = v219;
  v187 = v220;
  v181 = v214;
  v182 = v215;
  v183 = v216;
  v184 = v217;
  v177 = v210;
  v178 = v211;
  v179 = v212;
  v180 = v213;
  v167 = v165[2];
  v120 = v157;
  v167(v157, v119, v107);
  v121 = v186;
  v196 = v185;
  v197 = v186;
  v122 = v187;
  v198 = v187;
  v123 = v181;
  v124 = v182;
  v192 = v181;
  v193 = v182;
  v126 = v183;
  v125 = v184;
  v194 = v183;
  v195 = v184;
  v127 = v177;
  v128 = v178;
  v188 = v177;
  v189 = v178;
  v130 = v179;
  v129 = v180;
  v190 = v179;
  v191 = v180;
  v132 = v155;
  v131 = v156;
  *(v156 + 160) = v185;
  *(v131 + 176) = v121;
  *(v131 + 192) = v122;
  *(v131 + 96) = v123;
  *(v131 + 112) = v124;
  *(v131 + 128) = v126;
  *(v131 + 144) = v125;
  *(v131 + 32) = v127;
  *(v131 + 48) = v128;
  v133 = v154;
  *v131 = v132;
  *(v131 + 8) = v133;
  v134 = v152;
  *(v131 + 16) = v153;
  *(v131 + 18) = v134;
  *(v131 + 24) = v166;
  *(v131 + 64) = v130;
  *(v131 + 80) = v129;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF60, &qword_1E49A08E8);
  v167((v131 + *(v135 + 64)), v120, v107);
  j__swift_retain();

  sub_1E48C12D0(&v188, &v199, &qword_1ECF7FF68, &qword_1E49A08F0);
  v136 = v165[1];
  v136(v164, v107);
  v136(v120, v107);
  v207 = v185;
  v208 = v186;
  v209 = v187;
  v203 = v181;
  v204 = v182;
  v205 = v183;
  v206 = v184;
  v199 = v177;
  v200 = v178;
  v201 = v179;
  v202 = v180;
  sub_1E48C1338(&v199, &qword_1ECF7FF68, &qword_1E49A08F0);
  j__swift_release();
}

uint64_t sub_1E490D6D0@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  *a1 = sub_1E4911990;
  a1[1] = v7;
  sub_1E49119B0(v3, v4);
}

__n128 sub_1E490D768@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v26 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80038, &qword_1E49A0AB8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = (&v25 - v12);
  *v13 = sub_1E4997CEC();
  v13[1] = v14;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80040, &qword_1E49A0AC0) + 44);
  v16 = a2 & 1;
  v17 = sub_1E4961CE4(a1, a2 & 1);
  swift_getKeyPath();
  *&v27 = v17;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  swift_beginAccess();
  v18 = *(v17 + 336);

  *&v27 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v16;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80048, &qword_1E49A0AF0);
  type metadata accessor for CLLocationCoordinate2D(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80050, &qword_1E49A0AF8);
  sub_1E48C1B44(&qword_1ECF80058, &qword_1ECF80048, &qword_1E49A0AF0);
  sub_1E4911AEC(&qword_1ECF80060, &qword_1ECF80050, &qword_1E49A0AF8, sub_1E4911D00);
  sub_1E490C1B8(&qword_1ECF80070, type metadata accessor for WorldViewModel.Pin);
  sub_1E4997C9C();
  sub_1E4997CEC();
  sub_1E499736C();
  v20 = v26;
  sub_1E48C15C8(v13, v26, &qword_1ECF80038, &qword_1E49A0AB8);
  v21 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80078, &qword_1E49A0B00) + 36);
  v22 = v32;
  *(v21 + 64) = v31;
  *(v21 + 80) = v22;
  *(v21 + 96) = v33;
  v23 = v28;
  *v21 = v27;
  *(v21 + 16) = v23;
  result = v30;
  *(v21 + 32) = v29;
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_1E490DADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = (a1 + *(type metadata accessor for WorldViewModel.Pin(0) + 32));
  if (*(a1 + 17))
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a1 + 16) | 0x80;
  }

  v10 = v8[1] - a4 * 0.5;
  v11 = *v8 - a3 * 0.5;
  type metadata accessor for WorldViewModel(0);
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  result = sub_1E49971EC();
  *a2 = result;
  *(a2 + 8) = v13 & 1;
  *(a2 + 9) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  return result;
}

void *sub_1E490DBD0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 8;
  v7 = sub_1E4997CEC();
  v9 = v8;
  sub_1E490DCDC(a1, a2 & 0xFFFFFF01, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  sub_1E48C12D0(__dst, v12, &qword_1ECF80090, &qword_1E49A0BD0);
  sub_1E48C1338(v14, &qword_1ECF80090, &qword_1E49A0BD0);
  memcpy(__src, __dst, sizeof(__src));
  v10 = sub_1E4997CFC();
  *a3 = v7;
  *(a3 + 8) = v9;
  result = memcpy((a3 + 16), __src, 0x118uLL);
  *(a3 + 296) = v10;
  *(a3 + 304) = v6;
  return result;
}

uint64_t sub_1E490DCDC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v34 = a3;
  v5 = sub_1E49979EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1E4997A6C();
  sub_1E4997CEC();
  sub_1E499722C();
  *&v81[6] = v85;
  *&v81[22] = v86;
  *&v81[38] = v87;
  v33 = sub_1E4997CEC();
  v40 = v11;
  sub_1E490E3C0(a1, a2 & 0xFFFFFF01, &v61);
  v39 = v61;
  v37 = HIBYTE(v62);
  v38 = v62;
  v61 = sub_1E4997A3C();
  sub_1E4911ED8();
  v36 = sub_1E4997ACC();
  v12 = qword_1E49A0360[(a2 & 0x100) == 0];
  v13 = sub_1E4997A6C();
  (*(v6 + 104))(v10, *MEMORY[0x1E69814D8], v5);
  v14 = sub_1E4997AAC();
  v15 = sub_1E4961CE4(a1, a2 & 1);
  v30 = a2 & 0x100;
  v16 = v15;
  swift_getKeyPath();
  *&v31 = a1;
  v61 = v16;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  LODWORD(v5) = *(v16 + 176);

  if (v5)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  v32 = v17;

  sub_1E4997CEC();
  sub_1E499722C();
  *&v80[6] = v88;
  *&v80[22] = v89;
  *&v80[38] = v90;
  v18 = [objc_opt_self() systemOrangeColor];
  v19 = sub_1E49979DC();
  v20 = sub_1E48D973C(v19, (v30 >> 7) ^ 2);
  v22 = v21;
  v23 = sub_1E4961CE4(v31, a2 & 1);
  swift_getKeyPath();
  v61 = v23;
  sub_1E4996FCC();

  v24 = *(v23 + 176);

  if (v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = v20;
  }

  sub_1E4997CEC();
  sub_1E499722C();
  *&v79[6] = v91;
  *&v79[22] = v92;
  *&v79[38] = v93;
  *&v42[0] = v35;
  WORD4(v42[0]) = 256;
  *(v42 + 10) = *v81;
  *(&v42[1] + 10) = *&v81[16];
  *(&v42[2] + 10) = *&v81[32];
  *(&v42[3] + 1) = *&v81[46];
  v31 = xmmword_1E49A0370;
  v42[4] = xmmword_1E49A0370;
  LOBYTE(v43) = 1;
  DWORD1(v43) = *&v84[3];
  *(&v43 + 1) = *v84;
  *(&v43 + 1) = v39;
  LOBYTE(v44) = v38;
  BYTE1(v44) = v37;
  *(&v44 + 2) = v82;
  WORD3(v44) = v83;
  v26 = v33;
  *(&v44 + 1) = v33;
  *&v45 = v40;
  *(&v45 + 1) = v36;
  v46 = 0x4022000000000000;
  v48 = 0;
  v47 = 0;
  *&v41[144] = 0;
  *&v41[32] = v42[2];
  *&v41[48] = v42[3];
  *v41 = v42[0];
  *&v41[16] = v42[1];
  *&v41[112] = v45;
  *&v41[128] = 0x4022000000000000uLL;
  *&v41[64] = xmmword_1E49A0370;
  *&v41[80] = v43;
  *&v41[96] = v44;
  v27 = v32;
  *&v49[0] = v32;
  WORD4(v49[0]) = 256;
  *(v49 + 10) = *v80;
  *(&v49[1] + 10) = *&v80[16];
  *(&v49[2] + 10) = *&v80[32];
  *(&v49[3] + 1) = *&v80[46];
  *&v41[152] = v49[0];
  *&v41[168] = v49[1];
  *&v41[184] = v49[2];
  *&v41[200] = v49[3];
  *&v50[0] = v25;
  WORD4(v50[0]) = 256;
  *(v50 + 10) = *v79;
  *(&v50[3] + 1) = *(&v93 + 1);
  *(&v50[2] + 10) = *&v79[32];
  *(&v50[1] + 10) = *&v79[16];
  *&v41[264] = v50[3];
  *&v41[248] = v50[2];
  *&v41[232] = v50[1];
  *&v41[216] = v50[0];
  memcpy(v34, v41, 0x118uLL);
  v51 = v25;
  v52 = 256;
  v53 = *v79;
  v54 = *&v79[16];
  *v55 = *&v79[32];
  *&v55[14] = *&v79[46];
  sub_1E48C12D0(v42, &v61, &qword_1ECF800A0, &qword_1E49A0BD8);
  sub_1E48C12D0(v49, &v61, &qword_1ECF800A8, &qword_1E49A0BE0);
  sub_1E48C12D0(v50, &v61, &qword_1ECF800A8, &qword_1E49A0BE0);
  sub_1E48C1338(&v51, &qword_1ECF800A8, &qword_1E49A0BE0);
  v56 = v27;
  v57 = 256;
  v58 = *v80;
  v59 = *&v80[16];
  *v60 = *&v80[32];
  *&v60[14] = *&v80[46];
  sub_1E48C1338(&v56, &qword_1ECF800A8, &qword_1E49A0BE0);
  v61 = v35;
  v62 = 256;
  v63 = *v81;
  v64 = *&v81[16];
  *v65 = *&v81[32];
  *&v65[7] = *&v81[46];
  *&v65[11] = v31;
  v66 = 1;
  *v67 = *v84;
  *&v67[3] = *&v84[3];
  v68 = v39;
  v69 = v38;
  v70 = v37;
  v72 = v83;
  v71 = v82;
  v73 = v26;
  v74 = v40;
  v75 = v36;
  v76 = 0x4022000000000000;
  v78 = 0;
  v77 = 0;
  return sub_1E48C1338(&v61, &qword_1ECF800A0, &qword_1E49A0BD8);
}

uint64_t sub_1E490E3C0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [objc_opt_self() systemOrangeColor];
  sub_1E49979DC();
  v7 = sub_1E4997A8C();

  v8 = sub_1E48D973C(v7, (a2 >> 7) & 2);
  v10 = v9;
  v11 = sub_1E4961CE4(a1, a2 & 1);
  swift_getKeyPath();
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v12 = *(v11 + 176);

  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  *a3 = v13;
  *(a3 + 8) = 256;
  return result;
}

uint64_t sub_1E490E528@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v62 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v65 = &v62 - v9;
  v10 = sub_1E499732C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF78, &qword_1E49A0900);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v22);
  v24 = &v62 - v23;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF80, &qword_1E49A0908);
  v25 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64, v26);
  v66 = &v62 - v27;
  v28 = type metadata accessor for Dashboard(0);
  v29 = v1 + *(v28 + 20);
  sub_1E4961D08(v19);
  (*(v11 + 104))(v15, *MEMORY[0x1E697E7D0], v10);
  LOBYTE(v29) = sub_1E499731C();
  v30 = *(v11 + 8);
  v30(v15, v10);
  v30(v19, v10);
  if (v29)
  {
    v31 = sub_1E499763C();
  }

  else
  {
    v31 = sub_1E499764C();
  }

  *v24 = v31;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF88, &qword_1E49A0910);
  sub_1E490EBB0(v2, &v24[*(v32 + 44)]);
  v33 = *(v2 + *(v28 + 24));
  v34 = sub_1E4997D2C();
  v35 = *v2;
  v36 = *(v2 + 8);
  v37 = sub_1E4961CE4(*v2, v36);
  swift_getKeyPath();
  v69 = v37;
  sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v38 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v39 = v66;
  v40 = (v66 + *(v64 + 36));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FE30, &qword_1E49A0548);
  sub_1E48C12D0(v37 + v38, v40 + *(v41 + 36), &qword_1ECF7F848, &qword_1E499D520);

  *v40 = v34;
  sub_1E48B3FEC(v24, v39);
  v42 = sub_1E4961CE4(v35, v36);
  swift_getKeyPath();
  v68 = v42;
  sub_1E4996FCC();

  v43 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v44 = v42 + v43;
  v45 = v65;
  sub_1E48C12D0(v44, v65, &qword_1ECF7F848, &qword_1E499D520);

  v46 = type metadata accessor for WorldViewModel.Pin(0);
  v47 = *(*(v46 - 8) + 48);
  if (v47(v45, 1, v46) == 1)
  {
    sub_1E48C1338(v45, &qword_1ECF7F848, &qword_1E499D520);
LABEL_13:
    v57 = 46.0;
    goto LABEL_14;
  }

  sub_1E48E3380();
  v49 = v48;
  sub_1E4911548(v45, type metadata accessor for WorldViewModel.Pin);
  if (!v49)
  {
    goto LABEL_13;
  }

  v50 = sub_1E4961CE4(v35, v36);
  swift_getKeyPath();
  v67 = v50;
  sub_1E4996FCC();

  v51 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  v52 = v62;
  sub_1E48C12D0(v50 + v51, v62, &qword_1ECF7F848, &qword_1E499D520);

  result = (v47)(v52, 1, v46);
  if (result != 1)
  {
    v54 = sub_1E48E3380();
    v56 = v55;
    sub_1E4911548(v52, type metadata accessor for WorldViewModel.Pin);
    v57 = 28.0;
    if (v56)
    {
      if (!v54 && v56 == 0xE000000000000000)
      {

        goto LABEL_13;
      }

      v58 = sub_1E499884C();

      if (v58)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    v59 = v66;
    v60 = v63;
    sub_1E48C12D0(v66, v63, &qword_1ECF7FF80, &qword_1E49A0908);
    v61 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF90, &qword_1E49A0918) + 36));
    *v61 = 0.0;
    v61[1] = v57;
    return sub_1E48C1338(v59, &qword_1ECF7FF80, &qword_1E49A0908);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E490EBB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v169 = sub_1E499777C();
  v3 = *(*(v169 - 8) + 64);
  MEMORY[0x1EEE9AC00](v169, v4);
  v170 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E49973BC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v155 = &v142 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E499741C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v152 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1E499745C();
  v160 = *(v163 - 8);
  v14 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v163, v15);
  v158 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v147 = &v142 - v20;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  v21 = *(*(v153 - 8) + 64);
  MEMORY[0x1EEE9AC00](v153, v22);
  v161 = &v142 - v23;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  v24 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154, v25);
  v159 = &v142 - v26;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FF98, &qword_1E49A0920);
  v27 = *(*(v157 - 8) + 64);
  MEMORY[0x1EEE9AC00](v157, v28);
  v168 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v156 = &v142 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v167 = &v142 - v35;
  v36 = sub_1E49979EC();
  v173 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36, v39);
  v41 = &v142 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFA0, &qword_1E49A0928);
  v164 = *(v165 - 8);
  v42 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165, v43);
  v162 = &v142 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v175 = &v142 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFA8, &qword_1E49A0930);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8, v50);
  v176 = &v142 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v142 - v54;
  *v55 = sub_1E49975AC();
  *(v55 + 1) = 0;
  v55[16] = 0;
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFB0, &qword_1E49A0938) + 44);
  v174 = v55;
  sub_1E490FD6C(a1, &v55[v56]);
  v144 = "xtraExpandedMedium";
  v57 = sub_1E4997EAC();
  v148 = CTFontCreateWithNameAndOptions(v57, 92.0, 0, 0x400uLL);

  v58 = sub_1E4997EAC();
  v59 = CTFontCreateWithNameAndOptions(v58, 92.0, 0, 0x400uLL);

  v145 = sub_1E48C36F4();
  v60 = sub_1E4997A6C();
  v61 = *MEMORY[0x1E69814D8];
  v64 = *(v37 + 104);
  v63 = v37 + 104;
  v62 = v64;
  v64(v41, v61, v36);
  v65 = sub_1E4997AAC();
  v172 = *a1;
  v166 = a1;
  v177 = *(a1 + 8);
  v66 = sub_1E4961CE4(v172, v177);
  swift_getKeyPath();
  *&v186[0] = v66;
  v67 = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  LODWORD(v59) = *(v66 + 176);

  if (v59)
  {
    v68 = v65;
  }

  else
  {
    v68 = v60;
  }

  v143 = v68;

  v69 = sub_1E4997A6C();
  v150 = v61;
  v151 = v63;
  v149 = v62;
  v62(v41, v61, v173);
  v146 = v41;
  v70 = sub_1E4997AAC();
  v71 = v172;
  v72 = v177;
  v73 = sub_1E4961CE4(v172, v177);
  swift_getKeyPath();
  *&v186[0] = v73;
  sub_1E4996FCC();

  v74 = *(v73 + 176);

  if (!v74)
  {
    v70 = v69;
  }

  v75 = v147;
  v76 = sub_1E4997EAC();
  v77 = CTFontCreateWithNameAndOptions(v76, 92.0, 0, 0x400uLL);

  type metadata accessor for RollingClockViewModel();
  sub_1E490C1B8(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel);
  v78 = sub_1E49971EC();
  LOBYTE(v186[0]) = v79 & 1;
  *&v180 = v78;
  BYTE8(v180) = v79 & 1;
  *&v181 = v145;
  *(&v181 + 1) = v143;
  v182 = v70;
  LOBYTE(v183) = 0;
  *(&v183 + 1) = v148;
  *&v184 = v77;
  WORD4(v184) = 768;
  v185 = xmmword_1E49A0380;
  v80 = sub_1E4961CE4(v71, v72);
  swift_getKeyPath();
  *&v186[0] = v80;
  sub_1E4996FCC();

  v81 = *(v80 + 128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFB8, &qword_1E49A0968);
  sub_1E4911AEC(&qword_1ECF7FFC0, &qword_1ECF7FFB8, &qword_1E49A0968, sub_1E48D2BC4);
  sub_1E499793C();

  v186[2] = v182;
  v186[3] = v183;
  v186[4] = v184;
  v186[5] = v185;
  v186[0] = v180;
  v186[1] = v181;
  sub_1E48C1338(v186, &qword_1ECF7FFB8, &qword_1E49A0968);
  v82 = sub_1E4961CE4(v71, v177);
  swift_getKeyPath();
  *&v180 = v82;
  v148 = v67;
  sub_1E4996FCC();

  v83 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v82 + v83, v75, &qword_1ECF7F848, &qword_1E499D520);

  v84 = type metadata accessor for WorldViewModel.Pin(0);
  if ((*(*(v84 - 8) + 48))(v75, 1, v84) == 1)
  {
    sub_1E48C1338(v75, &qword_1ECF7F848, &qword_1E499D520);
  }

  else
  {
    v85 = sub_1E48E3380();
    v87 = v86;
    sub_1E4911548(v75, type metadata accessor for WorldViewModel.Pin);
    if (v87)
    {
      goto LABEL_10;
    }
  }

  v85 = 0;
  v87 = 0xE000000000000000;
LABEL_10:
  v178 = v85;
  v179 = v87;
  sub_1E48D2EE4();
  v88 = sub_1E49978DC();
  v90 = v89;
  v92 = v91;
  v93 = [objc_opt_self() systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
  sub_1E499782C();
  v94 = sub_1E499788C();
  v96 = v95;
  v98 = v97;

  sub_1E48C1564(v88, v90, v92 & 1);

  v99 = v146;
  v100 = v150;
  v101 = v173;
  v102 = v149;
  v149(v146, v150, v173);
  v103 = sub_1E4997AAC();
  v102(v99, v100, v101);
  v104 = sub_1E4997AAC();
  v105 = sub_1E4961CE4(v172, v177);
  swift_getKeyPath();
  v178 = v105;
  sub_1E4996FCC();

  LODWORD(v101) = *(v105 + 176);

  if (v101)
  {
    v106 = v104;
  }

  else
  {
    v106 = v103;
  }

  v178 = v106;
  v107 = sub_1E499786C();
  v109 = v108;
  v111 = v110;
  v113 = v112;
  sub_1E48C1564(v94, v96, v98 & 1);

  sub_1E499740C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
  v114 = *(sub_1E49973EC() - 8);
  v115 = *(v114 + 72);
  v116 = (*(v114 + 80) + 32) & ~*(v114 + 80);
  *(swift_allocObject() + 16) = xmmword_1E499A180;
  sub_1E499737C();
  sub_1E49973FC();
  sub_1E49973AC();
  sub_1E49973FC();
  v117 = v158;
  sub_1E499742C();
  v118 = *(v166 + *(type metadata accessor for Dashboard(0) + 24));
  v119 = sub_1E4997D2C();
  v120 = sub_1E499743C();
  v121 = sub_1E499744C();
  if (v120)
  {
    if ((v121 & ~v120) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (!v121)
  {
    v120 = 0;
    goto LABEL_19;
  }

  v120 |= v121;
LABEL_19:
  v122 = v170;
  (*(v160 + 32))(v170, v117, v163);
  v123 = v169;
  *(v122 + *(v169 + 20)) = v119;
  *(v122 + *(v123 + 24)) = v120;
  v124 = v161;
  sub_1E4911B70(v122, &v161[*(v153 + 36)], MEMORY[0x1E6980738]);
  *v124 = v107;
  *(v124 + 8) = v109;
  *(v124 + 16) = v111 & 1;
  *(v124 + 24) = v113;
  sub_1E4911548(v122, MEMORY[0x1E6980738]);
  KeyPath = swift_getKeyPath();
  v126 = v159;
  v127 = &v159[*(v154 + 36)];
  v128 = v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010) + 28);
  sub_1E49973CC();
  *v127 = KeyPath;
  sub_1E48C15C8(v124, v126, &qword_1ECF7EE50, &qword_1E499B000);
  v129 = v156;
  sub_1E48C15C8(v126, v156, &qword_1ECF7EE40, &qword_1E499AFF8);
  *(v129 + *(v157 + 36)) = xmmword_1E49A0390;
  v130 = v167;
  sub_1E48C15C8(v129, v167, &qword_1ECF7FF98, &qword_1E49A0920);
  v131 = v176;
  sub_1E48C12D0(v174, v176, &qword_1ECF7FFA8, &qword_1E49A0930);
  v132 = v164;
  v133 = *(v164 + 16);
  v134 = v162;
  v135 = v175;
  v136 = v165;
  v133(v162, v175, v165);
  v137 = v168;
  sub_1E48C12D0(v130, v168, &qword_1ECF7FF98, &qword_1E49A0920);
  v138 = v171;
  sub_1E48C12D0(v131, v171, &qword_1ECF7FFA8, &qword_1E49A0930);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFC8, &qword_1E49A09A0);
  v133((v138 + *(v139 + 48)), v134, v136);
  sub_1E48C12D0(v137, v138 + *(v139 + 64), &qword_1ECF7FF98, &qword_1E49A0920);
  sub_1E48C1338(v130, &qword_1ECF7FF98, &qword_1E49A0920);
  v140 = *(v132 + 8);
  v140(v135, v136);
  sub_1E48C1338(v174, &qword_1ECF7FFA8, &qword_1E49A0930);
  sub_1E48C1338(v137, &qword_1ECF7FF98, &qword_1E49A0920);
  v140(v134, v136);
  return sub_1E48C1338(v176, &qword_1ECF7FFA8, &qword_1E49A0930);
}

uint64_t sub_1E490FD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v213 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFD0, &qword_1E49A09A8);
  v211 = *(v3 - 8);
  v212 = v3;
  v4 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v197 = &v174 - v6;
  v209 = sub_1E499777C();
  v7 = *(*(v209 - 8) + 64);
  MEMORY[0x1EEE9AC00](v209, v8);
  v188 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE50, &qword_1E499B000);
  v10 = *(*(v185 - 8) + 64);
  MEMORY[0x1EEE9AC00](v185, v11);
  v189 = &v174 - v12;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE40, &qword_1E499AFF8);
  v193 = *(v195 - 8);
  v13 = *(v193 + 64);
  MEMORY[0x1EEE9AC00](v195, v14);
  v187 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v186 = &v174 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFD8, &qword_1E49A09B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v21);
  v196 = &v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v194 = &v174 - v25;
  v26 = sub_1E49973BC();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8, v28);
  v205 = &v174 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E499741C();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8, v32);
  v204 = &v174 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1E499745C();
  v206 = *(v34 - 8);
  v207 = v34;
  v35 = *(v206 + 64);
  MEMORY[0x1EEE9AC00](v34, v36);
  v184 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v182 = &v174 - v40;
  v41 = sub_1E49979EC();
  v202 = *(v41 - 8);
  v203 = v41;
  v42 = *(v202 + 64);
  MEMORY[0x1EEE9AC00](v41, v43);
  v201 = &v174 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FEB0, &qword_1E49A05A8);
  v45 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176, v46);
  v48 = (&v174 - v47);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFE0, &qword_1E49A09B8);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8, v51);
  v180 = &v174 - v52;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFE8, &qword_1E49A09C0);
  v53 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177, v54);
  v181 = &v174 - v55;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFF0, &qword_1E49A09C8);
  v190 = *(v191 - 8);
  v56 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v191, v57);
  v179 = &v174 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59, v60);
  v178 = &v174 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FFF8, &qword_1E49A09D0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8, v64);
  v192 = &v174 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v210 = &v174 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F848, &qword_1E499D520);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69 - 8, v71);
  v73 = &v174 - v72;
  v74 = type metadata accessor for WorldViewModel.Pin(0);
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v74, v77);
  v79 = &v174 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a1;
  v208 = a1;
  v81 = *(a1 + 8);
  v200 = v80;
  v199 = v81;
  v82 = sub_1E4961CE4(v80, v81);
  swift_getKeyPath();
  v216 = v82;
  v198 = sub_1E490C1B8(&qword_1ECF7F308, type metadata accessor for WorldViewModel);
  sub_1E4996FCC();

  v83 = OBJC_IVAR____TtC11ClockPoster14WorldViewModel__highlighted;
  swift_beginAccess();
  sub_1E48C12D0(v82 + v83, v73, &qword_1ECF7F848, &qword_1E499D520);

  if ((*(v75 + 48))(v73, 1, v74) != 1)
  {
    sub_1E4911190(v73, v79, type metadata accessor for WorldViewModel.Pin);
    v86 = MEMORY[0x1E69814D8];
    v87 = MEMORY[0x1E69DB980];
    v88 = v79[16] == 1;
    v183 = v79;
    if (!v88)
    {
      v112 = 1;
      v113 = v210;
      v114 = v191;
      goto LABEL_15;
    }

    v175 = sub_1E4997ADC();
    v89 = [objc_opt_self() systemOrangeColor];
    v90 = sub_1E49979DC();
    (*(v202 + 104))(v201, *v86, v203);
    v91 = sub_1E4997AAC();
    v92 = sub_1E4961CE4(v200, v199);
    swift_getKeyPath();
    v214 = v92;
    sub_1E4996FCC();

    v93 = *(v92 + 176);

    v88 = v93 == 0;
    v94 = v87;
    if (v88)
    {
      v95 = v90;
    }

    else
    {
      v95 = v91;
    }

    v96 = [objc_opt_self() 0x1FBBAE6A9];
    v97 = sub_1E499782C();
    KeyPath = swift_getKeyPath();
    v99 = (v48 + *(v176 + 36));
    v100 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F590, &qword_1E499C058) + 28);
    v101 = *MEMORY[0x1E69816C8];
    v102 = sub_1E4997B1C();
    (*(*(v102 - 8) + 104))(v99 + v100, v101, v102);
    *v99 = swift_getKeyPath();
    *v48 = v175;
    v48[1] = v95;
    v48[2] = KeyPath;
    v48[3] = v97;
    v103 = v180;
    sub_1E48C15C8(v48, v180, &qword_1ECF7FEB0, &qword_1E49A05A8);
    sub_1E499740C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
    v104 = *(sub_1E49973EC() - 8);
    v105 = *(v104 + 72);
    v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    *(swift_allocObject() + 16) = xmmword_1E499B670;
    sub_1E49973AC();
    sub_1E49973FC();
    v107 = v182;
    sub_1E499742C();
    v108 = *(v208 + *(type metadata accessor for Dashboard(0) + 24));
    v109 = sub_1E4997D2C();
    v110 = sub_1E499743C();
    v111 = sub_1E499744C();
    if (v110)
    {
      v113 = v210;
      if ((v111 & ~v110) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v113 = v210;
      if (!v111)
      {
        v110 = 0;
        goto LABEL_14;
      }
    }

    v110 |= v111;
LABEL_14:
    v115 = v181;
    v116 = &v181[*(v177 + 36)];
    (*(v206 + 32))(v116, v107, v207);
    v117 = v209;
    *&v116[*(v209 + 20)] = v109;
    *&v116[*(v117 + 24)] = v110;
    sub_1E48C15C8(v103, v115, &qword_1ECF7FFE0, &qword_1E49A09B8);
    v118 = swift_getKeyPath();
    v114 = v191;
    v119 = v179;
    v120 = &v179[*(v191 + 36)];
    v121 = v120 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010) + 28);
    sub_1E49973CC();
    *v120 = v118;
    sub_1E48C15C8(v115, v119, &qword_1ECF7FFE8, &qword_1E49A09C0);
    v122 = v178;
    sub_1E48C15C8(v119, v178, &qword_1ECF7FFF0, &qword_1E49A09C8);
    sub_1E48C15C8(v122, v113, &qword_1ECF7FFF0, &qword_1E49A09C8);
    v112 = 0;
    v79 = v183;
LABEL_15:
    v123 = 1;
    (*(v190 + 56))(v113, v112, 1, v114);
    v124 = &v79[*(v74 + 40)];
    v125 = *(v124 + 1);
    if (!v125)
    {
      v159 = v195;
      v158 = v194;
LABEL_27:
      (*(v193 + 56))(v158, v123, 1, v159);
      v169 = v192;
      sub_1E48C12D0(v113, v192, &qword_1ECF7FFF8, &qword_1E49A09D0);
      v170 = v196;
      sub_1E48C12D0(v158, v196, &qword_1ECF7FFD8, &qword_1E49A09B0);
      v171 = v197;
      sub_1E48C12D0(v169, v197, &qword_1ECF7FFF8, &qword_1E49A09D0);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80000, &qword_1E49A09D8);
      sub_1E48C12D0(v170, v171 + *(v172 + 48), &qword_1ECF7FFD8, &qword_1E49A09B0);
      sub_1E48C1338(v158, &qword_1ECF7FFD8, &qword_1E49A09B0);
      sub_1E48C1338(v113, &qword_1ECF7FFF8, &qword_1E49A09D0);
      sub_1E4911548(v183, type metadata accessor for WorldViewModel.Pin);
      sub_1E48C1338(v170, &qword_1ECF7FFD8, &qword_1E49A09B0);
      sub_1E48C1338(v169, &qword_1ECF7FFF8, &qword_1E49A09D0);
      v85 = v213;
      sub_1E48C15C8(v171, v213, &qword_1ECF7FFD0, &qword_1E49A09A8);
      v84 = 0;
      return (*(v211 + 56))(v85, v84, 1, v212);
    }

    v214 = *v124;
    v215 = v125;
    sub_1E48D2EE4();

    v126 = sub_1E49978DC();
    v128 = v127;
    v130 = v129;
    v131 = [objc_opt_self() systemOrangeColor];
    v132 = sub_1E49979DC();
    (*(v202 + 104))(v201, *MEMORY[0x1E69814D8], v203);
    v133 = sub_1E4997AAC();
    v134 = sub_1E4961CE4(v200, v199);
    swift_getKeyPath();
    v214 = v134;
    sub_1E4996FCC();

    v135 = *(v134 + 176);

    if (v135)
    {
      v136 = v133;
    }

    else
    {
      v136 = v132;
    }

    v214 = v136;
    v137 = sub_1E499786C();
    v139 = v138;
    v141 = v140;
    sub_1E48C1564(v126, v128, v130 & 1);

    v142 = [objc_opt_self() systemFontOfSize:26.0 weight:*MEMORY[0x1E69DB980]];
    sub_1E499782C();
    v143 = sub_1E499788C();
    v145 = v144;
    v147 = v146;
    v149 = v148;

    sub_1E48C1564(v137, v139, v141 & 1);

    sub_1E499740C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F788, &qword_1E499CF60);
    v150 = *(sub_1E49973EC() - 8);
    v151 = *(v150 + 72);
    v152 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    *(swift_allocObject() + 16) = xmmword_1E499B670;
    sub_1E499738C();
    sub_1E49973FC();
    v153 = v184;
    sub_1E499742C();
    v154 = *(v208 + *(type metadata accessor for Dashboard(0) + 24));
    v155 = sub_1E4997D2C();
    v156 = sub_1E499743C();
    v157 = sub_1E499744C();
    if (v156)
    {
      v158 = v194;
      if ((v157 & ~v156) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v158 = v194;
      if (!v157)
      {
        v156 = 0;
        goto LABEL_26;
      }
    }

    v156 |= v157;
LABEL_26:
    v160 = v188;
    (*(v206 + 32))(v188, v153, v207);
    v161 = v209;
    *(v160 + *(v209 + 20)) = v155;
    *(v160 + *(v161 + 24)) = v156;
    v162 = v189;
    sub_1E4911B70(v160, &v189[*(v185 + 36)], MEMORY[0x1E6980738]);
    *v162 = v143;
    *(v162 + 8) = v145;
    *(v162 + 16) = v147 & 1;
    *(v162 + 24) = v149;
    sub_1E4911548(v160, MEMORY[0x1E6980738]);
    v163 = swift_getKeyPath();
    v159 = v195;
    v164 = v187;
    v165 = &v187[*(v195 + 36)];
    v166 = v165 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EE70, &qword_1E499B010) + 28);
    sub_1E49973CC();
    *v165 = v163;
    sub_1E48C15C8(v162, v164, &qword_1ECF7EE50, &qword_1E499B000);
    v167 = v164;
    v168 = v186;
    sub_1E48C15C8(v167, v186, &qword_1ECF7EE40, &qword_1E499AFF8);
    sub_1E48C15C8(v168, v158, &qword_1ECF7EE40, &qword_1E499AFF8);
    v123 = 0;
    v113 = v210;
    goto LABEL_27;
  }

  sub_1E48C1338(v73, &qword_1ECF7F848, &qword_1E499D520);
  v84 = 1;
  v85 = v213;
  return (*(v211 + 56))(v85, v84, 1, v212);
}