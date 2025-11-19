void sub_18E00055C(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

void sub_18E0005C8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_18E000654(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return result;
    }
  }

  if (a3 == 2)
  {
  }

  if (a3 == 3)
  {
    return result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

_OWORD *sub_18E00077C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t objectdestroy_21Tm()
{
  sub_18E0005C8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_18E0007E4()
{
  result = qword_1EABC0928;
  if (!qword_1EABC0928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABC0928);
  }

  return result;
}

uint64_t sub_18E000830(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_18E0008E0(uint64_t a1)
{
  v3 = a1 + OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing;
  swift_beginAccess();
  if (*(v3 + 40))
  {
    v4 = [v1 resolveAutomaticWithConfig:a1 adjustX:*(v3 + 16) & 1 adjustY:(*(v3 + 16) >> 8) & 1 sizeAdjustment:*(v3 + 24)];
  }

  else
  {
    v4 = [v1 resolveMetricCenterWithConfig:a1 offsetX:*(v3 + 16) offsetY:*(v3 + 24) scaleFactor:*(v3 + 32)];
  }

  return v4;
}

id sub_18E000A4C()
{
  v1 = [v0 superclass];
  sub_18E006B10();
  if ([swift_getObjCClassFromMetadata() superclass])
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    if (v1)
    {
      if (ObjCClassMetadata && swift_getObjCClassMetadata() == ObjCClassMetadata)
      {
LABEL_5:

        return v0;
      }
    }

    else if (!ObjCClassMetadata)
    {
      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_5;
  }

  v4 = objc_opt_self();

  return [v4 copyFromInstance_];
}

_BYTE *sub_18E000B5C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v6 = [v4 ensureBaseGlyph];
  [v6 glyphContinuousSize];
  [v6 glyphContinuousWeight];
  v7 = [v6 copyWithContinuousWeight_continuousSize_];
  if (!v7)
  {
    v7 = v6;
  }

  [v6 scale];
  v94 = v8;
  v9 = (a1 + OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing);
  swift_beginAccess();
  v10 = *v9;
  v11 = v9[1];
  v12 = (v11 + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
  swift_beginAccess();
  v13 = *v12;
  v14 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  if (!v10)
  {
    v17 = v11 + OBJC_IVAR___CUIVectorGlyphEncapsulation_canvasSize;
    swift_beginAccess();
    v18 = *(v17 + 8);
    v97.origin.x = v13;
    v97.origin.y = v14;
    v97.size.width = v16;
    v97.size.height = v15;
    v14 = v18 - CGRectGetMaxY(v97);
  }

  v19 = v94 * v13;
  v20 = v94 * v14;
  v98.origin.x = v13;
  v98.origin.y = v14;
  v98.size.width = v16;
  v98.size.height = v15;
  v21 = v94 * CGRectGetWidth(v98);
  v99.origin.x = v13;
  v99.origin.y = v14;
  v99.size.width = v16;
  v99.size.height = v15;
  v22 = v94 * CGRectGetHeight(v99);
  [v7 alignmentRectUnrounded];
  x = v100.origin.x;
  y = v100.origin.y;
  width = v100.size.width;
  height = v100.size.height;
  v84 = v94 * v100.origin.x;
  v79 = v94 * v100.origin.y;
  v74 = v94 * CGRectGetWidth(v100);
  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  v27 = v94 * CGRectGetHeight(v101);
  [v7 metricCenter];
  v86 = v94 * v29;
  rect = v94 * v28;
  v102.origin.x = v19;
  v102.origin.y = v20;
  v102.size.width = v21;
  v102.size.height = v22;
  v30 = CGRectGetWidth(v102) * 0.5;
  v103.origin.x = v19;
  v103.origin.y = v20;
  v103.size.width = v21;
  v103.size.height = v22;
  v31 = CGRectGetHeight(v103) * 0.5;
  v104.origin.x = v19;
  v104.origin.y = v20;
  v104.size.width = v21;
  v104.size.height = v22;
  v32 = v30 + CGRectGetWidth(v104) * a2;
  if (v10)
  {
    v33 = a3;
  }

  else
  {
    v33 = -a3;
  }

  v105.origin.x = v19;
  v105.origin.y = v20;
  v105.size.width = v21;
  v105.size.height = v22;
  v77 = v31 + CGRectGetHeight(v105) * v33;
  v78 = v32;
  v34 = fmin(v21, v22) < 56.0;
  if (v74 < 32.0)
  {
    v34 = 1;
  }

  v35 = v27 < 32.0 || v34;
  v82 = v20;
  v83 = v19;
  v36 = v19 + v32 - rect;
  v37 = v20 + v77 - v86;
  v106.origin.x = v84;
  v106.origin.y = v79;
  v106.size.width = v74;
  v106.size.height = v27;
  recta = CGRectGetWidth(v106);
  v107.origin.x = v84;
  v107.origin.y = v79;
  v107.size.width = v74;
  v107.size.height = v27;
  v87 = CGRectGetHeight(v107);
  v91 = floor(v37);
  v93 = floor(v36);
  v108.origin.x = v84;
  v108.origin.y = v79;
  v108.size.width = v74;
  v108.size.height = v27;
  v38 = v36;
  v39 = v36 + CGRectGetWidth(v108);
  v40 = v37;
  v109.origin.x = v84;
  v109.origin.y = v79;
  v109.size.width = v74;
  v109.size.height = v27;
  v41 = CGRectGetHeight(v109);
  v42 = v37 + v41;
  if (v35 == 1)
  {
    v80 = v38 - v93 + v38 - v93;
    v85 = v37 - v91 + v37 - v91;
    v72 = 2.0;
    v75 = 2.0;
    v43 = v39;
  }

  else
  {
    v70 = v39;
    v44 = v38;
    v76 = v39 - v38;
    v71 = v37 + v41;
    v73 = v38 + (v39 - v38) * 0.5;
    v81 = v42 - v37;
    v45 = v39;
    v46 = v37 + (v42 - v37) * 0.5;
    v47 = CGRound(v44);
    v48 = CGRound(v37);
    v85 = v48 - v91;
    v49 = CGFloor(v45);
    v50 = CGFloor(v71);
    v51 = v49 + 1.0;
    v52 = vabdd_f64(v46, (v48 + v50) * 0.5);
    v53 = vabdd_f64(v46, (v48 + v50 + 1.0) * 0.5);
    if (vabdd_f64(v73, (v47 + v49) * 0.5) < vabdd_f64(v73, (v47 + v49 + 1.0) * 0.5))
    {
      v51 = v49;
    }

    if (v52 >= v53)
    {
      v50 = v50 + 1.0;
    }

    v75 = (v51 - v47) / v76;
    v96.a = v75;
    v96.b = 0.0;
    v96.c = 0.0;
    v72 = (v50 - v48) / v81;
    v96.d = v72;
    v96.tx = v47 - v93;
    v80 = v47 - v93;
    v110.size.height = v87;
    v96.ty = v48 - v91;
    v110.origin.x = v44;
    v110.origin.y = v37;
    v110.size.width = recta;
    v111 = CGRectApplyAffineTransform(v110, &v96);
    v38 = v111.origin.x;
    v40 = v111.origin.y;
    v87 = v111.size.height;
    recta = v111.size.width;
    v43 = v70;
    v42 = v71;
  }

  v54 = ceil(v42) - v91;
  v55 = ceil(v43) - v93;
  sub_18DFFCD9C(0);
  v56 = sub_18DFF9E20();
  v57 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  v58 = *&v56[v57];
  *&v56[v57] = v7;
  v59 = v7;

  v60 = &v56[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect];
  swift_beginAccess();
  *v60 = v93;
  v60[1] = v91;
  v60[2] = v55;
  v60[3] = v54;
  v61 = &v56[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageCenter];
  swift_beginAccess();
  *v61 = v83 + v78 - v93;
  v61[1] = v82 + v77 - v91;
  v62 = &v56[OBJC_IVAR___CUIEncapsulatedVectorGlyph__encapsulatedAlignmentRect];
  swift_beginAccess();
  *v62 = v38;
  v62[1] = v40;
  v62[2] = recta;
  v62[3] = v87;
  v63 = OBJC_IVAR___CUIEncapsulatedVectorGlyph_useASG;
  swift_beginAccess();
  v56[v63] = v35;
  v64 = &v56[OBJC_IVAR___CUIEncapsulatedVectorGlyph_contextTransform];
  swift_beginAccess();
  *v64 = v75;
  *(v64 + 1) = 0;
  *(v64 + 2) = 0;
  *(v64 + 3) = v72;
  *(v64 + 4) = v80;
  *(v64 + 5) = v85;
  v65 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__coordinateSystem;
  swift_beginAccess();
  *&v56[v65] = 1;
  v66 = v9[1];
  v67 = OBJC_IVAR___CUIVectorGlyphEncapsulation_canvasSize;
  swift_beginAccess();
  v68 = OBJC_IVAR___CUIEncapsulatedVectorGlyph_canvasSize;
  v95 = vmulq_n_f64(*(v66 + v67), v94);
  swift_beginAccess();
  *&v56[v68] = v95;
  sub_18DFFBCC4(*v9);

  return v56;
}

double sub_18E001230(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1 * a2;
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  CGRectGetWidth(v11);
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetHeight(v12);
  return v9;
}

void sub_18E001344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [v4 ensureBaseGlyph];
  if (a4 != 2 || (v9 = a1 + OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing, swift_beginAccess(), v10 = *(v9 + 8), v11 = OBJC_IVAR___CUIVectorGlyphEncapsulation_representativePointSize, swift_beginAccess(), v12 = *(v10 + v11) / 1.2, [v7 glyphContinuousWeight], (v8 = objc_msgSend(v7, sel_copyWithPointSize_continuousWeight_continuousSize_, v12, v13, 1.0)) == 0))
  {
    v8 = v7;
  }

  v14 = v8;
  sub_18E001534();
}

void sub_18E001534()
{
  [v0 metricCenter];
  v2 = v1;
  v4 = v3;
  v5 = sub_18DFFB038(1);
  CGAffineTransformMakeTranslation(v18, v5 - v2, v6 - v4);
  [v0 pointSize];
  v8 = v7 / 100.0;
  v9 = objc_opt_self();
  [v0 scale];
  v11 = 1.0 / v10;
  v12 = -(1.0 / v10);
  [v0 alignmentRectUnrounded];
  Height = CGRectGetHeight(v21);
  CGAffineTransformMake(&v20, v11, 0.0, 0.0, v12, 0.0, Height);
  v14 = [v0 _rawVisibleMonochromePath_];
  [v9 _createFlattenedPath_threshold_];

  *&v20.a = _swiftEmptyArrayStorage;
  *&__C[2] = &v20;
  sub_18E002E78(sub_18E006858, __C);
  v15 = *&v20.a;

  v16 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_18E0048B8(v15);
  }

  v17 = *(v16 + 2);
  *&v20.a = v16 + 32;
  v20.b = v17;
  sub_18E004CD8();
}

