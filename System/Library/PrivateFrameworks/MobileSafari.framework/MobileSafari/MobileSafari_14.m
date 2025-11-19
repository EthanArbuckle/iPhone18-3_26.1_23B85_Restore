double sub_18B9F178C(double a1, double a2)
{
  if (a2 != 0.0)
  {
    if (a1 >= 0.0)
    {
      if (a2 < a1)
      {
        a1 = (1.0 - 1.0 / ((a1 - a2) / a2 * 0.55 + 1.0)) * a2 + a2;
      }
    }

    else
    {
      a1 = 0.0 - (1.0 - 1.0 / ((0.0 - a1) / a2 * 0.55 + 1.0)) * a2;
    }
  }

  v2 = a1 - a2;
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  return a1 - v2 / 6.0 * (v2 / 6.0) * 6.0;
}

__n128 sub_18B9F182C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v78 = a3;
  v79 = a1;
  v5 = *(a2 + 96);
  MidX = *(a2 + 104);
  v100 = v5;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 80);
  v98 = *(a2 + 64);
  v99 = v10;
  v11 = *(a2 + 48);
  v96 = *(a2 + 32);
  v97 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4520);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v68 - v13;
  v15 = _s17PinchGestureStateVMa(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState;
  swift_beginAccess();
  sub_18B7CA054(v3 + v19, v14, &qword_1EA9D4520);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_18B988BAC(v14, &qword_1EA9D4520);
    sub_18B9F20F4(v79, a2, &v86);
    v20 = v95;
    v84 = v94;
    v6 = v86;
    v7 = v87;
    v8 = v88;
    v9 = v89;
    v82 = v92;
    v83 = v93;
    v22 = v90;
    v21 = v91;
LABEL_3:
    v80 = v22;
    v81 = v21;
    goto LABEL_9;
  }

  v23 = v79;
  sub_18B9F309C(v14, v18, _s17PinchGestureStateVMa);
  v24 = (v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
  v25 = v24 + *(_s7ContentVMa_4() + 28);
  if (v25[8])
  {
LABEL_8:
    sub_18B7ED0B8(v18, _s17PinchGestureStateVMa);
    sub_18B81407C(a2, &v86);
    v82 = v98;
    v83 = v99;
    v84 = v100;
    v80 = v96;
    v81 = v97;
    v20 = *&MidX;
    goto LABEL_9;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v26 = *v24;
  if (*(v26 + 16) <= v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = *v25;
  v28 = _s4ItemVMa_4();
  if (*(v26 + ((*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80)) + *(*(v28 - 8) + 72) * v23 + *(v28 + 24)))
  {
    goto LABEL_8;
  }

  v101.origin.x = v6;
  v101.origin.y = v7;
  v101.size.width = v8;
  v101.size.height = v9;
  if (CGRectGetWidth(v101) <= 0.0)
  {
    if (qword_1EA9D22A0 == -1)
    {
LABEL_14:
      v37 = sub_18BC1F2C8();
      __swift_project_value_buffer(v37, qword_1EA9F7E98);
      sub_18B81407C(a2, &v86);
      v38 = sub_18BC1F2A8();
      v39 = sub_18BC21238();
      sub_18B7F4620(a2);
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v85[0] = *&v41;
        *v40 = 136315138;
        v86 = v6;
        v87 = v7;
        v88 = v8;
        v89 = v9;
        type metadata accessor for CGRect(0);
        v42 = sub_18BC20BF8();
        v44 = sub_18B7EA850(v42, v43, v85);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_18B7AC000, v38, v39, "QuickTabSwitcher is attempting pinch gesture on item with invalid layout: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x18CFFEEE0](v41, -1, -1);
        MEMORY[0x18CFFEEE0](v40, -1, -1);
      }

      sub_18B7ED0B8(v18, _s17PinchGestureStateVMa);
      v20 = *&MidX;
      sub_18B81407C(a2, &v86);
      v82 = v98;
      v83 = v99;
      v84 = v100;
      v22 = v96;
      v21 = v97;
      goto LABEL_3;
    }

LABEL_25:
    swift_once();
    goto LABEL_14;
  }

  v33 = (v18 + *(v15 + 56));
  Width = CGRectGetWidth(*v33);
  v102.origin.x = v6;
  v102.origin.y = v7;
  v102.size.width = v8;
  v102.size.height = v9;
  v35 = CGRectGetWidth(v102);
  if (v27 == v23)
  {
    v36 = Width / v35;
  }

  else
  {
    v36 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 128) * *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 144);
  }

  v68 = sub_18BB11774(v36, 1.0, 0.2, v18[7]);
  v103.origin.x = v6;
  v103.origin.y = v7;
  v103.size.width = v8;
  v103.size.height = v9;
  MidX = CGRectGetMidX(v103);
  v104.origin.x = v6;
  v104.origin.y = v7;
  v104.size.width = v8;
  v104.size.height = v9;
  MidY = CGRectGetMidY(v104);
  v45 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 48);
  v46 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 56);
  v48 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 64);
  v47 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 72);
  v105.origin.x = v45;
  v105.origin.y = v46;
  v105.size.width = v48;
  v105.size.height = v47;
  v75 = CGRectGetMidX(v105);
  v106.origin.x = v45;
  v106.origin.y = v46;
  v106.size.width = v48;
  v106.size.height = v47;
  v49 = CGRectGetMidY(v106);
  v50 = v18[5];
  v73 = v18[6];
  v74 = v50;
  v51 = v18[9];
  v69 = v18[10];
  v70 = v51;
  v52 = v18[1];
  v71 = v18[2];
  v72 = v52;
  v53 = v68;
  v54 = sub_18B9F203C(a2, v3, v68);
  v56 = v55;
  v57 = *(a2 + 80);
  v82 = *(a2 + 64);
  v83 = v57;
  v58 = *(a2 + 104);
  v84 = *(a2 + 96);
  v59 = *(a2 + 48);
  v60 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_cornerRadiusForPinchingItem);
  v80 = *(a2 + 32);
  v81 = v59;
  x = v53 * v60;
  if (v53 * v60 <= v33[1].origin.x)
  {
    x = v33[1].origin.x;
  }

  v85[0] = x;
  sub_18B81407C(a2, &v86);
  sub_18B7F3B64();
  sub_18BC21A68();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85[0] = *&v58;
  sub_18B7F3BB8(&v86, 0x615272656E726F63, 0xEC00000073756964, isUniquelyReferenced_nonNull_native);
  v63 = v72 + v53 * (MidX - v75) + v74 - v53 * v70;
  v20 = *&v85[0];
  MidX = v54;
  v64 = v63 - v54 * 0.5;
  v65 = v71 + v53 * (MidY - v49) + v73 - v53 * v69 - v56 * 0.5;
  if (v27 == v23)
  {
    v85[0] = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem);
    sub_18BC21A68();
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v85[0] = *&v20;
    sub_18B7F3BB8(&v86, 0xD000000000000017, 0x800000018BC63300, v66);
    sub_18B7ED0B8(v18, _s17PinchGestureStateVMa);
    v20 = *&v85[0];
    v6 = v64;
    v7 = v65;
    v8 = MidX;
    v9 = v56;
  }

  else
  {
    v67 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_visibilityForNeighboringItemsDuringGesture);
    v6 = _SFInterpolate(v6, v64, v67);
    v7 = _SFInterpolate(v7, v65, v67);
    v8 = _SFInterpolate(v8, MidX, v67);
    v9 = _SFInterpolate(v9, v56, v67);
    sub_18B7ED0B8(v18, _s17PinchGestureStateVMa);
  }

LABEL_9:
  v29 = v78;
  *v78 = v6;
  v29[1] = v7;
  v29[2] = v8;
  v29[3] = v9;
  v30 = v83;
  *(v29 + 4) = v82;
  *(v29 + 5) = v30;
  v31 = v84;
  result = v81;
  *(v29 + 2) = v80;
  *(v29 + 3) = result;
  *(v29 + 12) = v31;
  *(v29 + 13) = v20;
  return result;
}

double sub_18B9F203C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 16) * a3;
  if ([objc_opt_self() isSolariumEnabled])
  {
    v5 = *(a2 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 32);
    return v4 * (1.0 - _SFInterpolate(*(a2 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 8) + *(a2 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 24), 0.0, *(a2 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_contentInsetsVisibilityForPinchingItem)) / v5);
  }

  return v4;
}

__n128 sub_18B9F20F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *a2;
  v22 = *(a2 + 16);
  v6 = *(a2 + 80);
  v31 = *(a2 + 64);
  v32 = v6;
  v7 = *(a2 + 104);
  v33 = *(a2 + 96);
  v8 = *(a2 + 48);
  v29 = *(a2 + 32);
  v30 = v8;
  v9 = (v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch);
  if (*(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_targetForBeginningPinch + 40) == 2 || (v11 = v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, v12 = v11 + *(_s7ContentVMa_4() + 28), (*(v12 + 8) & 1) != 0) || *v12 != a1)
  {
    sub_18B81407C(a2, v23);
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v24 = v29;
  }

  else
  {
    v21 = *v9;
    v22 = v9[1];
    v13 = *(a2 + 64);
    v14 = *(a2 + 80);
    v15 = *(a2 + 32);
    v25 = *(a2 + 48);
    v26 = v13;
    v27 = v14;
    v28 = *(a2 + 96);
    v24 = v15;
    sub_18B81407C(a2, v23);
    sub_18B7F3B64();
    sub_18BC21A68();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_18B7F3BB8(v23, 0x615272656E726F63, 0xEC00000073756964, isUniquelyReferenced_nonNull_native);
    sub_18BC21A68();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_18B7F3BB8(v23, 0xD000000000000017, 0x800000018BC63300, v17);
  }

  *a3 = v21;
  *(a3 + 16) = v22;
  result = v25;
  v19 = v27;
  *(a3 + 64) = v26;
  *(a3 + 80) = v19;
  v20 = v28;
  *(a3 + 32) = v24;
  *(a3 + 48) = result;
  *(a3 + 96) = v20;
  *(a3 + 104) = v7;
  return result;
}

uint64_t sub_18B9F22E0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 80);
  v115 = *(a2 + 64);
  v116 = v7;
  v117 = *(a2 + 96);
  v8 = *(a2 + 16);
  v111 = *a2;
  v112 = v8;
  v9 = *(a2 + 48);
  v113 = *(a2 + 32);
  v114 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D9260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66 - v11;
  v13 = _s15PanGestureStateVMa(0);
  v14 = *(v13 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *&v67 = a3;
    v18 = v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
    v19 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
    if (*(v19 + 16) > a1)
    {
      v20 = _s4ItemVMa_4();
      if (*(v19 + ((*(*(v20 - 8) + 80) + 32) & ~*(*(v20 - 8) + 80)) + *(*(v20 - 8) + 72) * a1 + *(v20 + 24)) != 1)
      {
        result = sub_18B81407C(a2, &v104);
        v108 = v115;
        v109 = v116;
        v110 = v117;
        v104 = v111;
        v105 = v112;
        v106 = v113;
        v107 = v114;
        v24 = v67;
LABEL_27:
        v60 = v109;
        v24[4] = v108;
        v24[5] = v60;
        v24[6] = v110;
        v61 = v105;
        *v24 = v104;
        v24[1] = v61;
        v62 = v107;
        v24[2] = v106;
        v24[3] = v62;
        return result;
      }

      v21 = OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState;
      swift_beginAccess();
      sub_18B7CA054(v3 + v21, v12, &qword_1EA9D9260);
      if ((*(v14 + 48))(v12, 1, v13) == 1)
      {
        sub_18B988BAC(v12, &qword_1EA9D9260);
        v22 = v18 + *(_s7ContentVMa_4() + 28);
        if (*(v22 + 8) & 1 | (*v22 != a1))
        {
          v23 = 0.0;
        }

        else
        {
          v23 = 1.0;
        }
      }

      else
      {
        sub_18B9F309C(v12, v17, _s15PanGestureStateVMa);
        v25 = &v17[*(v13 + 40)];
        if (v25[1] == 0.0)
        {
          v26 = v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics;
          v27 = *(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 136);
          v28 = (COERCE_UNSIGNED_INT64(v27 + CGRectGetWidth(*(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 48))) >> 52) & 0x7FF;
          if (v28)
          {
            if (v28 != 2047)
            {
              if (*(v26 + 104))
              {
                v63 = *v25;
              }

              else
              {
                v63 = -*v25;
              }

              v64 = *(v26 + 136);
              Width = CGRectGetWidth(*(v26 + 48));
              sub_18B7ED0B8(v17, _s15PanGestureStateVMa);
              if (v63 / (v64 + Width) > 0.0)
              {
                v23 = v63 / (v64 + Width);
              }

              else
              {
                v23 = 0.0;
              }

              v24 = v67;
              if (v23 > 1.0)
              {
                v23 = 1.0;
              }

              goto LABEL_14;
            }
          }
        }

        sub_18B7ED0B8(v17, _s15PanGestureStateVMa);
        v23 = 0.0;
      }

      v24 = v67;
LABEL_14:
      v29 = (v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics);
      v30 = _SFInterpolate(*(v3 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_metrics + 96), 1.0, v23);
      v31 = *a2;
      v66 = *(a2 + 16);
      v67 = v31;
      v32 = *(a2 + 32);
      v90 = *(a2 + 34);
      v91 = *(a2 + 38);
      v33 = *(a2 + 104);
      v89 = *(a2 + 96);
      v34 = *(a2 + 33);
      v35 = *(a2 + 40);
      v36 = *(a2 + 64);
      v86 = *(a2 + 48);
      v87 = v36;
      v88 = *(a2 + 80);
      sub_18B81407C(a2, &v104);
      IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
      v38 = 0.0;
      if (!IsReduceTransparencyEnabled)
      {
        v39 = v29[11];
        v40 = _SFUninterpolate(v23, 0.0, 0.25);
        if (v40 <= 1.0)
        {
          v41 = v40;
        }

        else
        {
          v41 = 1.0;
        }

        v42 = 1.0 - v41;
        if (v40 > 0.0)
        {
          v43 = v42;
        }

        else
        {
          v43 = 1.0;
        }

        v38 = v39 * v43;
      }

      *&v92 = v38;
      sub_18B7F3B64();
      sub_18BC21A68();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v92 = v33;
      sub_18B7F3BB8(&v104, 0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native);
      v45 = *&v92;
      v92 = v67;
      v93 = v66;
      v94 = v32;
      v95 = v34;
      v96 = v90;
      v97 = v91;
      v98 = v35;
      v99 = v86;
      v100 = v87;
      v101 = v88;
      v102 = v89;
      v103 = v45;
      v75[0] = v30 * sub_18B7F44CC();
      sub_18BC21A68();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = v45;
      sub_18B7F3BB8(&v104, 0x615272656E726F63, 0xEC00000073756964, v46);
      v47 = v75[0];
      *&v67 = v23;
      v48 = v29[6];
      v49 = v29[7];
      v50 = v29[8];
      v51 = v29[9];
      v118.origin.x = v48;
      v118.origin.y = v49;
      v118.size.width = v50;
      v118.size.height = v51;
      MidX = CGRectGetMidX(v118);
      v119.origin.x = v48;
      v119.origin.y = v49;
      v119.size.width = v50;
      v119.size.height = v51;
      MidY = CGRectGetMidY(v119);
      v120.origin.x = v48;
      v120.origin.y = v49;
      v120.size.width = v50;
      v120.size.height = v51;
      v54 = MidX + v30 * (CGRectGetMinX(v120) - MidX);
      v121.origin.x = v48;
      v121.origin.y = v49;
      v121.size.width = v50;
      v121.size.height = v51;
      v55 = MidY + v30 * (CGRectGetMinY(v121) - MidY);
      v122.origin.x = v48;
      v122.origin.y = v49;
      v122.size.width = v50;
      v122.size.height = v51;
      v56 = v30 * CGRectGetWidth(v122);
      v123.origin.x = v48;
      v123.origin.y = v49;
      v123.size.width = v50;
      v123.size.height = v51;
      v57 = v30 * CGRectGetHeight(v123);
      v58 = *&v67;
      v59 = _SFUninterpolate(*&v67, 0.0, 0.5);
      if (v59 <= 0.0)
      {
        v59 = 0.0;
      }

      if (v59 > 1.0)
      {
        v59 = 1.0;
      }

      v71 = v86;
      v72 = v87;
      v73 = v88;
      *&v68 = v54;
      *(&v68 + 1) = v55;
      *&v69 = v56;
      *(&v69 + 1) = v57;
      LOBYTE(v70) = v32;
      BYTE1(v70) = v58 > 0.0;
      *(&v70 + 2) = v90;
      WORD3(v70) = v91;
      *(&v70 + 1) = v59;
      v76 = v32;
      *&v74 = v89;
      *(&v74 + 1) = v47;
      v75[0] = v54;
      v75[1] = v55;
      v75[2] = v56;
      v75[3] = v57;
      v77 = v58 > 0.0;
      v79 = v91;
      v78 = v90;
      v80 = v59;
      v81 = v86;
      v82 = v87;
      v83 = v88;
      v84 = v89;
      v85 = v47;
      sub_18B81407C(&v68, &v104);
      result = sub_18B7F4620(v75);
      v108 = v72;
      v109 = v73;
      v110 = v74;
      v104 = v68;
      v105 = v69;
      v106 = v70;
      v107 = v71;
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18B9F2A0C(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9 + 16;
  result = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v12 = *(a2 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
    if (*(v12 + 16) > a1)
    {
      sub_18B9F0388(a1, 0, v14);
      sub_18B7F4620(v14);
      result = 0;
      if (v15)
      {
        if (*(v12 + 16) <= a1)
        {
          __break(1u);
        }

        else
        {
          sub_18B7EC614(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a1, v8, _s4ItemVMa_4);
          swift_beginAccess();
          sub_18BB5E328(v10, v8);
          swift_endAccess();
          sub_18B7ED0B8(v10, _s4ItemVMa_4);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_18B9F2BB8()
{
  sub_18B7ED0B8(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content, _s7ContentVMa_4);
  sub_18B988BAC(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_panGestureState, &qword_1EA9D9260);
  sub_18B988BAC(v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_pinchGestureState, &qword_1EA9D4520);

  return swift_deallocClassInstance();
}

__n128 sub_18B9F2CD8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_scrollViewState;
  v3 = *(v2 + 112);
  *(a1 + 96) = *(v2 + 96);
  *(a1 + 112) = v3;
  *(a1 + 128) = *(v2 + 128);
  *(a1 + 144) = *(v2 + 144);
  v4 = *(v2 + 48);
  *(a1 + 32) = *(v2 + 32);
  *(a1 + 48) = v4;
  v5 = *(v2 + 80);
  *(a1 + 64) = *(v2 + 64);
  *(a1 + 80) = v5;
  result = *v2;
  v7 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v7;
  return result;
}

unint64_t sub_18B9F2D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content);
  result = sub_18BC1EDE8();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result < *(v3 + 16))
    {
      v6 = *(_s4ItemVMa_4() - 8);
      return sub_18B7EC614(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, a1, _s4ItemVMa_4);
    }
  }

  __break(1u);
  return result;
}

__n128 sub_18B9F2E18@<Q0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v4 = sub_18BC1EDE8();
  sub_18B9F0388(v4, a1, v8);
  v5 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v5;
  *(a2 + 96) = v8[6];
  v6 = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = v6;
  result = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_18B9F2E8C()
{
  v1 = v0 + OBJC_IVAR____TtCC12MobileSafari16QuickTabSwitcher6Layout_content;
  v2 = v1 + *(_s7ContentVMa_4() + 28);
  if (*(v2 + 8))
  {
    return MEMORY[0x1E69E7CD0];
  }

  v4 = *v2;
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DB7D0);
  v6 = *(_s4ItemVMa_4() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_18BC3E410;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *(*v1 + 16))
  {
    v10 = result;
    sub_18B7EC614(*v1 + v8 + v7 * v4, result + v8, _s4ItemVMa_4);
    v11 = sub_18BA297C8(v10);
    swift_setDeallocating();
    sub_18B7ED0B8(v10 + v8, _s4ItemVMa_4);
    swift_deallocClassInstance();
    *(v5 + 16) = v11;
    if (sub_18B9F2A0C(v4 - 1, v0))
    {
      sub_18B9F2A0C(v4 - 2, v0);
    }

    if (sub_18B9F2A0C(v4 + 1, v0))
    {
      sub_18B9F2A0C(v4 + 2, v0);
    }

    swift_beginAccess();
    v3 = *(v5 + 16);
    sub_18BC1E3F8();

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_18B9F309C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B9F3104()
{
  result = qword_1EA9D5560;
  if (!qword_1EA9D5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5560);
  }

  return result;
}

char *sub_18B9F3180(double a1, double a2, double a3, double a4)
{
  v9 = sub_18BC1F7B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v88 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v88 - v17;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext] = 0;
  v19 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_rootStackView;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v20 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_titleLabel;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v21 = &v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_title];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summaryView;
  *&v4[v22] = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  v23 = &v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summary];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel] = 0;
  v24 = &v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_disclaimer];
  *v24 = 0;
  *(v24 + 1) = 0;
  v25 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_buttonsStackView;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v26 setAlignment_];
  [v26 setDistribution_];
  [v26 setSpacing_];
  *&v4[v25] = v26;
  v27 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageButton;
  *&v4[v27] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v28 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderButton;
  *&v4[v28] = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction] = 0;
  *&v4[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_contextMenuInteraction] = 0;
  v29 = _s14ReaderCardCellCMa();
  v94.receiver = v4;
  v94.super_class = v29;
  v30 = objc_msgSendSuper2(&v94, sel_initWithFrame_, a1, a2, a3, a4);
  v31 = sub_18BC20B98();
  [v30 setAccessibilityIdentifier_];

  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v32 = swift_allocObject();
  v90 = xmmword_18BC3E410;
  *(v32 + 16) = xmmword_18BC3E410;
  v33 = sub_18BC1F7C8();
  v34 = MEMORY[0x1E69DC0F8];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  v93 = v29;
  v92[0] = v30;
  MEMORY[0x18CFFCA50](v32, v92, sel_updateTheme);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  v35 = objc_opt_self();
  v36 = [v35 isSolariumEnabled];
  v89 = v30;
  if (v36)
  {
    sub_18BC1F7A8();
    v37 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_18BC1F788();
    v38 = *(v10 + 16);
    v38(v15, v12, v9);
    sub_18BC1F768();
    v88 = v35;
    v39 = v9;
    v40 = v10;
    v41 = v18;
    v42 = v10;
    v43 = v29;
    v44 = *(v40 + 8);
    v44(v12, v39);
    v38(v41, v15, v39);
    sub_18BC1F768();
    v44(v15, v39);
    v29 = v43;
    v10 = v42;
    v18 = v41;
    v9 = v39;
    v35 = v88;
  }

  else
  {
    sub_18BC1F798();
    (*(v10 + 16))(v18, v15, v9);
    sub_18BC1F768();
    (*(v10 + 8))(v15, v9);
  }

  (*(v10 + 56))(v18, 0, 1, v9);
  v45 = v89;
  MEMORY[0x18CFFC920](v18);
  v46 = v45;
  v47 = [v46 contentView];
  if (qword_1EA9D2180 != -1)
  {
    swift_once();
  }

  [v47 setLayoutMargins_];

  v48 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_rootStackView;
  [*&v46[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_rootStackView] setAxis_];
  [*&v46[v48] setSpacing_];
  [*&v46[v48] setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = [v46 contentView];
  [v49 addSubview_];

  v50 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_titleLabel;
  [*&v46[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_titleLabel] setAccessibilityTraits_];
  [*&v46[v50] setAdjustsFontForContentSizeCategory_];
  LODWORD(v51) = 1148846080;
  [*&v46[v50] setContentCompressionResistancePriority:1 forAxis:v51];
  if (([v35 isSolariumEnabled] & 1) == 0)
  {
    [*&v46[v48] addArrangedSubview_];
  }

  v52 = swift_allocObject();
  *(v52 + 16) = v90;
  v53 = sub_18BC1FF28();
  v54 = MEMORY[0x1E69DC2B0];
  *(v52 + 32) = v53;
  *(v52 + 40) = v54;
  v93 = v29;
  v92[0] = v46;
  v55 = v46;
  MEMORY[0x18CFFCA50](v52, v92, sel_updateTitleLabel);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  v56 = *&v46[v50];
  v57 = [v55 traitCollection];
  v58 = [v57 preferredContentSizeCategory];

  LOBYTE(v57) = sub_18BC21438();
  if (v57)
  {
    v59 = 4;
  }

  else
  {
    v59 = 2;
  }

  [v56 setNumberOfLines_];
  v60 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summaryView;
  [*&v55[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summaryView] setAdjustsFontForContentSizeCategory_];
  v61 = *&v55[v60];
  v62 = sub_18BC20B98();
  [v61 setAccessibilityIdentifier_];

  v63 = *&v55[v60];
  v64 = objc_opt_self();
  v65 = v63;
  v66 = [v64 clearColor];
  [v65 setBackgroundColor_];

  [*&v55[v60] setEditable_];
  [*&v55[v60] setHidden_];
  [*&v55[v60] setScrollEnabled_];
  [*&v55[v60] setSelectable_];
  [*&v55[v60] setUserInteractionEnabled_];
  v67 = [*&v55[v60] textContainer];
  [v67 setLineBreakMode_];

  v68 = [*&v55[v60] textContainer];
  [v68 setLineFragmentPadding_];

  v69 = [*&v55[v60] textContainer];
  [v69 setMaximumNumberOfLines_];

  [*&v55[v60] setTextContainerInset_];
  [*&v46[v48] addArrangedSubview_];
  sub_18B9F5660();
  v70 = [v55 contentView];

  v71 = [v70 layoutMarginsGuide];
  v72 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_18BC42C20;
  v74 = [*&v46[v48] centerXAnchor];
  v75 = [v71 centerXAnchor];
  v76 = [v74 constraintEqualToAnchor_];

  *(v73 + 32) = v76;
  v77 = [*&v46[v48] centerYAnchor];
  v78 = [v71 centerYAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v73 + 40) = v79;
  v80 = [*&v46[v48] widthAnchor];
  v81 = [v71 widthAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v73 + 48) = v82;
  v83 = [*&v46[v48] heightAnchor];
  v84 = [v71 heightAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v73 + 56) = v85;
  sub_18B7B0AC0(0, &qword_1EA9D4700);
  v86 = sub_18BC20D88();

  [v72 activateConstraints_];

  return v55;
}