uint64_t sub_18E0020C4(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = *(result + 16);
  if (v4 == *(a2 + 16))
  {
    v7 = result;
    if (v4)
    {
      v30 = a4;
      sub_18E013248();
    }

    v38 = &_swiftEmptyArrayStorage;
    v39 = &_swiftEmptyArrayStorage;
    v36 = &_swiftEmptyArrayStorage;
    v37 = &_swiftEmptyArrayStorage;
    v34 = &_swiftEmptyArrayStorage;
    v35 = &_swiftEmptyArrayStorage;
    v33 = &_swiftEmptyArrayStorage;
    v32 = &_swiftEmptyArrayStorage;
    v8.n128_f64[0] = off_1F00D3A78(a4);
    v17 = v8;
    v18 = v7;
    v19 = a2;
    v20 = &v38;
    v21 = &v37;
    v22 = &v35;
    v23 = &v34;
    v24 = 0x3FF0000000000001;
    v25 = &v33;
    v26 = a3;
    v27 = &v32;
    v28 = &v39;
    v29 = &v36;
    v31 = 0;
    off_1F00D3A78(v8);
    v16[2] = sub_18E004358;
    v16[3] = v9;
    v16[4] = &v31;
    sub_18E002E78(sub_18E0043A4, v16);

    sub_18E0046F8(v10, &v39, &_vvsqrt);

    v11 = v36;
    v12 = v36[2];
    if (v12)
    {
      for (i = 0; v12 != i; ++i)
      {
        if (v11[i + 4])
        {
          v14 = v39;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_18DFFA9A4(v14);
            v14 = result;
          }

          if (i >= *(v14 + 2))
          {
            __break(1u);
            goto LABEL_14;
          }

          *&v14[8 * i + 32] = -*&v14[8 * i + 32];
          v39 = v14;
        }
      }
    }

    v15 = v39;

    return v15;
  }

  else
  {
LABEL_14:
    __break(1u);
  }

  return result;
}

void sub_18E002448(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *a3;
  v7 = *(*a3 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v6 = sub_18DFFA9A4(v6);
  }

  vDSP_vmulD((v5 + 32), 1, (v4 + 32), 1, v6 + 4, 1, v7);
  *v3 = v6;
}

float64_t sub_18E0024E8(double a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*(v1 + 64))
  {
    v4 = *(v1 + 32);
    if (*(v1 + 64) == 1)
    {
      v13[0] = *v1;
      v13[1] = v3;
      v13[2] = v4;
      v5 = v13;
      v6 = 3;
    }

    else
    {
      v7 = *(v1 + 48);
      v14[0] = *v1;
      v14[1] = v3;
      v14[2] = v4;
      v14[3] = v7;
      v5 = v14;
      v6 = 4;
    }

    sub_18E005838(v5, v6, a1);
    v2.f64[0] = v8;
  }

  else if (a1 != 0.0)
  {
    if (a1 == 1.0)
    {
      v2 = *(v1 + 16);
    }

    else
    {
      v10.f64[0] = 1.0 - a1;
      v11 = (1.0 - a1) * v2.f64[0];
      v10.f64[1] = a1;
      v2 = vmulq_f64(v10, vzip2q_s64(v2, v3));
      v12 = vdupq_lane_s64(*&v2.f64[0], 0);
      v12.f64[0] = v11;
      v2.f64[0] = a1 * *v3.i64;
      *&v2.f64[0] = *&vaddq_f64(v12, v2);
    }
  }

  return v2.f64[0];
}

void sub_18E0027CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[11] = a2;
  v4[6] = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v4[10] = *(swift_getTupleTypeMetadata2() - 8);
  off_1F00D3A78(v2);
  v4[5] = v4 - v3;
  sub_18E013278();
}

void sub_18E002C84(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  off_1F00D3A78(a2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v9 = off_1F00D3A78(v8);
  (*(v5 + 16))(v7, v3, v4, v9);
  sub_18E0131E8();
}

uint64_t sub_18E002E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E005A68(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_18E002E78(uint64_t a1, uint64_t a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v12;
  v5[5] = v11;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_18E005904;
  *(v6 + 24) = v5;
  v10[4] = sub_18E005A28;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_18DFFD9EC;
  v10[3] = &block_descriptor_0;
  v7 = _Block_copy(v10);

  CGPathApplyWithBlock(v2, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18E002FD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_18E005A6C(v7, v9) & 1;
}

uint64_t sub_18E003034(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = &v4;
  return sub_18E002E78(sub_18E006C24, v3);
}

uint64_t sub_18E00307C(uint64_t result, __n128 *a2, uint64_t (*a3)(uint64_t, __n128 *), __n128 a4, double a5, __n128 a6, double a7, uint64_t a8, uint64_t *a9)
{
  if (result <= 2)
  {
    if (result == 1)
    {
LABEL_14:
      v15 = *a9;
      a6.n128_f64[1] = a7;
      v16 = *a2;
      v21 = a6;
      v22 = v16;
      v25 = 0;
      result = a3(v15, &v21);
      v13 = *a9 + 1;
      if (!__OFADD__(*a9, 1))
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_17:
      v17 = *a9;
      a6.n128_f64[1] = a7;
      v18 = *a2;
      v19 = a2[1];
      v20 = a2[2];
      v21 = a6;
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = 2;
      result = a3(v17, &v21);
      v13 = *a9 + 1;
      if (__OFADD__(*a9, 1))
      {
        __break(1u);
        return result;
      }

      goto LABEL_18;
    }

    if (result != 2)
    {
      return result;
    }

    v10 = *a9;
    a6.n128_f64[1] = a7;
    v11 = *a2;
    v12 = a2[1];
    v21 = a6;
    v22 = v11;
    v23 = v12;
    v25 = 1;
    result = a3(v10, &v21);
    v13 = *a9 + 1;
    if (!__OFADD__(*a9, 1))
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  if (result == 3)
  {
    goto LABEL_17;
  }

  if (result == 4 && (a6.n128_f64[0] != a4.n128_f64[0] || a7 != a5))
  {
    a6.n128_f64[1] = a7;
    v14 = *a9;
    a4.n128_f64[1] = a5;
    v21 = a6;
    v22 = a4;
    v25 = 0;
    result = a3(v14, &v21);
    v13 = *a9 + 1;
    if (!__OFADD__(*a9, 1))
    {
LABEL_18:
      *a9 = v13;
      return result;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

double sub_18E0031C4()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (*(v0 + 64))
  {
    v3 = *(v0 + 32);
    if (*(v0 + 64) == 1)
    {
      v4 = vsubq_f64(vzip1q_s64(v2, v3), vzip1q_s64(v1, v2));
      v5 = vsubq_f64(vzip2q_s64(v2, v3), vzip2q_s64(v1, v2));
      return vaddvq_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v4, v4), vmulq_f64(v5, v5))));
    }

    else
    {
      v8 = vsubq_f64(vzip1q_s64(v2, v3), vzip1q_s64(v1, v2));
      v9 = vsubq_f64(vzip2q_s64(v2, v3), vzip2q_s64(v1, v2));
      v10 = vsubq_f64(*(v0 + 48), v3);
      return vaddvq_f64(vsqrtq_f64(vaddq_f64(vmulq_f64(v8, v8), vmulq_f64(v9, v9)))) + sqrt(vaddvq_f64(vmulq_f64(v10, v10)));
    }
  }

  else
  {
    v7 = vsubq_f64(v2, v1);
    return sqrt(vaddvq_f64(vmulq_f64(v7, v7)));
  }
}

float64_t sub_18E003270(char a1, double a2)
{
  v3 = *v2;
  v4 = *(v2 + 16);
  if (*(v2 + 64))
  {
    v5 = *(v2 + 32);
    if (*(v2 + 64) == 1)
    {
      v6 = vsubq_f64(v4, v3);
      *v6.i64 = *v6.i64 + *v6.i64;
      v7 = vsubq_f64(vzip2q_s64(v4, v5), vzip2q_s64(v3, v4));
      v8 = vaddq_f64(v7, v7);
      if (a2 == 0.0)
      {
        v8 = vzip1q_s64(v6, v8);
        v9 = vmulq_f64(v8, v8);
      }

      else
      {
        v19 = vsubq_f64(v5, v4).f64[0];
        v20 = v19 + v19;
        if (a2 == 1.0)
        {
          v8.f64[0] = v20;
        }

        else
        {
          v21.f64[0] = 1.0 - a2;
          v21.f64[1] = a2;
          v22 = vmulq_f64(v21, v8);
          v23 = vdupq_lane_s64(*&v22.f64[0], 0);
          v23.f64[0] = (1.0 - a2) * *v6.i64;
          v22.f64[0] = v20 * a2;
          v8 = vaddq_f64(v23, v22);
        }

        v9 = vmulq_f64(v8, v8);
      }
    }

    else
    {
      v10 = *(v2 + 48);
      __asm { FMOV            V5.2D, #3.0 }

      v25[0] = vmulq_f64(vsubq_f64(v4, v3), _Q5);
      v25[1] = vmulq_f64(vsubq_f64(v5, v4), _Q5);
      v25[2] = vmulq_f64(vsubq_f64(v10, v5), _Q5);
      v25[3] = v10;
      v16 = a1;
      sub_18E005838(v25, 3, a2);
      a1 = v16;
      v8 = v17;
      v9 = vmulq_f64(v17, v17);
    }
  }

  else
  {
    v8 = vsubq_f64(v4, v3);
    v9 = vmulq_f64(v8, v8);
  }

  v18 = vmulq_n_f64(v8, 1.0 / sqrt(vaddvq_f64(v9)));
  *&v9.f64[0] = v18.i64[1];
  if (a1)
  {
    v9.f64[0] = -*&v18.i64[1];
    *&v9.f64[0] = vzip1q_s64(v9, v18).u64[0];
  }

  return v9.f64[0];
}

float64_t sub_18E0033D0()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (!*(v0 + 64))
  {
    return vmuld_lane_f64(vsubq_f64(v2, v1).f64[0], vaddq_f64(v1, v2), 1) * -0.5;
  }

  v3 = *(v0 + 32);
  if (*(v0 + 64) != 1)
  {
    return ((v2.f64[1] - vmuld_lane_f64(3.0, v1, 1) + v3.f64[1] + v3.f64[1]) * v3.f64[0] + (v1.f64[1] + v2.f64[1] - (v3.f64[1] + v3.f64[1])) * v3.f64[0] + (vmuld_lane_f64(-2.0, v2, 1) - v3.f64[1] + vmuld_lane_f64(3.0, v3, 1)) * v1.f64[0] + (v1.f64[1] + v1.f64[1] - v3.f64[1] - v3.f64[1]) * v2.f64[0]) * -0.15 + 0.0 + vmuld_lane_f64(vsubq_f64(*(v0 + 48), v1).f64[0], vaddq_f64(v1, *(v0 + 48)), 1) * -0.5;
  }

  v4 = vmulq_f64(v2, vdupq_n_s64(0x3FE5555555555555uLL));
  v5 = vmuld_lane_f64(0.333333333, v1, 1) + v4.f64[1];
  v6 = v4.f64[0] + 0.333333333 * v3.f64[0];
  v7.f64[0] = *v0;
  v7.f64[1] = *(v0 + 40);
  v8 = vaddq_f64(v4, vmulq_f64(v7, vdupq_n_s64(0x3FD5555555555555uLL)));
  return (v6 * (v5 - vmuld_lane_f64(3.0, v1, 1) + v8.f64[1] + v8.f64[1]) + v6 * (v1.f64[1] + v5 - (v8.f64[1] + v8.f64[1])) + (v5 * -2.0 - v8.f64[1] + vmuld_lane_f64(3.0, v8, 1)) * v1.f64[0] + (v1.f64[1] + v1.f64[1] - v8.f64[1] - v8.f64[1]) * v8.f64[0]) * -0.15 + 0.0 + vmuld_lane_f64(vsubq_f64(v3, v1).f64[0], vaddq_f64(v1, v3), 1) * -0.5;
}

uint64_t sub_18E003574(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, char **a5, char **a6, float64x2_t a7, uint64_t a8, char **a9)
{
  v57 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC1080);
  result = off_1F00D3A78();
  if (!*(a1 + 64))
  {
    v20 = *a4;
    v21 = *(*a4 + 2);
    if (*(a2 + 16) == v21)
    {
      if (*(a3 + 16) == v21)
      {
        v49 = a9;
        v54 = &v42 - v18;
        v58 = v19;
        v51 = result;
        v22 = *(a1 + 16);
        v61 = *a1;
        v42 = v22;
        v23 = vsubq_f64(v22, v61);
        v48 = vmulq_f64(v23, v23);
        v59 = vmulq_n_f64(v23, 1.0 / sqrt(vaddvq_f64(v48)));
        v60 = v23;
        v9 = v59.f64[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v20;
        a9 = a5;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_14:
    v20 = sub_18DFFA9A4(v20);
    *a4 = v20;
LABEL_5:
    __D = v9;
    __B = v59.f64[0];
    v55 = (a3 + 32);
    vDSP_vsmsmaD((a2 + 32), 1, &__B, (a3 + 32), 1, &__D, v20 + 4, 1, v21);
    *a4 = v20;

    v26 = *a9;
    if (v21 == *(*a9 + 2))
    {
      *v25.i64 = -v9;
      v56 = v25;
      v52 = a2;

      v27 = swift_isUniquelyReferenced_nonNull_native();
      *a9 = v26;
      v53 = a4;
      if (v27)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v26 = sub_18DFFA9A4(v26);
    *a9 = v26;
LABEL_7:
    __D = v59.f64[0];
    __B = *v56.i64;
    v43 = a2 + 32;
    vDSP_vsmsmaD((a2 + 32), 1, &__B, v55, 1, &__D, v26 + 4, 1, v21);
    *a9 = v26;

    v47 = a3;

    v28 = *a9;
    v29 = *a6;
    v30 = *(*a6 + 2);
    if (*(*a9 + 2) == v30)
    {
      v31 = vzip1q_s64(v56, v59);
      v32.f64[0] = v59.f64[0];
      v32.f64[1] = v31.f64[0];
      v31.f64[0] = v59.f64[1];
      v59 = vmulq_n_f64(v32, v61.f64[0]);
      v56 = v31;
      v57 = vmlaq_laneq_f64(vmulq_n_f64(v32, v57.f64[0]), v31, v57, 1);

      v33 = swift_isUniquelyReferenced_nonNull_native();
      *a6 = v29;
      v44 = a9;
      if (v33)
      {
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    v29 = sub_18DFFA9A4(v29);
    *a6 = v29;
LABEL_9:
    v59 = vmlaq_laneq_f64(v59, v56, v61, 1);
    __B = -v57.f64[1];
    vDSP_vsaddD(v28 + 4, 1, &__B, v29 + 4, 1, v30);
    *a6 = v29;

    sub_18E0046F8(v34, a6, &vvrec);

    v35 = *a6;
    v36 = *(*a6 + 2);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v35;
    v38 = v35;
    if ((v37 & 1) == 0)
    {
      v38 = sub_18DFFA9A4(v35);
      *a6 = v38;
    }

    __B = vsubq_f64(v59, v57).f64[1];
    vDSP_vsmulD(v35 + 4, 1, &__B, v38 + 4, 1, v36);
    *a6 = v38;

    __B = *a6;
    v39 = *(v58 + 104);
    v46 = *off_1E72497C0;
    v45 = v39;
    v39(v54);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC0FC0);
    v40 = sub_18E006BA4(&qword_1EABC0940);
    v41 = sub_18E006BA4(&qword_1EABC0948);
    v56.i64[0] = a6;
    v51 = v40;
    v50 = v41;
    sub_18E013188();
  }

  return result;
}

void sub_18E0043B0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = *(a2 + 8);
  if (*(a1 + 16) != v4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  __C = a4;
  __B = a3;
  if (!*a2)
  {
    goto LABEL_5;
  }

  vDSP_vclipD((a1 + 32), 1, &__B, &__C, *a2, 1, v4);
}

uint64_t sub_18E004434(uint64_t a1, char **a2, uint64_t (*a3)(uint64_t, uint64_t, double *, double *, char *, uint64_t, uint64_t), double a4, double a5)
{
  v8 = *a2;
  v9 = *(*a2 + 2);
  if (*(a1 + 16) != v9)
  {
    __break(1u);
    goto LABEL_5;
  }

  v6 = a3;
  v5 = a2;
  v7 = a1;
  v11 = a5;
  v12 = a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_5:
    v8 = sub_18DFFA9A4(v8);
  }

  result = v6(v7 + 32, 1, &v12, &v11, v8 + 32, 1, v9);
  *v5 = v8;
  return result;
}

uint64_t sub_18E004500(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4 = *(a2 + 8);
  if (*(a1 + 16) != v4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  __C = a4;
  __B = a3;
  v5 = *a2;
  if (!*a2)
  {
    goto LABEL_5;
  }

  vDSP_vsmsaD((v6 + 32), 1, &__B, &__C, v5, 1, v4);
}

void sub_18E0045AC(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *a3;
  v7 = *(*a3 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v4 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v6 = sub_18DFFA9A4(v6);
  }

  vDSP_vsubD((v5 + 32), 1, (v4 + 32), 1, v6 + 4, 1, v7);
  *v3 = v6;
}

uint64_t sub_18E00464C(uint64_t a1, uint64_t a2, char **a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, char *, uint64_t, unint64_t))
{
  v10 = *a3;
  v11 = *(*a3 + 2);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a4;
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  v10 = sub_18DFFA9A4(v10);
LABEL_3:
  if (v9 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v9;
  }

  if (v11 >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  result = v5(v7 + 32, 1, v6 + 32, 1, v10 + 32, 1, v13);
  *v4 = v10;
  return result;
}

uint64_t sub_18E0046F8(uint64_t a1, char **a2, uint64_t (*a3)(char *, uint64_t, int *))
{
  v6 = *(a1 + 16);
  v7 = *a2;
  if (v6 != *(*a2 + 2))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 >> 31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = a3;
  v3 = a2;
  v5 = a1;
  v9 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v7 = sub_18DFFA9A4(v7);
  }

  result = v4(v7 + 32, v5 + 32, &v9);
  *v3 = v7;
  return result;
}

uint64_t sub_18E0047B8(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result)
  {
    sub_18E013248();
  }

  v3 = &_swiftEmptyArrayStorage[4];
  v5 = 0;
  v4[0] = &_swiftEmptyArrayStorage[4];
  v4[1] = 0;
  result = a2(v4, &v5);
  if (v2)
  {
    if (v5 <= 0)
    {
      if (!v4[0])
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v3 == v4[0])
      {
        _swiftEmptyArrayStorage[2] = v5;

        return _swiftEmptyArrayStorage;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 > 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v4[0])
  {
    if (v3 == v4[0])
    {
      _swiftEmptyArrayStorage[2] = v5;
      return _swiftEmptyArrayStorage;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_18E0048E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC1068);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_18E0049E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC1078);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_18E004AE8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC1088);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_18E004BEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_18E0048E0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18E004E58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_99:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_101:
      v83 = *(v10 + 2);
      if (v83 >= 2)
      {
        while (*a3)
        {
          v84 = *&v10[16 * v83];
          v85 = *&v10[16 * v83 + 24];
          sub_18E005440((*a3 + 16 * v84), (*a3 + 16 * *&v10[16 * v83 + 16]), (*a3 + 16 * v85), v5);
          if (v4)
          {
          }

          if (v85 < v84)
          {
            goto LABEL_124;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_18E005734(v10);
          }

          if (v83 - 2 >= *(v10 + 2))
          {
            goto LABEL_125;
          }

          v86 = &v10[16 * v83];
          *v86 = v84;
          *(v86 + 1) = v85;
          result = sub_18E0056A8(v83 - 1);
          v83 = *(v10 + 2);
          if (v83 <= 1)
          {
          }
        }

        goto LABEL_135;
      }
    }

LABEL_131:
    result = sub_18E005734(v10);
    v10 = result;
    goto LABEL_101;
  }

  v8 = a4;
  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
LABEL_4:
  v11 = v9++;
  if (v9 < v7)
  {
    v12 = *(*a3 + 16 * v9);
    v13 = *(*a3 + 16 * v11);
    v14 = vmovn_s64(vcgtq_f64(v13, v12)).u32[0];
    v15 = vmovn_s64(vcgeq_f64(v13, v12)).i32[1];
    if (vmovn_s64(vceqq_f64(v13, v12)).u8[0])
    {
      v14 = v15;
    }

    if (v7 <= v11 + 2)
    {
      v16 = v11 + 2;
    }

    else
    {
      v16 = v7;
    }

    v17 = v16 - v11 - 2;
    v18 = 16 * v11;
    v19 = (*a3 + 16 * v11 + 32);
    while (v17)
    {
      v20 = *v19++;
      v21 = v20;
      v22 = vmovn_s64(vcgtq_f64(v12, v20)).u32[0];
      v23 = vmovn_s64(vcgeq_f64(v12, v20)).i32[1];
      if (vmovn_s64(vceqq_f64(v12, v20)).u8[0])
      {
        v24 = v23;
      }

      else
      {
        v24 = v22;
      }

      --v17;
      ++v9;
      v12 = v21;
      if (v14 != v24)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_19;
      }
    }

    v9 = v16;
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_19:
    if (v9 < v11)
    {
      goto LABEL_128;
    }

    if (v11 < v9)
    {
      v25 = 16 * v9 - 16;
      v26 = v9;
      v27 = v11;
      do
      {
        if (v27 != --v26)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_134;
          }

          v28 = *(v29 + v18);
          *(v29 + v18) = *(v29 + v25);
          *(v29 + v25) = v28;
        }

        ++v27;
        v25 -= 16;
        v18 += 16;
      }

      while (v27 < v26);
      v7 = a3[1];
    }
  }

LABEL_28:
  if (v9 >= v7)
  {
    goto LABEL_48;
  }

  if (__OFSUB__(v9, v11))
  {
    goto LABEL_127;
  }

  if (v9 - v11 >= v8)
  {
    goto LABEL_48;
  }

  if (__OFADD__(v11, v8))
  {
    goto LABEL_129;
  }

  if (v11 + v8 < v7)
  {
    v7 = v11 + v8;
  }

  if (v7 < v11)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v9 == v7)
  {
    goto LABEL_48;
  }

  v30 = *a3;
  v31 = *a3 + 16 * v9 - 16;
  v32 = v11 - v9;