uint64_t sub_18B9F3D1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  result = [objc_opt_self() isSolariumEnabled];
  if ((result & 1) == 0)
  {
    sub_18B9F3E44();
    if ((v4 & 1) == 0)
    {
      v5 = WBSReaderThemePrimaryButtonColor();
    }

    sub_18BC21818();
    v6 = sub_18BC21808();
    result = (*(*(v6 - 8) + 48))(v2, 1, v6);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_18BC216F8();
      return sub_18BC21828();
    }
  }

  return result;
}

id sub_18B9F3E44()
{
  if ([objc_opt_self() isSolariumEnabled])
  {
    return 0;
  }

  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext];
  if (!v1)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = v3 == 2;
  v5 = [v1 configurationManager];
  v6 = [v5 themeForAppearance_];
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_18B9F3F24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE30);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_18B9F3E44();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    v11 = [v1 contentView];
    if (WBSReaderThemeIsDark())
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    [v11 setOverrideUserInterfaceStyle_];

    sub_18B9F419C(v10);
    MEMORY[0x18CFFC910]();
    v13 = sub_18BC1F7B8();
    result = (*(*(v13 - 8) + 48))(v7, 1, v13);
    if (result == 1)
    {
      __break(1u);
      goto LABEL_15;
    }

    sub_18BC1F758();
    MEMORY[0x18CFFC920](v7);
  }

  sub_18B9F4330();
  sub_18B9F499C();
  sub_18B9F52CC();
  if ([objc_opt_self() isSolariumEnabled])
  {
    return sub_18B9F3D1C();
  }

  sub_18B9F3E44();
  if (v15)
  {
    v16 = [objc_opt_self() labelColor];
  }

  else
  {
    v16 = WBSReaderThemeCheckmarkColor();
  }

  v17 = v16;
  sub_18BC21818();
  v18 = sub_18BC21808();
  result = (*(*(v18 - 8) + 48))(v4, 1, v18);
  if (result != 1)
  {
    sub_18BC21708();
    sub_18BC21828();
    return sub_18B9F3D1C();
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_18B9F419C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  [v2 _setContinuousCornerRadius_];
  v3 = WBSReaderThemeColor();
  [v2 setBackgroundColor_];

  v4 = [v2 layer];
  v5 = WBSReaderThemeBackgroundColor();
  v6 = [v5 CGColor];

  [v4 setBorderColor_];
  v7 = [v2 layer];
  v8 = v7;
  v9 = 0.0;
  if (a1 == 1)
  {
    v9 = 1.0;
  }

  [v7 setBorderWidth_];

  return v2;
}

void sub_18B9F4330()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_title + 8);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext);
  if (!v2)
  {
    return;
  }

  v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_title);
  swift_unknownObjectRetain();
  sub_18BC1E3F8();
  v4 = sub_18BC20B98();
  v5 = [v4 safari_bestKnownLanguageTag];

  if (!v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = [v2 configurationManager];
  v7 = [v6 fontForLanguageTag_];

  v8 = objc_opt_self();
  v9 = *MEMORY[0x1E69DDDC8];
  v10 = [v8 _preferredFontForTextStyle_weight_];
  if (!v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v11 = v10;
  v26 = v10;
  v12 = [v10 fontDescriptor];
  [v12 pointSize];
  v14 = v13;

  v15 = [v7 fontOfSize_];
  if (v15)
  {
    v16 = v15;
    v25 = v3;
    v17 = [v15 fontDescriptor];
    v18 = [v17 fontDescriptorWithSymbolicTraits_];

    if (v18)
    {
      v19 = [v8 fontWithDescriptor:v18 size:v14];

      v20 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
      v21 = v19;
      v22 = [v20 initForTextStyle_];
      v11 = [v22 scaledFontForFont_];

      v26 = v11;
    }

    else
    {
    }

    v3 = v25;
  }

  v23 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_titleLabel);
  v24 = sub_18B9F45F0(v3, v1, &v26);

  [v23 setAttributedText_];

  swift_unknownObjectRelease();
}

uint64_t sub_18B9F45F0(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = sub_18BC1E7F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_18BC1E758();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_18BC1E3F8();
  sub_18BC1E7E8();
  sub_18BC1E768();
  v19 = *a3;
  v12 = v19;
  sub_18B9EA798();
  v13 = v12;
  sub_18BC1E778();
  sub_18B9F3E44();
  if (v14)
  {
    v15 = [objc_opt_self() labelColor];
  }

  else
  {
    v15 = WBSReaderThemeCheckmarkColor();
  }

  v19 = v15;
  sub_18B9EA7EC();
  sub_18BC1E778();
  sub_18B7B0AC0(0, &qword_1EA9D5610);
  (*(v6 + 16))(v8, v11, v5);
  v16 = sub_18BC213B8();
  (*(v6 + 8))(v11, v5);
  return v16;
}

uint64_t sub_18B9F4908(uint64_t result, uint64_t a2, void *a3, void (*a4)(void))
{
  v5 = (v4 + *a3);
  v6 = *v5;
  v7 = v5[1];
  *v5 = result;
  v5[1] = a2;
  if (a2)
  {
    if (v7)
    {
      if (v6 == result && v7 == a2)
      {
        goto LABEL_11;
      }

      v9 = a4;
      v10 = sub_18BC21FD8();
      a4 = v9;
      if (v10)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v7)
  {
    return result;
  }

  a4();
LABEL_11:
}

void sub_18B9F499C()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summary + 8];
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summary];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    v12[4] = sub_18B9F6190;
    v12[5] = v5;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 1107296256;
    v12[2] = sub_18B7B0DB0;
    v12[3] = &block_descriptor_7;
    v6 = _Block_copy(v12);
    sub_18BC1E3F8();
    v7 = v0;

    [v4 animateWithDuration:v6 animations:0.15];
    _Block_release(v6);
    v8 = *&v7[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summaryView];
    sub_18B9F4B4C(v7, v2, v1);
    v10 = v9;

    [v8 setAttributedText_];
  }

  else
  {
LABEL_6:
    v11 = *&v0[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summaryView];

    [v11 setHidden_];
  }
}

void sub_18B9F4B4C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_18BC1EE48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18BC20B98();
  v11 = [objc_opt_self() _systemImageNamed_];

  if (v11)
  {
    sub_18B9F3E44();
    v60 = a2;
    v61 = a3;
    *&v58 = v6;
    if (v12)
    {
      v13 = [objc_opt_self() labelColor];
    }

    else
    {
      v13 = WBSReaderThemeCheckmarkColor();
    }

    v14 = v13;
    v15 = [v11 imageWithTintColor:v14 renderingMode:1];

    v16 = objc_opt_self();
    v53 = *MEMORY[0x1E69DDD80];
    v54 = v16;
    v17 = [v16 preferredFontForTextStyle_];
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DAE00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18BC3E400;
    v19 = *MEMORY[0x1E69DB648];
    *(inited + 32) = *MEMORY[0x1E69DB648];
    v20 = sub_18B7B0AC0(0, &unk_1EA9D55E0);
    *(inited + 40) = v17;
    v21 = *MEMORY[0x1E69DB650];
    v56 = v20;
    *(inited + 64) = v20;
    *(inited + 72) = v21;
    v22 = v19;
    v55 = v17;
    v59 = v21;
    sub_18B9F3E44();
    v63 = a1;
    if (v23)
    {
      v24 = [objc_opt_self() labelColor];
    }

    else
    {
      v24 = WBSReaderThemeCheckmarkColor();
    }

    v25 = v24;
    *(inited + 104) = sub_18B7B0AC0(0, &unk_1EA9D91D0);
    *(inited + 80) = v25;
    sub_18BA657FC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D55F0);
    swift_arrayDestroy();
    v26 = objc_opt_self();
    v62 = v15;
    v27 = [v26 textAttachmentWithImage_];
    type metadata accessor for Key(0);
    v51[1] = v28;
    v51[0] = sub_18B9F61B0(&qword_1EA9D3C40, type metadata accessor for Key);
    v29 = sub_18BC20998();

    v52 = [objc_opt_self() attributedStringWithAttachment:v27 attributes:v29];

    sub_18BC1EE38();
    sub_18BC1EE28();
    (*(v7 + 8))(v9, v58);
    v30 = swift_initStackObject();
    v58 = xmmword_18BC3E410;
    *(v30 + 16) = xmmword_18BC3E410;
    *(v30 + 32) = v22;
    v31 = v22;
    v32 = [v54 _sf_preferredFontForTextStyle_symbolicTraits_];
    v33 = v56;
    *(v30 + 64) = v56;
    *(v30 + 40) = v32;
    sub_18BA657FC(v30);
    swift_setDeallocating();
    sub_18B9F61F8(v30 + 32);
    v34 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v35 = sub_18BC20B98();

    v36 = sub_18BC20998();

    v37 = [v34 initWithString:v35 attributes:v36];

    v64 = 8552674;
    v65 = 0xA300000000000000;
    MEMORY[0x18CFFC150](v60, v61);
    v38 = v52;
    v39 = swift_initStackObject();
    *(v39 + 16) = v58;
    *(v39 + 32) = v31;
    *(v39 + 64) = v33;
    v40 = v55;
    *(v39 + 40) = v55;
    v61 = v40;
    sub_18BA657FC(v39);
    swift_setDeallocating();
    sub_18B9F61F8(v39 + 32);
    v41 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v42 = sub_18BC20B98();

    v43 = v37;
    v44 = sub_18BC20998();

    v45 = [v41 initWithString:v42 attributes:v44];

    [v38 appendAttributedString_];
    [v38 appendAttributedString_];
    sub_18B9F3E44();
    if (v46)
    {
      v47 = [objc_opt_self() labelColor];
    }

    else
    {
      v47 = WBSReaderThemeCheckmarkColor();
    }

    v48 = v47;
    v49 = v38;
    v50 = [v49 length];
    [v49 addAttribute:v59 value:v48 range:{0, v50}];
  }

  else
  {
    __break(1u);
  }
}

id sub_18B9F51D8()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18B9F524C(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_disclaimer);
  v4 = *(v2 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_disclaimer);
  v5 = *(v2 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_disclaimer + 8);
  *v3 = result;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == result && v5 == a2;
      if (v6 || (sub_18BC21FD8() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_18B9F52CC();
LABEL_11:
}

void sub_18B9F52CC()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_disclaimer + 8);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_disclaimer) & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
LABEL_7:
    v23 = sub_18B9F51D8();
    [v23 removeFromSuperview];
LABEL_14:

    return;
  }

  sub_18BC1E3F8();
  v3 = sub_18B9F51D8();
  v4 = [v3 superview];

  if (v4)
  {

LABEL_13:
    v22 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel);
    v23 = sub_18BC20B98();

    [v22 setText_];

    goto LABEL_14;
  }

  v5 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel;
  [*(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel) setAdjustsFontForContentSizeCategory_];
  [*(v0 + v5) setMaximumContentSizeCategory_];
  v6 = *(v0 + v5);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 secondaryLabelColor];
  [v8 setTextColor_];

  v10 = *(v0 + v5);
  v11 = objc_opt_self();
  v12 = *MEMORY[0x1E69DDD00];
  v13 = v10;
  sub_18BA65924(MEMORY[0x1E69E7CC0]);
  type metadata accessor for AttributeName(0);
  sub_18B9F61B0(&qword_1EA9D3C30, type metadata accessor for AttributeName);
  v14 = sub_18BC20998();

  v15 = [v11 _sf_preferredFontForTextStyle_attributes_];

  [v13 setFont_];
  [*(v0 + v5) setAdjustsFontSizeToFitWidth_];
  v16 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_rootStackView);
  v17 = [v16 arrangedSubviews];
  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v18 = sub_18BC20D98();

  v19 = sub_18BA42054(*(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_buttonsStackView), v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    [v16 insertArrangedSubview:*(v0 + v5) atIndex:v19];
    [v16 setCustomSpacing:*(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summaryView) afterView:8.0];
    [v16 setCustomSpacing:*(v0 + v5) afterView:12.0];
    goto LABEL_13;
  }
}

id sub_18B9F5660()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  result = [objc_opt_self() isSolariumEnabled];
  if ((result & 1) == 0)
  {
    v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageButton);
    sub_18BC21768();
    v7 = [objc_opt_self() labelColor];
    sub_18BC21708();
    sub_18BBD99B4();
    v8 = sub_18BC20B98();
    v9 = [objc_opt_self() systemImageNamed_];

    sub_18BC21788();
    v10 = sub_18BC21808();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    sub_18BC21828();
    [v6 setHidden_];
    [v6 addTarget:v1 action:sel_listenToPage_ forControlEvents:0x2000];
    LODWORD(v11) = 1148846080;
    [v6 setContentCompressionResistancePriority:1 forAxis:v11];
    v12 = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_buttonsStackView);
    [v12 addArrangedSubview_];
    v13 = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderButton);
    v14 = sub_18BC20B98();
    [v13 setAccessibilityIdentifier_];

    sub_18B9F5910();
    [v13 setHidden_];
    [v13 addTarget:v1 action:sel_showReader_ forControlEvents:0x2000];
    LODWORD(v15) = 1148846080;
    [v13 setContentCompressionResistancePriority:1 forAxis:v15];
    [v12 addArrangedSubview_];
    return [*(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_rootStackView) addArrangedSubview_];
  }

  return result;
}

uint64_t sub_18B9F5910()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_18BC217C8();
  sub_18BBD99B4();
  v7 = sub_18BC20B98();
  v8 = [objc_opt_self() systemImageNamed_];

  sub_18BC21788();
  sub_18BC1EE38();
  sub_18BC1EE28();
  (*(v1 + 8))(v3, v0);
  sub_18BC217A8();
  v9 = sub_18BC21808();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_18BC21828();
  return sub_18B9F3D1C();
}