LABEL_38:
  v33 = *(v30 + 16 * v9);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    v36 = *v35;
    if (vmovn_s64(vceqq_f64(*v35, v33)).u8[0])
    {
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(v36, v33))).i32[1])
      {
        goto LABEL_37;
      }
    }

    else if ((vmovn_s64(vcgtq_f64(v36, v33)).u8[0] & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    *(v35 + 16) = *v35;
    *v35 = v33;
    v35 -= 16;
    if (__CFADD__(v34++, 1))
    {
LABEL_37:
      ++v9;
      v31 += 16;
      --v32;
      if (v9 != v7)
      {
        goto LABEL_38;
      }

      v9 = v7;
LABEL_48:
      if (v9 < v11)
      {
        goto LABEL_126;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_18E0049E4(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v5 = *(v10 + 2);
      v38 = *(v10 + 3);
      v39 = v5 + 1;
      if (v5 >= v38 >> 1)
      {
        result = sub_18E0049E4((v38 > 1), v5 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v39;
      v40 = &v10[16 * v5];
      *(v40 + 4) = v11;
      *(v40 + 5) = v9;
      v41 = *v88;
      if (!*v88)
      {
        goto LABEL_136;
      }

      if (v5)
      {
        while (1)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v43 = *(v10 + 4);
            v44 = *(v10 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_68:
            if (v46)
            {
              goto LABEL_115;
            }

            v59 = &v10[16 * v39];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_118;
            }

            v65 = &v10[16 * v42 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_121;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_122;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v39 - 2;
              }

              goto LABEL_89;
            }

            goto LABEL_82;
          }

          v69 = &v10[16 * v39];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_82:
          if (v64)
          {
            goto LABEL_117;
          }

          v72 = &v10[16 * v42];
          v74 = *(v72 + 4);
          v73 = *(v72 + 5);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_120;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_89:
          v80 = v42 - 1;
          if (v42 - 1 >= v39)
          {
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
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v81 = *&v10[16 * v80 + 32];
          v5 = *&v10[16 * v42 + 40];
          sub_18E005440((*a3 + 16 * v81), (*a3 + 16 * *&v10[16 * v42 + 32]), (*a3 + 16 * v5), v41);
          if (v4)
          {
          }

          if (v5 < v81)
          {
            goto LABEL_111;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_18E005734(v10);
          }

          if (v80 >= *(v10 + 2))
          {
            goto LABEL_112;
          }

          v82 = &v10[16 * v80];
          *(v82 + 4) = v81;
          *(v82 + 5) = v5;
          result = sub_18E0056A8(v42);
          v39 = *(v10 + 2);
          if (v39 <= 1)
          {
            goto LABEL_3;
          }
        }

        v47 = &v10[16 * v39 + 32];
        v48 = *(v47 - 64);
        v49 = *(v47 - 56);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_113;
        }

        v52 = *(v47 - 48);
        v51 = *(v47 - 40);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_114;
        }

        v54 = &v10[16 * v39];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_116;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v58 >= v50)
        {
          v76 = &v10[16 * v42 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_123;
          }

          if (v45 < v79)
          {
            v42 = v39 - 2;
          }

          goto LABEL_89;
        }

        goto LABEL_68;
      }

LABEL_3:
      v7 = a3[1];
      v8 = a4;
      if (v9 >= v7)
      {
        goto LABEL_99;
      }

      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
  return result;
}

uint64_t sub_18E005440(float64x2_t *__dst, float64x2_t *__src, float64x2_t *a3, float64x2_t *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6;
      v18 = *v4;
      if (vmovn_s64(vceqq_f64(*v4, *v6)).u8[0])
      {
        if (vmovn_s64(vmvnq_s8(vcgeq_f64(v18, v17))).i32[1])
        {
          goto LABEL_19;
        }
      }

      else if ((vmovn_s64(vcgtq_f64(v18, v17)).u32[0] & 1) == 0)
      {
LABEL_19:
        v15 = v4;
        v16 = v7 == v4++;
        if (v16)
        {
          goto LABEL_13;
        }

LABEL_12:
        *v7 = *v15;
        goto LABEL_13;
      }

      v15 = v6;
      v16 = v7 == v6++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_27:
    v19 = v6 - 1;
    --v5;
    v20 = v14;
    do
    {
      v21 = v20[-1];
      --v20;
      v22 = v21;
      v23 = *v19;
      if (vmovn_s64(vceqq_f64(*v19, v21)).u8[0])
      {
        if ((vmovn_s64(vmvnq_s8(vcgeq_f64(v23, v22))).i32[1] & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (vmovn_s64(vcgtq_f64(v23, v22)).u32[0])
      {
LABEL_35:
        if (&v5[1] != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (--v6, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_41;
        }

        goto LABEL_27;
      }

      if (&v5[1] != v14)
      {
        *v5 = *v20;
      }

      --v5;
      v14 = v20;
    }

    while (v20 > v4);
    v14 = v20;
  }

LABEL_41:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v24 >> 4));
  }

  return 1;
}

uint64_t sub_18E0056A8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E005734(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_18E005748(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18E0048B8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_18E0057D4()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_3:
      v4 = v3 - 1;
      result = *(v1 + 16 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_18E0048B8(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

float64x2_t *sub_18E005838(float64x2_t *result, uint64_t a2, double a3)
{
  v3 = a2 - 2;
  if (a2 >= 2 && a3 != 0.0)
  {
    v4 = 1.0;
    if (a3 != 1.0)
    {
      v5 = vmulq_n_f64(*result, 1.0 - a3);
      if (a2 != 2)
      {
        v6 = a2 + 0x7FFFFFFFFFFFFFFFLL;
        v7 = 1;
        v8 = 1.0;
        while (!__OFSUB__(a2 - 1, v7))
        {
          if (!v6)
          {
            goto LABEL_11;
          }

          v4 = v4 * a3;
          v8 = v8 * (a2 - v7) / v7;
          v5 = vmulq_n_f64(vaddq_f64(v5, vmulq_n_f64(result[v7], v4 * v8)), 1.0 - a3);
          --v6;
          ++v7;
          if (!--v3)
          {
            return result;
          }
        }

        __break(1u);
LABEL_11:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_18E005904(uint64_t result)
{
  v2 = v1[2];
  v4 = v1[4];
  v3 = v1[5];
  v5 = *result;
  v6 = *(result + 8);
  if (*result <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return result;
      }

      result = v2(1, v6, 1, *v4, v4[1], *v3, v3[1]);
    }

    else
    {
      result = v2(0, v6, 1, *v4, v4[1], *v3, v3[1]);
      *v4 = *v6;
    }

    v7 = *v6;
    goto LABEL_13;
  }

  switch(v5)
  {
    case 2:
      result = v2(2, v6, 2, *v4, v4[1], *v3, v3[1]);
      v7 = v6[1];
LABEL_13:
      *v3 = v7;
      return result;
    case 3:
      result = v2(3, v6, 3, *v4, v4[1], *v3, v3[1]);
      v7 = v6[2];
      goto LABEL_13;
    case 4:
      result = v2(4, 0, 0, *v4, v4[1], *v3, v3[1]);
      *v3 = *v4;
      *v4 = 0.0;
      v4[1] = 0.0;
      break;
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18E005A6C(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 16);
  if (*(a1 + 64))
  {
    v6 = *(a1 + 32);
    if (*(a1 + 64) == 1)
    {
      if (*(a2 + 64) == 1)
      {
        v7 = vmovn_s64(vceqq_f64(v3, v5));
        if (v7.i32[0] & v7.i32[1])
        {
          v8 = 0;
          v9 = vmovn_s64(vceqq_f64(v2, v4));
          if ((v9.i8[0] & 1) == 0 || (v9.i8[4] & 1) == 0)
          {
            return v8 & 1;
          }

          v10 = vceqq_f64(v6, *(a2 + 32));
LABEL_18:
          v15 = vmovn_s64(v10);
          if (v15.i8[0])
          {
            v8 = v15.i8[4];
          }

          return v8 & 1;
        }
      }
    }

    else if (*(a2 + 64) == 2)
    {
      v12 = vmovn_s64(vceqq_f64(v3, v5));
      if (v12.i32[0] & v12.i32[1])
      {
        v13 = vmovn_s64(vceqq_f64(v2, v4));
        if (v13.i32[0] & v13.i32[1])
        {
          v8 = 0;
          v14 = vmovn_s64(vceqq_f64(v6, *(a2 + 32)));
          if ((v14.i8[0] & 1) == 0 || (v14.i8[4] & 1) == 0)
          {
            return v8 & 1;
          }

          v10 = vceqq_f64(*(a1 + 48), *(a2 + 48));
          goto LABEL_18;
        }
      }
    }
  }

  else
  {
    v8 = *(a2 + 64);
    if (!v8)
    {
      v11 = vmovn_s64(vceqq_f64(v3, v5));
      if ((v11.i8[0] & 1) == 0 || (v11.i8[4] & 1) == 0)
      {
        return v8 & 1;
      }

      v10 = vceqq_f64(v2, v4);
      goto LABEL_18;
    }
  }

  return 0;
}

uint64_t sub_18E005BA0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18E005C10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_18E005D50(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
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
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_18E005F78()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_18E013278();
  }

  return result;
}

uint64_t sub_18E006044(unsigned __int16 *a1, unsigned int a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  v7 = swift_getAssociatedTypeWitness();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  if (v9)
  {
    v13 = *(*(v7 - 8) + 64);
  }

  else
  {
    v13 = *(*(v7 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v5 + 64) + v12;
  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v15 = v13 + (v14 & ~v12);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v18))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v18 < 2)
    {
LABEL_33:
      if (v11)
      {
LABEL_34:
        if (v6 >= v10)
        {
          v24 = *(v5 + 48);

          return v24(a1, v6, AssociatedTypeWitness);
        }

        else
        {
          v22 = (*(v8 + 48))((a1 + v14) & ~v12);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_33;
  }

LABEL_20:
  v19 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v19 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v20 = v15;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v11 + (v21 | v19) + 1;
}

void sub_18E0062F8(_BYTE *a1, uint64_t a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = 0;
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v12 <= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v10 + 80);
  v15 = *(v7 + 64) + v14;
  if (v11)
  {
    v16 = *(v10 + 64);
  }

  else
  {
    v16 = *(v10 + 64) + 1;
  }

  v17 = (v15 & ~v14) + v16;
  if (a3 <= v13)
  {
    goto LABEL_20;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v13 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v9 = 4;
      if (v13 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }

LABEL_20:
    if (v13 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v9 = 1;
  if (v13 >= a2)
  {
LABEL_30:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v17] = 0;
    }

    else if (v9)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v8 >= v12)
      {
        v27 = *(v7 + 56);

        v27(a1, a2, v8, AssociatedTypeWitness);
      }

      else
      {
        v23 = (&a1[v15] & ~v14);
        if (v12 >= a2)
        {
          v28 = *(v10 + 56);

          v28(v23, (a2 + 1));
        }

        else
        {
          if (v16 <= 3)
          {
            v24 = ~(-1 << (8 * v16));
          }

          else
          {
            v24 = -1;
          }

          if (v16)
          {
            v25 = v24 & (~v12 + a2);
            if (v16 <= 3)
            {
              v26 = v16;
            }

            else
            {
              v26 = 4;
            }

            bzero(v23, v16);
            if (v26 > 2)
            {
              if (v26 == 3)
              {
                *v23 = v25;
                v23[2] = BYTE2(v25);
              }

              else
              {
                *v23 = v25;
              }
            }

            else if (v26 == 1)
            {
              *v23 = v25;
            }

            else
            {
              *v23 = v25;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v20 = ~v13 + a2;
  if (v17 >= 4)
  {
    bzero(a1, (v15 & ~v14) + v16);
    *a1 = v20;
    v21 = 1;
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_58:
    if (v9 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_58;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v9 > 1)
    {
LABEL_62:
      if (v9 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v9 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v9)
  {
    a1[v17] = v21;
  }
}

__n128 __swift_memcpy65_16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t _s7SegmentOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s7SegmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_18E0067B4(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *v4;
  result = sub_18E004500(*v4, a1, *(v4 + 8), v5);
  *a2 = *(v6 + 16);
  return result;
}

void sub_18E006808(uint64_t a1, void *a2)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = **(v2 + 16);
  sub_18E0043B0(v6, a1, v4, v5);
  *a2 = *(v6 + 16);
}

__n128 sub_18E006858(unsigned int a1, unint64_t *a2, __n128 result)
{
  v5 = *(v3 + 16);
  if (a1 < 2)
  {
    v32 = *a2;
    v29 = a2[1];
    v16 = *v5;
  }

  else
  {
    if (a1 == 2)
    {
      v33 = *a2;
      v18 = *v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_18E0048E0(0, *(v18 + 2) + 1, 1, v18);
        *v5 = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v28 = sub_18E0048E0((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v28;
        *v5 = v28;
      }

      *(v18 + 2) = v22;
      *&v18[16 * v21 + 32] = v33;
      v16 = *v5;
      v32 = a2[2];
      v17 = a2[3];
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      v30 = *a2;
      v6 = *v5;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v6;
      if ((v7 & 1) == 0)
      {
        v6 = sub_18E0048E0(0, *(v6 + 2) + 1, 1, v6);
        *v5 = v6;
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      v10 = v9 + 1;
      if (v9 >= v8 >> 1)
      {
        v26 = sub_18E0048E0((v8 > 1), v9 + 1, 1, v6);
        v10 = v9 + 1;
        v6 = v26;
        *v5 = v26;
      }

      *(v6 + 2) = v10;
      *&v6[16 * v9 + 32] = v30;
      v11 = *v5;
      v31 = *(a2 + 1);
      v12 = swift_isUniquelyReferenced_nonNull_native();
      *v5 = v11;
      if ((v12 & 1) == 0)
      {
        v11 = sub_18E0048E0(0, *(v11 + 2) + 1, 1, v11);
        *v5 = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v27 = sub_18E0048E0((v13 > 1), v14 + 1, 1, v11);
        v15 = v14 + 1;
        v11 = v27;
        *v5 = v27;
      }

      *(v11 + 2) = v15;
      *&v11[16 * v14 + 32] = v31;
      v16 = *v5;
      v32 = a2[4];
      v17 = a2[5];
    }

    v29 = v17;
  }

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v16;
  if ((v23 & 1) == 0)
  {
    v16 = sub_18E0048E0(0, *(v16 + 2) + 1, 1, v16);
    *v5 = v16;
  }

  v25 = *(v16 + 2);
  v24 = *(v16 + 3);
  if (v25 >= v24 >> 1)
  {
    v16 = sub_18E0048E0((v24 > 1), v25 + 1, 1, v16);
    *v5 = v16;
  }

  result.n128_u64[0] = v32;
  result.n128_u64[1] = v29;
  *(v16 + 2) = v25 + 1;
  *&v16[16 * v25 + 32] = result;
  return result;
}

unint64_t sub_18E006B10()
{
  result = qword_1EABC0930;
  if (!qword_1EABC0930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABC0930);
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

uint64_t sub_18E006BA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EABC0FC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *BOMBufferAllocate(size_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A0040CA483C3BuLL);
  v3 = malloc_type_valloc(a1, 0xD78D30BBuLL);
  v2[3] = v3;
  *v2 = a1;
  if (v3)
  {
    __CFSetLastAllocationEventName();
  }

  else
  {
    free(v2);
    return 0;
  }

  return v2;
}

void *BOMBufferPoolAllocate(size_t a1, unint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10A00401B7E7879uLL);
  if (pthread_cond_init(v4 + 1, 0))
  {
    goto LABEL_4;
  }

  if (pthread_mutex_init((v4 + 12), 0))
  {
    pthread_cond_destroy(v4 + 1);
LABEL_4:
    free(v4);
    return 0;
  }

  *v4 = 0;
  v4[1] = 0;
  v4[2] = a2;
  v4[3] = a1;
  v4[4] = 0;
  v4[5] = v4 + 4;
  if (a2 >= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = a2;
  }

  if (!a2)
  {
LABEL_13:
    __CFSetLastAllocationEventName();
    return v4;
  }

  while (1)
  {
    v7 = BOMBufferAllocate(a1);
    if (!v7)
    {
      break;
    }

    --v4[2];
    BOMBufferPoolAddBuffer(v4, v7);
    if (!--v6)
    {
      goto LABEL_13;
    }
  }

  BOMBufferPoolDeallocate(v4);
  return 0;
}

void BOMBufferPoolDeallocate(uint64_t a1)
{
  if (a1 && !pthread_mutex_lock((a1 + 96)) && !pthread_mutex_unlock((a1 + 96)))
  {
    pthread_cond_destroy((a1 + 48));
    pthread_mutex_destroy((a1 + 96));
    for (i = *(a1 + 32); i; i = *(a1 + 32))
    {
      v3 = *(i + 7);
      v4 = *(i + 8);
      v5 = (v3 + 64);
      if (!v3)
      {
        v5 = (a1 + 40);
      }

      *v5 = v4;
      *v4 = v3;
      free(*(i + 3));
      *(i + 8) = 0;
      *(i + 2) = 0u;
      *(i + 3) = 0u;
      *i = 0u;
      *(i + 1) = 0u;
      free(i);
    }

    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;

    free(a1);
  }
}

uint64_t BOMBufferPoolAddBuffer(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 96));
  if (!result)
  {
    v5 = (a1 + 32);
    v6 = *(a1 + 32);
    *(a2 + 56) = v6;
    if (v6)
    {
      v7 = (v6 + 64);
    }

    else
    {
      v7 = (a1 + 40);
    }

    *v7 = a2 + 56;
    *v5 = a2;
    *(a2 + 64) = v5;
    *a1 = vaddq_s64(*a1, vdupq_n_s64(1uLL));
    pthread_mutex_unlock((a1 + 96));

    return pthread_cond_signal((a1 + 48));
  }

  return result;
}

void *BOMBufferPoolRequestBuffer(uint64_t a1)
{
  if (pthread_mutex_lock((a1 + 96)))
  {
    return 0;
  }

  while (1)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      break;
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 16) = v4 - 1;
      ++*a1;
      pthread_mutex_unlock((a1 + 96));
      v5 = BOMBufferAllocate(*(a1 + 24));
      if (v5)
      {
        return v5;
      }

      if (pthread_mutex_lock((a1 + 96)))
      {
        return 0;
      }

      ++*(a1 + 16);
      --*a1;
    }

    else if (pthread_cond_wait((a1 + 48), (a1 + 96)))
    {
      return 0;
    }
  }

  v2 = *(a1 + 32);
  v7 = *(v2 + 56);
  v8 = *(v2 + 64);
  v9 = (a1 + 40);
  if (v7)
  {
    v9 = (v7 + 64);
  }

  *v9 = v8;
  *v8 = v7;
  *(a1 + 8) = v6 - 1;
  pthread_mutex_unlock((a1 + 96));
  pthread_cond_signal((a1 + 48));
  return v2;
}

uint64_t BOMBufferPoolReturnBuffer(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 96));
  if (!result)
  {
    v6 = (a1 + 32);
    v5 = *(a1 + 32);
    *(a2 + 56) = v5;
    if (v5)
    {
      v7 = (v5 + 64);
    }

    else
    {
      v7 = (a1 + 40);
    }

    *v7 = a2 + 56;
    *v6 = a2;
    *(a2 + 64) = v6;
    ++*(a1 + 8);
    pthread_mutex_unlock((a1 + 96));

    return pthread_cond_signal((a1 + 48));
  }

  return result;
}

char *BOMBufferFIFOCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x88uLL, 0x10A0040F4061A9FuLL);
  if (!pthread_cond_init((v0 + 24), 0))
  {
    if (!pthread_mutex_init((v0 + 72), 0))
    {
      *v0 = 0;
      *(v0 + 1) = 0;
      *(v0 + 2) = v0 + 8;
      return v0;
    }

    pthread_cond_destroy((v0 + 24));
  }

  free(v0);
  return 0;
}

void BOMBufferFIFODestroy(uint64_t a1)
{
  if (a1 && !pthread_mutex_lock((a1 + 72)))
  {
    if (*a1)
    {
      v9 = BOMExceptionHandlerMessage("Attempting to destroy a non-empty FIFO!", v2, v3, v4, v5, v6, v7, v8, v11);
      v10 = __error();
      _BOMFatalException(v9, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMBufferManager.c", 311, *v10);
    }

    if (!pthread_mutex_unlock((a1 + 72)))
    {
      pthread_cond_destroy((a1 + 24));
      pthread_mutex_destroy((a1 + 72));

      free(a1);
    }
  }
}

uint64_t BOMBufferFIFOEnqueue(uint64_t a1, uint64_t a2)
{
  result = pthread_mutex_lock((a1 + 72));
  if (!result)
  {
    *(a2 + 56) = 0;
    v5 = *(a1 + 16);
    *(a2 + 64) = v5;
    *v5 = a2;
    *(a1 + 16) = a2 + 56;
    ++*a1;
    pthread_mutex_unlock((a1 + 72));

    return pthread_cond_broadcast((a1 + 24));
  }

  return result;
}

uint64_t BOMBufferFIFODequeue(uint64_t *a1)
{
  if (pthread_mutex_lock((a1 + 9)))
  {
    return 0;
  }

  while (1)
  {
    v4 = *a1;
    if (*a1)
    {
      break;
    }

    if (pthread_cond_wait((a1 + 3), (a1 + 9)))
    {
      return 0;
    }
  }

  v2 = a1[1];
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v7 = a1 + 2;
  if (v5)
  {
    v7 = (v5 + 64);
  }

  *v7 = v6;
  *v6 = v5;
  v8 = v4 - 1;
  *a1 = v4 - 1;
  pthread_mutex_unlock((a1 + 9));
  v9 = (a1 + 3);
  if (v8)
  {
    pthread_cond_signal(v9);
  }

  else
  {
    pthread_cond_broadcast(v9);
  }

  return v2;
}

uint64_t BOMBufferFIFOCount(uint64_t *a1)
{
  if (pthread_mutex_lock((a1 + 9)))
  {
    return 0;
  }

  v2 = *a1;
  pthread_mutex_unlock((a1 + 9));
  return v2;
}

void __defaultHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24))
  {
    _CUILog(4, "[%s:%u] %s", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  }

  else
  {
    _CUILog(4, "%s", a3, a4, a5, a6, a7, a8, *a1);
  }

  if (*(a1 + 8))
  {
    abort();
  }
}

void _BOMFatalException(void *a1, const char *a2, int a3, int a4)
{
  v8 = __BOMGlobalExceptionHandler();
  if (!a1)
  {
    a1 = __BOMExceptionMessageString();
  }

  v11 = a1;
  v12 = 0;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = __defaultHandler;
  }

  LOBYTE(v12) = 1;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = "";
  }

  v13 = v10;
  v14 = a3;
  v15 = a4;
  (v9)(&v11);
  abort();
}

void *__BOMGlobalExceptionHandler()
{
  if (__BOMExceptionHandlerKey___onceHandler != -1)
  {
    BOMExceptionHandlerSet_cold_1();
  }

  v1 = __BOMExceptionHandlerKey___key;

  return pthread_getspecific(v1);
}

uint64_t (*_BOMExceptionHandlerCall(void *a1, unsigned __int8 a2, const char *a3, int a4, int a5))(void *)
{
  result = __BOMGlobalExceptionHandler();
  if (result)
  {
    v11 = result;
    if (!a1)
    {
      a1 = __BOMExceptionMessageString();
    }

    v13[0] = a1;
    v12 = "";
    v13[1] = a2;
    if (a3)
    {
      v12 = a3;
    }

    v13[2] = v12;
    v14 = a4;
    v15 = a5;
    return v11(v13);
  }

  return result;
}

uint64_t _BOMFileSetupGzip(uint64_t a1, int a2)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    v4 = malloc_type_malloc(0x70uLL, 0x10B0040E8CA615DuLL);
    *v5 = v4;
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    v6 = malloc_type_malloc(0x20000uLL, 0xE81782D7uLL);
    *(a1 + 40) = v6;
    v4 = *(a1 + 32);
    if (!v6)
    {
      free(*(a1 + 32));
      goto LABEL_14;
    }
  }

  v4->zalloc = 0;
  (*v5)->zfree = 0;
  (*v5)->opaque = 0;
  v7 = *v5;
  if (a2)
  {
    *v7 = 0;
    (*v5)->next_out = v6;
    (*v5)->avail_in = 0;
    (*v5)->avail_out = 0x20000;
    if (deflateInit2_(*v5, -1, 8, -15, 8, 0, "1.2.12", 112))
    {
LABEL_7:
      free(*(a1 + 32));
      free(*(a1 + 40));
      v5[1] = 0;
LABEL_14:
      *v5 = 0;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *v7 = v6;
    v8 = *(a1 + 64);
    if (v8)
    {
      if (*(a1 + 72))
      {
        v9 = (a1 + 76);
      }

      else
      {
        v9 = v6;
      }

      memcpy(**(a1 + 32), v9, v8);
      *(*(a1 + 32) + 8) = *(a1 + 64);
      *(a1 + 64) = 0;
    }

    else
    {
      (*v5)->avail_in = 0;
    }

    (*v5)->next_out = 0;
    (*v5)->avail_out = 0;
    if (inflateInit2_(*v5, 47, "1.2.12", 112))
    {
      goto LABEL_7;
    }
  }

  v11 = crc32(0, 0, 0);
  result = 0;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0;
  return result;
}

void *_initBufferPool()
{
  result = BOMBufferPoolAllocate(gBOMAsyncBufferSize, gBOMAsyncBufferCount);
  if (!result)
  {
    v8 = BOMExceptionHandlerMessage("Unable to allocate BOM buffer pool gBOMAsyncBufferSize=%lu gBOMAsyncBufferCount=%u!\n", v1, v2, v3, v4, v5, v6, v7, gBOMAsyncBufferSize);
    v9 = __error();
    _BOMFatalException(v8, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMFile.c", 1746, *v9);
  }

  gBufferPool = result;
  return result;
}

uint64_t _asyncWriteThread(uint64_t a1)
{
  if (gBOMAsyncDebug == 1)
  {
    fwrite("async write thread starting\n", 0x1CuLL, 1uLL, __stderrp);
  }

  v2 = 0;
  do
  {
    v3 = BOMBufferFIFODequeue(*(a1 + 88));
    v4 = BOMFileWrite(*(a1 + 8), *(v3 + 24), *(v3 + 16));
    v5 = *(v3 + 48);
    if ((v5 & 1) != 0 && gBOMAsyncDebug == 1)
    {
      fwrite("async write thread asked to finish\n", 0x23uLL, 1uLL, __stderrp);
    }

    if (v4 == -1)
    {
      if (gBOMAsyncDebug == 1)
      {
        v7 = __stderrp;
        v8 = __error();
        fprintf(v7, "async write thread finished file (errno=%d)\n", *v8);
      }

      v2 = *__error();
      v6 = 1;
    }

    else
    {
      v6 = v5 & 1;
    }

    ++*(v3 + 40);
    BOMBufferPoolReturnBuffer(gBufferPool, v3);
  }

  while (!v6);
  if (!pthread_mutex_lock((a1 + 160)))
  {
    *(a1 + 224) = 2;
    *(a1 + 228) = v2;
    if (!pthread_cond_signal((a1 + 112)) && !pthread_mutex_unlock((a1 + 160)) && gBOMAsyncDebug == 1)
    {
      fwrite("async write thread terminating\n", 0x1FuLL, 1uLL, __stderrp);
    }
  }

  return 0;
}

uint64_t _asyncReadThread(uint64_t a1)
{
  if (gBOMAsyncDebug == 1)
  {
    fwrite("async read thread starting\n", 0x1BuLL, 1uLL, __stderrp);
  }

  while (1)
  {
    v2 = BOMBufferPoolRequestBuffer(gBufferPool);
    if (pthread_mutex_lock((a1 + 160)) || (v3 = *(a1 + 224), pthread_mutex_unlock((a1 + 160))))
    {
      v5 = 0;
      goto LABEL_19;
    }

    if (v3 == 1)
    {
      if (gBOMAsyncDebug == 1)
      {
        fwrite("async read thread asked to finish\n", 0x22uLL, 1uLL, __stderrp);
LABEL_12:
        if (gBOMAsyncDebug == 1)
        {
          fwrite("async read thread finished file\n", 0x20uLL, 1uLL, __stderrp);
        }
      }

      v5 = 0;
      goto LABEL_18;
    }

    v4 = BOMFileRead(*(a1 + 8), v2[3], *v2);
    if (v4 == -1)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_12;
    }

    v2[1] = 0;
    v2[2] = v4;
    ++v2[5];
    BOMBufferFIFOEnqueue(*(a1 + 88), v2);
  }

  if (gBOMAsyncDebug == 1)
  {
    v6 = __stderrp;
    v7 = __error();
    fprintf(v6, "async read thread finished file (errno=%d)\n", *v7);
  }

  v5 = *__error();
LABEL_18:
  v2[1] = 0;
  v2[2] = 0;
  ++v2[5];
LABEL_19:
  if (!pthread_mutex_lock((a1 + 160)))
  {
    *(a1 + 224) = 2;
    *(a1 + 228) = v5;
    if (!pthread_cond_signal((a1 + 112)) && !pthread_mutex_unlock((a1 + 160)))
    {
      if (v2)
      {
        BOMBufferFIFOEnqueue(*(a1 + 88), v2);
      }

      if (gBOMAsyncDebug == 1)
      {
        fwrite("async read thread terminating\n", 0x1EuLL, 1uLL, __stderrp);
      }
    }
  }

  return 0;
}