uint64_t sub_18B9F5B38(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4730);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  result = [objc_opt_self() isSolariumEnabled];
  if ((result & 1) == 0)
  {
    v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction;
    v8 = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction);
    if (!v8)
    {
      if (!a1)
      {
        return result;
      }

      goto LABEL_11;
    }

    if (!a1)
    {
LABEL_8:
      v14 = v1;
      v15 = *(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageButton);
      v16 = v8;
      [v15 setEnabled_];
      v17 = [v16 accessibilityIdentifier];
      [v15 setAccessibilityIdentifier_];

      v18 = [v16 title];
      sub_18BC20BD8();
      sub_18BC21818();
      v19 = sub_18BC21808();
      result = (*(*(v19 - 8) + 48))(v5, 1, v19);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_18BC217A8();
      sub_18BC21828();

      v1 = v14;
      v20 = *(v14 + v7) == 0;
      goto LABEL_12;
    }

    sub_18B7B0AC0(0, &qword_1EA9D52D0);
    v9 = v8;
    v10 = a1;
    v11 = sub_18BC215C8();

    if (v11)
    {
      v12 = *(v1 + v7);
      if (!v12)
      {
        [v10 attributes];
        v8 = *(v1 + v7);
        if (v8)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      }

      v13 = [v12 attributes];
      result = [v10 attributes];
      if (v13 == result)
      {
        return result;
      }
    }

    v8 = *(v1 + v7);
    if (v8)
    {
      goto LABEL_8;
    }

LABEL_11:
    v20 = 1;
LABEL_12:
    [*(v1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageButton) setHidden_];
    return sub_18B9F5DE0();
  }

  return result;
}

id sub_18B9F5DE0()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_buttonsStackView);
  v2 = [v1 arrangedSubviews];
  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v3 = sub_18BC20D98();

  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_18BC219A8();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x18CFFD010](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = [v7 isHidden];

    v5 = v6 + 1;
  }

  while ((v9 & 1) != 0);

  return [v1 setHidden_];
}

uint64_t sub_18B9F5F54(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_18BC218B8();
  swift_unknownObjectRelease();
  v7 = *&v6[*a4];
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    v8 = v7;
    [v8 performWithSender:sub_18BC21FB8() target:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

id sub_18B9F6020()
{
  v2.receiver = v0;
  v2.super_class = _s14ReaderCardCellCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B9F61B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18B9F61F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D55F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18B9F6260()
{
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_readerContext) = 0;
  v1 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_rootStackView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  v2 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = (v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summaryView;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  v5 = (v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_summary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell____lazy_storage___disclaimerLabel) = 0;
  v6 = (v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_disclaimer);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_buttonsStackView;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
  [v8 setAlignment_];
  [v8 setDistribution_];
  [v8 setSpacing_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageButton;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v10 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderButton;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_listenToPageAction) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_showReaderAction) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_contextMenuInteraction) = 0;
  sub_18BC21CF8();
  __break(1u);
}

__n128 sub_18B9F64B0(__n128 a1, __n128 a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1EA9D24A0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EA9F8388;
  v6 = *&dword_1EA9F8390;
  type metadata accessor for AnimationSettings();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = 0;
  result = a2;
  *(v7 + 40) = a1;
  *(v7 + 56) = 0;
  *(v7 + 64) = a2;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 96) = 0;
  *a4 = v7;
  return result;
}

double sub_18B9F6624(__n128 a1, uint64_t a2, uint64_t *a3)
{
  if (qword_1EA9D24A0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EA9F8388;
  v5 = *&dword_1EA9F8390;
  type metadata accessor for AnimationSettings();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  *(v6 + 32) = 0;
  *(v6 + 40) = a1;
  result = 0.0;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 1;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 96) = 0;
  *a3 = v6;
  return result;
}

void *sub_18B9F6744@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_18B9F6750()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_18B9F67C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 56))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18B9F6814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_18B9F687C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18B9F68BC(uint64_t a1, int a2)
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

unint64_t sub_18B9F6918()
{
  result = qword_1EA9D5618;
  if (!qword_1EA9D5618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5618);
  }

  return result;
}

unint64_t sub_18B9F69D4()
{
  result = _s15DropDestinationVMa(319);
  if (v1 <= 0x3F)
  {
    result = sub_18B9F6A88();
    if (v2 <= 0x3F)
    {
      result = sub_18B9F6AD4();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TabOverview();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_18B9F6A88()
{
  result = qword_1EA9D8D60[0];
  if (!qword_1EA9D8D60[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EA9D8D60);
  }

  return result;
}

unint64_t sub_18B9F6AD4()
{
  result = qword_1EA9D5640;
  if (!qword_1EA9D5640)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EA9D5640);
  }

  return result;
}

void sub_18B9F6B60()
{
  _s7SectionVMa_1();
  if (v0 <= 0x3F)
  {
    sub_18B9F6BE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18B9F6BE4()
{
  if (!qword_1EA9D5658)
  {
    _s4ItemVMa_2();
    v0 = sub_18BC21848();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D5658);
    }
  }
}

id SFFluidCollectionView.Interaction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_18B9F6C70(void *a1)
{
  v3 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      type metadata accessor for SFFluidCollectionView();
      v5 = Strong;
      v6 = a1;
      v7 = sub_18BC215C8();

      if (v7)
      {

        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = (*((*v3 & *v1) + 0xA0))();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_18BC219A8();
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_29:

    return;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_8:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = v9 & 0xC000000000000001;
    v13 = &selRef_traitsAffectingBarMetrics;
    v29 = a1;
    while (1)
    {
      if (v12)
      {
        v15 = MEMORY[0x18CFFD010](v11, v9);
      }

      else
      {
        v15 = *(v9 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = [v15 v13[142]];
      if (!v17)
      {
        if (a1)
        {
          goto LABEL_22;
        }

        goto LABEL_23;
      }

      v18 = [v16 v13[142]];
      if (!v18)
      {
        break;
      }

      v19 = v18;
      if (a1)
      {
        sub_18B7F4394();
        v20 = a1;
        v21 = v10;
        v22 = v12;
        v23 = v9;
        v24 = v13;
        v25 = Strong;
        v26 = v20;
        v27 = sub_18BC215C8();

        Strong = v25;
        v13 = v24;
        v9 = v23;
        v12 = v22;
        v10 = v21;
        a1 = v29;
        if ((v27 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_22:
        [a1 removeGestureRecognizer_];
LABEL_23:
        if (!Strong)
        {
          goto LABEL_12;
        }

LABEL_24:
        v19 = Strong;
        [v19 addGestureRecognizer_];
        goto LABEL_11;
      }

      v14 = 0;
LABEL_11:

LABEL_12:
      ++v11;

      if (v10 == v11)
      {
        goto LABEL_29;
      }
    }

    if (a1)
    {
      goto LABEL_12;
    }

    v28 = 0;
    if (!Strong)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  __break(1u);
}

void sub_18B9F6F70(void *a1)
{
  sub_18B9F725C();
}

void (*sub_18B9F6FA8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_18B9F7040;
}

void sub_18B9F7040(void **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_18B9F725C();

    v3 = *v4;
  }

  else
  {
    sub_18B9F725C();
  }

  free(v2);
}

void sub_18B9F70BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_18BB57890(v0);
  }
}

id SFFluidCollectionView.Interaction.__deallocating_deinit()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SFFluidCollectionView.Interaction();
  return objc_msgSendSuper2(&v5, sel_dealloc, v2, v3, v4);
}

void sub_18B9F725C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_18B9F6C70(Strong);
}

void sub_18B9F7578()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView);
  if (v1)
  {
    v17 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView);
    if (*(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) == 1 && (v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 96)) != 0)
    {
      v3 = v1;
      v4 = v2;
      v5 = [v3 backdropLayer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_18BC3E410;
      v7 = sub_18BAE3B38(v4);
      *(v6 + 56) = sub_18B7B0AC0(0, &qword_1EA9D40B8);
      *(v6 + 32) = v7;
      v8 = sub_18BC20D88();

      [v5 setFilters_];

      v9 = [v3 backdropLayer];
      [v9 setScale_];
    }

    else
    {
      v10 = v1;
      v11 = [v10 backdropLayer];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18BC3E410;
      v13 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
      v14 = sub_18BC20EC8();
      [v13 setValue:v14 forKey:*MEMORY[0x1E6979B78]];

      v15 = sub_18BC1EEA8();
      [v13 setValue:v15 forKey:*MEMORY[0x1E6979BA8]];

      *(v12 + 56) = sub_18B7B0AC0(0, &qword_1EA9D40B8);
      *(v12 + 32) = v13;
      v16 = sub_18BC20D88();

      [v11 setFilters_];

      v9 = [v10 backdropLayer];
      [v9 setScale_];
    }
  }
}

void sub_18B9F787C()
{
  v1 = &v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration];
  if ((v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 88] & 1) == 0)
  {
    v2 = *(v1 + 5);
    v20 = *(v1 + 4);
    v21 = v2;
    v22 = *(v1 + 12);
    v3 = *(v1 + 1);
    *v18 = *v1;
    *&v18[16] = v3;
    v4 = *(v1 + 3);
    *&v18[32] = *(v1 + 2);
    v19 = v4;
    sub_18B9D4798(v18, &v15);
    v5 = [v0 traitCollection];
    v6 = [v5 userInterfaceStyle];
    v7 = 1.1;
    if (v6 != 2)
    {
      v7 = 1.0;
    }

    v15 = *v18;
    v16 = *&v18[8];
    v17 = *&v18[24];
    sub_18B9A2974(v23, v7);

    sub_18B9D47F4(v18);
    v8 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView];
    if (v8)
    {
      v9 = [v8 layer];
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      sub_18BAE2F54(v23);
    }

    v10 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView];
    if (v10)
    {
      v11 = [v10 layer];
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      sub_18BAE2F54(v23);
      sub_18B9FAAB4(v23);
    }

    else
    {
      sub_18B9FAAB4(v23);
    }

    v12 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView];
    if (v12)
    {
      v13 = [v12 layer];
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      v14 = *(v1 + 56);
      v24[0] = *(v1 + 40);
      v24[1] = v14;
      v25 = *(v1 + 9);
      sub_18BC1E3F8();
      sub_18BAE2F54(v24);
      sub_18B9FAAB4(v24);
    }
  }
}

void sub_18B9F7AA4()
{
  v1 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView);
  if (v1)
  {
    v2 = [v1 backdropLayer];
    sub_18BC1E3F8();
    v3 = sub_18BC20B98();

    [v2 setGroupName_];
  }

  v4 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView);
  if (v4)
  {
    v5 = [v4 backdropLayer];
    sub_18BC1E3F8();
    v6 = sub_18BC20B98();

    [v5 setGroupName_];
  }

  v7 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView;
  v8 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView);
  if (v8)
  {
    [v8 _setCaptureView_];
    v9 = *(v0 + v7);
    if (v9)
    {
      v10 = [v9 _captureGroup];
      sub_18BC1E3F8();
      v11 = sub_18BC20B98();

      [v10 setGroupName_];
    }
  }
}

void sub_18B9F7C74()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView;
  v2 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView);
  if (v2)
  {
    v3 = [v2 layer];
    v4 = sub_18BC20EC8();
    v5 = sub_18BC20B98();
    [v3 setValue:v4 forKeyPath:v5];

    v6 = *(v0 + v1);
    if (v6)
    {
      v7 = [v6 layer];
      v8 = sub_18BC20EC8();
      v9 = sub_18BC20B98();
      [v7 setValue:v8 forKeyPath:v9];
    }
  }
}

double sub_18B9F7DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC43BC0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v0 + 40) = 0x3FB1EB851EB851ECLL;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.15];
  *(v0 + 56) = 0x3FD8F5C28F5C28F6;
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.68];
  *(v0 + 72) = 0x3FE23D70A3D70A3DLL;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.8];
  *(v0 + 88) = 0x3FE5C28F5C28F5C3;
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.95];
  *(v0 + 104) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E400;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v1 + 40) = 0x3FD0000000000000;
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  *(v1 + 56) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = sub_18BC20B98();
  v4 = [v2 sf:v3 imageNamed:?];

  v5 = [v4 CGImage];
  *&xmmword_1EA9F7AB8 = v0;
  result = 0.5;
  *(&xmmword_1EA9F7AB8 + 8) = xmmword_18BC43BD0;
  unk_1EA9F7AD0 = xmmword_18BC43BE0;
  *(&xmmword_1EA9F7AD8 + 1) = v1;
  xmmword_1EA9F7AE8 = xmmword_18BC43BD0;
  xmmword_1EA9F7AF8 = xmmword_18BC43BE0;
  qword_1EA9F7B08 = 0;
  byte_1EA9F7B10 = 0;
  qword_1EA9F7B18 = v5;
  return result;
}

double sub_18B9F802C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC43BF0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.75];
  *(v0 + 40) = 0;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.65];
  *(v0 + 56) = 0x3FD5C28F5C28F5C3;
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.5];
  *(v0 + 72) = 0x3FE3333333333333;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.33];
  *(v0 + 88) = 0x3FE70A3D70A3D70ALL;
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.07];
  *(v0 + 104) = 0x3FEBD70A3D70A3D7;
  *(v0 + 112) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v0 + 120) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E400;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  *(v1 + 40) = 0x3FD6666666666666;
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v1 + 56) = 0x3FF0000000000000;
  v2 = objc_opt_self();
  v3 = sub_18BC20B98();
  v4 = [v2 sf:v3 imageNamed:?];

  v5 = [v4 CGImage];
  *&xmmword_1EA9F7B20 = v0;
  result = 0.5;
  *(&xmmword_1EA9F7B20 + 8) = xmmword_18BC43BD0;
  *&algn_1EA9F7B30[8] = xmmword_18BC43BE0;
  *(&xmmword_1EA9F7B40 + 1) = v1;
  xmmword_1EA9F7B50 = xmmword_18BC43BD0;
  xmmword_1EA9F7B60 = xmmword_18BC43BE0;
  qword_1EA9F7B70 = 0;
  byte_1EA9F7B78 = 0;
  qword_1EA9F7B80 = v5;
  return result;
}

double sub_18B9F8290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3FC90;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  *(v0 + 40) = 0x3FE0000000000000;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.8];
  *(v0 + 56) = 0x3FE3333333333333;
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.3];
  *(v0 + 72) = 0x3FE999999999999ALL;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v0 + 88) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E400;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  *(v1 + 40) = 0x3FE3333333333333;
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v1 + 56) = 0x3FF0000000000000;
  v2 = objc_opt_self();
  v3 = sub_18BC20B98();
  v4 = [v2 sf:v3 imageNamed:?];

  v5 = [v4 CGImage];
  *&xmmword_1EA9F7B88 = v0;
  result = 0.5;
  *(&xmmword_1EA9F7B88 + 8) = xmmword_18BC43BD0;
  unk_1EA9F7BA0 = xmmword_18BC43BE0;
  *(&xmmword_1EA9F7BA8 + 1) = v1;
  xmmword_1EA9F7BB8 = xmmword_18BC43BD0;
  xmmword_1EA9F7BC8 = xmmword_18BC43BE0;
  qword_1EA9F7BD8 = 0;
  byte_1EA9F7BE0 = 0;
  qword_1EA9F7BE8 = v5;
  return result;
}

double sub_18B9F8494()
{
  v0 = objc_opt_self();
  v1 = sub_18BC20B98();
  v2 = [v0 sf:v1 imageNamed:?];

  v3 = [v2 CGImage];
  *&xmmword_1EA9F7BF0 = MEMORY[0x1E69E7CC0];
  result = 0.5;
  *(&xmmword_1EA9F7BF0 + 8) = xmmword_18BC43BD0;
  unk_1EA9F7C08 = xmmword_18BC43BE0;
  *(&xmmword_1EA9F7C10 + 1) = MEMORY[0x1E69E7CC0];
  xmmword_1EA9F7C20 = xmmword_18BC43BD0;
  xmmword_1EA9F7C30 = xmmword_18BC43BE0;
  qword_1EA9F7C40 = 0;
  byte_1EA9F7C48 = 1;
  qword_1EA9F7C50 = v3;
  return result;
}

double sub_18B9F8568()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC43BC0;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.9];
  *(v0 + 40) = 0;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.65];
  *(v0 + 56) = 0x3FD47AE147AE147BLL;
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.38];
  *(v0 + 72) = 0x3FE0000000000000;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.15];
  *(v0 + 88) = 0x3FE3851EB851EB85;
  *(v0 + 96) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v0 + 104) = 0x3FEDC28F5C28F5C3;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3E400;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  *(v1 + 40) = 0;
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v1 + 56) = 0x3FE0000000000000;
  v2 = objc_opt_self();
  v3 = sub_18BC20B98();
  v4 = [v2 sf:v3 imageNamed:?];

  v5 = [v4 CGImage];
  *&xmmword_1EA9F7C58 = v0;
  result = 0.5;
  *(&xmmword_1EA9F7C58 + 8) = xmmword_18BC43BD0;
  unk_1EA9F7C70 = xmmword_18BC43BE0;
  *(&xmmword_1EA9F7C78 + 1) = v1;
  xmmword_1EA9F7C88 = xmmword_18BC43BD0;
  xmmword_1EA9F7C98 = xmmword_18BC43BE0;
  qword_1EA9F7CA8 = 0;
  byte_1EA9F7CB0 = 0;
  qword_1EA9F7CB8 = v5;
  return result;
}

double sub_18B9F87A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18BC3FC90;
  *(v0 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.9];
  *(v0 + 40) = 0x3FB1EB851EB851ECLL;
  *(v0 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.82];
  *(v0 + 56) = 0x3FE0000000000000;
  *(v0 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.6];
  *(v0 + 72) = 0x3FE5C28F5C28F5C3;
  *(v0 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v0 + 88) = 0x3FF0000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18BC3FC60;
  *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:1.0];
  *(v1 + 40) = 0x3FE428F5C28F5C29;
  *(v1 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.8];
  *(v1 + 56) = 0x3FE6666666666666;
  *(v1 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.0];
  *(v1 + 72) = 0x3FF0000000000000;
  v2 = objc_opt_self();
  v3 = sub_18BC20B98();
  v4 = [v2 sf:v3 imageNamed:?];

  v5 = [v4 CGImage];
  *&xmmword_1EA9F7CC0 = v0;
  result = 0.5;
  *(&xmmword_1EA9F7CC0 + 8) = xmmword_18BC43BD0;
  *&algn_1EA9F7CD0[8] = xmmword_18BC43BE0;
  *(&xmmword_1EA9F7CE0 + 1) = v1;
  xmmword_1EA9F7CF0 = xmmword_18BC43BD0;
  xmmword_1EA9F7D00 = xmmword_18BC43BE0;
  qword_1EA9F7D10 = 0;
  byte_1EA9F7D18 = 0;
  qword_1EA9F7D20 = v5;
  return result;
}

uint64_t sub_18B9F89F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_18B9F9FC0(v11, v13) & 1;
}

void sub_18B9F8A60()
{
  sub_18B9F8C20();
  sub_18B9F8E3C();
  sub_18B9F7578();
  sub_18B9F787C();
  sub_18B9F7AA4();
  sub_18B9F7C74();
  if (v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView] == 1)
  {
    if (v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 88])
    {
      v1 = 1;
    }

    else
    {
      v1 = v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode] ^ 1;
    }

    [*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48] setHidden_];
  }

  v2 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_separator];
  if (v2)
  {
    v7 = v2;
    v3 = _SFOnePixel();
    v4 = v3;
    if (*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 80] == 1)
    {
      Height = -v3;
      v6 = 34;
    }

    else
    {
      [v0 bounds];
      Height = CGRectGetHeight(v9);
      v6 = 10;
    }

    [v0 bounds];
    [v7 setFrame_];
    [v7 setAutoresizingMask_];
  }
}

void sub_18B9F8C20()
{
  v1 = &v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration];
  if (v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 88] == 1)
  {
    v2 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView;
    if (*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView])
    {
      if (!*(v1 + 10))
      {
        return;
      }
    }

    else
    {
      v11 = [objc_opt_self() effectWithStyle_];
      v12 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];

      v13 = *&v0[v2];
      *&v0[v2] = v12;
      v14 = v12;

      [v0 addSubview_];
      if (!*(v1 + 10))
      {
        return;
      }
    }

    sub_18B9F970C();
  }

  else
  {
    v3 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView;
    if (*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView] || ([v0 bounds], v8 = objc_msgSend(objc_allocWithZone(SFBackdropView), sel_initWithFrame_, v4, v5, v6, v7), v9 = *&v0[v3], *&v0[v3] = v8, v10 = v8, v9, objc_msgSend(v0, sel_addSubview_, v10), v10, (v1[88] & 1) == 0))
    {
      if ((v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode] & 1) == 0)
      {
        sub_18B9F9AB0();
        if (v1[88])
        {
          return;
        }

        if (v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode] != 1)
        {
          goto LABEL_12;
        }
      }

      sub_18B9F9820();
      if ((v1[88] & 1) == 0)
      {
LABEL_12:
        if ((v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode] & 1) == 0)
        {

          sub_18B9F998C();
        }
      }
    }
  }
}

void sub_18B9F8E3C()
{
  v1 = v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration;
  if (*(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 88) == 1)
  {
    v2 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView;
  }

  else
  {
    v2 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView;
  }

  v3 = (v0 + v2);
  v4 = *(v0 + v2);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v3 = 0;

  if (!*(v1 + 80))
  {
    v6 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_separator;
    [*(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_separator) removeFromSuperview];
    v7 = *(v0 + v6);
    *(v0 + v6) = 0;
  }

  if ((*(v1 + 88) & 1) == 0 && *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) != 1)
  {
    goto LABEL_27;
  }

  v8 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView);
  if (v8)
  {
    [v8 setMaskView_];
  }

  v9 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView);
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView) = 0;

  if ((*(v1 + 88) & 1) != 0 || (*(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) & 1) == 0)
  {
LABEL_27:
    v10 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView);
    *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView) = 0;

    v11 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView;
    v12 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView);
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *(v0 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v0 + v11) = 0;

    if (*(v1 + 88))
    {
      goto LABEL_20;
    }
  }

  if (*(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) == 1)
  {
LABEL_20:
    v14 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView;
    v15 = *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v15 = *(v0 + v14);
    }

    *(v0 + v14) = 0;
  }
}

void sub_18B9F91F4(void *a1)
{
  v8.receiver = v1;
  v8.super_class = _s17BarBackgroundViewCMa();
  objc_msgSendSuper2(&v8, sel_willMoveToWindow_, a1);
  if (a1)
  {
    v3 = [a1 windowScene];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 activationState];

      v6 = v5 < 2;
      v7 = v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode];
      v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode] = v6;
      if (v6 != v7)
      {
        sub_18B9F8A60();
      }
    }
  }
}

uint64_t sub_18B9F9308()
{
  sub_18BC1E688();
  if (v8)
  {
    sub_18B7B0AC0(0, &qword_1EA9D5390);
    if (swift_dynamicCast())
    {
      v1 = v6;
      goto LABEL_6;
    }
  }

  else
  {
    sub_18B7E0F80(v7);
  }

  v1 = 0;
LABEL_6:
  v2 = [v0 window];
  v3 = [v2 windowScene];

  if (v1)
  {
    if (v3)
    {
      sub_18B7B0AC0(0, &qword_1EA9D5390);
      v4 = sub_18BC215C8();
    }

    else
    {
      v4 = 0;
    }

    v3 = v1;
  }

  else
  {
    if (!v3)
    {
      v4 = 1;
      return v4 & 1;
    }

    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_18B9F9434(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_18BC21FD8() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_18BC21FD8() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_18BC21FD8();
}

id sub_18B9F952C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView;
  if (v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView])
  {
    [*&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48] setFrame_];
    if (v4[v9] == 1)
    {
      [*&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 56] setFrame_];
    }
  }

  [v4 setFrame_];
  v10 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView];
  if (v10)
  {
    [v10 setFrame_];
  }

  v11 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView];
  if (v11)
  {
    [v11 setFrame_];
  }

  v12 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView];
  if (v12)
  {
    [v12 setFrame_];
  }

  v13 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView];
  if (v13)
  {
    [v13 setFrame_];
  }

  v14 = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView];
  if (v14)
  {
    [v14 setFrame_];
  }

  result = *&v4[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView];
  if (result)
  {

    return [result setFrame_];
  }

  return result;
}

void sub_18B9F970C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_separator;
  if (!*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_separator])
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    v3 = [objc_opt_self() sf_barHairlineShadowColor];
    [v2 setBackgroundColor_];

    v4 = [v2 layer];
    [v4 setAllowsEdgeAntialiasing_];

    v5 = *&v0[v1];
    *&v0[v1] = v2;
    v6 = v2;

    [v0 addSubview_];
  }
}

void sub_18B9F9820()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView;
  if (!*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView])
  {
    [v0 bounds];
    v6 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
    v7 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView];
    *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView] = v6;
    v8 = v6;

    [v0 bounds];
    v13 = [objc_allocWithZone(SFBackdropView) initWithFrame_];
    [v13 setMaskView_];
    v14 = *&v0[v1];
    *&v0[v1] = v13;
    v15 = v13;

    [v0 addSubview_];
  }
}

void sub_18B9F998C()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView;
  if (!*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView])
  {
    [v0 bounds];
    v6 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
    v7 = [v6 layer];
    [v7 setCompositingFilter_];

    v8 = *&v0[v1];
    *&v0[v1] = v6;
    v9 = v6;

    [v0 addSubview_];
  }
}

void sub_18B9F9AB0()
{
  v1 = OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView;
  if (!*&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView])
  {
    [v0 bounds];
    v6 = [objc_allocWithZone(type metadata accessor for GradientView()) initWithFrame_];
    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v10 = v6;

    v8 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView];
    if (v8)
    {
      v9 = v8;
      [v9 setMaskView_];
    }
  }
}

id sub_18B9F9BE4()
{
  v2.receiver = v0;
  v2.super_class = _s17BarBackgroundViewCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_18B9F9D4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18B9F9DD8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_18B9F9E20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18B9F9E8C()
{
  result = qword_1EA9D5740;
  if (!qword_1EA9D5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5740);
  }

  return result;
}

void sub_18B9F9EE0(double *a1)
{
  v3 = *v1;
  sub_18B9F952C(*a1, a1[1], a1[2], a1[3]);
  [v3 setAlpha_];
  sub_18BB11A9C(v11);
  if ((v12 & 1) == 0)
  {
    v4 = *&v11[2];
    v5 = *&v11[3];
    v6 = *v11;
    v7 = *&v11[1];
    v8 = [v3 effectiveUserInterfaceLayoutDirection];
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    if (v8)
    {
      v10 = v5;
    }

    else
    {
      v10 = v7;
    }

    [v3 _setTouchInsets_];
  }
}

uint64_t sub_18B9F9FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18B98DB80(*a1, *a2);
  result = 0;
  if ((v4 & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 8), *(a2 + 8)), vceqq_f64(*(a1 + 24), *(a2 + 24))), xmmword_18BC43C00)) & 0xF) == 0)
  {
    v6 = sub_18B98DB80(*(a1 + 40), *(a2 + 40));
    result = 0;
    if ((v6 & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 48), *(a2 + 48)), vceqq_f64(*(a1 + 64), *(a2 + 64))), xmmword_18BC43C00)) & 0xF) == 0)
    {
      if (*(a1 + 80) != *(a2 + 80) || ((*(a1 + 88) ^ *(a2 + 88)) & 1) != 0)
      {
        return 0;
      }

      v7 = *(a2 + 96);
      if (*(a1 + 96))
      {
        if (v7)
        {
          type metadata accessor for CGImage(0);
          sub_18B9FA120();
          v8 = v7;
          v9 = sub_18BC1EF18();

          if (v9)
          {
            return 1;
          }
        }
      }

      else if (!v7)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_18B9FA120()
{
  result = qword_1EA9D5748;
  if (!qword_1EA9D5748)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5748);
  }

  return result;
}

uint64_t sub_18B9FA178(uint64_t a1)
{
  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration;
  v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 80);
  v20 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 64);
  v21 = v4;
  v22 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 96);
  v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 16);
  v17[0] = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration);
  v17[1] = v5;
  v6 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 48);
  v18 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration + 32);
  v19 = v6;
  v23[0] = v17[0];
  v23[1] = v5;
  v24 = v22;
  v23[4] = v20;
  v23[5] = v4;
  v23[2] = v18;
  v23[3] = v6;
  v7 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v7;
  v8 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v8;
  v9 = *(a1 + 80);
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 80) = v9;
  *(v3 + 96) = *(a1 + 96);
  sub_18B9D4798(v17, v15);
  sub_18B9D4798(v2, v15);
  sub_18B9D47F4(v23);
  v10 = *(v3 + 80);
  v15[4] = *(v3 + 64);
  v15[5] = v10;
  v16 = *(v3 + 96);
  v11 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v11;
  v12 = *(v3 + 48);
  v15[2] = *(v3 + 32);
  v15[3] = v12;
  sub_18B9D4798(v15, v14);
  LOBYTE(v2) = sub_18B9F9FC0(v15, v17);
  sub_18B9D47F4(v15);
  if ((v2 & 1) == 0)
  {
    sub_18B9F8A60();
  }

  return sub_18B9D47F4(v17);
}

uint64_t sub_18B9FA27C(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group);
  v4 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 16);
  v17 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group);
  v18 = v4;
  v5 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 48);
  v19 = *(v1 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group + 32);
  v20 = v5;
  v21[0] = v17;
  v21[1] = v4;
  v21[2] = v19;
  v21[3] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v8;
  *v3 = v6;
  *(v3 + 1) = v7;
  sub_18B9D5158(&v17, v16);
  sub_18B9D5158(a1, v16);
  sub_18B9EABE4(v21);
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  v13 = v3[4];
  v14 = v3[5];
  if (__PAIR128__(v10, v9) != v17 && (sub_18BC21FD8() & 1) == 0 || __PAIR128__(v12, v11) != v18 && (sub_18BC21FD8() & 1) == 0 || __PAIR128__(v14, v13) != v19 && (sub_18BC21FD8() & 1) == 0)
  {
    sub_18B9F8A60();
  }

  return sub_18B9EABE4(&v17);
}

void sub_18B9FA390(uint64_t *a1@<X8>)
{
  v43 = a1;
  v1 = sub_18BC1EC08();
  v38 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_18BC21AD8();

  v45 = 60;
  v46 = 0xE100000000000000;
  v5 = _s17BarBackgroundViewCMa();
  v44 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9D5750);
  v6 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v6);

  MEMORY[0x18CFFC150](0x6F72676B6361622ELL, 0xED0000203A646E75);
  sub_18BC1DE28();
  v7 = sub_18BC1EBA8();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v4, v1);
  MEMORY[0x18CFFC150](v7, v9);

  MEMORY[0x18CFFC150](15913, 0xE200000000000000);
  v39 = v46;
  v40 = v45;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_18BC1E3F8();
  sub_18BC21AD8();

  v45 = 60;
  v46 = 0xE100000000000000;
  v44 = v5;
  v11 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v11);

  MEMORY[0x18CFFC150](0x746E65746E6F632ELL, 0xEA0000000000203ALL);
  sub_18BC1DE28();
  v12 = sub_18BC1EBA8();
  v14 = v13;
  v15 = v38;
  v10(v4, v38);
  MEMORY[0x18CFFC150](v12, v14);

  MEMORY[0x18CFFC150](15913, 0xE200000000000000);
  v41 = v46;
  v42 = v45;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_18BC21AD8();

  v45 = 60;
  v46 = 0xE100000000000000;
  v44 = v5;
  v16 = sub_18BC20BF8();
  MEMORY[0x18CFFC150](v16);

  MEMORY[0x18CFFC150](0xD000000000000011, 0x800000018BC637D0);
  sub_18BC1DE28();
  v17 = sub_18BC1EBA8();
  v19 = v18;
  v10(v4, v15);
  MEMORY[0x18CFFC150](v17, v19);

  MEMORY[0x18CFFC150](15913, 0xE200000000000000);
  v20 = v45;
  v21 = v46;
  v22 = objc_allocWithZone(SFBackdropView);
  sub_18BC1E3F8();
  v23 = [v22 init];
  v24 = objc_allocWithZone(MEMORY[0x1E69DD838]);
  v25 = v23;
  v26 = [v24 init];
  v27 = [v25 backdropLayer];
  [v27 setCaptureOnly_];

  v28 = [v25 backdropLayer];
  v29 = v39;
  v30 = v40;
  v31 = sub_18BC20B98();

  [v28 setGroupName_];

  [v25 setUserInteractionEnabled_];
  [v26 setRenderMode_];
  v32 = [v26 captureGroup];
  v33 = sub_18BC20B98();

  [v32 setGroupName_];

  [v26 setUserInteractionEnabled_];
  v35 = v42;
  v34 = v43;
  *v43 = v30;
  v34[1] = v29;
  v36 = v41;
  v34[2] = v35;
  v34[3] = v36;
  v34[4] = v20;
  v34[5] = v21;
  v34[6] = v25;
  v34[7] = v26;
}

id sub_18B9FA830(uint64_t a1)
{
  v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode] = 1;
  v3 = &v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group];
  sub_18B9FA390(v22);
  v4 = v22[1];
  v5 = v22[2];
  *v3 = v22[0];
  v3[1] = v4;
  v6 = v22[3];
  v3[2] = v5;
  v3[3] = v6;
  v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView] = 1;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_separator] = 0;
  *&v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView] = 0;
  v7 = &v1[OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_configuration];
  v8 = *(a1 + 80);
  *(v7 + 4) = *(a1 + 64);
  *(v7 + 5) = v8;
  *(v7 + 12) = *(a1 + 96);
  v9 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v9;
  v10 = *(a1 + 48);
  *(v7 + 2) = *(a1 + 32);
  *(v7 + 3) = v10;
  sub_18B9D4798(a1, v21);
  v11 = _s17BarBackgroundViewCMa();
  v20.receiver = v1;
  v20.super_class = v11;
  v12 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending_];

  sub_18B9F8A60();
  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v12 selector:sel_sceneDidEnterBackground_ name:*MEMORY[0x1E69DE348] object:0];

  [v14 addObserver:v12 selector:sel_sceneWillEnterForeground_ name:*MEMORY[0x1E69DE360] object:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18BC3E410;
  v16 = sub_18BC1F7C8();
  v17 = MEMORY[0x1E69DC0F8];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  v21[3] = v11;
  v21[0] = v12;
  v18 = v12;
  MEMORY[0x18CFFCA50](v15, v21, sel_configurationDidChange);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  return v18;
}

void sub_18B9FAB08()
{
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentFadeOutRenderingMode) = 1;
  v1 = (v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_group);
  sub_18B9FA390(v4);
  v2 = v4[1];
  *v1 = v4[0];
  v1[1] = v2;
  v3 = v4[3];
  v1[2] = v4[2];
  v1[3] = v3;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_coordinatesGroupBackdropCaptureView) = 1;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaskView) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_backgroundMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentScribbleView) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaskView) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_contentMaterialView) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_separator) = 0;
  *(v0 + OBJC_IVAR____TtCC12MobileSafari11TabSwitcher17BarBackgroundView_systemMaterialView) = 0;
  sub_18BC21CF8();
  __break(1u);
}

uint64_t sub_18B9FAC54(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_18B9FACA4(a1, a2);
  return v4;
}

void *sub_18B9FACA4(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v5 = a1;
    v6 = a2;
    if (sub_18BC219A8())
    {
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
      v3 = v7;
    }

    else
    {
      v3 = MEMORY[0x1E69E7CD0];
    }

    a2 = v6;
    a1 = v5;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  v2[3] = a2;
  v2[4] = v3;
  v2[2] = a1;
  return v2;
}

uint64_t sub_18B9FAD44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000656C6954;
  v3 = 0x6B72616D6B6F6F62;
  v4 = a1;
  if (a1 <= 2u)
  {
    v9 = 0x52746361706D6F63;
    v10 = 0xEA0000000000776FLL;
    if (a1 != 1)
    {
      v9 = 0x6F526C6961746564;
      v10 = 0xE900000000000077;
    }

    if (a1)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0x6B72616D6B6F6F62;
    }

    if (v4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0xEC000000656C6954;
    }
  }

  else
  {
    if (a1 > 4u)
    {
      v6 = 0x800000018BC607F0;
      v7 = 0x800000018BC60810;
      v5 = a1 == 5;
      if (a1 == 5)
      {
        v8 = 0xD000000000000013;
      }

      else
      {
        v8 = 0xD000000000000012;
      }
    }

    else
    {
      v5 = a1 == 3;
      v6 = 0xED00007265646165;
      v7 = 0xEB000000006D6574;
      if (a1 == 3)
      {
        v8 = 0x4879726F74736968;
      }

      else
      {
        v8 = 0x4979726F74736968;
      }
    }

    if (v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA0000000000776FLL;
        if (v8 != 0x52746361706D6F63)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x6F526C6961746564;
      v2 = 0xE900000000000077;
    }

    if (v8 != v3)
    {
LABEL_42:
      v13 = sub_18BC21FD8();
      goto LABEL_43;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xD000000000000013;
    }

    else
    {
      v12 = 0xD000000000000012;
    }

    if (a2 == 5)
    {
      v2 = 0x800000018BC607F0;
    }

    else
    {
      v2 = 0x800000018BC60810;
    }

    if (v8 != v12)
    {
      goto LABEL_42;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xED00007265646165;
    if (v8 != 0x4879726F74736968)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v2 = 0xEB000000006D6574;
    if (v8 != 0x4979726F74736968)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v11 != v2)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_18B9FAFAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72756F487473616CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x6F747369486C6C61;
    }

    if (v3 == 2)
    {
      v5 = 0x800000018BC60840;
    }

    else
    {
      v5 = 0xEA00000000007972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7961646F74;
    }

    else
    {
      v4 = 0x72756F487473616CLL;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x800000018BC60840;
  if (a2 != 2)
  {
    v7 = 0x6F747369486C6C61;
    v8 = 0xEA00000000007972;
  }

  if (a2)
  {
    v2 = 0x7961646F74;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_18BC21FD8();
  }

  return v11 & 1;
}

uint64_t sub_18B9FB0F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = a1;
  if (a1 <= 3u)
  {
    v12 = 0xE900000000000073;
    v13 = 0x4C676E6964616572;
    v14 = 0xEB00000000747369;
    if (a1 != 2)
    {
      v13 = 0x6957646572616873;
      v14 = 0xED0000756F596874;
    }

    v15 = 0x79726F74736968;
    if (a1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v15 = 0x6B72616D6B6F6F62;
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = v12;
    }

    else
    {
      v11 = v14;
    }
  }

  else
  {
    v4 = 0x767265764F626174;
    v5 = 0xEB00000000776569;
    v6 = 0x6261546C61636F6CLL;
    v7 = 0xED000070756F7247;
    if (a1 != 7)
    {
      v6 = 0x5465746176697270;
      v7 = 0xEF70756F72476261;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v5 = v7;
    }

    v8 = 0xE700000000000000;
    v9 = 0x72616265646973;
    if (a1 != 4)
    {
      v9 = 0x6761507472617473;
      v8 = 0xE900000000000065;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v4;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v16 = 0x6957646572616873;
        v17 = 0x756F596874;
LABEL_45:
        v2 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        if (v10 != v16)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v18 = 0x4C676E6964616572;
      v19 = 7631721;
      goto LABEL_40;
    }

    if (a2)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x79726F74736968)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v2 = 0xE900000000000073;
      if (v10 != 0x6B72616D6B6F6F62)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        if (a2 != 7)
        {
          v2 = 0xEF70756F72476261;
          if (v10 != 0x5465746176697270)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v16 = 0x6261546C61636F6CLL;
        v17 = 0x70756F7247;
        goto LABEL_45;
      }

      v18 = 0x767265764F626174;
      v19 = 7824745;
LABEL_40:
      v2 = v19 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v10 != v18)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v10 != 0x72616265646973)
      {
        goto LABEL_52;
      }
    }

    else if (v10 != 0x6761507472617473)
    {
LABEL_52:
      v20 = sub_18BC21FD8();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v11 != v2)
  {
    goto LABEL_52;
  }

  v20 = 1;
LABEL_53:

  return v20 & 1;
}

uint64_t sub_18B9FB400()
{
  sub_18BC22158();
  sub_18BC20C28();

  return sub_18BC221A8();
}

uint64_t SFBookmarksCollectionViewController.Item.BookmarkItemStyle.hashValue.getter()
{
  v1 = *v0;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v1);
  return sub_18BC221A8();
}

uint64_t sub_18B9FB5F4()
{
  sub_18BC20C28();
}

uint64_t sub_18B9FB73C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18B9FE640();
  *a1 = result;
  return result;
}