uint64_t _dense_initialize(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  if ((a3 & 7) == 0 && (a3 >> 3) >= 1)
  {
    v5 = result;
    v6 = (a3 >> 3) & 0x7FFFFFFF;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v7 - 1);
      v9 = bswap32(v8);
      v10 = bswap32(*v7);
      if (a4)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      if (a4)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v7;
      }

      result = (*(v5 + 40))(v5, v11, v12);
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t _dense_print(uint64_t result, FILE *__stream, int a3)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*v5 + 8 * i);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *v8;
        }

        while (v8);
        if (v9 == 1)
        {
          v10 = "y";
        }

        else
        {
          v10 = "ies";
        }

        result = fprintf(__stream, "Size %d: %d entr%s\n", i, v9, v10);
        v6 = *(v5 + 16);
      }
    }
  }

  v11 = *(v5 + 8);
  if (v11)
  {
    if (a3)
    {
      fwrite("Large sizes:\n\t", 0xEuLL, 1uLL, __stream);
    }

    v12 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    while (1)
    {
      fprintf(__stream, "%d ", *(v11 + 3));
      v11 = *v11;
      if (!v11)
      {
        break;
      }

      while (1)
      {
        ++v12;
        if (a3)
        {
          break;
        }

LABEL_17:
        v11 = *v11;
        if (!v11)
        {
          v13 = "ies";
          if (v12 == 1)
          {
            v13 = "y";
          }

          return fprintf(__stream, "Large sizes: %d entr%s\n", v12, v13);
        }
      }
    }

    return fputc(10, __stream);
  }

  return result;
}

void _ExpandBlockTable(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1068);
  if (v3 < a2)
  {
    v5 = 8 * a2;
    v6 = reallocf(*(a1 + 1072), v5);
    *(a1 + 1072) = v6;
    bzero(&v6[8 * v3], v5 - 8 * v3);
    v7 = *(a1 + 1068);
    v8 = 4 * a2;
    v9 = reallocf(*(a1 + 1080), v8);
    *(a1 + 1080) = v9;
    if (v8 > 4 * v7)
    {
      bzero(&v9[4 * v7], v8 - 4 * v7);
    }

    *(a1 + 1068) = a2;
  }

  if (!*(a1 + 1072) || !*(a1 + 1080))
  {
    v10 = *__error();

    _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1704, v10);
  }
}

double BOMStorageFreeBlock(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && *(a1 + 1056) >= a2)
  {
    v10 = *(a1 + 1068);
    if (v10 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
      v10 = *(a1 + 1068);
      v12 = -1;
    }

    else
    {
      v11 = bswap32(*(*(a1 + 1072) + 8 * a2));
      if (*(a1 + 1052))
      {
        v12 = *(*(a1 + 1072) + 8 * a2);
      }

      else
      {
        v12 = v11;
      }
    }

    if (v10 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
LABEL_19:
      result = NAN;
      *(*(a1 + 1072) + 8 * a2) = -1;
      return result;
    }

    v14 = bswap32(*(*(a1 + 1072) + 8 * a2 + 4));
    if (*(a1 + 1052))
    {
      v15 = *(*(a1 + 1072) + 8 * a2 + 4);
    }

    else
    {
      v15 = v14;
    }

    if (v12 != -1 || v15 != -1)
    {
      if (v12)
      {
        if (v15)
        {
          (*(*(a1 + 1088) + 40))();
        }
      }

      goto LABEL_19;
    }
  }

  return result;
}

void BOMStorageFreeNamedBlock(uint64_t a1, const char *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = _tocGet(a1, a2);
      if (v4)
      {
        BOMStorageFreeBlock(a1, v4, v5, v6, v7, v8, v9, v10);
        if (*(a1 + 1096))
        {
          v11 = strlen(a2);
          v12 = *(a1 + 1100);
          if (v12)
          {
            v13 = (*(*(a1 + 1088) + 48))();
            if (!v13)
            {
              v13 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = (v12 - v11 - 5);
          _ExpandMapAddress(a1, v13 + v14);
          v15 = BOMStreamWithAddress(*(a1 + 1040) + *(a1 + 1096), *(a1 + 1100), 0);
          if (v15)
          {
            v16 = v15;
            v17 = BOMStreamWithAddress(*(a1 + 1040) + v13, v14, 1);
            if (v17)
            {
              v25 = v17;
              UInt32 = BOMStreamReadUInt32(v16, v18, v19, v20, v21, v22, v23, v24);
              BOMStreamWriteUInt32(v25, (UInt32 - 1), v27, v28, v29, v30, v31, v32);
              for (; UInt32; --UInt32)
              {
                v40 = BOMStreamReadUInt32(v16, v33, v34, v35, v36, v37, v38, v39);
                UInt8 = BOMStreamReadUInt8(v16, v41, v42, v43, v44, v45, v46, v47);
                BOMStreamReadBuffer(v16, __s1, UInt8, v49, v50, v51, v52, v53);
                __s1[UInt8] = 0;
                if (strcmp(__s1, a2))
                {
                  BOMStreamWriteUInt32(v25, v40, v34, v35, v36, v37, v38, v39);
                  BOMStreamWriteUInt8(v25, UInt8, v54, v55, v56, v57, v58, v59);
                  BOMStreamWriteBuffer(v25, __s1, UInt8, v60, v61, v62, v63, v64);
                }
              }

              BOMStreamFree(v16, v33, v34, v35, v36, v37, v38, v39);
              BOMStreamFree(v25, v65, v66, v67, v68, v69, v70, v71);
              if (*(a1 + 1096) && *(a1 + 1100))
              {
                (*(*(a1 + 1088) + 40))();
              }

              *(a1 + 1096) = v13;
              *(a1 + 1100) = v14;
              _AdjustFileSize(a1, v13, v14);
              if (*(a1 + 1028) != -1)
              {
                _AddToWriteCache(a1, v13, v14);
              }

              *(a1 + 1052) |= 0x10u;
            }
          }
        }
      }
    }
  }
}

uint64_t BOMTreeRemoveAndFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = BOMTreeIteratorNew(result, 0, 0, 0);
    if (v3)
    {
      for (i = v3; !BOMTreeIteratorIsAtEnd(i, v4, v5, v6, v7, v8, v9, v10); BOMTreeIteratorNext(i, v31, v32, v33, v34, v35, v36, v37))
      {
        v19 = BOMTreeIteratorKey(i, v12, v13, v14, v15, v16, v17, v18);
        v27 = BOMTreeIteratorKeySize(i, v20, v21, v22, v23, v24, v25, v26);
        BOMTreeRemoveValue(v1, v19, v27, v28, v29, v30);
      }

      BOMTreeIteratorFree(i);
      BOMStorageFreeBlock(v2, **(v1 + 24), v38, v39, v40, v41, v42, v43);
      _FreePage(v1, *(v1 + 24));
      *(v1 + 24) = 0;
      v50 = *(v1 + 8);
      if (v50)
      {
        BOMStorageFreeNamedBlock(v2, v50);
      }

      else
      {
        BOMStorageFreeBlock(v2, *(v1 + 16), v44, v45, v46, v47, v48, v49);
      }

      v51 = *(v1 + 8);
      if (v51 && (*(v1 + 356) & 0x20) != 0)
      {
        free(v51);
        *(v1 + 8) = 0;
      }

      v52 = *(v1 + 296);
      if (v52)
      {
        CFRelease(v52);
      }

      free(v1);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BOMTreeRemoveValue(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      v8 = *(a1 + 356);
      if (a3 || (v8 & 4) != 0)
      {
        if ((v8 & 2) != 0)
        {
          v9 = *(a1 + 24);
          result = _findRemove(a1, &v9, 0, 0, 0, 0, a2, a3, 0);
          if (!result)
          {
            --*(a1 + 20);
            *(a1 + 356) |= 1u;
          }
        }

        else
        {
          _CUILog(4, "%s BOMTree '%s' is read-only can't remove value", a3, a4, a5, a6, a2, a3, "int BOMTreeRemoveValue(BOMTree, void *, size_t)");
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t _findRemove(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, char *a9)
{
  v13 = a2;
  v15 = a9;
  v101 = 0;
  v16 = *a2;
  v100 = 0;
  v99 = 0;
  if (!a9)
  {
    v15 = &v99;
  }

  v98 = v15;
  IndexForKey = _findIndexForKey(a1, v16, a7, a8, &v101, a6, a7, a8);
  v24 = IndexForKey;
  *(v16 + 20) = IndexForKey;
  if (*(v16 + 4))
  {
    if (!v101)
    {
      return 1;
    }

    goto LABEL_43;
  }

  if (IndexForKey)
  {
    Page = _findPage(a1, *(*(v16 + 24) + 8 * (IndexForKey - 1)), v18, v19, v20, v21, v22, v23);
    v26 = *(Page + 2);
    if ((v26 & 8) == 0)
    {
      v93 = v16;
LABEL_12:
      v94 = 0;
      *(Page + 2) = v26 | 8;
      goto LABEL_16;
    }

    v94 = 1;
    v93 = v16;
  }

  else if (a3)
  {
    Page = _findPage(a1, *(*(a3 + 24) + 8 * *(a3 + 16)), v18, v19, v20, v21, v22, v23);
    v26 = *(Page + 2);
    if ((v26 & 8) == 0)
    {
      v93 = a5;
      goto LABEL_12;
    }

    v94 = 1;
    v93 = a5;
  }

  else
  {
    v93 = 0;
    Page = 0;
    v94 = 1;
  }

LABEL_16:
  v95 = a4;
  if (v24 == *(v16 + 16))
  {
    if (a4)
    {
      a4 = _findPage(a1, **(a4 + 24), v18, v19, v20, v21, v22, v23);
      v28 = *(a4 + 4);
      if ((v28 & 8) == 0)
      {
        v29 = a6;
LABEL_22:
        v92 = 0;
        *(a4 + 4) = v28 | 8;
        goto LABEL_26;
      }

      v92 = 1;
      v29 = a6;
    }

    else
    {
      v29 = 0;
      v92 = 1;
    }
  }

  else
  {
    a4 = _findPage(a1, *(*(v16 + 24) + 8 * (v24 + 1)), v18, v19, v20, v21, v22, v23);
    v28 = *(a4 + 4);
    if ((v28 & 8) == 0)
    {
      v29 = v16;
      goto LABEL_22;
    }

    v92 = 1;
    v29 = v16;
  }

LABEL_26:
  v90 = v13;
  v30 = _findPage(a1, *(*(v16 + 24) + 8 * v24), v18, v19, v20, v21, v22, v23);
  v100 = v30;
  if (!v30)
  {
    v88 = __error();
    _BOMFatalException("BOMTree in invalid state - nextNode is NULL!", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1819, *v88);
  }

  v31 = *(v30 + 2);
  if ((v31 & 8) == 0)
  {
    *(v30 + 2) = v31 | 8;
  }

  if (a3)
  {
    *(a3 + 4) &= ~4u;
  }

  if (v95)
  {
    *(v95 + 4) &= ~4u;
  }

  *(v30 + 2) &= ~4u;
  result = _findRemove(a1, &v100, Page, a4, v93, v29, a7, a8, v98);
  if ((v94 & 1) == 0)
  {
    *(Page + 2) &= ~8u;
  }

  if ((v92 & 1) == 0)
  {
    *(a4 + 4) &= ~8u;
  }

  if ((v31 & 8) == 0 && v100)
  {
    *(v100 + 2) &= ~8u;
  }

  if (!result)
  {
    a4 = v95;
    v13 = v90;
    if ((*(v16 + 4) & 1) == 0 || !v101)
    {
      if (!*v98)
      {
        return 0;
      }

      goto LABEL_44;
    }

LABEL_43:
    _invalidateIteratorsForPageID(a1, *v16);
LABEL_44:
    v38 = *(v16 + 16);
    v39 = *(v16 + 24);
    v40 = v38 - v24;
    if (v38 == v24)
    {
      v41 = 0;
      v42 = 0;
      *(v39 + 8 * (v24 - 1) + 4) = 0;
    }

    else
    {
      v43 = (v39 + 8 * v24);
      v42 = *v43;
      v41 = v43[1];
      v44 = v24;
      do
      {
        *(v39 + 8 * v44) = *(v39 + 8 * (v44 + 1));
        ++v44;
        --v40;
      }

      while (v40);
    }

    *(v39 + 8 * v38) = 0;
    *(v16 + 16) = v38 - 1;
    if (*(v16 + 4))
    {
      if ((*(a1 + 356) & 4) == 0 && v41)
      {
        BOMStorageFreeBlock(*a1, v41, v32, v33, v34, v35, v36, v37);
      }

      if (v42)
      {
        BOMStorageFreeBlock(*a1, v42, v32, v33, v34, v35, v36, v37);
      }
    }

    v45 = *(v16 + 4);
    *(v16 + 4) = v45 | 2;
    v46 = *(v16 + 16);
    if (v45)
    {
      v47 = a6;
      if (a6 && v24 == v46)
      {
        *(*(a6 + 24) + 8 * *(a6 + 20) + 4) = *(*(v16 + 24) + 8 * (v24 - 1) + 4);
        *(a6 + 4) |= 2u;
        v46 = *(v16 + 16);
      }
    }

    else
    {
      v47 = a6;
    }

    v48 = *(a1 + 316);
    if (v48 <= v46)
    {
      result = 0;
      *v98 = 0;
      return result;
    }

    v49 = *(a1 + 24);
    if (v16 != v49)
    {
      v50 = *v13;
      if (!(a3 | a4))
      {
LABEL_112:
        result = 0;
        *v13 = v50;
        return result;
      }

      if (a3)
      {
        v51 = a3;
      }

      else
      {
        v51 = a4;
      }

      v52 = a5;
      if (!a3)
      {
        v52 = v47;
      }

      v53 = a3;
      if (a4)
      {
        v54 = a3 != 0;
      }

      else
      {
        v54 = 0;
      }

      v89 = v53;
      v91 = v13;
      if (v54)
      {
        v55 = *(v53 + 16);
        v56 = *(a4 + 16);
        if (v55 >= v56)
        {
          if (v55 <= v56)
          {
            v81 = *(*(v47 + 24) + 8 * *(v47 + 20));
            if (*v50 == v81)
            {
              v51 = a4;
            }

            else
            {
              v51 = v53;
            }

            if (*v50 != v81)
            {
              v47 = a5;
            }
          }

          else
          {
            v51 = v53;
            v47 = a5;
          }
        }

        else
        {
          v51 = a4;
        }
      }

      else
      {
        v47 = v52;
      }

      v65 = *(v51 + 16);
      v66 = a4;
      v67 = v51 == a4;
      v68 = v51 == a4;
      if (v67)
      {
        v69 = v50;
      }

      else
      {
        v69 = v51;
      }

      if (v50[2])
      {
        v70 = v47;
        _invalidateIteratorsForPageID(a1, *v51);
        v47 = v70;
      }

      v71 = *(v47 + 20) - (v51 != v66);
      if ((v69[2] & 1) == 0)
      {
        v72 = v69[8];
        *(*(v69 + 3) + 8 * v72 + 4) = *(*(v47 + 24) + 8 * v71 + 4);
        v69[8] = v72 + 1;
        v69[2] |= 2u;
      }

      if (v48 < v65)
      {
        v73 = a1;
        v74 = v47;
        _shiftKeysAndValues(v73, v50, v51, v68);
        v75 = *(*(v69 + 3) + 8 * v69[8] - 4);
        v76 = *(v74 + 24) + 8 * v71;
        v78 = *(v76 + 4);
        v77 = (v76 + 4);
        v13 = v91;
        if (v78 != v75)
        {
          *v77 = v75;
          *(v74 + 4) |= 2u;
        }

        v79 = 0;
        if ((v69[2] & 1) == 0)
        {
          v80 = v69[8] - 1;
          v69[8] = v80;
          *(*(v69 + 3) + 8 * v80 + 4) = 0;
          v69[2] |= 2u;
        }

        goto LABEL_111;
      }

      _shiftKeysAndValues(a1, v51, v50, v51 != v66);
      v13 = v91;
      if (v54)
      {
        *(v89 + 8) = *v66;
        *(v66 + 12) = *v89;
        *(v89 + 4) |= 2u;
      }

      else if (v89)
      {
        *(v89 + 8) = 0;
        v66 = v89;
      }

      else
      {
        if (!v66)
        {
LABEL_110:
          v50[2] &= ~8u;
          _removePageFromCache(a1, v50);
          BOMStorageFreeBlock(*a1, *v50, v82, v83, v84, v85, v86, v87);
          _FreePage(a1, v50);
          v50 = 0;
          v79 = 1;
LABEL_111:
          *v98 = v79;
          goto LABEL_112;
        }

        *(v66 + 12) = 0;
      }

      *(v66 + 4) |= 2u;
      goto LABEL_110;
    }

    if ((*(v49 + 4) & 1) == 0 && !*(v49 + 16))
    {
      v57 = **(v49 + 24);
      if (v57)
      {
        v58 = _findPage(a1, v57, v32, v33, v34, v35, v36, v37);
        v58[2] &= ~8u;
        _removePageFromCache(a1, v58);
        *(a1 + 24) = v58;
        BOMStorageFreeBlock(*a1, *v49, v59, v60, v61, v62, v63, v64);
        _FreePage(a1, v49);
      }
    }

    return 0;
  }

  return result;
}

uint64_t BOMTreeIteratorValueSize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || (*(a1 + 57) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 57) & 1) != 0 || (v9 = *(a1 + 8)) == 0 || *v9 != *(a1 + 16))
  {
    if (_revalidateIterator(a1, a2, a3, a4, a5, a6, a7, a8))
    {
      v9 = *(a1 + 8);
      goto LABEL_8;
    }

    *(a1 + 57) |= 8u;
    return 0;
  }

LABEL_8:
  v10 = **a1;
  v11 = *(*(v9 + 24) + 8 * *(a1 + 20));
  v12 = bswap32(v11);
  if ((*(*a1 + 356) & 0x40) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  return BOMStorageSizeOfBlock(v10, v13, a3, a4, a5, a6, a7, a8);
}

void _addPageToCache(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 32;
  v4 = *(a1 + 288);
  v5 = *(a1 + 32 + 8 * v4);
  if (v5)
  {
    while (1)
    {
      v7 = v5[2];
      if ((v7 & 0xC) == 4)
      {
        break;
      }

      v5[2] = v7 | 4;
      v8 = *(a1 + 288) + 1;
      v9 = -v8 < 0;
      v10 = -v8 & 0x1F;
      LODWORD(v4) = v8 & 0x1F;
      if (!v9)
      {
        LODWORD(v4) = -v10;
      }

      *(a1 + 288) = v4;
      v5 = *(v3 + 8 * v4);
      if (!v5)
      {
        v4 = v4;
        goto LABEL_10;
      }
    }

    if ((v7 & 2) != 0)
    {
      _WritePage(a1, v5);
    }

    _FreePage(a1, v5);
    v4 = *(a1 + 288);
  }

LABEL_10:
  *(v3 + 8 * v4) = a2;
}

uint64_t _invalidateIterator(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if (*(result + 16) == a2 && (*(result + 57) & 9) == 0)
    {
      result = *(result + 8);
      if (!result || *result != a2)
      {
        result = _findPage(*v8, a2, a3, a4, a5, a6, a7, a8);
        *(v8 + 8) = result;
        if (!result)
        {
          goto LABEL_27;
        }
      }

      v9 = *v8;
      v10 = *(*v8 + 356);
      if ((v10 & 4) != 0)
      {
        v12 = *(*(result + 24) + 8 * *(v8 + 20) + 4);
        v13 = bswap32(v12);
        if ((v10 & 0x40) != 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        *(v8 + 24) = v14;
        *(v8 + 32) = 0;
        goto LABEL_27;
      }

      if ((v10 & 0x40) != 0)
      {
        v15 = *(v9 + 348);
        if (v15 >= 1)
        {
LABEL_17:
          *(v8 + 32) = v15;
          v16 = *(v8 + 24);
          if (v16)
          {
            free(v16);
            *(v8 + 24) = 0;
            v15 = *(v8 + 32);
          }

          v17 = malloc_type_malloc(v15, 0x7AC53727uLL);
          *(v8 + 24) = v17;
          if (!v17)
          {
            v28 = __error();
            _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (!it->key).", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2782, *v28);
          }

          v23 = *v8;
          if ((*(*v8 + 356) & 0x40) != 0)
          {
            v25 = *(v23 + 348);
            v26 = *(v8 + 8);
            if (v25 >= 1)
            {
              v27 = *(v26 + 32);
              if (!v27)
              {
                v30 = __error();
                _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (__getKeyIDValuePTR return 0).", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2790, *v30);
              }

              result = memcpy(v17, (v27 + *(v8 + 20) * v25), v25);
              goto LABEL_27;
            }

            v24 = bswap32(*(*(v26 + 24) + 8 * *(v8 + 20) + 4));
          }

          else
          {
            v24 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
          }

          result = BOMStorageCopyFromBlock(*v23, v24, v17, v18, v19, v20, v21, v22);
          if (result)
          {
            v29 = __error();
            _BOMFatalException("BOMTree iterator cannot cache keys. This is a fatal error (BOMStorageCopyFromBlock returned an error).", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2795, *v29);
          }

LABEL_27:
          *(v8 + 57) |= 1u;
          return result;
        }

        v11 = bswap32(*(*(result + 24) + 8 * *(v8 + 20) + 4));
      }

      else
      {
        v11 = *(*(result + 24) + 8 * *(v8 + 20) + 4);
      }

      v15 = BOMStorageSizeOfBlock(*v9, v11, a3, a4, a5, a6, a7, a8);
      goto LABEL_17;
    }
  }

  return result;
}

void _removePageFromCache(uint64_t a1, _WORD *a2)
{
  if ((a2[2] & 8) == 0)
  {
    for (i = 32; i != 288; i += 8)
    {
      if (*(a1 + i) == a2)
      {
        v5 = *(a1 + 296);
        if (v5)
        {
          v6 = BOMCFArrayMaxRange(v5);
          v8 = v7;
          v10.location = v6;
          v10.length = v8;
          CFArrayApplyFunction(*(a1 + 296), v10, _pageRemovedCallback, a2);
        }

        *(a1 + i) = 0;
      }
    }

    if ((a2[2] & 2) != 0)
    {

      _WritePage(a1, a2);
    }
  }
}

uint64_t _pageRemovedCallback(uint64_t result, uint64_t a2)
{
  if (result && a2 && *(result + 8) == a2)
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t _shiftKeysAndValues(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 16);
  v5 = *(result + 316);
  v6 = v4 >= v5;
  v8 = v4 - v5;
  v7 = v8 != 0 && v6;
  v9 = (v8 + 1) >> 1;
  if (v7)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a3 + 16);
  }

  v11 = *(a2 + 16);
  v12 = v10 + v11;
  v13 = (v4 - v10);
  if (a4)
  {
    v14 = 0;
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v15 = *(a2 + 24);
  *(v15 + 8 * (v10 + v11)) = *(v15 + 8 * v11);
  if (v11)
  {
    v16 = v11 - 1;
    v17 = v11 - 1 + v10;
    do
    {
      *(v15 + 8 * v17--) = *(v15 + 8 * v16--);
      --v11;
    }

    while (v11);
  }

  v14 = v4 - v10;
  if (v10)
  {
LABEL_11:
    v18 = *(a3 + 24);
    v19 = *(a2 + 24);
    v11 = v11;
    v20 = v10;
    do
    {
      *(v19 + 8 * v11) = *(v18 + 8 * v14);
      if (!a4)
      {
        *(v18 + 8 * v14) = 0;
      }

      ++v11;
      ++v14;
      --v20;
    }

    while (v20);
  }

LABEL_15:
  if (a4)
  {
    if ((*(a2 + 4) & 1) == 0 && v4 == v10)
    {
      v21 = *(a3 + 24);
      v22 = 8 * v14;
      *(*(a2 + 24) + 8 * v11) = *(v21 + v22);
      *(v21 + v22) = 0;
    }

    if (v4 != v10)
    {
      if (v4)
      {
        v23 = 0;
        v24 = 8 * v10;
        v25 = 8 * v10;
        do
        {
          if (v23 >= v13)
          {
            v26 = *(a3 + 24);
            if (v13 == v23)
            {
              *(v26 + 8 * v13) = *(v26 + 8 * v13 + v25);
            }

            else
            {
              *(v26 + 8 * v23) = 0;
            }
          }

          else
          {
            v26 = *(a3 + 24);
            *(v26 + 8 * v23) = *(v26 + v24);
          }

          ++v23;
          v24 += 8;
        }

        while (v4 != v23);
      }

      else
      {
        v26 = *(a3 + 24);
      }

      *(v26 + 8 * v4) = 0;
    }
  }

  *(a2 + 16) = v12;
  *(a2 + 4) |= 2u;
  *(a3 + 16) = v13;
  *(a3 + 4) |= 2u;
  return result;
}

void RB::Path::JoinStroke::closepath()
{
  __assert_rtn("closepath", "path-join-stroke.cc", 120, "std::max(i0, i1) >= _subpath_index");
}

{
  __assert_rtn("closepath", "path-join-stroke.cc", 107, "_subpath.empty()");
}

void __CUISubtypeFromIndex_cold_1(uint64_t a1)
{
  CUIPlatformNameForPlatform(a1);
  _CUILog(4, "CoreUI: %s got a index %d that doesn't map to a known device subtype in platform %d:'%@'", v1, v2, v3, v4, v5, v6, "int32_t __CUISubtypeFromIndex(CUIThemeSchemaPlatform, u_int32_t)");
  abort();
}

void CPSDImageLoad::UncompressChannelImageData()
{
  __assert_rtn("UncompressChannelImageData", "PSDLoader.cpp", 4894, "buffer");
}

{
  __assert_rtn("UncompressChannelImageData", "PSDLoader.cpp", 4893, "byteCounts");
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CPSDLayerRecord>,CPSDLayerRecord*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 488;
  v4 = (a1 - 488);
  do
  {
    result = (**v4)(v4);
    v3 -= 488;
    v6 = v4 == a2;
    v4 -= 61;
  }

  while (!v6);
  return result;
}

void _CUIRenditionKeySetIntegerValueForAttribute_cold_1(unsigned __int16 a1)
{
  v1 = CUIThemeAttributeNameToString(a1);
  _CUILog(4, "CoreUI: Value passed for rendition key attribute out of bounds for u_int16_t identifier:'%s:%d' value:'%d'", v2, v3, v4, v5, v6, v7, v1);
  __assert_rtn("_CUIRenditionKeySetIntegerValueForAttribute", "CUIRenditionKey.m", 28, "0");
}

uint64_t (*BOMStorageCopyToBlockRange_cold_1())(void *)
{
  OUTLINED_FUNCTION_1_5();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_6();

  return _BOMExceptionHandlerCall(v7, v8, v9, 933, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_2())(void *)
{
  OUTLINED_FUNCTION_1_5();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_6();

  return _BOMExceptionHandlerCall(v7, v8, v9, 961, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_3())(void *)
{
  OUTLINED_FUNCTION_1_5();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_6();

  return _BOMExceptionHandlerCall(v7, v8, v9, 921, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_4())(void *)
{
  OUTLINED_FUNCTION_1_5();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_6();

  return _BOMExceptionHandlerCall(v7, v8, v9, 898, v10);
}

uint64_t (*BOMStorageCopyToBlockRange_cold_5())(void *)
{
  OUTLINED_FUNCTION_1_5();
  BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v0, v1, v2, v3, v4, v5, v6, v12);
  __error();
  v7 = OUTLINED_FUNCTION_0_6();

  return _BOMExceptionHandlerCall(v7, v8, v9, 861, v10);
}

uint64_t (*BOMStorageCopyFromBlockRange_cold_1())(void *)
{
  v0 = *__error();

  return _BOMExceptionHandlerCall("BOMStorageCopyRangeFromBlockRange: length extends beyond block size overflow", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1152, v0);
}

uint64_t (*BOMStreamReadBuffer_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(void *)
{
  v8 = BOMExceptionHandlerMessage("%s buffer overflow", a2, a3, a4, a5, a6, a7, a8, "BOMStreamReadBuffer");
  v9 = *__error();

  return _BOMExceptionHandlerCall(v8, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStream.c", 344, v9);
}

void sub_18E013188()
{
    ;
  }
}

void sub_18E013198()
{
    ;
  }
}

void sub_18E0131A8()
{
    ;
  }
}

void sub_18E0131B8()
{
    ;
  }
}

void sub_18E0131C8()
{
    ;
  }
}