void sub_18B9FB76C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000656C6954;
  v4 = 0x6B72616D6B6F6F62;
  v5 = 0x800000018BC607F0;
  v6 = 0xD000000000000013;
  if (v2 != 5)
  {
    v6 = 0xD000000000000012;
    v5 = 0x800000018BC60810;
  }

  v7 = 0xED00007265646165;
  v8 = 0x4879726F74736968;
  if (v2 != 3)
  {
    v8 = 0x4979726F74736968;
    v7 = 0xEB000000006D6574;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA0000000000776FLL;
  v10 = 0x52746361706D6F63;
  if (v2 != 1)
  {
    v10 = 0x6F526C6961746564;
    v9 = 0xE900000000000077;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void *SFBookmarksCollectionViewController.Item.bookmark.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *SFBookmarksCollectionViewController.Item.historyItem.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id WebBookmark.isReorderable.getter()
{
  result = [v0 isDeletable];
  if (result)
  {
    result = [v0 isEditable];
    if (result)
    {
      if ([v0 specialID])
      {
        return 0;
      }

      else
      {
        return ([v0 isReadingListItem] ^ 1);
      }
    }
  }

  return result;
}

uint64_t sub_18B9FB9D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 184);
  v4 = *(a1 + 192);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE714;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18B824D48(v3);
}

uint64_t sub_18B9FBA54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE730;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 184);
  sub_18B824D48(v3);
  result = sub_18B7B171C(v7);
  *(a2 + 184) = v6;
  *(a2 + 192) = v5;
  return result;
}

uint64_t SFBookmarksCollectionViewController.Item.leadingSwipeActionsProvider.getter()
{
  v1 = *(v0 + 184);
  sub_18B824D48(v1);
  return v1;
}

uint64_t SFBookmarksCollectionViewController.Item.leadingSwipeActionsProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_18B7B171C(*(v2 + 184));
  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

uint64_t sub_18B9FBB7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE70C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18B824D48(v3);
}

uint64_t sub_18B9FBBFC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE694;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 200);
  sub_18B824D48(v3);
  result = sub_18B7B171C(v7);
  *(a2 + 200) = v6;
  *(a2 + 208) = v5;
  return result;
}

uint64_t SFBookmarksCollectionViewController.Item.trailingSwipeActionsProvider.getter()
{
  v1 = *(v0 + 200);
  sub_18B824D48(v1);
  return v1;
}

uint64_t SFBookmarksCollectionViewController.Item.trailingSwipeActionsProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_18B7B171C(*(v2 + 200));
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return result;
}

uint64_t sub_18B9FBD24@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = *(a1 + 216);
  v4 = *(a1 + 224);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE6DC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18B824D48(v3);
}

uint64_t sub_18B9FBDA4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE6A4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 216);
  sub_18B824D48(v3);
  result = sub_18B7B171C(v7);
  *(a2 + 216) = v6;
  *(a2 + 224) = v5;
  return result;
}

uint64_t SFBookmarksCollectionViewController.Item.previewViewControllerProvider.getter()
{
  v1 = *(v0 + 216);
  sub_18B824D48(v1);
  return v1;
}

uint64_t SFBookmarksCollectionViewController.Item.previewViewControllerProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_18B7B171C(*(v2 + 216));
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return result;
}

uint64_t sub_18B9FBECC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE69C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18B824D48(v3);
}

uint64_t sub_18B9FBF4C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE694;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 232);
  sub_18B824D48(v3);
  result = sub_18B7B171C(v7);
  *(a2 + 232) = v6;
  *(a2 + 240) = v5;
  return result;
}

uint64_t SFBookmarksCollectionViewController.Item.contextMenuActionProvider.getter()
{
  v1 = *(v0 + 232);
  sub_18B824D48(v1);
  return v1;
}

uint64_t SFBookmarksCollectionViewController.Item.contextMenuActionProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_18B7B171C(*(v2 + 232));
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t sub_18B9FC074@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 248);
  v4 = *(a1 + 256);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B7D1E94;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_18B824D48(v3);
}

uint64_t sub_18B9FC0F4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_18B9FE68C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 248);
  sub_18B824D48(v3);
  result = sub_18B7B171C(v7);
  *(a2 + 248) = v6;
  *(a2 + 256) = v5;
  return result;
}

uint64_t SFBookmarksCollectionViewController.Item.previewDismissHandler.getter()
{
  v1 = *(v0 + 248);
  sub_18B824D48(v1);
  return v1;
}

uint64_t SFBookmarksCollectionViewController.Item.previewDismissHandler.setter(uint64_t a1, uint64_t a2)
{
  result = sub_18B7B171C(*(v2 + 248));
  *(v2 + 248) = a1;
  *(v2 + 256) = a2;
  return result;
}

uint64_t static SFBookmarksCollectionViewController.Item.segmentedControl(configurator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  MEMORY[0x18CFFC150](0xD000000000000013, 0x800000018BC607F0);
  *a3 = 0xD000000000000010;
  *(a3 + 8) = 0x800000018BC638E0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 5;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0xE000000000000000;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0xD000000000000010;
  *(a3 + 96) = 0x800000018BC638E0;
  *(a3 + 104) = CGRectMake;
  *(a3 + 112) = 0;
  *(a3 + 120) = CGRectMake;
  *(a3 + 128) = 0;
  *(a3 + 136) = CGRectMake;
  *(a3 + 144) = 0;
  *(a3 + 160) = a2;
  *(a3 + 168) = CGRectMake;
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 152) = a1;

  return sub_18BC1E1A8();
}

uint64_t static SFBookmarksCollectionViewController.Item.bookmark(_:style:selectionHandler:configurator:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *a2;
  v35 = WebBookmark.childrenCount.getter();
  v11 = v10;
  v12 = [a1 UUID];
  v13 = sub_18BC20BD8();
  v15 = v14;

  v16 = WebBookmark.siteName.getter();
  v29 = v17;
  v30 = v16;
  v18 = 0x201u >> (8 * v9);
  v19 = WebBookmark.titleForDisplay.getter();
  v21 = v20;
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  v22 = v18 & 3;
  if ((v18 & 3) != 0)
  {
    if (v22 == 1)
    {
      v23 = 0x52746361706D6F63;
    }

    else
    {
      v23 = 0x6F526C6961746564;
    }

    if (v22 == 1)
    {
      v24 = 0xEA0000000000776FLL;
    }

    else
    {
      v24 = 0xE900000000000077;
    }
  }

  else
  {
    v24 = 0xEC000000656C6954;
    v23 = 0x6B72616D6B6F6F62;
  }

  MEMORY[0x18CFFC150](v23, v24);

  v25 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v25 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    MEMORY[0x18CFFC150](v19, v21);
    MEMORY[0x18CFFC150](45, 0xE100000000000000);
  }

  if ((v11 & 1) == 0)
  {
    v26 = sub_18BC21F48();
    MEMORY[0x18CFFC150](v26);

    MEMORY[0x18CFFC150](41, 0xE100000000000000);
    MEMORY[0x18CFFC150](10285, 0xE200000000000000);
  }

  *a7 = v13;
  *(a7 + 8) = v15;
  *(a7 + 16) = v35;
  *(a7 + 24) = v11 & 1;
  *(a7 + 32) = v30;
  *(a7 + 40) = v29;
  *(a7 + 48) = v18;
  *(a7 + 56) = v19;
  *(a7 + 64) = v21;
  *(a7 + 80) = 0;
  *(a7 + 88) = v13;
  *(a7 + 96) = v15;
  *(a7 + 104) = a3;
  *(a7 + 112) = a4;
  *(a7 + 120) = a5;
  *(a7 + 136) = CGRectMake;
  *(a7 + 144) = 0;
  *(a7 + 152) = CGRectMake;
  *(a7 + 160) = 0;
  *(a7 + 168) = CGRectMake;
  *(a7 + 288) = 0;
  *(a7 + 256) = 0u;
  *(a7 + 272) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 240) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 208) = 0u;
  *(a7 + 176) = 0u;
  *(a7 + 72) = a1;
  *(a7 + 128) = a6;
  sub_18BC1E1A8();
  v27 = a1;
  return sub_18BC1E1A8();
}

id WebBookmark.childrenCount.getter()
{
  if (![v0 isFolder])
  {
    return 0;
  }

  result = [objc_opt_self() safariBookmarkCollection];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result listWithID_];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 bookmarkCount];

  return v4;
}

id WebBookmark.siteName.getter()
{
  v1 = [v0 address];
  if (!v1)
  {
    sub_18BC20BD8();
    v1 = sub_18BC20B98();
  }

  v2 = [v1 safari_userVisibleURL];

  if (v2)
  {
    v3 = [v2 safari:511 simplifiedUserVisibleURLStringWithSimplifications:1 forDisplayOnly:0 simplifiedStringOffset:?];

    v2 = sub_18BC20BD8();
  }

  return v2;
}

uint64_t WebBookmark.titleForDisplay.getter()
{
  v1 = v0;
  v2 = sub_18BC1E668();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 localizedTitle];
  v8 = sub_18BC20BD8();
  v10 = v9;

  v20[0] = v8;
  v20[1] = v10;
  v11 = [objc_opt_self() safari_whitespaceAndNewlineCharacterSet];
  sub_18BC1E658();

  sub_18B7B0B50();
  v12 = sub_18BC21888();
  v14 = v13;
  (*(v3 + 8))(v6, v2);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    v16 = [v1 bookmark];
    v17 = [v16 address];

    v18 = sub_18BC20BD8();
    return v18;
  }

  return v12;
}

uint64_t sub_18B9FC96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  MEMORY[0x18CFFC150](0x4879726F74736968, 0xED00007265646165);
  v10 = a1;
  v11 = a2;
  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x18CFFC150](a3, a4);
    MEMORY[0x18CFFC150](45, 0xE100000000000000);

    v10 = a1;
    v11 = a2;
  }

  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  *(a5 + 24) = 1;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 3;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = v10;
  *(a5 + 96) = v11;
  *(a5 + 104) = CGRectMake;
  *(a5 + 112) = 0;
  *(a5 + 120) = CGRectMake;
  *(a5 + 128) = 0;
  *(a5 + 136) = CGRectMake;
  *(a5 + 144) = 0;
  *(a5 + 152) = CGRectMake;
  *(a5 + 160) = 0;
  *(a5 + 168) = CGRectMake;
  *(a5 + 288) = 0;
  *(a5 + 256) = 0u;
  *(a5 + 272) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 176) = 0u;
  sub_18BC1E3F8();

  return sub_18BC1E3F8();
}

uint64_t static SFBookmarksCollectionViewController.Item.historyItem(_:selectionHandler:configurator:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  [a1 databaseID];
  v12 = sub_18BC21F48();
  v14 = v13;
  v17 = v13;
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  MEMORY[0x18CFFC150](0x4979726F74736968, 0xEB000000006D6574);
  *a6 = v12;
  *(a6 + 8) = v14;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 48) = 4;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0xE000000000000000;
  *(a6 + 72) = 0;
  *(a6 + 88) = v12;
  *(a6 + 96) = v17;
  *(a6 + 104) = a2;
  *(a6 + 112) = a3;
  *(a6 + 120) = CGRectMake;
  *(a6 + 128) = 0;
  *(a6 + 152) = CGRectMake;
  *(a6 + 160) = 0;
  *(a6 + 168) = CGRectMake;
  *(a6 + 288) = 0;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 80) = a1;
  *(a6 + 136) = a4;
  *(a6 + 144) = a5;
  sub_18BC1E1A8();
  v15 = a1;
  return sub_18BC1E1A8();
}

uint64_t static SFBookmarksCollectionViewController.Item.topLevelTabGroupRoot(numberOfTabGroups:style:selectionHandler:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a3;
  v8 = sub_18BC1EE48();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  sub_18BC1EE38();
  v13 = sub_18BC1EE28();
  v15 = v14;
  (*(v9 + 8))(v11, v8);
  v35 = 0xD000000000000011;
  v36 = 0x800000018BC63920;
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  v16 = 0xEC000000656C6954;
  v17 = 0x6B72616D6B6F6F62;
  if (v12 == 1)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  if (v12 == 1)
  {
    v17 = 0x6F526C6961746564;
    v16 = 0xE900000000000077;
  }

  if (v12)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (v12)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0x52746361706D6F63;
  }

  if (v12)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0xEA0000000000776FLL;
  }

  MEMORY[0x18CFFC150](v20, v21);

  v22 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v22 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v33 = 45;
    v34 = 0xE100000000000000;
    MEMORY[0x18CFFC150](v13, v15);
    MEMORY[0x18CFFC150](v33, v34);
  }

  v33 = 10285;
  v34 = 0xE200000000000000;
  v32 = a1;
  v23 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v23);

  MEMORY[0x18CFFC150](41, 0xE100000000000000);
  MEMORY[0x18CFFC150](v33, v34);

  v24 = v35;
  v25 = v36;
  LOBYTE(v33) = 0;
  *a5 = 0xD000000000000011;
  *(a5 + 8) = 0x800000018BC63920;
  *(a5 + 16) = a1;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = v19;
  *(a5 + 56) = v13;
  *(a5 + 64) = v15;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 88) = v24;
  *(a5 + 96) = v25;
  v26 = v30;
  *(a5 + 104) = v31;
  *(a5 + 112) = v26;
  *(a5 + 136) = CGRectMake;
  *(a5 + 144) = 0;
  *(a5 + 152) = CGRectMake;
  *(a5 + 160) = 0;
  *(a5 + 168) = CGRectMake;
  *(a5 + 288) = 0;
  *(a5 + 256) = 0u;
  *(a5 + 272) = 0u;
  *(a5 + 224) = 0u;
  *(a5 + 240) = 0u;
  *(a5 + 192) = 0u;
  *(a5 + 208) = 0u;
  *(a5 + 176) = 0u;
  v27 = swift_allocObject();
  v27[2] = a1;
  v27[3] = v13;
  v27[4] = v15;
  *(a5 + 120) = sub_18B9FE718;
  *(a5 + 128) = v27;
  sub_18BC1E1A8();
  return sub_18BC1E3F8();
}

uint64_t static SFBookmarksCollectionViewController.Item.tabGroupFavorites(title:style:bookmarkList:selectionHandler:)@<X0>(id a1@<X3>, uint64_t a2@<X0>, unint64_t a3@<X1>, unsigned __int8 *a4@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  v13 = [a1 bookmarkCount];
  sub_18BC21AD8();
  MEMORY[0x18CFFC150](0xD000000000000012, 0x800000018BC63940);
  [a1 folderID];
  type metadata accessor for ID(0);
  sub_18BC21C58();
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  v14 = 0xEC000000656C6954;
  v15 = 0x6B72616D6B6F6F62;
  if (v12 == 1)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  if (v12 == 1)
  {
    v15 = 0x6F526C6961746564;
    v14 = 0xE900000000000077;
  }

  v17 = v12 == 0;
  if (v12)
  {
    v18 = v16;
  }

  else
  {
    v18 = 1;
  }

  if (v17)
  {
    v19 = 0x52746361706D6F63;
  }

  else
  {
    v19 = v15;
  }

  if (v17)
  {
    v20 = 0xEA0000000000776FLL;
  }

  else
  {
    v20 = v14;
  }

  MEMORY[0x18CFFC150](v19, v20);

  v21 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v21 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    MEMORY[0x18CFFC150](a2, a3);
    MEMORY[0x18CFFC150](45, 0xE100000000000000);
  }

  v22 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v22);

  MEMORY[0x18CFFC150](41, 0xE100000000000000);
  MEMORY[0x18CFFC150](10285, 0xE200000000000000);

  *a7 = 0;
  *(a7 + 8) = 0xE000000000000000;
  *(a7 + 16) = v13;
  *(a7 + 24) = 0;
  *(a7 + 32) = 0;
  *(a7 + 40) = 0;
  *(a7 + 48) = v18;
  *(a7 + 56) = a2;
  *(a7 + 64) = a3;
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 88) = 0;
  *(a7 + 96) = 0xE000000000000000;
  *(a7 + 104) = a5;
  *(a7 + 112) = a6;
  *(a7 + 136) = CGRectMake;
  *(a7 + 144) = 0;
  *(a7 + 152) = CGRectMake;
  *(a7 + 160) = 0;
  *(a7 + 168) = CGRectMake;
  *(a7 + 288) = 0;
  *(a7 + 256) = 0u;
  *(a7 + 272) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 240) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 208) = 0u;
  *(a7 + 176) = 0u;
  v23 = swift_allocObject();
  v23[2] = v13;
  v23[3] = a2;
  v23[4] = a3;
  *(a7 + 120) = sub_18B9FE258;
  *(a7 + 128) = v23;
  swift_bridgeObjectRetain_n();
  return sub_18BC1E1A8();
}

uint64_t sub_18B9FD2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(a3, 0, ObjectType, a2);
  (*(a2 + 136))(0, ObjectType, a2);
  v10 = *(a2 + 264);
  sub_18BC1E3F8();
  v10(a4, a5, ObjectType, a2);
  v11 = sub_18BC20B98();
  v12 = [objc_opt_self() systemImageNamed_];

  return (*(a2 + 64))(v12, ObjectType, a2);
}

uint64_t static SFBookmarksCollectionViewController.Item.topLevelManagedBookmarksRoot(numberOfManagedBookmarks:title:selectionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  MEMORY[0x18CFFC150](0x52746361706D6F63, 0xEA0000000000776FLL);
  v12 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x18CFFC150](a2, a3);
    MEMORY[0x18CFFC150](45, 0xE100000000000000);
  }

  v13 = sub_18BC21F48();
  MEMORY[0x18CFFC150](v13);

  MEMORY[0x18CFFC150](41, 0xE100000000000000);
  MEMORY[0x18CFFC150](10285, 0xE200000000000000);

  *a6 = 0xD000000000000010;
  *(a6 + 8) = 0x800000018BC63960;
  *(a6 + 16) = a1;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = 0;
  *(a6 + 48) = 1;
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  *(a6 + 72) = 0;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0xD000000000000010;
  *(a6 + 96) = 0x800000018BC63960;
  *(a6 + 104) = a4;
  *(a6 + 112) = a5;
  *(a6 + 136) = CGRectMake;
  *(a6 + 144) = 0;
  *(a6 + 152) = CGRectMake;
  *(a6 + 160) = 0;
  *(a6 + 168) = CGRectMake;
  *(a6 + 288) = 0;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 192) = 0u;
  *(a6 + 208) = 0u;
  *(a6 + 176) = 0u;
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  *(a6 + 120) = sub_18B9FE278;
  *(a6 + 128) = v14;
  swift_bridgeObjectRetain_n();
  return sub_18BC1E1A8();
}

uint64_t sub_18B9FD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(a3, 0, ObjectType, a2);
  (*(a2 + 136))(0, ObjectType, a2);
  v10 = *(a2 + 264);
  sub_18BC1E3F8();
  v10(a4, a5, ObjectType, a2);
  v11 = sub_18BC20B98();
  v12 = [objc_opt_self() systemImageNamed_];

  return (*(a2 + 64))(v12, ObjectType, a2);
}

double static SFBookmarksCollectionViewController.Item.emptyReadingListItem()@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  MEMORY[0x18CFFC150](0xD000000000000012, 0x800000018BC60810);
  *a1 = 0xD000000000000010;
  *(a1 + 8) = 0x800000018BC63980;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xD000000000000010;
  *(a1 + 96) = 0x800000018BC63980;
  *(a1 + 104) = CGRectMake;
  *(a1 + 112) = 0;
  *(a1 + 120) = CGRectMake;
  *(a1 + 128) = 0;
  *(a1 + 136) = CGRectMake;
  *(a1 + 144) = 0;
  *(a1 + 152) = CGRectMake;
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 184) = 0u;
  a1 += 184;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 - 16) = sub_18B9FD888;
  *(a1 - 8) = 0;
  return result;
}

uint64_t sub_18B9FD888()
{
  v0 = sub_18BC1EE48();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[3] = sub_18BC1FCD8();
  v7[4] = MEMORY[0x1E69DC1D0];
  __swift_allocate_boxed_opaque_existential_0Tm(v7);
  sub_18BC1FC98();
  sub_18BC1FC78();
  sub_18BC1EE38();
  sub_18BC1EE28();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_18BC1FC88();
  sub_18BC1EE38();
  sub_18BC1EE28();
  v4(v3, v0);
  sub_18BC1FBE8();
  return sub_18BC21478();
}