void sub_18E0131D8()
{
    ;
  }
}

void sub_18E0131E8()
{
    ;
  }
}

void sub_18E013218()
{
    ;
  }
}

void sub_18E013228()
{
    ;
  }
}

void sub_18E013238()
{
    ;
  }
}

void sub_18E013248()
{
    ;
  }
}

void sub_18E013258()
{
    ;
  }
}

void sub_18E013268()
{
    ;
  }
}

void sub_18E013278()
{
    ;
  }
}

void sub_18E013288()
{
    ;
  }
}

void sub_18E013298()
{
    ;
  }
}

void sub_18E0132B8()
{
    ;
  }
}

void sub_18E0132C8()
{
    ;
  }
}

void sub_18E0132D8()
{
    ;
  }
}

void sub_18E0132E8()
{
    ;
  }
}

void sub_18E0132F8()
{
    ;
  }
}

void sub_18E013308()
{
    ;
  }
}

void sub_18E013318()
{
    ;
  }
}

void sub_18E013328()
{
    ;
  }
}

void sub_18E013338()
{
    ;
  }
}

void sub_18E013348()
{
    ;
  }
}

void sub_18E013368()
{
    ;
  }
}

CGPoint CGContextGetTextPosition(CGContextRef c)
{
  TextPosition = _CGContextGetTextPosition(c);
  y = TextPosition.y;
  x = TextPosition.x;
  result.y = y;
  result.x = x;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  CurrentPoint = _CGPathGetCurrentPoint(path);
  y = CurrentPoint.y;
  x = CurrentPoint.x;
  result.y = y;
  result.x = x;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

uint64_t UTTypeConformsTo_delayInitStub(const __CFString *a1, const __CFString *a2, double a3)
{
  if (!atomic_load(&dlopenHelperFlag_CoreServices))
  {
    dlopenHelper_CoreServices(a3);
  }

  return UTTypeConformsTo(a1, a2);
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CoreServices(double a1)
{
  dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 0);
  atomic_store(1u, &dlopenHelperFlag_CoreServices);
  return a1;
}