double static SFBookmarksCollectionViewController.Item.emptySearchItem()@<D0>(uint64_t a1@<X8>)
{
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  MEMORY[0x18CFFC150](0xD000000000000012, 0x800000018BC60810);
  *a1 = 0x6165537974706D45;
  *(a1 + 8) = 0xEB00000000686372;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0x6165537974706D45;
  *(a1 + 96) = 0xEB00000000686372;
  *(a1 + 104) = CGRectMake;
  *(a1 + 112) = 0;
  *(a1 + 120) = CGRectMake;
  *(a1 + 128) = 0;
  *(a1 + 136) = CGRectMake;
  *(a1 + 144) = 0;
  *(a1 + 152) = CGRectMake;
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 184) = 0u;
  a1 += 184;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 - 16) = sub_18B9FDB68;
  *(a1 - 8) = 0;
  return result;
}

uint64_t sub_18B9FDB68()
{
  v1[3] = sub_18BC1FCD8();
  v1[4] = MEMORY[0x1E69DC1D0];
  __swift_allocate_boxed_opaque_existential_0Tm(v1);
  sub_18BC1FCC8();
  return sub_18BC21478();
}

uint64_t static SFBookmarksCollectionViewController.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96))
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

uint64_t SFBookmarksCollectionViewController.Item.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  v4 = v0[9];
  v3 = v0[10];
  v17 = *v0;
  sub_18BC1E3F8();
  MEMORY[0x18CFFC150](45, 0xE100000000000000);
  v5 = 0xEC000000656C6954;
  v6 = 0x6B72616D6B6F6F62;
  v7 = 0x800000018BC607F0;
  v8 = 0xD000000000000013;
  if (v2 != 5)
  {
    v8 = 0xD000000000000012;
    v7 = 0x800000018BC60810;
  }

  v9 = 0xED00007265646165;
  v10 = 0x4879726F74736968;
  if (v2 != 3)
  {
    v10 = 0x4979726F74736968;
    v9 = 0xEB000000006D6574;
  }

  if (v2 <= 4)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0xEA0000000000776FLL;
  v12 = 0x52746361706D6F63;
  if (v2 != 1)
  {
    v12 = 0x6F526C6961746564;
    v11 = 0xE900000000000077;
  }

  if (v2)
  {
    v6 = v12;
    v5 = v11;
  }

  if (v2 <= 2)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  if (v2 <= 2)
  {
    v14 = v5;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x18CFFC150](v13, v14);

  if ((v1 & 1) == 0)
  {
    v15 = sub_18BC21F48();
    MEMORY[0x18CFFC150](v15);

    MEMORY[0x18CFFC150](41, 0xE100000000000000);
    MEMORY[0x18CFFC150](10285, 0xE200000000000000);
  }

  if (v4)
  {
    MEMORY[0x18CFFC150](0x616D6B6F6F42282DLL, 0xEB00000000296B72);
  }

  if (v3)
  {
    MEMORY[0x18CFFC150](0x726F74736948282DLL, 0xEA00000000002979);
  }

  return v17;
}

uint64_t SFBookmarksCollectionViewController.Item.hashValue.getter()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B9FDE78()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B9FDECC()
{
  sub_18BC22158();
  sub_18BC20C28();
  return sub_18BC221A8();
}

uint64_t sub_18B9FDF18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96))
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

id WebBookmark.defaultIcon.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  *&v2 = MEMORY[0x1EEE9AC00](v1 - 8).n128_u64[0];
  v4 = &v16 - v3;
  v5 = [v0 identifier];
  if (v5 == *MEMORY[0x1E69E20C0] || (v6 = [v0 specialID], v6 == *MEMORY[0x1E69E20B8]) || (v7 = objc_msgSend(v0, sel_specialID), v7 == *MEMORY[0x1E69E20B0]))
  {
    v8 = sub_18BC20B98();
    v9 = [objc_opt_self() systemImageNamed_];
LABEL_12:
    v13 = v9;

    return v13;
  }

  if ([v0 isFolder])
  {
    v10 = [v0 managedBookmarkUUID];
    if (v10)
    {
      v11 = v10;
      sub_18BC1EBE8();

      v12 = sub_18BC1EC08();
      (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
    }

    else
    {
      v14 = sub_18BC1EC08();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
    }

    sub_18B9FE284(v4);
    v8 = sub_18BC20B98();
    v9 = [objc_opt_self() systemImageNamed_];
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_18B9FE284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18B9FE2F0()
{
  result = qword_1EA9D57D8;
  if (!qword_1EA9D57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D57D8);
  }

  return result;
}

unint64_t sub_18B9FE348()
{
  result = qword_1EA9D57E0;
  if (!qword_1EA9D57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D57E0);
  }

  return result;
}

uint64_t sub_18B9FE3A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_18B9FE3EC(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s4ItemV5StyleOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s4ItemV5StyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18B9FE5EC()
{
  result = qword_1EA9D57E8;
  if (!qword_1EA9D57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D57E8);
  }

  return result;
}

uint64_t sub_18B9FE640()
{
  v0 = sub_18BC21E28();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18B9FE6DC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_18B9FE734()
{
  v1 = v0;
  v2 = sub_18BC208F8();
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18BC20928();
  v15 = *(v5 - 8);
  v16 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_18BA007B4;
  *(v9 + 24) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_18B9D53AC;
  *(v10 + 24) = v9;
  v23 = sub_18B9D53B0;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_18B7E3BF4;
  v22 = &block_descriptor_73;
  v11 = _Block_copy(&aBlock);
  swift_retain_n();
  sub_18BC1E1A8();

  [v8 performWithoutAnimation_];
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    sub_18B9FEB18();
    sub_18B9FF650();
    sub_18B7B0AC0(0, &unk_1EA9D3A90);
    v13 = sub_18BC21348();
    v23 = sub_18BA007B8;
    v24 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_18B7B0DB0;
    v22 = &block_descriptor_76;
    v14 = _Block_copy(&aBlock);
    sub_18BC1E1A8();
    sub_18BC20908();
    v18 = MEMORY[0x1E69E7CC0];
    sub_18BA007BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AA0);
    sub_18BA00814();
    sub_18BC21908();
    sub_18BC21308();
    _Block_release(v14);

    (*(v17 + 8))(v4, v2);
    (*(v15 + 8))(v7, v16);
  }

  return result;
}

uint64_t sub_18B9FEB18()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  result = sub_18BC1E3F8();
  v21 = v3;
  if (!v3)
  {
  }

  v5 = 0;
  v6 = v2 + 32;
  v19 = &v25;
  v20 = v2;
  while (v5 < *(v2 + 16))
  {
    *v40 = v5;
    sub_18B99B8C0(v6, &v40[8]);
    if (*&v41[8])
    {
      v7 = *v40;
      v8 = *v41;
      *v40 = *&v40[8];
      *&v40[16] = *&v40[24];
      *&v40[32] = *&v40[40];
      *&v40[48] = *&v40[56];
      *v41 = *&v41[8];
      *&v41[16] = *&v41[24];
      *&v41[32] = *&v41[40];
      *&v41[48] = *&v41[56];
      *&v40[64] = v8;
      *&v41[64] = v42;
      sub_18BA005EC(v40, &v29);
      if (*(&v30 + 1))
      {
        sub_18B7C3FA4(&v29, v39);
        dispatch_group_enter(*(v1 + 56));
        v9 = *(v1 + 16);
        sub_18BC1E1A8();
        v10 = v9(v7, v40);

        sub_18B80DBC4(v39, v38);
        sub_18B99B8C0(v40, &v29);
        v11 = swift_allocObject();
        sub_18B7C3FA4(v38, v11 + 16);
        v12 = v33;
        *(v11 + 136) = v34;
        v13 = v36;
        *(v11 + 152) = v35;
        *(v11 + 168) = v13;
        *(v11 + 184) = v37;
        v14 = v29;
        *(v11 + 72) = v30;
        v15 = v32;
        *(v11 + 88) = v31;
        *(v11 + 104) = v15;
        *(v11 + 120) = v12;
        *(v11 + 56) = v14;
        v22 = objc_opt_self();
        v16 = swift_allocObject();
        v16[2] = v10;
        v16[3] = sub_18BA0077C;
        v16[4] = v11;
        v27 = sub_18B7E767C;
        v28 = v16;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_18B7B0DB0;
        v26 = &block_descriptor_59;
        v17 = _Block_copy(&aBlock);
        sub_18BC1E1A8();
        sub_18BC1E1A8();
        sub_18BC1E1A8();

        v27 = sub_18BA00788;
        v28 = v1;
        aBlock = MEMORY[0x1E69E9820];
        v24 = 1107296256;
        v25 = sub_18B8043A0;
        v26 = &block_descriptor_62;
        v18 = _Block_copy(&aBlock);
        sub_18BC1E1A8();
        v2 = v20;

        [v22 _animateUsingSpringBehavior_tracking_animations_completion_];
        _Block_release(v18);
        _Block_release(v17);

        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        result = sub_18B99B91C(v40);
      }

      else
      {
        sub_18B99B91C(v40);
        result = sub_18BA0065C(&v29);
      }

      ++v5;
      v6 += 144;
      if (v21 != v5)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_18B9FEEA4(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v4);
  v6 = (*(v5 + 40))(v4, v5);
  v6();

  v7 = *(a2 + 96);
  ObjectType = swift_getObjectType();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  (*(v7 + 64))(v11, 0, ObjectType, v7);
}

uint64_t sub_18B9FEFA4()
{
  swift_beginAccess();
  result = *(v0 + 32);
  v38 = *(result + 16);
  if (!v38)
  {
    return result;
  }

  v37 = result + 32;
  v40 = *MEMORY[0x1E69797E0];
  result = sub_18BC1E3F8();
  v2 = 0;
  v36 = result;
  while (v2 < *(result + 16))
  {
    sub_18B99B8C0(v37 + 144 * v2, v46);
    sub_18BBE0014();
    v3 = v47;
    ObjectType = swift_getObjectType();
    if (((*(v3 + 56))(ObjectType, v3) & 1) == 0)
    {
      v5 = v49;
      v6 = v50;
      __swift_project_boxed_opaque_existential_1Tm(v48, v49);
      v7 = (*(v6 + 24))(v5, v6);
      v7();

      sub_18BA005EC(v46, v43);
      v8 = v44;
      if (v44)
      {
        v9 = v45;
        __swift_project_boxed_opaque_existential_1Tm(v43, v44);
        v10 = (*(v9 + 24))(v8, v9);
        v10();

        __swift_destroy_boxed_opaque_existential_1Tm(v43);
      }

      else
      {
        sub_18BA0065C(v43);
      }

      v11 = v49;
      v12 = v50;
      __swift_project_boxed_opaque_existential_1Tm(v48, v49);
      v13 = (*(v12 + 16))(v11, v12);
      (*(v3 + 64))(v13, v46[40], ObjectType, v3);
    }

    sub_18BA005EC(v46, v43);
    v14 = v44;
    if (v44)
    {
      v15 = v45;
      __swift_project_boxed_opaque_existential_1Tm(v43, v44);
      v42 = (*(v15 + 16))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
    }

    else
    {
      sub_18BA0065C(v43);
      v16 = v49;
      v17 = v50;
      __swift_project_boxed_opaque_existential_1Tm(v48, v49);
      v42 = (*(v17 + 16))(v16, v17);
    }

    v39 = v2;
    (*(v3 + 48))(ObjectType, v3);
    swift_getAssociatedTypeWitness();
    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v18 = sub_18BC21C48();

    if (v18 >> 62)
    {
      result = sub_18BC219A8();
      if (!result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_3;
      }
    }

    v41 = result - 1;
    if (result < 1)
    {
      goto LABEL_35;
    }

    v19 = 0;
    if ((v18 & 0xC000000000000001) != 0)
    {
LABEL_17:
      v20 = MEMORY[0x18CFFD010](v19, v18);
      goto LABEL_19;
    }

    while (1)
    {
      v20 = *(v18 + 8 * v19 + 32);
LABEL_19:
      v21 = v20;
      v22 = [v20 layer];
      v23 = [v42 layer];
      v24 = sub_18BC20B98();
      v25 = [v22 animationForKey_];

      if (v25)
      {
        objc_opt_self();
        v26 = swift_dynamicCastObjCClass();
        if (!v26)
        {
        }
      }

      else
      {
        v26 = 0;
      }

      v27 = [v26 sourceLayer];
      if (v27 && (v28 = v27, sub_18B7B0AC0(0, &qword_1EA9D57F8), v29 = v23, v30 = sub_18BC215C8(), v29, v28, (v30 & 1) != 0))
      {
      }

      else
      {
        v31 = sub_18BC20B98();
        [v22 removeAnimationForKey_];

        v32 = [objc_allocWithZone(MEMORY[0x1E69793B8]) init];
        [v32 setDuration_];
        [v32 setFillMode_];
        [v32 setRemovedOnCompletion_];
        [v32 setSourceLayer_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_18BC42C20;
        *(v33 + 32) = sub_18BC21588();
        *(v33 + 40) = sub_18BC21588();
        *(v33 + 48) = sub_18BC21588();
        *(v33 + 56) = sub_18BC21588();
        sub_18B7B0AC0(0, &qword_1EA9D53D0);
        v34 = sub_18BC20D88();

        [v32 setSourcePoints_];

        [v32 setUsesNormalizedCoordinates_];
        v35 = sub_18BC20B98();
        [v22 addAnimation:v32 forKey:v35];
      }

      if (v41 == v19)
      {
        break;
      }

      ++v19;
      if ((v18 & 0xC000000000000001) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_3:
    v2 = v39 + 1;

    sub_18B99B91C(v46);
    result = v36;
    if (v39 + 1 == v38)
    {
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_18B9FF650()
{
  swift_beginAccess();
  result = *(v0 + 40);
  v35 = *(result + 16);
  if (!v35)
  {
    return result;
  }

  group = *(v0 + 56);
  v32 = v0;
  v33 = result + 32;
  v30 = v39;
  result = sub_18BC1E3F8();
  v2 = 0;
  v31 = result;
  while (v2 < *(result + 16))
  {
    v3 = (v33 + 32 * v2);
    v36 = *v3;
    v37 = v3[1];
    v4 = *v3;
    swift_unknownObjectRetain();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    dispatch_group_enter(group);
    swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      v7 = v5;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);
      swift_unknownObjectRetain_n();
      v10 = v9(ObjectType, v7);
      swift_unknownObjectRelease();
      if (v10)
      {
        goto LABEL_14;
      }
    }

    v11 = swift_allocObject();
    *(v11 + 16) = v36;
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_18BA006C4;
    *(v13 + 24) = v11;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_18B7D1EC4;
    *(v14 + 24) = v13;
    v39[2] = sub_18B7D1E94;
    v39[3] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v39[0] = sub_18B7E3BF4;
    v39[1] = &block_descriptor_8;
    v15 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    sub_18BC1E1A8();
    sub_18BC1E1A8();

    [v12 performWithoutAnimation_];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_26;
    }

LABEL_14:
    v17 = swift_allocObject();
    *(v17 + 16) = v36;
    *(v17 + 32) = v37;
    *(v17 + 48) = v4;
    *(v17 + 56) = *(&v36 + 1);
    *(v17 + 64) = v32;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_18BA00710;
    *(v18 + 24) = v17;
    swift_beginAccess();
    v19 = *(v37 + 32);
    swift_unknownObjectRetain_n();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 32) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_18B9B5814(0, v19[2] + 1, 1, v19);
      *(v37 + 32) = v19;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      v19 = sub_18B9B5814((v21 > 1), v22 + 1, 1, v19);
    }

    v19[2] = v22 + 1;
    v23 = &v19[2 * v22];
    v23[4] = sub_18B7D1E94;
    v23[5] = v18;
    *(v37 + 32) = v19;
    v24 = swift_endAccess();
    if ((*(v37 + 16))(v24))
    {
      v25 = *(v37 + 32);
      *(v37 + 32) = MEMORY[0x1E69E7CC0];
      v26 = *(v25 + 16);
      if (v26)
      {
        v27 = v25 + 40;
        do
        {
          v28 = *(v27 - 8);
          v29 = sub_18BC1E1A8();
          v28(v29);

          v27 += 16;
          --v26;
        }

        while (v26);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v2;

    swift_unknownObjectRelease();
    result = v31;
    if (v2 == v35)
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_18B9FFB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;
  v12 = swift_allocObject();
  v12[2] = a7;
  v12[3] = a5;
  v12[4] = a6;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = sub_18BA00724;
  v14[4] = v11;
  v22 = sub_18B7D80AC;
  v23 = v14;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_18B7B0DB0;
  v21 = &block_descriptor_46;
  v15 = _Block_copy(&v18);
  swift_unknownObjectRetain_n();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();

  v22 = sub_18BA00770;
  v23 = v12;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_18B8043A0;
  v21 = &block_descriptor_49;
  v16 = _Block_copy(&v18);
  sub_18BC1E1A8();

  [v13 _animateUsingSpringBehavior_tracking_animations_completion_];
  _Block_release(v16);
  _Block_release(v15);
}

void sub_18B9FFD24(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (!v10 || !a4 || (v11 = v10, v12 = swift_getObjectType(), v13 = *(v11 + 40), swift_unknownObjectRetain(), LOBYTE(v11) = v13(v12, v11), swift_unknownObjectRelease(), (v11 & 1) == 0))
  {
    ObjectType = swift_getObjectType();
    (*(a5 + 24))(a1 & 1, a2 & 1, ObjectType, a5);
  }

  v15 = *(a3 + 56);

  dispatch_group_leave(v15);
}

uint64_t sub_18B9FFE20()
{
  result = swift_beginAccess();
  v2 = *(v0 + 40);
  v17 = *(v2 + 16);
  if (v17)
  {
    result = sub_18BC1E3F8();
    v3 = 0;
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v4 = (v2 + 32 + 32 * v3);
      v5 = *v4;
      v6 = v4[2];
      swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (!v7 || v5 == 0)
      {
        break;
      }

      v9 = v7;
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 40);
      swift_unknownObjectRetain();
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      if ((v11(ObjectType, v9) & 1) == 0)
      {
        goto LABEL_14;
      }

      swift_unknownObjectRelease();
LABEL_4:
      ++v3;

      if (v3 == v17)
      {
      }
    }

    swift_unknownObjectRetain();
    sub_18BC1E1A8();
    sub_18BC1E1A8();
LABEL_14:
    swift_beginAccess();
    v12 = *(v6 + 32);
    *(v6 + 32) = MEMORY[0x1E69E7CC0];
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 40;
      do
      {
        v15 = *(v14 - 8);
        v16 = sub_18BC1E1A8();
        v15(v16);

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  return result;
}

void sub_18B9FFFFC()
{
  if (*(v0 + 64) != 1)
  {
    return;
  }

  *(v0 + 64) = 0;
  swift_beginAccess();
  v1 = *(v0 + 32);
  v26 = *(v1 + 16);
  if (!v26)
  {
LABEL_20:
    swift_beginAccess();
    v19 = *(v0 + 48);
    v20 = *(v19 + 16);
    if (v20)
    {
      sub_18BC1E3F8();
      v21 = v19 + 40;
      do
      {
        v22 = *(v21 - 8);
        LOBYTE(v28[0]) = 0;
        sub_18BC1E1A8();
        v22(v28);

        v21 += 16;
        --v20;
      }

      while (v20);
    }

    return;
  }

  v23 = v0;
  v25 = v1 + 32;
  v2 = sub_18BC1E3F8();
  v3 = 0;
  v24 = v2;
  while (v3 < *(v2 + 16))
  {
    v27 = v3;
    sub_18B99B8C0(v25 + 144 * v3, v31);
    v4 = v34;
    v5 = v35;
    __swift_project_boxed_opaque_existential_1Tm(v33, v34);
    v6 = (*(v5 + 32))(v4, v5);
    v6();

    sub_18BA005EC(v31, v28);
    v7 = v29;
    if (v29)
    {
      v8 = v30;
      __swift_project_boxed_opaque_existential_1Tm(v28, v29);
      v9 = (*(v8 + 32))(v7, v8);
      v9();

      __swift_destroy_boxed_opaque_existential_1Tm(v28);
    }

    else
    {
      sub_18BA0065C(v28);
    }

    v10 = v32;
    ObjectType = swift_getObjectType();
    (*(v10 + 72))(ObjectType, v10);
    (*(v10 + 48))(ObjectType, v10);
    swift_getAssociatedTypeWitness();
    sub_18B7B0AC0(0, &qword_1EA9D46F0);
    v12 = sub_18BC21C48();

    if (v12 >> 62)
    {
      v13 = sub_18BC219A8();
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_4;
      }
    }

    if (v13 < 1)
    {
      goto LABEL_26;
    }

    v14 = 0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x18CFFD010](v14, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v15 layer];
      v18 = sub_18BC20B98();
      [v17 removeAnimationForKey_];
    }

    while (v13 != v14);
LABEL_4:
    v3 = v27 + 1;

    sub_18B99B91C(v31);
    v2 = v24;
    if (v27 + 1 == v26)
    {

      v0 = v23;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_18BA00374()
{

  return swift_deallocClassInstance();
}

char *sub_18BA003CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7CC0];
  *(v4 + 40) = MEMORY[0x1E69E7CC0];
  *(v4 + 48) = v8;
  v9 = (v4 + 40);
  *(v4 + 56) = dispatch_group_create();
  *(v4 + 64) = 1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a1;
  v10 = *(a1 + 16);
  if (!v10)
  {
    sub_18BC1E1A8();
    sub_18BC1E3F8();
    return v4;
  }

  v11 = a1 + 32;
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  while (1)
  {
    sub_18B99B8C0(v11, v26);
    v13 = v27;
    swift_unknownObjectRetain();
    sub_18B99B91C(v26);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 32);
    v16 = sub_18BC1E1A8();
    v15(v16, ObjectType, v13);
    v17 = (*(v13 + 16))(ObjectType, v13);
    result = swift_beginAccess();
    v18 = *(v17 + 16);
    v19 = *(v4 + 40);
    v20 = *(v19 + 2);
    v21 = v20 + v18;
    if (__OFADD__(v20, v18))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v9 = v19;
    if (result && v21 <= *(v19 + 3) >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v20 <= v21)
      {
        v22 = v20 + v18;
      }

      else
      {
        v22 = v20;
      }

      result = sub_18B9B5B34(result, v22, 1, v19);
      v19 = result;
      *v9 = result;
      if (*(v17 + 16))
      {
LABEL_14:
        if ((*(v19 + 3) >> 1) - *(v19 + 2) < v18)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v23 = *(v19 + 2);
          v24 = __OFADD__(v23, v18);
          v25 = v23 + v18;
          if (v24)
          {
            goto LABEL_23;
          }

          *(v19 + 2) = v25;
        }

        goto LABEL_4;
      }
    }

    if (v18)
    {
      goto LABEL_21;
    }

LABEL_4:
    *v9 = v19;
    swift_endAccess();
    swift_unknownObjectRelease();
    v11 += 144;
    if (!--v10)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_18BA005EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D57F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA0065C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D57F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA006C4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_18BA00724()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

void sub_18BA00788()
{
  sub_18B9FFE20();
  v1 = *(v0 + 56);

  dispatch_group_leave(v1);
}

unint64_t sub_18BA007BC()
{
  result = qword_1EA9D6D20;
  if (!qword_1EA9D6D20)
  {
    sub_18BC208F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6D20);
  }

  return result;
}

unint64_t sub_18BA00814()
{
  result = qword_1EA9D6D30;
  if (!qword_1EA9D6D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA9D3AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D6D30);
  }

  return result;
}

uint64_t sub_18BA00894()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5840);
  v0 = sub_18BC1E2F8();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_18BC3E410;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E695A230], v0);
  qword_1EA9F7D28 = v3;
  return result;
}

uint64_t sub_18BA00978@<X0>(void *a1@<X8>)
{
  if (qword_1EA9D2258 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EA9F7D28;

  return sub_18BC1E3F8();
}

uint64_t sub_18BA009E8(uint64_t a1)
{
  v2 = sub_18BC1E348();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_18BC1E0B8();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_18BA00AD8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18BC1E098();
  return sub_18B99C650;
}

uint64_t sub_18BA00B68(uint64_t a1)
{
  v2 = sub_18BA01744();

  return MEMORY[0x1EEDB39D0](a1, v2);
}

uint64_t sub_18BA00BB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18BC1E488();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D90C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5830);
  v12 = sub_18BC1E8D8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = sub_18BC1DF68();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  (*(v3 + 104))(v5, *MEMORY[0x1E695A4F8], v2);
  result = sub_18BC1E128();
  *a1 = result;
  return result;
}

uint64_t SFSiriLinkCoordinator.searchWebAssistantIntentInteraction()()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = &unk_18BC441E8;
  *(v1 + 24) = v0;
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80A668();
  return sub_18BC1F028();
}

uint64_t sub_18BA00E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_18BC1E348();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  sub_18BC20F28();
  v3[11] = sub_18BC20F18();
  v6 = sub_18BC20ED8();

  return MEMORY[0x1EEE6DFA0](sub_18BA00F7C, v6, v5);
}

uint64_t sub_18BA00F7C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = Strong, v3 = [Strong actionPerformer], v2, v3))
  {
    if (qword_1EA9D22B0 != -1)
    {
      swift_once();
    }

    v4 = sub_18BC1F2C8();
    __swift_project_value_buffer(v4, qword_1EA9F7EC8);
    v5 = sub_18BC1F2A8();
    v6 = sub_18BC21218();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_18B7AC000, v5, v6, "SearchWebAssistantIntent query", v7, 2u);
      MEMORY[0x18CFFEEE0](v7, -1, -1);
    }

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];
    v11 = v0[5];

    sub_18BC1E0A8();
    sub_18BC1E338();
    (*(v9 + 8))(v8, v10);
    v12 = sub_18BC20B98();

    [v3 performSearchUsingQuery_];

    v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D45C0);
    v11[4] = sub_18B9A3450();
    __swift_allocate_boxed_opaque_existential_0Tm(v11);
    sub_18BC1DF98();
    swift_unknownObjectRelease();

    v13 = v0[1];
  }

  else
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v14 = sub_18BC1DE48();
    v15 = __swift_project_value_buffer(v14, qword_1EA9F8578);
    sub_18BA0196C(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v14 - 8) + 16))(v16, v15, v14);
    swift_willThrow();

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_18BA01290(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B7B6968;

  return sub_18BA00E84(a1, a2, v2);
}

uint64_t sub_18BA0133C(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_18B987B10;

  return v8(a1, v5);
}

uint64_t sub_18BA01440(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B7B6968;

  return sub_18BA0133C(a1, a2, v6);
}

unint64_t sub_18BA0150C()
{
  result = qword_1EA9D5808;
  if (!qword_1EA9D5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5808);
  }

  return result;
}

unint64_t sub_18BA01618()
{
  result = qword_1EA9D5828;
  if (!qword_1EA9D5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5828);
  }

  return result;
}

uint64_t sub_18BA0167C(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18B987B10;

  return sub_18BA0133C(a1, a2, v6);
}

unint64_t sub_18BA01744()
{
  result = qword_1EA9D5838;
  if (!qword_1EA9D5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D5838);
  }

  return result;
}

uint64_t sub_18BA01798()
{
  v0 = sub_18BC1E348();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1E0A8();
  v4 = sub_18BC1E338();
  v6 = v5;
  (*(v1 + 8))(v3, v0);

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    if (qword_1EA9D2550 != -1)
    {
      swift_once();
    }

    v9 = sub_18BC1DE48();
    v10 = __swift_project_value_buffer(v9, qword_1EA9F8578);
    sub_18BA0196C(&qword_1EA9D4620, MEMORY[0x1E6959D38]);
    swift_allocError();
    (*(*(v9 - 8) + 16))(v11, v10, v9);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_18BA0196C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18BA01A6C(uint64_t a1)
{
  v66 = _s4PageVMa();
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v53 - v12;
  v14 = *(a1 + 16);
  v15 = *v2;
  v16 = *(*v2 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v8;
  if (!isUniquelyReferenced_nonNull_native || (v19 = v15[3] >> 1, v19 < v17))
  {
    if (v16 <= v17)
    {
      v20 = v16 + v14;
    }

    else
    {
      v20 = v16;
    }

    v15 = sub_18B835DE8(isUniquelyReferenced_nonNull_native, v20, 1, v15);
    v19 = v15[3] >> 1;
  }

  v21 = v15[2];
  v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v16 = *(v4 + 72);
  v22 = v19 - v21;
  sub_18BBA2770(&v67, v15 + v17 + v16 * v21, v19 - v21, a1);
  if (v23 < v14)
  {
    goto LABEL_16;
  }

  if (v23)
  {
    v25 = v15[2];
    v26 = __OFADD__(v25, v23);
    v27 = v25 + v23;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v15[2] = v27;
  }

  if (v23 != v22)
  {
    sub_18B7D2E34();
LABEL_14:
    *v2 = v15;
    return;
  }

LABEL_17:
  v62 = v15[2];
  v24 = v68;
  v55 = v68;
  v56 = v67;
  v27 = v70;
  v53 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v33 = (v28 - 1) & v28;
    sub_18BA03288(*(v56 + 56) + (__clz(__rbit64(v28)) | (v29 << 6)) * v16, v13);
    v58 = *(v1 + 56);
    v58(v13, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_18BA032EC(v13, v63);
      v35 = *(v1 + 48);
      v1 += 48;
      v61 = v35;
      if (v35(v34, 1, v66) == 1)
      {
        break;
      }

      v54 = (v53 + 64) >> 6;
      v57 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_18BA0335C(v34);
        v40 = v15[3];
        v41 = v40 >> 1;
        v62 = v36;
        if ((v40 >> 1) < v36 + 1)
        {
          v15 = sub_18B835DE8(v40 > 1, v36 + 1, 1, v15);
          v41 = v15[3] >> 1;
        }

        v42 = v65;
        sub_18BA032EC(v13, v65);
        if (v61(v42, 1, v66) != 1)
        {
          break;
        }

        v43 = v32;
        v44 = v65;
LABEL_37:
        sub_18BA0335C(v44);
        v37 = v62;
        v32 = v43;
LABEL_32:
        v38 = v66;
        v15[2] = v37;
        v34 = v63;
        sub_18BA032EC(v13, v63);
        v39 = v61(v34, 1, v38);
        v36 = v62;
        if (v39 == 1)
        {
          goto LABEL_29;
        }
      }

      v59 = v15 + v17;
      v45 = v62;
      if (v62 <= v41)
      {
        v45 = v41;
      }

      v60 = v45;
      v44 = v65;
      while (1)
      {
        v49 = v64;
        sub_18BA033C4(v44, v64);
        if (v62 == v60)
        {
          sub_18BA03428(v49);
          v37 = v60;
          v62 = v60;
          goto LABEL_32;
        }

        v4 = v62;
        sub_18BA0335C(v13);
        sub_18BA033C4(v49, &v59[v4 * v16]);
        if (!v33)
        {
          break;
        }

        v50 = v32;
LABEL_52:
        v52 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        sub_18BA03288(*(v56 + 56) + (v52 | (v50 << 6)) * v16, v13);
        v46 = 0;
        v32 = v50;
LABEL_42:
        v62 = v4 + 1;
        v47 = v66;
        v58(v13, v46, 1, v66);
        v44 = v65;
        sub_18BA032EC(v13, v65);
        v48 = v61(v44, 1, v47);
        v43 = v32;
        if (v48 == 1)
        {
          goto LABEL_37;
        }
      }

      if (v54 <= (v32 + 1))
      {
        v51 = v32 + 1;
      }

      else
      {
        v51 = v54;
      }

      while (1)
      {
        v50 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v50 >= v54)
        {
          v33 = 0;
          v46 = 1;
          v32 = v51 - 1;
          goto LABEL_42;
        }

        v33 = *(v55 + 8 * v50);
        ++v32;
        if (v33)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_54:
      v58 = *(v1 + 56);
      v58(v13, 1, 1, v66);
      v33 = 0;
    }

LABEL_29:
    sub_18BA0335C(v13);
    sub_18B7D2E34();
    sub_18BA0335C(v34);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v53 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v53 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_54;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_18BA02048(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_18BA0218C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_18B9B6150(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18BA02284(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_18B9B6278(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_18BA0237C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_18B9B63D0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void static UICellAccessory.imageMaskPicker(_:setter:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v44 - v8;
  v9 = sub_18BC1F488();
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_18BC1F418();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1E69E7CC0];
  sub_18BC21B98();
  v12 = objc_opt_self();
  v53 = 0x800000018BC60770;
  v13 = sub_18BC20B98();
  v14 = [v12 sf:v13 imageNamed:?];

  sub_18BC21B68();
  sub_18BC21BA8();
  sub_18BC21BB8();
  sub_18BC21B78();
  swift_arrayDestroy();
  v54 = 0x800000018BC60790;
  v15 = sub_18BC20B98();
  v16 = [v12 sf:v15 imageNamed:?];

  sub_18BC21B68();
  sub_18BC21BA8();
  sub_18BC21BB8();
  sub_18BC21B78();
  v17 = v57;
  v52 = a4;
  v56 = v9;
  if (a1)
  {
    v18 = *(v57 + 16);
    if (v18)
    {
      v19 = a1;
      v20 = 0;
      while (v20 < *(v17 + 16))
      {
        v21 = *(v17 + 8 * v20 + 32);
        if (v21)
        {
          sub_18B7B0AC0(0, &qword_1ED6514F0);
          v22 = v19;
          v23 = v21;
          v24 = sub_18BC215C8();

          if (v24)
          {

            v25 = 0;
            v45 = v20 + 1;
            goto LABEL_12;
          }
        }

        if (v18 == ++v20)
        {

          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_21:
      v36 = MEMORY[0x18CFFD010](v45, v19);
      goto LABEL_16;
    }

LABEL_11:

    v45 = 0;
    v25 = 1;
  }

  else
  {

    v45 = 0;
    v25 = 0;
  }

LABEL_12:
  sub_18B7B0AC0(0, &unk_1EA9DADD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_18BC3E3E0;
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v27 = swift_allocObject();
  v28 = v55;
  *(v27 + 16) = v55;
  *(v27 + 24) = a3;
  sub_18BC1E1A8();
  *(v26 + 32) = sub_18BC215E8();
  v57 = MEMORY[0x1E69E7CC0];
  sub_18BC21B98();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = a3;
  v30 = v53;
  v29[4] = 0xD000000000000011;
  v29[5] = v30;
  sub_18BC1E1A8();
  sub_18BC215E8();
  sub_18BC21B68();
  sub_18BC21BA8();
  sub_18BC21BB8();
  sub_18BC21B78();
  swift_arrayDestroy();
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = a3;
  v32 = v54;
  v31[4] = 0xD000000000000014;
  v31[5] = v32;
  sub_18BC1E1A8();
  sub_18BC215E8();
  sub_18BC21B68();
  sub_18BC21BA8();
  sub_18BC21BB8();
  sub_18BC21B78();
  v33 = v57;
  v57 = v26;
  sub_18B7EDD18(v33, sub_18BA02F58);
  v34 = sub_18BC214D8();
  v18 = v34;
  a3 = v56;
  if (v25)
  {
LABEL_19:
    v40 = v46;
    v39 = v47;
    v41 = v49;
    (*(v47 + 104))(v46, *MEMORY[0x1E69DBF28], v49);
    v42 = sub_18BC1F448();
    (*(*(v42 - 8) + 56))(v50, 1, 1, v42);
    v43 = v48;
    sub_18BC1F478();
    sub_18BC1F588();

    (*(v51 + 8))(v43, a3);
    (*(v39 + 8))(v40, v41);
    return;
  }

  v35 = [v34 children];
  sub_18B7B0AC0(0, &qword_1EA9D39D0);
  v19 = sub_18BC20D98();

  if ((v19 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (v45 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v19 + 8 * v45 + 32);
LABEL_16:
    v37 = v36;

    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      [v38 setState_];
    }

    goto LABEL_19;
  }

  __break(1u);
}

void sub_18BA02CC0(uint64_t a1, void (*a2)(id))
{
  v3 = objc_opt_self();
  v4 = sub_18BC20B98();
  v5 = [v3 sf:v4 imageNamed:?];

  a2(v5);
}

uint64_t objectdestroy_3Tm()
{

  return swift_deallocObject();
}

uint64_t sub_18BA02DB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_18BC219A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_18BC219A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_18BA03484(&qword_1EA9D5850, &qword_1EA9D5848);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5848);
            v9 = sub_18BA030F8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_18B7B0AC0(0, &qword_1EA9D4700);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA02F58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_18BC219A8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_18BC219A8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_18BA03484(&unk_1EA9D5870, &qword_1EA9D5868);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5868);
            v9 = sub_18BA03178(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_18B7B0AC0(0, &qword_1EA9D39D0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_18BA030F8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18CFFD010](a2, a3);
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
    return sub_18BA034DC;
  }

  __break(1u);
  return result;
}

void (*sub_18BA03178(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18CFFD010](a2, a3);
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
    return sub_18BA031F8;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_18BA03200(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x18CFFD010](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = sub_18BC1E1A8();
LABEL_5:
    *v3 = v4;
    return sub_18BA03280;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BA03288(uint64_t a1, uint64_t a2)
{
  v4 = _s4PageVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA032EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA0335C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA033C4(uint64_t a1, uint64_t a2)
{
  v4 = _s4PageVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18BA03428(uint64_t a1)
{
  v2 = _s4PageVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18BA03484(unint64_t *a1, uint64_t *a2)
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

id sub_18BA034E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

id sub_18BA03558(char a1)
{
  v1[OBJC_IVAR___SFBrowsingAssistantCollection_isReaderModeAvailable] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___SFBrowsingAssistantCollection_isPresentedInActionsSheet] = 0;
  v3 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listCellRegistration;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___popUpCellRegistration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___switchCellRegistration;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___consentCardCellRegistration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8);
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v11 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___entityCardCellRegistration;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8);
  (*(*(v12 - 8) + 56))(&v1[v11], 1, 1, v12);
  v13 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listenToPageCardCellRegistration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8);
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerCardCellRegistration;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  v17 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerOptionsCardCellRegistration;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8);
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  v19 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sectionHeaderRegistration;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  (*(*(v20 - 8) + 56))(&v1[v19], 1, 1, v20);
  v21 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerButtonFooterRegistration;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18);
  (*(*(v22 - 8) + 56))(&v1[v21], 1, 1, v22);
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter] = 0;
  v23 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___globalHeaderFooterRegistration;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28);
  (*(*(v24 - 8) + 56))(&v1[v23], 1, 1, v24);
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource] = 0;
  v25 = &v1[OBJC_IVAR___SFBrowsingAssistantCollection_metrics];
  v28 = 1;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *(v25 + 4) = 0u;
  *(v25 + 5) = 0u;
  v25[96] = 1;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection_collectionView] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListCell] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingPopUpCell] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingSwitchCell] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingConsentCardCell] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingListenToPageCardCell] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderCardCell] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingReaderOptionsCardCell] = 0;
  *&v1[OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sizingHeader] = 0;
  v1[OBJC_IVAR___SFBrowsingAssistantCollection_hasDisplayedStepper] = 0;
  v1[OBJC_IVAR___SFBrowsingAssistantCollection_isShowingOnStartPage] = a1;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for BrowsingAssistant();
  return objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_18BA03A5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C68);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C68);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s8ListCellCMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5C70);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C68);
  return swift_endAccess();
}

void sub_18BA03CD0(char *a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  v5 = [*a3 accessibilityIdentifier];
  if (!v5)
  {
    sub_18BC20BD8();
    v5 = sub_18BC20B98();
  }

  [a1 setAccessibilityIdentifier_];

  Strong = swift_unknownObjectUnownedLoadStrong();
  *&a1[OBJC_IVAR____SFBrowsingAssistantListCell_delegate + 8] = &off_1EFF21718;
  swift_unknownObjectWeakAssign();

  v7 = [v4 isConfigurable];
  v8 = a1[OBJC_IVAR____SFBrowsingAssistantListCell_isConfigurable];
  a1[OBJC_IVAR____SFBrowsingAssistantListCell_isConfigurable] = v7;
  if (v7 != v8)
  {
    sub_18BBD34C0();
  }

  v9 = swift_unknownObjectUnownedLoadStrong();
  sub_18BC1EDC8();
  v10 = sub_18BA03E68();

  v11 = a1[OBJC_IVAR____SFBrowsingAssistantListCell_isDeletable];
  a1[OBJC_IVAR____SFBrowsingAssistantListCell_isDeletable] = v10 & 1;
  if ((v10 & 1) != v11)
  {
    sub_18BBD34C0();
  }

  v12 = swift_unknownObjectUnownedLoadStrong();
  [v4 addObserver_];

  v13 = swift_unknownObjectUnownedLoadStrong();
  sub_18BA10500(a1, v4);
}

uint64_t sub_18BA03E68()
{
  v0 = sub_18BA0671C();
  sub_18BC1FD38();

  if (v8 >= 2)
  {
    sub_18BA0FEA0(v8);

    v2 = sub_18BC20BD8();
    v4 = v3;
    if (v2 == sub_18BC20BD8() && v4 == v5)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_18BC21FD8();
    }

    sub_18BA0FEE0(v8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_18BA03F68@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___popUpCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C60);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C60);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s9PopUpCellCMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5500);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C60);
  return swift_endAccess();
}

uint64_t sub_18BA041DC(char *a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [v4 setObserver_];

  v6 = [v4 identifier];
  sub_18BC20BD8();

  MEMORY[0x18CFFC150](0x6C65437055706F50, 0xE90000000000006CLL);
  v7 = sub_18BC20B98();

  [a1 setAccessibilityIdentifier_];

  v8 = [v4 displayName];
  v9 = sub_18BC20BD8();
  v11 = v10;

  v12 = &a1[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title];
  v13 = *&a1[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title];
  v14 = *&a1[OBJC_IVAR____SFBrowsingAssistantPopUpCell_title + 8];
  *v12 = v9;
  v12[1] = v11;
  if (!v14 || (v9 == v13 ? (v15 = v14 == v11) : (v15 = 0), !v15 && (sub_18BC21FD8() & 1) == 0))
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v16 = [v4 actions];
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v17 = sub_18BC20D98();

  *&a1[OBJC_IVAR____SFBrowsingAssistantPopUpCell_actions] = v17;

  return sub_18BB80120();
}

uint64_t sub_18BA043A8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5C50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___switchCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &unk_1EA9D5C50);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &unk_1EA9D5C50);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s10SwitchCellCMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5500);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &unk_1EA9D5C50);
  return swift_endAccess();
}

id sub_18BA0461C(char *a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [v4 setObserver_];

  v6 = [v4 identifier];
  sub_18BC20BD8();

  MEMORY[0x18CFFC150](0x6543686374697753, 0xEA00000000006C6CLL);
  v7 = sub_18BC20B98();

  [a1 setAccessibilityIdentifier_];

  v8 = swift_unknownObjectUnownedLoadStrong();
  *&a1[OBJC_IVAR____SFBrowsingAssistantSwitchCell_delegate + 8] = &off_1EFF21708;
  swift_unknownObjectWeakAssign();

  v9 = [v4 displayName];
  v10 = sub_18BC20BD8();
  v12 = v11;

  v13 = &a1[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
  v14 = *&a1[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title];
  v15 = *&a1[OBJC_IVAR____SFBrowsingAssistantSwitchCell_title + 8];
  *v13 = v10;
  v13[1] = v12;
  if (!v15 || (v10 != v14 || v15 != v12) && (sub_18BC21FD8() & 1) == 0)
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v16 = [v4 BOOLValue];
  v17 = *&a1[OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch];

  return [v17 setOn_];
}

uint64_t sub_18BA047F4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___consentCardCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C48);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C48);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s15ConsentCardCellCMa();
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C48);
  return swift_endAccess();
}

void sub_18BA04A5C(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  v5 = [*a3 secondaryAction];
  v6 = v5;
  v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowAction;
  v8 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowAction) = v5;
  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v10 = v8;
    goto LABEL_7;
  }

  if (!v8)
  {
    v32 = v5;
    v12 = v6;
    if (!v6)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v9 = v6;
  v10 = v8;
  v11 = sub_18BC215C8();

  if ((v11 & 1) == 0)
  {
LABEL_7:
    [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowButton) removeAction:v10 forControlEvents:0x2000];
    v12 = *(a1 + v7);
    if (!v12)
    {
LABEL_9:

      v10 = v8;
      goto LABEL_10;
    }

LABEL_8:
    [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_notNowButton) addAction:v12 forControlEvents:0x2000];
    goto LABEL_9;
  }

LABEL_10:
LABEL_11:
  v13 = [v4 primaryAction];
  v14 = v13;
  v15 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueAction;
  v16 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueAction) = v13;
  if (!v13)
  {
    if (!v16)
    {
      goto LABEL_21;
    }

    v18 = v16;
    goto LABEL_17;
  }

  if (!v16)
  {
    v33 = v13;
    v20 = v14;
    if (!v14)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v17 = v14;
  v18 = v16;
  v19 = sub_18BC215C8();

  if ((v19 & 1) == 0)
  {
LABEL_17:
    [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueButton) removeAction:v18 forControlEvents:0x2000];
    v20 = *(a1 + v15);
    if (!v20)
    {
LABEL_19:

      v18 = v16;
      goto LABEL_20;
    }

LABEL_18:
    [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_continueButton) addAction:v20 forControlEvents:0x2000];
    goto LABEL_19;
  }

LABEL_20:
LABEL_21:
  sub_18B7B0AC0(0, &qword_1EA9D52D0);
  v21 = swift_allocObject();
  Strong = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectWeakInit();

  v34 = 0;
  v35 = 0;
  v37 = sub_18BA10FD4;
  v38 = v21;
  v36 = 0;
  v23 = sub_18BC215E8();
  v24 = v23;
  v25 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreAction;
  v26 = *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreAction);
  *(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreAction) = v23;
  if (!v26)
  {
    v30 = v23;
    v31 = v24;
    if (!v24)
    {
      goto LABEL_26;
    }

LABEL_25:
    [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreButton) addAction:v31 forControlEvents:{0x2000, v34, v35, v36, v37, v38}];
    goto LABEL_26;
  }

  v27 = v23;
  v39 = v26;
  v28 = sub_18BC215C8();

  if (v28)
  {

    v29 = v39;
    goto LABEL_27;
  }

  [*(a1 + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant15ConsentCardCell_learnMoreButton) removeAction:v39 forControlEvents:{0x2000, 0, 0, 0, sub_18BA10FD4, v38}];
  v31 = *(a1 + v25);
  if (v31)
  {
    goto LABEL_25;
  }

LABEL_26:

  v29 = v26;
LABEL_27:
}

void sub_18BA04DD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_18BC20B98();
    v3 = [objc_opt_self() presenterForPrivacySplashWithIdentifier_];

    if (v3)
    {
      [v3 setPresentingViewController_];
      [v3 present];
    }
  }
}

uint64_t sub_18BA04EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___entityCardCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C40);
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedDestroy();
  _s14EntityCardCellCMa();
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C40);
  return swift_endAccess();
}

void sub_18BA050F8(char *a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  v5 = [*a3 accessibilityIdentifier];
  [a1 setAccessibilityIdentifier_];

  v6 = [v4 customBodyView];
  v7 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14EntityCardCell_entityView;
  v8 = *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14EntityCardCell_entityView];
  v17 = v8;
  if (!v8)
  {
    v9 = 0;
    if (!v6)
    {
      v11 = 0;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14EntityCardCell_entityView];
  if (v6 != v8)
  {
LABEL_5:
    [v9 removeFromSuperview];
    v11 = *&a1[v7];
    goto LABEL_6;
  }

  v10 = v8;
  v11 = v17;
LABEL_6:
  *&a1[v7] = v6;
  v12 = v6;

  v13 = *&a1[v7];
  if (v13 && v13 != v17)
  {
    v15 = v13;
    v16 = [a1 contentView];
    [v16 _sf_addEdgeMatchedSubview_];

    v14 = v16;
  }

  else
  {

    v14 = v17;
  }
}

uint64_t sub_18BA0525C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___listenToPageCardCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C38);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C38);
  swift_unknownObjectUnownedInit();
  swift_unknownObjectUnownedDestroy();
  _s20ListenToPageCardCellCMa();
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C38);
  return swift_endAccess();
}

uint64_t sub_18BA054D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C28);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerCardCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C28);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s14ReaderCardCellCMa();
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C28);
  return swift_endAccess();
}

void sub_18BA0573C(char *a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [v4 setObserver_];

  v6 = swift_unknownObjectUnownedLoadStrong();
  sub_18BA10794(a1, v4);

  v7 = [v4 contextMenuInteraction];
  v8 = v7;
  v9 = OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_contextMenuInteraction;
  v10 = *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_contextMenuInteraction];
  *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_contextMenuInteraction] = v7;
  if (!v7)
  {
    if (!v10)
    {
      return;
    }

    v14 = v10;
LABEL_10:
    [a1 removeInteraction_];
    if (!*&a1[v9])
    {
LABEL_12:

      v13 = v10;
      goto LABEL_13;
    }

LABEL_11:
    [a1 addInteraction_];
    goto LABEL_12;
  }

  if (!v10)
  {
    v15 = v7;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_18B7B0AC0(0, &qword_1EA9D5C30);
  v11 = v8;
  v16 = v10;
  v12 = sub_18BC215C8();

  if ((v12 & 1) == 0)
  {
    v14 = v16;
    goto LABEL_10;
  }

  v13 = v16;
LABEL_13:
}

uint64_t sub_18BA058C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerOptionsCardCellRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C20);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s21ReaderOptionsCardCellCMa();
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  sub_18BC21298();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C20);
  return swift_endAccess();
}

void sub_18BA05B28(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [v4 setObserver_];

  v6 = swift_unknownObjectUnownedLoadStrong();
  sub_18BA10AC4(a1, v4);
}

uint64_t sub_18BA05BB0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5C10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___sectionHeaderRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &unk_1EA9D5C10);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &unk_1EA9D5C10);
  sub_18BC20BD8();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_18B7B0AC0(0, &qword_1EA9D3580);
  sub_18BC212A8();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &unk_1EA9D5C10);
  return swift_endAccess();
}

void sub_18BA05E38(void *a1)
{
  v2 = sub_18BC1FA08();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_18BA0671C();

  sub_18BC1EDC8();
  sub_18BC1FD38();

  v8 = v15[0];
  if (v15[0] >= 2)
  {
    sub_18BA0FEA0(v15[0]);

    sub_18BC1F9E8();
    sub_18BC1F9B8();
    sub_18BA0FEA0(v8);

    v9 = sub_18BC20BD8();
    v11 = v10;

    v15[0] = v9;
    v15[1] = v11;
    MEMORY[0x18CFFC150](0x726564616548, 0xE600000000000000);
    v12 = sub_18BC20B98();

    [a1 setAccessibilityIdentifier_];

    v15[3] = v2;
    v15[4] = MEMORY[0x1E69DC110];
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v15);
    (*(v3 + 16))(boxed_opaque_existential_0Tm, v5, v2);
    MEMORY[0x18CFFC900](v15);
    sub_18BA0FEE0(v8);
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_18BA06048@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___readerButtonFooterRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C08);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C08);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s18ReaderButtonFooterCMa();
  sub_18BC212A8();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C08);
  return swift_endAccess();
}

void sub_18BA062B8(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = &Strong[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource];
  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 1);

  if (v4)
  {
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(a1, ObjectType, v5);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_18BA0635C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5C00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___globalHeaderFooterRegistration;
  swift_beginAccess();
  sub_18B7CA054(v1 + v9, v8, &qword_1EA9D5C00);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_18B988BAC(v8, &qword_1EA9D5C00);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  _s16MainHeaderFooterCMa();
  sub_18BC212A8();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_18B7FD070(v5, v1 + v9, &qword_1EA9D5C00);
  return swift_endAccess();
}

void sub_18BA065CC(char *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = &Strong[OBJC_IVAR___SFBrowsingAssistantCollection_dataSource];
  v4 = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 1);

  if (v4)
  {
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(a1, ObjectType, v5);
    if (qword_1EA9D2198 != -1)
    {
      swift_once();
    }

    v7 = *&qword_1EA9F79B8;
    v8 = *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius];
    *&a1[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant16MainHeaderFooter_contentCornerRadius] = qword_1EA9F79B8;
    if (v7 != v8)
    {
      sub_18BC17D84();
    }

    v9 = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectRelease();
    v11 = *&v9[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter];
    *&v9[OBJC_IVAR___SFBrowsingAssistantCollection_globalHeaderFooter] = a1;
    v10 = a1;
  }
}

id sub_18BA0671C()
{
  v1 = OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource;
  v2 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___SFBrowsingAssistantCollection____lazy_storage___collectionDataSource);
  }

  else
  {
    v4 = sub_18BA06780(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_18BA06780(uint64_t a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CE0);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8);
  v68 = *(v9 - 8);
  v69 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v67 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18);
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8);
  v62 = *(v13 - 8);
  v63 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8);
  v59 = *(v15 - 8);
  v60 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v47 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8);
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v47 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v47 - v19;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8);
  v20 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v22 = &v47 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v47 - v29;
  sub_18BA03A5C(&v47 - v29);
  (*(v28 + 8))(v30, v27);
  sub_18BA03F68(v26);
  (*(v24 + 8))(v26, v23);
  sub_18BA043A8(v22);
  (*(v20 + 8))(v22, v51);
  v31 = v52;
  sub_18BA047F4(v52);
  (*(v53 + 8))(v31, v54);
  v32 = v55;
  sub_18BA04EA4(v55);
  (*(v56 + 8))(v32, v57);
  v33 = v58;
  sub_18BA0525C(v58);
  (*(v59 + 8))(v33, v60);
  v34 = v61;
  sub_18BA054D4(v61);
  (*(v62 + 8))(v34, v63);
  v35 = v64;
  sub_18BA06048(v64);
  (*(v65 + 8))(v35, v66);
  v36 = v67;
  sub_18BA058C0(v67);
  (*(v68 + 8))(v36, v69);
  v37 = v70;
  sub_18BA05BB0(v70);
  (*(v71 + 8))(v37, v72);
  v38 = v73;
  sub_18BA0635C(v73);
  result = (*(v74 + 8))(v38, v75);
  v40 = *(a1 + OBJC_IVAR___SFBrowsingAssistantCollection_collectionView);
  if (v40)
  {
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5CE8));
    v42 = v40;
    v43 = sub_18BC1FCE8();
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_18BC1E1A8();
    sub_18BC1FD08();

    sub_18BA110AC();
    sub_18BA11100();
    v44 = v47;
    sub_18BC1FD68();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v50;
    sub_18BC1FD58();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_18BC1FD48();
    v46 = v49;
    (*(v49 + 16))(v48, v44, v45);
    sub_18BC1FD88();
    (*(v46 + 8))(v44, v45);
    return v43;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BA071A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59A8);
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = &v61 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5998);
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5988);
  v78 = *(v11 - 8);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59F8);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59E8);
  v66 = *(v15 - 8);
  v67 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v65 = &v61 - v16;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59D8);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59C8);
  v62 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D59B8);
  v61 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v25 = *a3;
  v26 = *(a3 + 8);
  v80 = a4;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = sub_18BA0671C();

  v81 = a2;
  sub_18BC1EDC8();
  sub_18BC1FD38();

  v29 = v83;
  if (v83 == 1)
  {
    return 0;
  }

  if (v26)
  {
    if (v26 == 1)
    {
      v31 = v83;
      v32 = swift_unknownObjectUnownedLoadStrong();
      v33 = v77;
      sub_18BA03A5C(v77);

      v83 = v25;
      _s8ListCellCMa();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5C70);
      v34 = sub_18BC212B8();
      sub_18BA0FEE0(v31);
      sub_18B9B8894(v25, 1);
      (*(v78 + 8))(v33, v79);
      return v34;
    }

    v42 = v25;
    v43 = [v25 displayOption];
    if (!v43)
    {
      v49 = v29;
      v50 = swift_unknownObjectUnownedLoadStrong();
      v38 = v71;
      sub_18BA03F68(v71);

      v83 = v42;
      _s9PopUpCellCMa();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5500);
      v34 = sub_18BC212B8();
      sub_18BA0FEE0(v49);
      sub_18B9B8894(v42, 2);
      v41 = v72;
      v40 = v73;
      goto LABEL_21;
    }

    if (v43 == 1)
    {
      v44 = v29;
      v45 = swift_unknownObjectUnownedLoadStrong();
      v38 = v74;
      sub_18BA043A8(v74);

      v83 = v42;
      _s10SwitchCellCMa();
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5500);
      v34 = sub_18BC212B8();
      sub_18BA0FEE0(v44);
      sub_18B9B8894(v42, 2);
      v41 = v75;
      v40 = v76;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v35 = [v25 type];
  if (v35 > 1)
  {
    switch(v35)
    {
      case 2:
        v51 = v29;
        v52 = swift_unknownObjectUnownedLoadStrong();
        sub_18BA0525C(v18);

        v83 = v25;
        _s20ListenToPageCardCellCMa();
        type metadata accessor for SFBrowsingAssistantCardItem(0);
        v53 = v25;
        v34 = sub_18BC212B8();
        sub_18BA0FEE0(v51);
        sub_18B9B8894(v25, 0);
        (*(v63 + 8))(v18, v64);
        return v34;
      case 3:
        v54 = v29;
        v55 = swift_unknownObjectUnownedLoadStrong();
        v38 = v65;
        sub_18BA054D4(v65);

        v83 = v25;
        _s14ReaderCardCellCMa();
        type metadata accessor for SFBrowsingAssistantCardItem(0);
        v56 = v25;
        v34 = sub_18BC212B8();
        sub_18BA0FEE0(v54);
        sub_18B9B8894(v25, 0);
        v41 = v66;
        v40 = v67;
        goto LABEL_21;
      case 4:
        v36 = v29;
        v37 = swift_unknownObjectUnownedLoadStrong();
        v38 = v68;
        sub_18BA058C0(v68);

        v83 = v25;
        _s21ReaderOptionsCardCellCMa();
        type metadata accessor for SFBrowsingAssistantCardItem(0);
        v39 = v25;
        v34 = sub_18BC212B8();
        sub_18BA0FEE0(v36);
        sub_18B9B8894(v25, 0);
        v41 = v69;
        v40 = v70;
LABEL_21:
        (*(v41 + 8))(v38, v40);
        return v34;
    }

LABEL_17:
    sub_18BA0FEE0(v29);
    return 0;
  }

  if (v35)
  {
    if (v35 == 1)
    {
      v46 = v29;
      v47 = swift_unknownObjectUnownedLoadStrong();
      sub_18BA04EA4(v21);

      v83 = v25;
      _s14EntityCardCellCMa();
      type metadata accessor for SFBrowsingAssistantCardItem(0);
      v48 = v25;
      v34 = sub_18BC212B8();
      sub_18BA0FEE0(v46);
      sub_18B9B8894(v25, 0);
      (*(v62 + 8))(v21, v19);
      return v34;
    }

    goto LABEL_17;
  }

  v57 = v29;
  v58 = swift_unknownObjectUnownedLoadStrong();
  sub_18BA047F4(v24);

  v83 = v25;
  _s15ConsentCardCellCMa();
  type metadata accessor for SFBrowsingAssistantCardItem(0);
  v59 = v25;
  v60 = sub_18BC212B8();
  sub_18BA0FEE0(v57);
  sub_18B9B8894(v25, 0);
  (*(v61 + 8))(v24, v22);
  return v60;
}

uint64_t sub_18BA07B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a5;
  v29 = a4;
  v30 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3570);
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A28);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5A18);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  if (a2 == 0xD000000000000012 && 0x800000018BC64080 == a3 || (sub_18BC21FD8() & 1) != 0)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_18BA06048(v17);

    _s18ReaderButtonFooterCMa();
    v19 = sub_18BC212C8();
    (*(v15 + 8))(v17, v14);
  }

  else if (a2 == 0xD000000000000012 && 0x800000018BC64060 == a3 || (sub_18BC21FD8() & 1) != 0)
  {
    v21 = swift_unknownObjectUnownedLoadStrong();
    sub_18BA0635C(v13);

    _s16MainHeaderFooterCMa();
    v19 = sub_18BC212C8();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    if (sub_18BC20BD8() == a2 && v22 == a3)
    {
    }

    else
    {
      v23 = sub_18BC21FD8();

      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }

    v24 = swift_unknownObjectUnownedLoadStrong();
    sub_18BA05BB0(v9);

    sub_18B7B0AC0(0, &qword_1EA9D3580);
    v19 = sub_18BC212C8();
    (*(v26 + 8))(v9, v27);
  }

  return v19;
}