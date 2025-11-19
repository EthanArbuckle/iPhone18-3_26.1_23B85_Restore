uint64_t sub_1BB6A2DC4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1BB678118(result);
    }

    else
    {
      sub_1BB6BA534();
      swift_allocObject();
      sub_1BB6BA504();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1BB6BA694();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1BB6A2E8C()
{
  result = sub_1BB6BA7F4();
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

uint64_t sub_1BB6A31AC()
{
  result = sub_1BB6BA7F4();
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1BB6A3488(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BB6A34A8(uint64_t result, int a2, int a3)
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1BB6A34E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKPersonGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB6A354C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKPersonGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB6A35B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t DKOmni3DMotionFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKOmni3DMotionFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

IntelligentTrackingCore::DKOmni3DMotionFilter::Index_optional __swiftcall DKOmni3DMotionFilter.Index.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DKOmni3DMotionFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKOmni3DMotionFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKOmni3DMotionFilter.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  sub_1BB6A45BC(a1);
  v3 = v2;

  return v3;
}

uint64_t DKOmni3DMotionFilter.init(configuration:)(uint64_t a1)
{
  sub_1BB6A45BC(a1);
  v2 = v1;

  return v2;
}

uint64_t sub_1BB6A395C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime, v4, v6);
  sub_1BB6BA744();
  v124 = v9;
  (*(v5 + 8))(v8, v4);
  v11 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_x);
  v12 = v11[2];
  if (v12 < 6)
  {
    goto LABEL_101;
  }

  if (v11[3] <= 0)
  {
    goto LABEL_101;
  }

  if (v12 <= 0xE)
  {
    goto LABEL_101;
  }

  v13 = v11[4];
  v15 = *(v13 + 24);
  v14 = *(v13 + 32);
  v17 = *(v13 + 40);
  v16 = *(v13 + 48);
  v18 = *(v13 + 56);
  v119 = *(v13 + 64);
  v120 = v16;
  *&v10 = *(v13 + 80);
  v116 = v10;
  *&v10 = *(v13 + 72);
  *v117 = v10;
  v19 = *(v13 + 104);
  v121 = *(v13 + 96);
  v118 = v19;
  v20 = *(v13 + 112);
  v21 = __sincos_stret(v14);
  sinval = v21.__sinval;
  v23 = __sincos_stret(v17);
  *&v22 = v23.__cosval;
  v123 = v22;
  v25 = __sincos_stret(v15);
  v26 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F);
  v27 = v26[2];
  if (v27 < 1)
  {
    goto LABEL_101;
  }

  v28 = v26[3];
  if (v28 <= 6)
  {
    goto LABEL_101;
  }

  v29 = *&v124;
  if ((v27 * 6) >> 64 != (6 * v27) >> 63)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v30 = v21.__cosval * v25.__cosval;
  v31 = v26[4];
  *(v31 + 48 * v27) = *&v124 * (v21.__cosval * v25.__cosval);
  if (v28 == 7)
  {
    goto LABEL_101;
  }

  v32 = v123;
  v33 = sinval;
  if ((v27 * 7) >> 64 != (7 * v27) >> 63)
  {
    goto LABEL_73;
  }

  v34 = sinval * v25.__cosval;
  v35 = *&v123 * v25.__sinval;
  v36 = v23.__sinval * (sinval * v25.__cosval) - *&v123 * v25.__sinval;
  *(v31 + 56 * v27) = v29 * v36;
  if (v28 <= 8)
  {
    goto LABEL_101;
  }

  if (v27 >> 60)
  {
    goto LABEL_74;
  }

  v37 = v23.__sinval * v25.__sinval + *&v32 * v34;
  *(v31 + (v27 << 6)) = v29 * v37;
  if (v28 <= 0xC)
  {
    goto LABEL_101;
  }

  if ((v27 * 12) >> 64 != (12 * v27) >> 63)
  {
    goto LABEL_75;
  }

  *(v31 + 96 * v27) = v29 * (*(v31 + 48 * v27) * 0.5);
  v38 = v26[2];
  if (v38 < 1)
  {
    goto LABEL_101;
  }

  v39 = v26[3];
  if (v39 <= 7)
  {
    goto LABEL_101;
  }

  if ((v38 * 7) >> 64 != (7 * v38) >> 63)
  {
    goto LABEL_76;
  }

  if (v39 <= 0xD)
  {
    goto LABEL_101;
  }

  if ((v38 * 13) >> 64 != (13 * v38) >> 63)
  {
    goto LABEL_77;
  }

  *(v26[4] + 104 * v38) = v29 * (*(v26[4] + 56 * v38) * 0.5);
  v40 = v26[2];
  if (v40 < 1)
  {
    goto LABEL_101;
  }

  v41 = v26[3];
  if (v41 <= 8)
  {
    goto LABEL_101;
  }

  if (v40 >> 60)
  {
    goto LABEL_78;
  }

  if (v41 <= 0xE)
  {
    goto LABEL_101;
  }

  if ((v40 * 14) >> 64 != (14 * v40) >> 63)
  {
    goto LABEL_79;
  }

  *(v26[4] + 112 * v40) = v29 * (*(v26[4] + (v40 << 6)) * 0.5);
  v42 = v26[2];
  if (v42 < 2)
  {
    goto LABEL_101;
  }

  v43 = v26[3];
  if (v43 <= 6)
  {
    goto LABEL_101;
  }

  if ((v42 * 6) >> 64 != (6 * v42) >> 63)
  {
    goto LABEL_80;
  }

  v44 = v26[4];
  v45 = (6 * v42) | 1;
  *(v44 + 8 * v45) = v29 * (v21.__cosval * v25.__sinval);
  if (v43 == 7)
  {
    goto LABEL_101;
  }

  v46 = 7 * v42;
  if ((v42 * 7) >> 64 != (7 * v42) >> 63)
  {
    goto LABEL_81;
  }

  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v49 = *&v32 * v25.__cosval;
  *(v44 + 8 * v48) = v29 * (*&v32 * v25.__cosval + v23.__sinval * (v33 * v25.__sinval));
  if (v43 <= 8)
  {
    goto LABEL_101;
  }

  if (v42 >> 60)
  {
    goto LABEL_83;
  }

  v50 = *&v32 * (v33 * v25.__sinval) - v23.__sinval * v25.__cosval;
  *(v44 + (v42 << 6) + 8) = v29 * v50;
  if (v43 <= 0xC)
  {
    goto LABEL_101;
  }

  if ((v42 * 12) >> 64 != (12 * v42) >> 63)
  {
    goto LABEL_84;
  }

  *(v44 + 96 * v42 + 8) = v29 * (*(v44 + 8 * v45) * 0.5);
  v51 = v26[2];
  if (v51 < 2)
  {
    goto LABEL_101;
  }

  v52 = v26[3];
  if (v52 <= 7)
  {
    goto LABEL_101;
  }

  v53 = 7 * v51;
  if ((v51 * 7) >> 64 != (7 * v51) >> 63)
  {
    goto LABEL_85;
  }

  v47 = __OFADD__(v53, 1);
  v54 = v53 + 1;
  if (v47)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v52 <= 0xD)
  {
    goto LABEL_101;
  }

  if ((v51 * 13) >> 64 != (13 * v51) >> 63)
  {
    goto LABEL_87;
  }

  *(v26[4] + 104 * v51 + 8) = v29 * (*(v26[4] + 8 * v54) * 0.5);
  v55 = v26[2];
  if (v55 < 2)
  {
    goto LABEL_101;
  }

  v56 = v26[3];
  if (v56 <= 8)
  {
    goto LABEL_101;
  }

  if (v55 >> 60)
  {
    goto LABEL_88;
  }

  if (v56 <= 0xE)
  {
    goto LABEL_101;
  }

  if ((v55 * 14) >> 64 != (14 * v55) >> 63)
  {
    goto LABEL_89;
  }

  *(v26[4] + 112 * v55 + 8) = v29 * (*(v26[4] + (v55 << 6) + 8) * 0.5);
  v57 = v26[2];
  if (v57 < 3)
  {
    goto LABEL_101;
  }

  v58 = v26[3];
  if (v58 <= 8)
  {
    goto LABEL_101;
  }

  if (v57 >> 60)
  {
    goto LABEL_90;
  }

  if (v58 <= 0xE)
  {
    goto LABEL_101;
  }

  if ((v57 * 14) >> 64 != (14 * v57) >> 63)
  {
    goto LABEL_91;
  }

  *(v26[4] + 112 * v57 + 16) = v29 * (*(v26[4] + (v57 << 6) + 16) * 0.5);
  v59 = v26[2];
  if (v59 < 6)
  {
    goto LABEL_101;
  }

  v60 = v26[3];
  if (v60 <= 11)
  {
    goto LABEL_101;
  }

  if ((v59 * 11) >> 64 != (11 * v59) >> 63)
  {
    goto LABEL_92;
  }

  v61 = 1.0 / v21.__cosval;
  v62 = v33 * (1.0 / v21.__cosval);
  v63 = v26[4];
  *(v63 + 88 * v59 + 40) = v29;
  v64 = (v63 + 80 * v59);
  v64[5] = v29 * (v23.__sinval * v62);
  v65 = *&v32 * v62;
  v66 = (v63 + 72 * v59);
  v66[5] = v29 * (*&v32 * v62);
  v64[4] = v29 * *&v32;
  v66[4] = -(v23.__sinval * v29);
  v24.__sinval = v23.__sinval * (1.0 / v21.__cosval);
  v64[3] = v29 * v24.__sinval;
  *&v32 = *&v32 * (1.0 / v21.__cosval);
  v66[3] = v29 * *&v32;
  if (v59 == 6 || v60 == 12)
  {
    goto LABEL_101;
  }

  if ((v59 * 12) >> 64 != (12 * v59) >> 63)
  {
    goto LABEL_93;
  }

  *(v63 + 96 * v59 + 48) = v29;
  if (v59 < 8 || v60 <= 0xD)
  {
    goto LABEL_101;
  }

  if ((v59 * 13) >> 64 != (13 * v59) >> 63)
  {
    goto LABEL_94;
  }

  *(v63 + 104 * v59 + 56) = v29;
  if (v59 < 9 || v60 <= 0xE)
  {
    goto LABEL_101;
  }

  v67 = 14 * v59;
  if ((v59 * 14) >> 64 != (14 * v59) >> 63)
  {
    goto LABEL_95;
  }

  if (__OFADD__(v67, 8))
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v108 = v65;
  v105 = v32;
  v106 = v23.__sinval * v62;
  v107 = v24;
  v112 = v23.__sinval * v25.__cosval;
  v113 = v49;
  v109 = v50;
  v110 = v21.__cosval * v25.__sinval;
  v114 = v25.__sinval;
  cosval = v21.__cosval;
  v68 = v37;
  v111 = v36;
  *(v63 + 8 * (v67 + 8)) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BE30);
  swift_allocObject();

  v70 = sub_1BB59F300(v69);

  v71 = OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J;
  *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_J) = v70;

  v72 = *(v2 + v71);
  v73 = v72[2];
  if (v73 < 1 || v72[3] <= 5)
  {
    goto LABEL_101;
  }

  v74 = 5 * v73;
  v75 = *&v123;
  v77 = v120;
  v76 = v121;
  v78 = sinval;
  if ((v73 * 5) >> 64 != (5 * v73) >> 63)
  {
    goto LABEL_97;
  }

  v79 = *&v124;
  v80 = v79 * (v79 * 0.5);
  v81 = -(v25.__cosval * sinval);
  v83 = v118;
  v82 = v119;
  v84 = *&v124 * (v68 * v18 + (v35 + v23.__sinval * v81) * v119) + v80 * (v68 * v118 + (v35 + v23.__sinval * v81) * v20);
  v85 = *&v124 * (v81 * v120 + v23.__sinval * v30 * v18 + *&v123 * v30 * v119) + v80 * (v81 * v121 + v23.__sinval * v30 * v118 + *&v123 * v30 * v20);
  v86 = cosval;
  v87 = -(v114 * sinval);
  v88 = v23.__sinval * v87 - v113;
  v89 = *&v124 * (-(v114 * cosval) * v120 + v88 * v18 + (v112 + *&v123 * v87) * v119) + v80 * (-(v114 * cosval) * v121 + v88 * v118 + (v112 + *&v123 * v87) * v20);
  v90 = v72[4];
  v91 = v90 + 40 * v73;
  *v91 = v84;
  v92 = (v90 + 32 * v73);
  *v92 = v85;
  v93 = (v90 + 24 * v73);
  *v93 = v89;
  if (v73 == 1)
  {
    goto LABEL_101;
  }

  if (__OFADD__(v74, 1))
  {
    goto LABEL_98;
  }

  v94 = v79 * (v87 * v77 + v23.__sinval * v110 * v18 + v75 * v110 * v82) + v80 * (v87 * v76 + v23.__sinval * v110 * v83 + v75 * v110 * v20);
  v95 = v79 * (v30 * v77 + v111 * v18 + v68 * v82) + v80 * (v30 * v76 + v111 * v83 + v68 * v20);
  *(v90 + 8 * (v74 + 1)) = v79 * (v109 * v18 + v88 * v82) + v80 * (v109 * v83 + v88 * v20);
  v96 = (v90 + 32 * v73);
  v96[1] = v94;
  v93[1] = v95;
  if (v73 <= 2)
  {
    goto LABEL_101;
  }

  if (__OFADD__(v74, 2))
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  *(v90 + 8 * (v74 + 2)) = v79 * (v75 * v86 * v18 + -(v86 * v23.__sinval) * v82) + v80 * (v75 * v86 * v83 + -(v86 * v23.__sinval) * v20);
  v96[2] = v79 * (-(v78 * v23.__sinval) * v18 - v86 * v77 + -(v78 * v75) * v82) + v80 * (-(v78 * v23.__sinval) * v83 - v86 * v76 + -(v78 * v75) * v20);
  if (v73 > 5)
  {
    v97 = v108;
    if (!__OFADD__(v74, 5))
    {
      v99 = *&v116;
      v98 = v117[0];
      v100 = v106;
      *(v90 + 8 * (v74 + 5)) = v79 * (v108 * *&v116 - v106 * v117[0]) + 1.0;
      v92[5] = v79 * (v23.__sinval * (v61 * v61) * v99 + v75 * (v61 * v61) * v98);
      v101 = v79 * (v61 * v100 * v99 + v61 * v97 * v98);
      *&v102.f64[0] = v105;
      v102.f64[1] = -v23.__sinval;
      v103.f64[0] = v107.__sinval;
      v103.f64[1] = v75;
      *(v91 + 24) = vmulq_n_f64(vsubq_f64(vmulq_n_f64(v102, v99), vmulq_n_f64(v103, v98)), v79);
      v96[3] = v101;
      return sub_1BB69E74C(a1);
    }

    goto LABEL_100;
  }

LABEL_101:
  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t DKOmni3DMotionFilter.deinit()
{
  v0 = DKKalmanFilter.deinit();

  return v0;
}

uint64_t DKOmni3DMotionFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

void sub_1BB6A45BC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKOmni3DMotionFilter_omni3DConfiguration) = a1;
  v2 = swift_retain_n();
  DKKalmanFilter.init(configuration:stateSize:)(v2, 15);
  v4 = *(v3 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_Q);
  v5 = v4[2];
  if (v5 < 1)
  {
    goto LABEL_73;
  }

  v6 = v4[3];
  if (v6 <= 0)
  {
    goto LABEL_73;
  }

  v7 = v4[4];
  *v7 = 0x3FAEB851EB851EB8;
  if (v5 == 1 || v6 == 1)
  {
    goto LABEL_73;
  }

  if (__OFADD__(v5, 1))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v7[v5 + 1] = 0x3FAEB851EB851EB8;
  if (v5 < 3 || v6 <= 2)
  {
    goto LABEL_73;
  }

  if ((v5 + 0x4000000000000000) < 0)
  {
    goto LABEL_55;
  }

  if (__OFADD__(2 * v5, 2))
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v7[2 * v5 + 2] = 0x3FAEB851EB851EB8;
  if (v5 < 6 || v6 <= 5)
  {
    goto LABEL_73;
  }

  v11 = 5 * v5;
  if ((v5 * 5) >> 64 != (5 * v5) >> 63)
  {
    goto LABEL_57;
  }

  v12 = __OFADD__(v11, 5);
  v13 = v11 + 5;
  if (v12)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v7[v13] = 0x3F9EB851EB851EB8;
  v7[4 * v5 + 4] = 0x3F9EB851EB851EB8;
  v7[3 * v5 + 3] = 0x3FE1EB851EB851ECLL;
  if (v5 < 7 || v6 <= 6)
  {
    goto LABEL_73;
  }

  v15 = 6 * v5;
  if ((v5 * 6) >> 64 != (6 * v5) >> 63)
  {
    goto LABEL_59;
  }

  v12 = __OFADD__(v15, 6);
  v16 = v15 + 6;
  if (v12)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v7[v16] = 0x3F9999999999999ALL;
  if (v5 < 8 || v6 <= 7)
  {
    goto LABEL_73;
  }

  v17 = 8 * v5;
  v18 = 7 * v5;
  if ((v5 * 7) >> 64 != (7 * v5) >> 63)
  {
    goto LABEL_61;
  }

  v12 = __OFADD__(v18, 7);
  v19 = v18 + 7;
  if (v12)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v7[v19] = 0x3F9999999999999ALL;
  if (v5 < 9 || v6 <= 8)
  {
    goto LABEL_73;
  }

  if (v5 >> 60)
  {
    goto LABEL_63;
  }

  v12 = __OFADD__(v17, 8);
  v20 = v17 + 8;
  if (v12)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v7[v20] = 0x3FA47AE147AE147BLL;
  if (v5 < 0xC || v6 <= 0xB)
  {
    goto LABEL_73;
  }

  v21 = 11 * v5;
  if ((v5 * 11) >> 64 != (11 * v5) >> 63)
  {
    goto LABEL_65;
  }

  if (__OFADD__(v21, 11))
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v7[v21 + 11] = 0x3F847AE147AE147BLL;
  v7[10 * v5 + 10] = 0x3F847AE147AE147BLL;
  v7[9 * v5 + 9] = 0x3F947AE147AE147BLL;
  if (v5 < 0xD || v6 <= 0xC)
  {
    goto LABEL_73;
  }

  v22 = 12 * v5;
  if ((v5 * 12) >> 64 != (12 * v5) >> 63)
  {
    goto LABEL_67;
  }

  v12 = __OFADD__(v22, 12);
  v23 = v22 + 12;
  if (v12)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v7[v23] = 0x3F847AE147AE147BLL;
  if (v5 < 0xE || v6 <= 0xD)
  {
    goto LABEL_73;
  }

  v24 = 13 * v5;
  if ((v5 * 13) >> 64 != (13 * v5) >> 63)
  {
    goto LABEL_69;
  }

  v12 = __OFADD__(v24, 13);
  v25 = v24 + 13;
  if (v12)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v7[v25] = 0x3F847AE147AE147BLL;
  if (v5 < 0xF || v6 <= 0xE)
  {
    goto LABEL_73;
  }

  v26 = 14 * v5;
  if ((v5 * 14) >> 64 == (14 * v5) >> 63)
  {
    if (!__OFADD__(v26, 14))
    {
      v7[v26 + 14] = 0x3F8EB851EB851EB8;
      return;
    }

    goto LABEL_72;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  sub_1BB6BB524();
  __break(1u);
}

unint64_t sub_1BB6A4910()
{
  result = qword_1EBC5E510;
  if (!qword_1EBC5E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E510);
  }

  return result;
}

unint64_t sub_1BB6A4968()
{
  result = qword_1EBC5E518;
  if (!qword_1EBC5E518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5E520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E518);
  }

  return result;
}

void __swiftcall DKPIDConfig.init(kp:kd:ki:kv:clampIntegralZero:integralLimits:)(IntelligentTrackingCore::DKPIDConfig *__return_ptr retstr, Swift::OpaquePointer kp, Swift::OpaquePointer kd, Swift::OpaquePointer ki, Swift::OpaquePointer kv, Swift::Bool clampIntegralZero, Swift::OpaquePointer integralLimits)
{
  retstr->kp = kp;
  retstr->kd = kd;
  retstr->ki = ki;
  retstr->kv = kv;
  retstr->clampIntegralZero = clampIntegralZero;
  retstr->integralLimits = integralLimits;
}

uint64_t sub_1BB6A4B50()
{
  v1 = 0x657069506574696CLL;
  if (*v0 != 1)
  {
    v1 = 0x657265666E496F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657069506C6C7566;
  }
}

uint64_t sub_1BB6A4BB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6A6A78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB6A4BE0(uint64_t a1)
{
  v2 = sub_1BB6A512C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6A4C1C(uint64_t a1)
{
  v2 = sub_1BB6A512C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB6A4C58(uint64_t a1)
{
  v2 = sub_1BB6A5228();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6A4C94(uint64_t a1)
{
  v2 = sub_1BB6A5228();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB6A4CD0(uint64_t a1)
{
  v2 = sub_1BB6A51D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6A4D0C(uint64_t a1)
{
  v2 = sub_1BB6A51D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BB6A4D48(uint64_t a1)
{
  v2 = sub_1BB6A5180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6A4D84(uint64_t a1)
{
  v2 = sub_1BB6A5180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKIntelligentTrackingConfig.PipelineMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E548);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E550);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E558);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E560);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6A512C();
  sub_1BB6BB984();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BB6A51D4();
      v9 = v21;
      sub_1BB6BB6B4();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BB6A5180();
      v9 = v24;
      sub_1BB6BB6B4();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BB6A5228();
    sub_1BB6BB6B4();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1BB6A512C()
{
  result = qword_1EBC5E568;
  if (!qword_1EBC5E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E568);
  }

  return result;
}

unint64_t sub_1BB6A5180()
{
  result = qword_1EBC5E570;
  if (!qword_1EBC5E570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E570);
  }

  return result;
}

unint64_t sub_1BB6A51D4()
{
  result = qword_1EBC5E578;
  if (!qword_1EBC5E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E578);
  }

  return result;
}

unint64_t sub_1BB6A5228()
{
  result = qword_1EBC5E580;
  if (!qword_1EBC5E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E580);
  }

  return result;
}

uint64_t DKIntelligentTrackingConfig.PipelineMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](v1);
  return sub_1BB6BB964();
}

uint64_t DKIntelligentTrackingConfig.PipelineMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E588);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E590);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E598);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E5A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BB6A512C();
  v15 = v36;
  sub_1BB6BB974();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BB6BB694();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BB5D7124();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BB6BB3B4();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C7C8);
      *v24 = &type metadata for DKIntelligentTrackingConfig.PipelineMode;
      sub_1BB6BB5F4();
      sub_1BB6BB3A4();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1BB6A51D4();
          sub_1BB6BB5E4();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BB6A5180();
          v26 = v17;
          sub_1BB6BB5E4();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BB6A5228();
        sub_1BB6BB5E4();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1BB6A5890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  *a2 = *(*a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
}

uint64_t sub_1BB6A5908(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a2;
  *(v7 + 16) = *a1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
}

uint64_t sub_1BB6A59D0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t sub_1BB6A5A44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v4;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

__n128 sub_1BB6A5B94@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  result = *(v1 + 152);
  *(a1 + 32) = result;
  return result;
}

__n128 sub_1BB6A5BAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v2;
  result = *(a1 + 32);
  *(v1 + 152) = result;
  return result;
}

uint64_t DKIntelligentTrackingConfig.__allocating_init()()
{
  v0 = swift_allocObject();
  DKIntelligentTrackingConfig.init()();
  return v0;
}

uint64_t DKIntelligentTrackingConfig.init()()
{
  *(v0 + 88) = 0;
  *(v0 + 104) = xmmword_1BB6C8FE0;
  *(v0 + 168) = xmmword_1BB6C8FF0;
  *(v0 + 16) = &unk_1F3A49CB0;
  *(v0 + 24) = &unk_1F3A49CE0;
  *(v0 + 32) = &unk_1F3A49D10;
  *(v0 + 40) = &unk_1F3A49D40;
  *(v0 + 48) = 1;
  *(v0 + 56) = &unk_1F3A49D70;
  type metadata accessor for DKMultiSubjectTrackerConfiguration();
  swift_allocObject();
  *(v0 + 64) = DKMultiSubjectTrackerConfiguration.init()();
  *(v0 + 72) = 0;
  *(v0 + 80) = &unk_1F3A49DA0;
  *(v0 + 89) = 0;
  type metadata accessor for DKFramingEngine.Config();
  swift_allocObject();
  *(v0 + 96) = sub_1BB679D98();
  *(v0 + 120) = xmmword_1BB6C9000;
  *(v0 + 136) = xmmword_1BB6C9010;
  *(v0 + 152) = xmmword_1BB6C9020;
  return v0;
}

__n128 DKIntelligentTrackingConfig.__allocating_init(pid:tracker:debugEnabled:imageLogEnabled:homePosition:mode:framing:adaptiveFramerate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t *a5, char *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 104) = xmmword_1BB6C8FE0;
  *(v16 + 168) = xmmword_1BB6C8FF0;
  v17 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  v18 = *(a8 + 16);
  *(v16 + 120) = *a8;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *a5;
  v22 = *a6;
  *(v16 + 88) = 0;
  *(v16 + 48) = v19;
  *(v16 + 56) = v20;
  *(v16 + 64) = a2;
  *(v16 + 72) = a3;
  *(v16 + 73) = a4;
  *(v16 + 80) = v21;
  *(v16 + 89) = v22;
  *(v16 + 96) = a7;
  *(v16 + 136) = v18;
  result = *(a8 + 32);
  *(v16 + 152) = result;
  return result;
}

uint64_t DKIntelligentTrackingConfig.init(pid:tracker:debugEnabled:imageLogEnabled:homePosition:mode:framing:adaptiveFramerate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t *a5, char *a6, uint64_t a7, _OWORD *a8)
{
  *(v8 + 104) = xmmword_1BB6C8FE0;
  *(v8 + 168) = xmmword_1BB6C8FF0;
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  v10 = a8[1];
  *(v8 + 120) = *a8;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *a5;
  v14 = *a6;
  *(v8 + 88) = 0;
  *(v8 + 48) = v11;
  *(v8 + 56) = v12;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 73) = a4;
  *(v8 + 80) = v13;
  *(v8 + 89) = v14;
  *(v8 + 96) = a7;
  *(v8 + 136) = v10;
  *(v8 + 152) = a8[2];
  return v8;
}

uint64_t DKIntelligentTrackingConfig.deinit()
{

  return v0;
}

uint64_t DKIntelligentTrackingConfig.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1BB6A5F34()
{
  result = qword_1EBC5E5A8;
  if (!qword_1EBC5E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5A8);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1BB6A5F9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BB6A5FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BB6A6764()
{
  result = qword_1EBC5E5B0;
  if (!qword_1EBC5E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5B0);
  }

  return result;
}

unint64_t sub_1BB6A67BC()
{
  result = qword_1EBC5E5B8;
  if (!qword_1EBC5E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5B8);
  }

  return result;
}

unint64_t sub_1BB6A6814()
{
  result = qword_1EBC5E5C0;
  if (!qword_1EBC5E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5C0);
  }

  return result;
}

unint64_t sub_1BB6A686C()
{
  result = qword_1EBC5E5C8;
  if (!qword_1EBC5E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5C8);
  }

  return result;
}

unint64_t sub_1BB6A68C4()
{
  result = qword_1EBC5E5D0;
  if (!qword_1EBC5E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5D0);
  }

  return result;
}

unint64_t sub_1BB6A691C()
{
  result = qword_1EBC5E5D8;
  if (!qword_1EBC5E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5D8);
  }

  return result;
}

unint64_t sub_1BB6A6974()
{
  result = qword_1EBC5E5E0;
  if (!qword_1EBC5E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5E0);
  }

  return result;
}

unint64_t sub_1BB6A69CC()
{
  result = qword_1EBC5E5E8;
  if (!qword_1EBC5E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5E8);
  }

  return result;
}

unint64_t sub_1BB6A6A24()
{
  result = qword_1EBC5E5F0;
  if (!qword_1EBC5E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E5F0);
  }

  return result;
}

uint64_t sub_1BB6A6A78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657069506C6C7566 && a2 == 0xEC000000656E696CLL;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657069506574696CLL && a2 == 0xEC000000656E696CLL || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657265666E496F6ELL && a2 == 0xEB0000000065636ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

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

uint64_t DKLogVideoRecorder.__allocating_init(url:)(uint64_t a1)
{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BB657E60;

  return DKLogVideoRecorder.init(url:)(a1);
}

uint64_t DKLogVideoRecorder.init(url:)(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_1BB6BA654();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6A6D08, 0, 0);
}

uint64_t sub_1BB6A6D08()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[24];
  *(v0[25] + 32) = 0;
  sub_1BB6BAA24();
  (*(v2 + 16))(v1, v4, v3);
  v5 = *MEMORY[0x1E69874C0];
  v6 = objc_allocWithZone(MEMORY[0x1E6987ED8]);
  v7 = v5;
  v8 = sub_1BB6A9DC0(v1, v7);

  v9 = v0[27];
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  *(v11 + 16) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BB6BC7F0;
  *(inited + 32) = sub_1BB6BAC34();
  *(inited + 40) = v14;
  v15 = *MEMORY[0x1E6987CE8];
  type metadata accessor for AVVideoCodecType(0);
  *(inited + 72) = v16;
  *(inited + 48) = v15;
  *(inited + 80) = sub_1BB6BAC34();
  *(inited + 88) = v17;
  v18 = MEMORY[0x1E69E6530];
  *(inited + 120) = MEMORY[0x1E69E6530];
  *(inited + 96) = 1920;
  *(inited + 128) = sub_1BB6BAC34();
  *(inited + 136) = v19;
  *(inited + 168) = v18;
  *(inited + 144) = 1080;
  v20 = v15;
  sub_1BB5B167C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C220);
  swift_arrayDestroy();
  v21 = *MEMORY[0x1E6987608];
  v22 = objc_allocWithZone(MEMORY[0x1E6987EE0]);
  v23 = sub_1BB6BAAE4();

  v24 = [v22 initWithMediaType:v21 outputSettings:v23];

  *(v11 + 24) = v24;
  [*(v11 + 16) addInput_];
  (*(v9 + 8))(v12, v10);

  v25 = v0[1];
  v26 = v0[25];

  return v25(v26);
}

uint64_t sub_1BB6A70D0()
{
  v1 = v0[18];
  [*(v1 + 24) markAsFinished];
  v2 = *(v1 + 16);
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_1BB6A71FC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E600);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BB6A73B4;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v2 finishWritingWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BB6A71FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1BB6A72DC, 0, 0);
}

uint64_t sub_1BB6A72DC()
{
  v1 = *(v0 + 144);

  if ([*(v1 + 16) status] != 2)
  {
    sub_1BB5A8D60();
    swift_allocError();
    *v3 = 0xD000000000000014;
    *(v3 + 8) = 0x80000001BB6D0120;
    *(v3 + 16) = 0;
    swift_willThrow();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BB6A73B4(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

void sub_1BB6A73E8(__CVBuffer *a1, Float64 a2)
{
  v3 = sub_1BB6A9F60(a1, a2);
  if (v3)
  {
    v4 = v3;
    [*(v2 + 24) appendSampleBuffer_];
  }
}

uint64_t DKLogVideoRecorder.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKLogVideoRecorder_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DKLogVideoRecorder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKLogVideoRecorder_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DKLogKeyframeRecorder.__allocating_init(logFolder:startTime:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BB6600B0;

  return DKLogKeyframeRecorder.init(logFolder:startTime:)(a1, a2);
}

uint64_t DKLogKeyframeRecorder.init(logFolder:startTime:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1BB6BAA04();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1BB6BA654();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6A7780, 0, 0);
}

uint64_t sub_1BB6A7780()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[5];
  v18 = v0[6];
  v19 = v0[12];
  v7 = v0[3];
  v8 = v0[4];
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_keyframes) = MEMORY[0x1E69E7CC0];
  sub_1BB6BAA24();
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframeIndex) = 0;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframe) = 0;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_videoLogger;
  v0[14] = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_videoLogger;
  *(v6 + v9) = 0;
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_startTime;
  v11 = sub_1BB6BA7F4();
  v0[15] = v11;
  v12 = *(v11 - 8);
  v0[16] = v12;
  (*(v12 + 16))(v6 + v10, v8, v11);
  v13 = *(v3 + 16);
  v13(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_logFolder, v7, v2);
  sub_1BB6BA9E4();
  sub_1BB6BA604();
  v14 = *(v5 + 8);
  v0[17] = v14;
  v0[18] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v4, v18);
  v13(v19, v1, v2);
  type metadata accessor for DKLogVideoRecorder(0);
  swift_allocObject();
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_1BB6A79F0;
  v16 = v0[12];

  return DKLogVideoRecorder.init(url:)(v16);
}

uint64_t sub_1BB6A79F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1BB6A7D64;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_1BB6A7B40;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB6A7B40()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[6];
  *(v0[5] + v0[14]) = v0[21];

  sub_1BB6BA9F4();
  sub_1BB6BA604();
  v1(v2, v3);
  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1BB6BA5F4();
  v0[2] = 0;
  LODWORD(v3) = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:0 attributes:0 error:v0 + 2];

  v6 = v0[2];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v8 = v6;
    v9 = sub_1BB6BA5B4();

    swift_willThrow();
  }

  v10 = v0[13];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v14 = v0[3];
  (*(v0[16] + 8))(v0[4], v0[15]);
  v15 = *(v12 + 8);
  v15(v14, v13);
  v15(v11, v13);
  v15(v10, v13);

  v16 = v0[1];
  v17 = v0[5];

  return v16(v17);
}

uint64_t sub_1BB6A7D64()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[9];
  v6 = v0[4];
  v7 = v0[3];

  (*(v2 + 8))(v6, v1);
  v8 = *(v4 + 8);
  v8(v7, v5);
  v8(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BB6A7E90()
{
  v1[3] = v0;
  v2 = sub_1BB6BAA04();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BB6BA654();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6A7FB8, 0, 0);
}

uint64_t sub_1BB6A7FB8()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_keyframes;
  v3 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_keyframes);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  if (sub_1BB6BB564() >= 1)
  {
LABEL_3:
    sub_1BB6BA4A4();
    swift_allocObject();
    sub_1BB6BA494();
    v0[2] = *(v1 + v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5DBA8);
    sub_1BB6AA054();
    v4 = sub_1BB6BA484();
    v5 = v0[9];
    v6 = v0[7];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[6];
    v10 = v0[3];
    v18 = v0[4];
    v19 = v4;
    v12 = v11;

    (*(v7 + 16))(v5, v10 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_logFolder, v6);
    sub_1BB6BA9E4();
    sub_1BB6BA604();
    (*(v8 + 8))(v9, v18);
    v13 = *(v7 + 8);
    v13(v5, v6);
    sub_1BB6BA704();
    v13(v0[10], v0[7]);
    sub_1BB59F668(v19, v12);
  }

LABEL_5:
  v14 = *(v0[3] + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_videoLogger);
  v0[11] = v14;
  if (v14)
  {

    v15 = swift_task_alloc();
    v0[12] = v15;
    *v15 = v0;
    v15[1] = sub_1BB6A82C8;

    return sub_1BB6A70B0();
  }

  else
  {

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1BB6A82C8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1BB6A845C;
  }

  else
  {
    v2 = sub_1BB6A83DC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BB6A83DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BB6A845C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BB6A84E4()
{
  v1 = v0;
  v2 = sub_1BB6BA7F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframe;
  if (!*(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframe))
  {
    goto LABEL_4;
  }

  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_keyframes;
  v8 = swift_retain_n();
  MEMORY[0x1BFB10C80](v8);
  if (*((*(v0 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_7;
  }

  while (1)
  {
    sub_1BB6BAEB4();

LABEL_4:
    sub_1BB6BA7D4();
    type metadata accessor for DKKeyframeStorage(0);
    v9 = swift_allocObject();
    *(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_logs) = MEMORY[0x1E69E7CC0];
    v10 = (v9 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
    v11 = *(v3 + 32);
    v3 += 32;
    v11(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_time, v5, v2);
    *v10 = 0;
    v10[1] = 0;
    *(v1 + v6) = v9;

    v13 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframeIndex);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      break;
    }

    __break(1u);
LABEL_7:
    sub_1BB6BAE64();
  }

  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframeIndex) = v15;
  return result;
}

uint64_t sub_1BB6A86B8(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframe))
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BB6BD520;
    sub_1BB5BA078(v2, inited + 32);

    v4 = _s23IntelligentTrackingCore17DKKeyframeStorageC7convert4logsSayAA12DKLogCodableOGSayAA10DKLoggable_pG_tFZ_0(inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1(inited + 32);
    sub_1BB5C8FF4(v4);
  }

  return result;
}

uint64_t sub_1BB6A8774(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframe))
  {
    v2 = result;

    v3 = _s23IntelligentTrackingCore17DKKeyframeStorageC7convert4logsSayAA12DKLogCodableOGSayAA10DKLoggable_pG_tFZ_0(v2);
    sub_1BB5C8FF4(v3);
  }

  return result;
}

uint64_t sub_1BB6A87F4(__CVBuffer *a1)
{
  v53 = a1;
  v2 = sub_1BB6BA7F4();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v46 - v7;
  v54 = sub_1BB6BAA04();
  v9 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BB6BA654();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - v18;
  v20 = *(v13 + 16);
  v51 = v1;
  v52 = v20;
  (v20)(v15, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_logFolder, v12, v17);
  v56 = 0x2F6567616D69;
  v57 = 0xE600000000000000;
  v46 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframeIndex;
  v55 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframeIndex);
  v21 = sub_1BB6BB794();
  MEMORY[0x1BFB10B60](v21);

  MEMORY[0x1BFB10B60](0x6765706A2ELL, 0xE500000000000000);
  sub_1BB6BA9E4();
  sub_1BB6BA604();

  (*(v9 + 8))(v11, v54);
  v22 = *(v13 + 8);
  v23 = v15;
  v24 = v53;
  v22(v23, v12);
  v54 = v19;
  v25 = v19;
  v26 = v12;
  v52(v8, v25, v12);
  v27 = v51;
  (*(v13 + 56))(v8, 0, 1, v12);
  _s23IntelligentTrackingCore11DKImageUtilC21pixelBufferToJpegFile6buffer3urlSSSgSo11CVBufferRefa_10Foundation3URLVSgtFZ_0(v24, v8);
  v29 = v28;
  sub_1BB6AA108(v8);
  if (v29)
  {

    v30 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframe);
    if (v30)
    {
      v56 = *(v27 + v46);

      v31 = sub_1BB6BB794();
      v32 = (v30 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKKeyframeStorage_imageName);
      *v32 = v31;
      v32[1] = v33;
    }
  }

  v34 = *(v27 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_videoLogger);
  if (v34)
  {

    v35 = v47;
    sub_1BB6BA7E4();
    v37 = v48;
    v36 = v49;
    v38 = v27 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_startTime;
    v39 = v50;
    (*(v49 + 16))(v48, v38, v50);
    sub_1BB6BA744();
    v41 = v40;
    v42 = *(v36 + 8);
    v42(v37, v39);
    v42(v35, v39);
    v43 = sub_1BB6A9F60(v24, v41);
    if (v43)
    {
      v44 = v43;
      [*(v34 + 24) appendSampleBuffer_];
    }

    else
    {
    }
  }

  return (v22)(v54, v26);
}

uint64_t DKLogKeyframeRecorder.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_logFolder;
  v2 = sub_1BB6BA654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_startTime;
  v4 = sub_1BB6BA7F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_logger;
  v6 = sub_1BB6BAA34();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t DKLogKeyframeRecorder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_logFolder;
  v2 = sub_1BB6BA654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_startTime;
  v4 = sub_1BB6BA7F4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_logger;
  v6 = sub_1BB6BAA34();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t DKLogRecorder.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1BB6BAA24();
  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_keyframeLogger) = 0;
  return v0;
}

uint64_t DKLogRecorder.init()()
{
  sub_1BB6BAA24();
  *(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_keyframeLogger) = 0;
  return v0;
}

uint64_t sub_1BB6A9020(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for DKLoggerMetafile(0);
  v2[5] = swift_task_alloc();
  v3 = sub_1BB6BA7F4();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = sub_1BB6BAA04();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1BB6BA654();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6A91E0, 0, 0);
}

uint64_t sub_1BB6A91E0()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v16 = v0[8];
  v14 = v0[15];
  v15 = v0[6];
  v8 = v0[2];
  sub_1BB6BA9E4();
  sub_1BB6BA604();
  (*(v4 + 8))(v3, v5);
  sub_1BB6BA7D4();
  (*(v2 + 16))(v14, v8, v1);
  v9 = *(v7 + 16);
  v0[17] = v9;
  v0[18] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v16, v6, v15);
  type metadata accessor for DKLogKeyframeRecorder(0);
  swift_allocObject();
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1BB6A9364;
  v11 = v0[15];
  v12 = v0[8];

  return DKLogKeyframeRecorder.init(logFolder:startTime:)(v11, v12);
}

uint64_t sub_1BB6A9364(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1BB6A9748;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_1BB6A948C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BB6A948C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  *(v0[3] + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_keyframeLogger) = v0[21];

  sub_1BB6BA4A4();
  swift_allocObject();
  sub_1BB6BA494();
  v2(v6, v3, v4);
  (*(v5 + 56))(v6, 0, 1, v4);
  *(v6 + *(v7 + 20)) = xmmword_1BB6C95A0;
  *(v6 + *(v7 + 24)) = xmmword_1BB6C95B0;
  sub_1BB6AA190(&qword_1EBC5E618, type metadata accessor for DKLoggerMetafile);
  v8 = sub_1BB6BA484();
  if (v1)
  {
    v10 = v0[5];

    sub_1BB613B88(v10);
    v11 = v0[16];
    v12 = v0[13];
    v13 = v0[14];
    (*(v0[7] + 8))(v0[9], v0[6]);
    (*(v13 + 8))(v11, v12);
  }

  else
  {
    v14 = v0[16];
    v15 = v0[14];
    v23 = v0[13];
    v16 = v0[9];
    v18 = v0[6];
    v17 = v0[7];
    v19 = v8;
    v20 = v9;
    sub_1BB613B88(v0[5]);
    sub_1BB6BA704();
    sub_1BB59F668(v19, v20);

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v14, v23);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BB6A9748()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[7] + 8))(v0[9], v0[6]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BB6A9848()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_keyframeLogger);
  v0[3] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[4] = v2;
    *v2 = v0;
    v2[1] = sub_1BB6A9928;

    return sub_1BB6A7E90();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1BB6A9928()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1BB6A9AA0;
  }

  else
  {
    v2 = sub_1BB6A9A3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BB6A9A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BB6A9AA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BB6A9B04()
{
  if (*(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_keyframeLogger))
  {

    sub_1BB6A84E4();
  }

  return result;
}

uint64_t sub_1BB6A9B5C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_keyframeLogger);
  if (v2)
  {
    if (*(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore21DKLogKeyframeRecorder_currentKeyframe))
    {
      v3 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BF68);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BB6BD520;
      sub_1BB5BA078(v3, inited + 32);

      v5 = _s23IntelligentTrackingCore17DKKeyframeStorageC7convert4logsSayAA12DKLogCodableOGSayAA10DKLoggable_pG_tFZ_0(inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(inited + 32);
      sub_1BB5C8FF4(v5);
    }
  }

  return result;
}

uint64_t sub_1BB6A9C44(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_keyframeLogger))
  {
    v2 = result;

    sub_1BB6A87F4(v2);
  }

  return result;
}

uint64_t DKLogRecorder.deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKLogRecorder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore13DKLogRecorder_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id sub_1BB6A9DC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BB6BA5F4();
  v15[0] = 0;
  v7 = [v3 initWithURL:v6 fileType:a2 error:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_1BB6BA654();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a1, v9);
  }

  else
  {
    v12 = v15[0];
    sub_1BB6BA5B4();

    swift_willThrow();
    v13 = sub_1BB6BA654();
    (*(*(v13 - 8) + 8))(a1, v13);
  }

  return v7;
}

CMSampleBufferRef sub_1BB6A9F60(__CVBuffer *a1, Float64 a2)
{
  formatDescriptionOut[1] = *MEMORY[0x1E69E9840];
  CMTimeMakeWithSeconds(&v12.duration, a2, 30);
  value = v12.duration.value;
  epoch = v12.duration.epoch;
  *&v12.presentationTimeStamp.timescale = *&v12.duration.timescale;
  v5 = *(MEMORY[0x1E6960C70] + 8);
  v6 = *(MEMORY[0x1E6960C70] + 12);
  v7 = *(MEMORY[0x1E6960C70] + 16);
  v12.duration.value = *MEMORY[0x1E6960C70];
  v12.duration.timescale = v5;
  v12.duration.flags = v6;
  v12.duration.epoch = v7;
  v12.presentationTimeStamp.value = value;
  v12.presentationTimeStamp.epoch = epoch;
  v12.decodeTimeStamp.value = v12.duration.value;
  v12.decodeTimeStamp.timescale = v5;
  v12.decodeTimeStamp.flags = v6;
  v12.decodeTimeStamp.epoch = v7;
  formatDescriptionOut[0] = 0;
  v8 = *MEMORY[0x1E695E480];
  CMVideoFormatDescriptionCreateForImageBuffer(*MEMORY[0x1E695E480], a1, formatDescriptionOut);
  sampleBufferOut = 0;
  if (formatDescriptionOut[0])
  {
    CMSampleBufferCreateReadyWithImageBuffer(v8, a1, formatDescriptionOut[0], &v12, &sampleBufferOut);
    v10 = sampleBufferOut;
    v9 = formatDescriptionOut[0];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v10;
}

unint64_t sub_1BB6AA054()
{
  result = qword_1EBC5E608;
  if (!qword_1EBC5E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5DBA8);
    sub_1BB6AA190(&qword_1EBC5E610, type metadata accessor for DKKeyframeStorage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E608);
  }

  return result;
}

uint64_t sub_1BB6AA108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB6AA190(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BB6AA1E0()
{
  result = sub_1BB6BAA34();
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

uint64_t dispatch thunk of DKLogVideoRecorder.__allocating_init(url:)(uint64_t a1)
{
  v6 = (*(v1 + 184) + **(v1 + 184));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB65F2DC;

  return v6(a1);
}

uint64_t dispatch thunk of DKLogVideoRecorder.save()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46DC;

  return v4();
}

uint64_t sub_1BB6AA514()
{
  result = sub_1BB6BA654();
  if (v1 <= 0x3F)
  {
    result = sub_1BB6BA7F4();
    if (v2 <= 0x3F)
    {
      result = sub_1BB6BAA34();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of DKLogKeyframeRecorder.__allocating_init(logFolder:startTime:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 280) + **(v2 + 280));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1BB6600A8;

  return v8(a1, a2);
}

uint64_t dispatch thunk of DKLogKeyframeRecorder.save()()
{
  v4 = (*(*v0 + 288) + **(*v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B46DC;

  return v4();
}

uint64_t sub_1BB6AA95C()
{
  result = sub_1BB6BAA34();
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

uint64_t dispatch thunk of DKLogRecorder.startRecording(logFolder:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BB5B46DC;

  return v6(a1);
}

uint64_t dispatch thunk of DKLogRecorder.saveRecording()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BB5B3D14;

  return v4();
}

uint64_t DKBoundingBoxFilter.__allocating_init(alpha:)(double a1)
{
  v2 = swift_allocObject();
  DKBoundingBoxFilter.init(alpha:)(a1);
  return v2;
}

void sub_1BB6AAD04(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = 0uLL;
  if (*(v3 + 33) == 1 && (*(v3 + 32) != 1 ? (v5 = *(v3 + 40)) : COERCE_DOUBLE((v5 = atan2(*(v3 + 48), *(v3 + 56)), v4 = 0uLL)), (v6 = v1[3], *(v6 + 33) == 1) && ((v21 = v5, *(v6 + 32) != 1) ? (v7 = *(v6 + 40)) : COERCE_DOUBLE((v7 = atan2(*(v6 + 48), *(v6 + 56)), v4 = 0uLL)), (v8 = v1[4], *(v8 + 33) == 1) && ((v20 = v7, *(v8 + 32) != 1) ? (v9.f64[0] = *(v8 + 40)) : COERCE_FLOAT64_T((v9.f64[0] = atan2(*(v8 + 48), *(v8 + 56)), v4 = 0uLL)), v10 = v1[5], *(v10 + 33) == 1))))
  {
    if (*(v10 + 32) == 1)
    {
      v19 = v9.f64[0];
      v11 = atan2(*(v10 + 48), *(v10 + 56));
      v9.f64[0] = v19;
    }

    else
    {
      v11 = *(v10 + 40);
    }

    v13.f64[0] = v21;
    v12 = 0;
    v9.f64[1] = v11;
    __asm { FMOV            V0.2D, #-0.5 }

    v13.f64[1] = v20;
    v4 = vaddq_f64(v13, vmulq_f64(v9, _Q0));
  }

  else
  {
    v12 = 1;
    v9 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v9;
  *(a1 + 32) = v12;
}

uint64_t DKBoundingBoxFilter.init(alpha:)(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v28 = v1;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 1;
  v6 = sub_1BB6BA7F4();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  type metadata accessor for DKSmoothingFilter();
  v8 = swift_allocObject();
  *(v8 + 33) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0x3FF0000000000000;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v7((v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v6);
  v10 = v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v8 + 16) = a1;
  *(v8 + 24) = a1;
  *(v8 + 32) = 0;
  sub_1BB5BF3C4(v5, v8 + v9);
  *v10 = 0;
  *(v10 + 8) = 1;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v28;
  *(v28 + 16) = v8;
  v7(v5, 1, 1, v6);
  v13 = swift_allocObject();
  *(v13 + 33) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0x3FF0000000000000;
  v14 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v7((v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v6);
  v15 = v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v13 + 16) = a1;
  *(v13 + 24) = a1;
  *(v13 + 32) = 0;
  sub_1BB5BF3C4(v5, v13 + v14);
  *v15 = 0;
  *(v15 + 8) = 1;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v12 + 24) = v13;
  v7(v5, 1, 1, v6);
  v17 = swift_allocObject();
  *(v17 + 33) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0x3FF0000000000000;
  v18 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v7((v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v6);
  v19 = v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v17 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v17 + 16) = a1;
  *(v17 + 24) = a1;
  *(v17 + 32) = 0;
  sub_1BB5BF3C4(v5, v17 + v18);
  *v19 = 0;
  *(v19 + 8) = 1;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v28;
  *(v28 + 32) = v17;
  v7(v5, 1, 1, v6);
  v22 = swift_allocObject();
  *(v22 + 33) = 0;
  *(v22 + 40) = 0;
  *(v22 + 48) = 0;
  *(v22 + 56) = 0x3FF0000000000000;
  v23 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v7((v22 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v6);
  v24 = v22 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v22 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v22 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v22 + 16) = a1;
  *(v22 + 24) = a1;
  *(v22 + 32) = 0;
  sub_1BB5BF3C4(v5, v22 + v23);
  *v24 = 0;
  *(v24 + 8) = 1;
  *v25 = 0;
  *(v25 + 8) = 1;
  result = v21;
  *(v21 + 40) = v22;
  return result;
}

uint64_t sub_1BB6AB274(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  MidX = CGRectGetMidX(v20);
  v13 = sub_1BB6BA7F4();
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  sub_1BB6ABB40(0, 1, v11, MidX);

  sub_1BB5A1908(v11);

  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  MidY = CGRectGetMidY(v21);
  v14(v11, 1, 1, v13);
  sub_1BB6ABB40(0, 1, v11, MidY);

  sub_1BB5A1908(v11);

  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  Width = CGRectGetWidth(v22);
  v14(v11, 1, 1, v13);
  sub_1BB6ABB40(0, 1, v11, Width);

  sub_1BB5A1908(v11);

  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  Height = CGRectGetHeight(v23);
  v14(v11, 1, 1, v13);
  sub_1BB6ABB40(0, 1, v11, Height);

  result = sub_1BB5A1908(v11);
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;
  *(v4 + 80) = 0;
  return result;
}

uint64_t DKBoundingBoxFilter.deinit()
{

  return v0;
}

uint64_t DKBoundingBoxFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DKSmoothingFilter.__allocating_init(value:alpha:beta:isAngle:lastUpdated:lowThreshold:highThreshold:initialBooleanValue:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8, double a9, uint64_t a10, char a11)
{
  v18 = swift_allocObject();
  *(v18 + 40) = 0;
  *(v18 + 33) = 0;
  *(v18 + 48) = 0;
  *(v18 + 56) = 0x3FF0000000000000;
  v19 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v20 = sub_1BB6BA7F4();
  (*(*(v20 - 8) + 56))(v18 + v19, 1, 1, v20);
  *(v18 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  v21 = *&a3;
  if (a4)
  {
    v21 = a9;
  }

  *(v18 + 16) = a9;
  *(v18 + 24) = v21;
  *(v18 + 32) = a5;
  if ((a2 & 1) == 0)
  {
    if (a5)
    {
      *(v18 + 48) = __sincos_stret(*&a1);
    }

    else
    {
      *(v18 + 40) = a1;
    }

    *(v18 + 33) = 1;
  }

  v22 = v18 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  v23 = v18 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  sub_1BB5BF3C4(a6, v18 + v19);
  *v22 = a7;
  *(v22 + 8) = a8 & 1;
  *v23 = a10;
  *(v23 + 8) = a11 & 1;
  return v18;
}

uint64_t sub_1BB6AB784()
{
  if (*(v0 + 33) != 1)
  {
    return 0;
  }

  if (*(v0 + 32) == 1)
  {
    return atan2(*(v0 + 48), *(v0 + 56));
  }

  return *(v0 + 40);
}

uint64_t sub_1BB6AB808(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1BB5BA930(a1, &v8 - v5);
  return sub_1BB5BF3C4(v6, *a2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated);
}

uint64_t sub_1BB6AB90C(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BB6AB968(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t DKSmoothingFilter.init(value:alpha:beta:isAngle:lastUpdated:lowThreshold:highThreshold:initialBooleanValue:)(uint64_t a1, char a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8, double a9, uint64_t a10, char a11)
{
  *(v11 + 33) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0x3FF0000000000000;
  *(v11 + 40) = 0;
  v17 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v18 = sub_1BB6BA7F4();
  (*(*(v18 - 8) + 56))(v11 + v17, 1, 1, v18);
  v19 = v11 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v11 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v11 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  v21 = *&a3;
  if (a4)
  {
    v21 = a9;
  }

  *(v11 + 16) = a9;
  *(v11 + 24) = v21;
  *(v11 + 32) = a5;
  if ((a2 & 1) == 0)
  {
    if (a5)
    {
      *(v11 + 48) = __sincos_stret(*&a1);
    }

    else
    {
      *(v11 + 40) = a1;
    }

    *(v11 + 33) = 1;
  }

  sub_1BB5BF3C4(a6, v11 + v17);
  *v19 = a7;
  *(v19 + 8) = a8 & 1;
  *v20 = a10;
  *(v20 + 8) = a11 & 1;
  return v11;
}

void sub_1BB6ABB40(uint64_t a1, char a2, uint64_t a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_1BB6BA7F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 32);
  if (*(v4 + 33) != 1)
  {
    if (*(v4 + 32))
    {
      *(v4 + 48) = __sincos_stret(a4);
    }

    else
    {
      *(v4 + 40) = a4;
    }

    goto LABEL_15;
  }

  if (!*(v4 + 32))
  {
    v19 = *(v4 + 40);
    if ((a2 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    if (fabs(v19) >= fabs(a4))
    {
      *&v14 = *(v4 + 24);
    }

    else
    {
      *&v14 = *(v4 + 16);
    }

    goto LABEL_12;
  }

  v19 = atan2(*(v4 + 48), *(v4 + 56));
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  *&v14 = a1;
LABEL_12:
  *&v15 = 1.0 - *&v14;
  if (v18)
  {
    v27 = v14;
    v28 = v15;
    v20 = __sincos_stret(a4);
    *(v4 + 48) = vaddq_f64(vmulq_n_f64(v20, *&v27), vmulq_n_f64(*(v4 + 48), *&v28));
  }

  else
  {
    *(v4 + 40) = *&v14 * a4 + *&v15 * *(v4 + 40);
  }

LABEL_15:
  *(v4 + 33) = 1;
  sub_1BB5BA930(a3, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BB5A1908(v11);
  }

  else
  {
    v21 = *(v13 + 32);
    v21(v17, v11, v12);
    v22 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    sub_1BB5A1908(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated);
    v21((v4 + v22), v17, v12);
    (*(v13 + 56))(v4 + v22, 0, 1, v12);
  }

  if ((*(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold + 8) & 1) == 0 && (*(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold + 8) & 1) == 0 && *(v4 + 33) == 1)
  {
    v23 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold);
    v24 = *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold);
    if (*(v4 + 32) == 1)
    {
      v25 = atan2(*(v4 + 48), *(v4 + 56));
      if (v25 >= v23)
      {
LABEL_23:
        if (v24 >= v25)
        {
          return;
        }

        v26 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      v25 = *(v4 + 40);
      if (v25 >= v23)
      {
        goto LABEL_23;
      }
    }

    v26 = 0;
LABEL_27:
    *(v4 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = v26;
  }
}

uint64_t sub_1BB6ABE48()
{
  *(v0 + 33) = 0;
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  sub_1BB5A1908(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated);
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v0 + v1, 1, 1, v2);
}

uint64_t DKSmoothingFilter.__deallocating_deinit()
{
  sub_1BB5A1908(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKSmoothingFilter()
{
  result = qword_1EBC5E650;
  if (!qword_1EBC5E650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BB6ABFA4()
{
  sub_1BB5D8AFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BB6AC6A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - v2;
  *(v0 + 56) = xmmword_1BB6C9820;
  *(v0 + 72) = 0x3FB999999999999ALL;
  v4 = sub_1BB6BA7F4();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  *(v0 + 49) = 0;
  *(v0 + 24) = 0x3FE0000000000000;
  type metadata accessor for DKSmoothingFilter();
  v6 = swift_allocObject();
  *(v6 + 48) = xmmword_1BB6BE460;
  v7 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v5((v6 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v4);
  v8 = v6 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v6 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v6 + 16) = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v6 + 32) = 256;
  *(v6 + 40) = 0x3FE0000000000000;
  sub_1BB5BF3C4(v3, v6 + v7);
  *v8 = 0;
  *(v8 + 8) = 1;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(v0 + 16) = v6;
  *(v0 + 32) = 0x3FE0000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t sub_1BB6AC89C()
{

  return swift_deallocClassInstance();
}

Swift::Double __swiftcall wrapAngle(_:)(Swift::Double result)
{
    ;
  }

    ;
  }

  return result;
}

Swift::Double __swiftcall clamp(value:minValue:maxValue:)(Swift::Double value, Swift::Double minValue, Swift::Double maxValue)
{
  if (minValue > value)
  {
    value = minValue;
  }

  if (value > maxValue)
  {
    return maxValue;
  }

  return value;
}

uint64_t FloatingPoint.toRadians()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1BB6BAB64();
  sub_1BB6BAFD4();
  v11 = *(v4 + 8);
  v11(v7, a1);
  swift_getAssociatedConformanceWitness();
  sub_1BB6BB824();
  sub_1BB6BB7D4();
  sub_1BB6BAB54();
  v11(v7, a1);
  return (v11)(v10, a1);
}

Swift::Double __swiftcall wrapAngle(_:around:)(Swift::Double _, Swift::Double around)
{
    ;
  }

    ;
  }

  return _;
}

Swift::Double __swiftcall handleZero(_:eps:)(Swift::Double _, Swift::Double eps)
{
  if (fabs(_) < eps)
  {
    if (_ <= 0.0)
    {
      return -eps;
    }

    else
    {
      return eps;
    }
  }

  return _;
}

uint64_t FloatingPoint.toDegrees()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  swift_getAssociatedConformanceWitness();
  sub_1BB6BB824();
  sub_1BB6BB7D4();
  sub_1BB6BAFD4();
  v11 = *(v4 + 8);
  v11(v7, a1);
  sub_1BB6BAB64();
  sub_1BB6BAB54();
  v11(v7, a1);
  return (v11)(v10, a1);
}

uint64_t FloatingPoint.isEqual(to:precision:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1BB6BB554();
  sub_1BB6BB844();
  v10 = *(v4 + 8);
  v10(v6, a3);
  v11 = sub_1BB6BABB4();
  v10(v9, a3);
  return v11 & 1;
}

Swift::Double __swiftcall wrapAngle(_:minValue:maxValue:)(Swift::Double _, Swift::Double minValue, Swift::Double maxValue)
{
    ;
  }

    ;
  }

  return _;
}

Swift::Int __swiftcall clamp(value:minValue:maxValue:)(Swift::Int value, Swift::Int minValue, Swift::Int maxValue)
{
  if (value <= minValue)
  {
    v3 = minValue;
  }

  else
  {
    v3 = value;
  }

  if (v3 >= maxValue)
  {
    return maxValue;
  }

  else
  {
    return v3;
  }
}

uint64_t DKMotion3.init(time:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BB6BA7F4();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = type metadata accessor for DKMotion3();
  *(a2 + v6[5]) = &unk_1F3A47F20;
  *(a2 + v6[6]) = &unk_1F3A47F58;
  result = (*(v5 + 8))(a1, v4);
  *(a2 + v6[7]) = &unk_1F3A47F90;
  return result;
}

uint64_t type metadata accessor for DKMotion3()
{
  result = qword_1EBC5E678;
  if (!qword_1EBC5E678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *DKMotion3.init(time:position:velocity:acceleration:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  v10 = sub_1BB6BA7F4();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for DKMotion3();
  *(a5 + result[5]) = v7;
  *(a5 + result[6]) = v8;
  *(a5 + result[7]) = v9;
  return result;
}

uint64_t DKMotion3.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BB6BA7F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DKMotion3.time.setter(uint64_t a1)
{
  v3 = sub_1BB6BA7F4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DKMotion3.position.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DKMotion3() + 20));
}

uint64_t DKMotion3.position.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for DKMotion3() + 20);

  *(v1 + v3) = v2;
  return result;
}

uint64_t DKMotion3.velocity.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DKMotion3() + 24));
}

uint64_t DKMotion3.velocity.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for DKMotion3() + 24);

  *(v1 + v3) = v2;
  return result;
}

uint64_t DKMotion3.acceleration.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DKMotion3() + 28));
}

uint64_t DKMotion3.acceleration.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for DKMotion3() + 28);

  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1BB6AD4F0()
{
  v1 = 1701669236;
  v2 = 0x797469636F6C6576;
  if (*v0 != 2)
  {
    v2 = 0x6172656C65636361;
  }

  if (*v0)
  {
    v1 = 0x6E6F697469736F70;
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

uint64_t sub_1BB6AD56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6ADFC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB6AD594(uint64_t a1)
{
  v2 = sub_1BB6ADD78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6AD5D0(uint64_t a1)
{
  v2 = sub_1BB6ADD78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKMotion3.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E660);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6ADD78();
  sub_1BB6BB984();
  LOBYTE(v12) = 0;
  sub_1BB6BA7F4();
  sub_1BB6ADDCC(&qword_1EBC5C548);
  sub_1BB6BB744();
  if (!v2)
  {
    v9 = type metadata accessor for DKMotion3();
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    sub_1BB5D283C();

    sub_1BB6BB744();

    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;

    sub_1BB6BB744();

    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;

    sub_1BB6BB744();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DKMotion3.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v4 = sub_1BB6BA7F4();
  v14 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v16 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E670);
  v15 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v7 = &v13 - v6;
  v8 = type metadata accessor for DKMotion3();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6ADD78();
  sub_1BB6BB974();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v14;
  LOBYTE(v19) = 0;
  sub_1BB6ADDCC(&qword_1EBC5C658);
  sub_1BB6BB684();
  (*(v11 + 32))(v10, v16, v4);
  v18 = 1;
  v16 = sub_1BB5D2FEC();
  sub_1BB6BB684();
  *&v10[v8[5]] = v19;
  v18 = 2;
  sub_1BB6BB684();
  *&v10[v8[6]] = v19;
  v18 = 3;
  sub_1BB6BB684();
  (*(v15 + 8))(v7, v17);
  *&v10[v8[7]] = v19;
  sub_1BB69D470(v10, v13);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BB5DD2DC(v10);
}

uint64_t _s23IntelligentTrackingCore9DKMotion3V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BB6BA7C4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DKMotion3();
  if ((sub_1BB635DAC(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_1BB635DAC(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1BB635DAC(v6, v7);
}

unint64_t sub_1BB6ADD78()
{
  result = qword_1EBC5E668;
  if (!qword_1EBC5E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E668);
  }

  return result;
}

uint64_t sub_1BB6ADDCC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BB6BA7F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BB6ADE38()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BB6ADEC4()
{
  result = qword_1EBC5E688;
  if (!qword_1EBC5E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E688);
  }

  return result;
}

unint64_t sub_1BB6ADF1C()
{
  result = qword_1EBC5E690;
  if (!qword_1EBC5E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E690);
  }

  return result;
}

unint64_t sub_1BB6ADF74()
{
  result = qword_1EBC5E698;
  if (!qword_1EBC5E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E698);
  }

  return result;
}

uint64_t sub_1BB6ADFC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701669236 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xE800000000000000 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172656C65636361 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void DKVector3.x.getter()
{
  if (!*(*v0 + 16))
  {
    __break(1u);
  }
}

void DKVector3.y.getter()
{
  if (*(*v0 + 16) < 2uLL)
  {
    __break(1u);
  }
}

uint64_t DKVector3.x.setter(double a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (result)
  {
    if (*(v3 + 16))
    {
LABEL_3:
      *(v3 + 32) = a1;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = sub_1BB6B0F28(v3);
    v3 = result;
    *v1 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t DKVector3.y.setter(double a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1BB6B0F28(v3);
    v3 = result;
    *v1 = result;
  }

  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 40) = a1;
    *v1 = v3;
  }

  return result;
}

uint64_t DKVectorProtocol.l2Norm()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = swift_checkMetadataState();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v17 = (*(a2 + 40))(a1, a2, v11);
  v22 = v17;
  swift_getAssociatedConformanceWitness();
  sub_1BB6BB824();
  sub_1BB6BB7D4();
  v20 = a1;
  v21 = a2;
  sub_1BB6BAF04();
  swift_getWitnessTable();
  sub_1BB6BAD84();
  v14 = *(v7 + 8);
  v14(v9, v6);

  sub_1BB6BAB44();
  return (v14)(v13, v6);
}

void DKVector3.z.getter()
{
  if (*(*v0 + 16) < 3uLL)
  {
    __break(1u);
  }
}

IntelligentTrackingCore::DKVector3 __swiftcall DKVector3.init(x:y:z:)(Swift::Double x, Swift::Double y, Swift::Double z)
{
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCC0);
  result.elements._rawValue = swift_allocObject();
  *(result.elements._rawValue + 1) = xmmword_1BB6BC7F0;
  *(result.elements._rawValue + 4) = x;
  *(result.elements._rawValue + 5) = y;
  *(result.elements._rawValue + 6) = z;
  v7->elements._rawValue = result.elements._rawValue;
  return result;
}

uint64_t static DKVector3.== infix(_:_:)(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  v5 = (v2 + 32);
  v6 = (v3 + 32);
  while (v4)
  {
    v7 = *v5++;
    v8 = v7;
    v9 = *v6++;
    result = v8 == v9;
    if (v8 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t DKVector3.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

IntelligentTrackingCore::DKVector3 __swiftcall DKVector3.init(repeating:count:)(Swift::Double repeating, IntelligentTrackingCore::DKVector3 count)
{
  if ((count.elements._rawValue & 0x8000000000000000) == 0)
  {
    rawValue = count.elements._rawValue;
    v4 = v2;
    if (count.elements._rawValue)
    {
      count.elements._rawValue = sub_1BB6BAE94();
      *(count.elements._rawValue + 2) = rawValue;
      v5 = (count.elements._rawValue + 32);
      if (rawValue > 3)
      {
        v6 = rawValue & 0x7FFFFFFFFFFFFFFCLL;
        v5 += rawValue & 0x7FFFFFFFFFFFFFFCLL;
        v7 = repeating;
        v8 = vdupq_lane_s64(*&repeating, 0);
        v9 = (count.elements._rawValue + 48);
        v10 = rawValue & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v9[-1] = v8;
          *v9 = v8;
          v9 += 2;
          v10 -= 4;
        }

        while (v10);
        if (v6 == rawValue)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = 0;
        v7 = repeating;
      }

      v11 = rawValue - v6;
      do
      {
        *v5++ = v7;
        --v11;
      }

      while (v11);
    }

    else
    {
      count.elements._rawValue = MEMORY[0x1E69E7CC0];
    }

LABEL_11:
    v4->elements._rawValue = count.elements._rawValue;
    return count;
  }

  __break(1u);
  return count;
}

uint64_t sub_1BB6AE708(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if (result)
  {
    if (*(v4 + 16))
    {
LABEL_3:
      *(v4 + 32) = v3;
      *a2 = v4;
      return result;
    }
  }

  else
  {
    result = sub_1BB6B0F28(v4);
    v4 = result;
    *a2 = result;
    if (*(result + 16))
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*DKVector3.x.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *v1;
  *(result + 1) = v1;
  *(result + 2) = v2;
  if (*(v2 + 16))
  {
    *result = *(v2 + 32);
    return sub_1BB6AE7B0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB6AE7B0(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v3;
  if (a2)
  {
    if (result)
    {
      if (*(v3 + 16))
      {
LABEL_7:
        *(v3 + 32) = v5;
        *v4 = v3;
        return result;
      }
    }

    else
    {
      result = sub_1BB6B0F28(v3);
      v3 = result;
      *v4 = result;
      if (*(result + 16))
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  if (result)
  {
    if (*(v3 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = sub_1BB6B0F28(v3);
    v3 = result;
    *v4 = result;
    if (*(result + 16))
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB6AE854(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_1BB6B0F28(v4);
    v4 = result;
    *a2 = result;
  }

  if (*(v4 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 40) = v3;
    *a2 = v4;
  }

  return result;
}

uint64_t (*DKVector3.y.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *v1;
  *(result + 1) = v1;
  *(result + 2) = v2;
  if (*(v2 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    *result = *(v2 + 40);
    return sub_1BB6AE900;
  }

  return result;
}

uint64_t sub_1BB6AE900(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v3;
  if (a2)
  {
    if ((result & 1) == 0)
    {
      result = sub_1BB6B0F28(v3);
      v3 = result;
      *v4 = result;
    }

    if (*(v3 + 16) >= 2uLL)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    result = sub_1BB6B0F28(v3);
    v3 = result;
    *v4 = result;
  }

  if (*(v3 + 16) >= 2uLL)
  {
LABEL_9:
    *(v3 + 40) = v5;
    *v4 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB6AE9A0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v4;
  if ((result & 1) == 0)
  {
    result = sub_1BB6B0F28(v4);
    v4 = result;
    *a2 = result;
  }

  if (*(v4 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 48) = v3;
    *a2 = v4;
  }

  return result;
}

uint64_t DKVector3.z.setter(double a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_1BB6B0F28(v3);
    v3 = result;
    *v1 = result;
  }

  if (*(v3 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 48) = a1;
    *v1 = v3;
  }

  return result;
}

uint64_t (*DKVector3.z.modify(uint64_t (*result)(uint64_t *a1, char a2)))(uint64_t *a1, char a2)
{
  v2 = *v1;
  *(result + 1) = v1;
  *(result + 2) = v2;
  if (*(v2 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    *result = *(v2 + 48);
    return sub_1BB6AEAB4;
  }

  return result;
}

uint64_t sub_1BB6AEAB4(uint64_t *a1, char a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v3;
  if (a2)
  {
    if ((result & 1) == 0)
    {
      result = sub_1BB6B0F28(v3);
      v3 = result;
      *v4 = result;
    }

    if (*(v3 + 16) >= 3uLL)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    result = sub_1BB6B0F28(v3);
    v3 = result;
    *v4 = result;
  }

  if (*(v3 + 16) >= 3uLL)
  {
LABEL_9:
    *(v3 + 48) = v5;
    *v4 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BB6AEB6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BB6BB7E4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BB6AEBF4(uint64_t a1)
{
  v2 = sub_1BB6B0F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BB6AEC30(uint64_t a1)
{
  v2 = sub_1BB6B0F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DKVector3.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E6A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6B0F58();

  sub_1BB6BB984();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEC8);
  sub_1BB5E01EC(&qword_1EBC5CA00);
  sub_1BB6BB744();

  return (*(v4 + 8))(v6, v3);
}

uint64_t DKVector3.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E6B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6B0F58();
  sub_1BB6BB974();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BEC8);
    sub_1BB5E01EC(&qword_1EBC5CA10);
    sub_1BB6BB684();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BB6AEFB0(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t sub_1BB6AF00C@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0 || *(*v2 + 16) <= result)
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  else
  {
    *a2 = *(*v2 + 8 * result + 32);
  }

  return result;
}

uint64_t DKVectorProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1BB6B06F0(a1, a2, a3))
  {
    (*(a3 + 40))(a2, a3);
    swift_getAssociatedTypeWitness();
    sub_1BB6BAF14();
  }

  else
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB6AF17C(unint64_t a1, double a2)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    v4 = *v2;
    if (*(*v2 + 16) > a1)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v4;
      if ((result & 1) == 0)
      {
        result = sub_1BB6B0F28(v4);
        v4 = result;
        *v2 = result;
      }

      if (*(v4 + 16) > a1)
      {
        *(v4 + 8 * a1 + 32) = a2;
        *v2 = v4;
        return result;
      }

      __break(1u);
    }
  }

  result = sub_1BB6BB524();
  __break(1u);
  return result;
}

uint64_t DKVectorProtocol.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BB6B109C(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*sub_1BB6AF2D4(void *a1, unint64_t a2))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1BB6AF34C(v4, a2);
  return sub_1BB6B15F8;
}

uint64_t (*sub_1BB6AF34C(void *a1, unint64_t a2))(uint64_t a1)
{
  a1[1] = a2;
  a1[2] = v2;
  if ((a2 & 0x8000000000000000) != 0 || *(*v2 + 16) <= a2)
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  else
  {
    *a1 = *(*v2 + 8 * a2 + 32);
    return sub_1BB6AF3E8;
  }

  return result;
}

void (*DKVectorProtocol.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(unint64_t **a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  DKVectorProtocol.subscript.getter(a2, a3, a4);
  return sub_1BB6AF554;
}

void sub_1BB6AF554(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_1BB6B109C(v3, v9, v8, v7);
    v10 = *(v6 + 8);
    v10(v3, v5);
    v10(v4, v5);
  }

  else
  {
    sub_1BB6B109C((*a1)[7], v9, v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BB6AF69C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1BB6B109C(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 8);

  return v6(a1, AssociatedTypeWitness);
}

void (*sub_1BB6AF72C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = DKVectorProtocol.subscript.modify(v8, a2, a3, a4);
  return sub_1BB6AF7BC;
}

uint64_t static DKVectorProtocol.* infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1BB6AFFE0(a1, a2, a3, a4, sub_1BB6B1220, sub_1BB6B1228);
}

{
  return sub_1BB6B038C(a1, a2, a3, a4, sub_1BB6B132C);
}

{
  return sub_1BB6B04F4(a1, a2, a3, a4, sub_1BB6B15C8);
}

uint64_t sub_1BB6AF7EC()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1BB6BAFD4();
}

uint64_t sub_1BB6AF894(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v14;
  v46 = a5;
  v44 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v42 - v18;
  v19 = sub_1BB6BB184();
  v47 = *(v19 - 8);
  v48 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v49 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1BB6BAD74();
  v63 = sub_1BB6BB444();
  v58 = sub_1BB6BB454();
  sub_1BB6BB3F4();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1BB6BAD64();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1BB6BB1C4();
      result = (*v34)(v23, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v23, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v23, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v23, AssociatedTypeWitness);
      sub_1BB6BB434();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1BB6BB1C4();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1BB6BB434();
      sub_1BB6BB1C4();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t sub_1BB6AFFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *))
{
  v10 = *(a4 + 40);
  v10(a3, a4);
  v10(a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1BB6BAF04();
  WitnessTable = swift_getWitnessTable();
  sub_1BB6BB854();

  v31 = v33;
  v32 = v34;
  v25 = a3;
  v26 = a4;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = &v24;
  v27 = v12;
  v28 = v12;
  v29 = WitnessTable;
  v30 = WitnessTable;
  v14 = sub_1BB6BB354();
  v15 = swift_getWitnessTable();
  v17 = sub_1BB6AF894(a6, v19, v14, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);

  (*(a4 + 64))(a3, a4);
  return (*(a4 + 48))(v17, a3, a4);
}

uint64_t sub_1BB6B01E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a5(a1, a2, AssociatedTypeWitness, *(*(*(AssociatedConformanceWitness + 16) + 8) + 8));
}

uint64_t sub_1BB6B02C4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1BB6BAFD4();
}

uint64_t static DKVectorProtocol./ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_1BB6B038C(a1, a2, a3, a4, sub_1BB6B1350);
}

{
  return sub_1BB6B04F4(a1, a2, a3, a4, sub_1BB6B15E0);
}

uint64_t sub_1BB6B038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *))
{
  v15[7] = (*(a4 + 40))(a3, a4);
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1BB6BAF04();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1BB5BA144(a5, v15, v10, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  (*(a4 + 64))(a3, a4);
  return (*(a4 + 48))(v13, a3, a4);
}

uint64_t sub_1BB6B04F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, char *))
{
  v15[7] = (*(a4 + 40))(a3, a4);
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1BB6BAF04();
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1BB5BA144(a5, v15, v10, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v12);

  (*(a4 + 64))(a3, a4);
  return (*(a4 + 48))(v13, a3, a4);
}

uint64_t sub_1BB6B0644()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1BB6BAB54();
}

BOOL sub_1BB6B06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    return 0;
  }

  (*(a3 + 40))(a2, a3);
  swift_getAssociatedTypeWitness();
  v4 = sub_1BB6BAEC4();

  return v4 > a1;
}

uint64_t DKVectorProtocol.isEqual(_:tolerance:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v43 - v15;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1BB6BB184();
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v43 - v19;
  v21 = *(a4 + 40);
  v47 = v4;
  v57 = a3;
  v58 = a4;
  v45 = a4 + 40;
  v44 = v21;
  (v21)(a3, a4, v18);
  v51 = sub_1BB6BAEC4();

  v22 = a1[3];
  v23 = a1[4];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = *(v23 + 40);
  v24(v22, v23);
  swift_getAssociatedTypeWitness();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E6B8);
  v25 = sub_1BB6BB4A4();

  v26 = *(v25 + 16);

  if (v51 != v26)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v24(v22, v23);
  swift_getAssociatedTypeWitness();
  sub_1BB6BB4A4();

  v27 = sub_1BB6BB5C4();

  if (!v27)
  {
    return 0;
  }

  v59 = v44(v57, v58);
  *&v63 = v27;
  v28 = sub_1BB6BAF04();
  WitnessTable = swift_getWitnessTable();
  sub_1BB6BB854();

  v63 = v64;
  v59 = v28;
  v60 = v28;
  v51 = v28;
  v61 = WitnessTable;
  v62 = WitnessTable;
  v50 = WitnessTable;
  sub_1BB6BB354();
  sub_1BB6BB324();
  v49 = TupleTypeMetadata2 - 8;
  v47 = (v46 + 32);
  v30 = (v46 + 8);
  v48 = v20;
  while (1)
  {
    v59 = v51;
    v60 = v51;
    v61 = v50;
    v62 = v50;
    sub_1BB6BB344();
    sub_1BB6BB334();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v31 = *(TupleTypeMetadata2 + 48);
    v32 = *v47;
    v33 = v52;
    (*v47)(v52, v20, AssociatedTypeWitness);
    v34 = &v20[v31];
    v35 = v53;
    v32(v53, v34, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    v36 = v54;
    sub_1BB6BB554();
    v37 = TupleTypeMetadata2;
    v38 = v55;
    sub_1BB6BAFE4();
    v39 = *v30;
    (*v30)(v36, AssociatedTypeWitness);
    LOBYTE(v31) = sub_1BB6BABA4();
    v40 = v38;
    TupleTypeMetadata2 = v37;
    v39(v40, AssociatedTypeWitness);
    v41 = v35;
    v20 = v48;
    v39(v41, AssociatedTypeWitness);
    v39(v33, AssociatedTypeWitness);
    if (v31)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BB6B0D7C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  swift_getAssociatedConformanceWitness();
  sub_1BB6BAFD4();
  sub_1BB6BB544();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t sub_1BB6B0ED4(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1BB6B0F58()
{
  result = qword_1EBC5E6A8;
  if (!qword_1EBC5E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E6A8);
  }

  return result;
}

uint64_t sub_1BB6B1024(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BB6BB564();
  }

  return sub_1BB6BB384();
}

uint64_t sub_1BB6B109C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1BB6B06F0(a2, a3, a4))
  {
    v8 = (*(a4 + 56))(v16, a3, a4);
    v10 = v9;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1BB6BAF04();
    sub_1BB6BAE74();
    sub_1BB6B0ED4(a2, *v10);
    v12 = *v10;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v14 = v12 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v14 = v12;
    }

    (*(*(AssociatedTypeWitness - 8) + 24))(v14 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)) + *(*(AssociatedTypeWitness - 8) + 72) * a2, a1, AssociatedTypeWitness);
    return v8(v16, 0);
  }

  else
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BB6B12A0(uint64_t a1)
{
  v3 = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

unint64_t sub_1BB6B1378()
{
  result = qword_1EBC5E6C0;
  if (!qword_1EBC5E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E6C0);
  }

  return result;
}

unint64_t sub_1BB6B13CC(uint64_t a1)
{
  *(a1 + 8) = sub_1BB5D2FEC();
  result = sub_1BB5D283C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BB6B14AC()
{
  result = qword_1EBC5E6C8;
  if (!qword_1EBC5E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E6C8);
  }

  return result;
}

unint64_t sub_1BB6B1504()
{
  result = qword_1EBC5E6D0;
  if (!qword_1EBC5E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E6D0);
  }

  return result;
}

unint64_t sub_1BB6B155C()
{
  result = qword_1EBC5E6D8;
  if (!qword_1EBC5E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E6D8);
  }

  return result;
}

uint64_t DKConstantVelocityFilter.Measurement.deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DKConstantVelocityFilter.Measurement.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC23IntelligentTrackingCore14DKKalmanFilter11Measurement_time;
  v2 = sub_1BB6BA7F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

IntelligentTrackingCore::DKConstantVelocityFilter::Index_optional __swiftcall DKConstantVelocityFilter.Index.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1BB6B17A8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t DKConstantVelocityFilter.Configuration.deinit()
{

  return v0;
}

uint64_t DKConstantVelocityFilter.Configuration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void DKConstantVelocityFilter.__allocating_init(configuration:)(uint64_t a1)
{
  *(swift_allocObject() + OBJC_IVAR____TtC23IntelligentTrackingCore24DKConstantVelocityFilter_cvConfiguration) = a1;

  DKKalmanFilter.init(configuration:stateSize:)(v1, 2);
}

void DKConstantVelocityFilter.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore24DKConstantVelocityFilter_cvConfiguration) = a1;

  DKKalmanFilter.init(configuration:stateSize:)(v2, 2);
}

uint64_t sub_1BB6B18C8(uint64_t a1)
{
  v3 = sub_1BB6BA7F4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_lastPredictionTime, v3, v5);
  sub_1BB6BA744();
  v9 = v8;
  (*(v4 + 8))(v7, v3);
  v10 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore14DKKalmanFilter_F);
  v11 = v10[2];
  if (v11 < 1 || v10[3] <= 1)
  {
    result = sub_1BB6BB524();
    __break(1u);
  }

  else
  {
    *(v10[4] + 8 * v11) = v9;
    return sub_1BB69E74C(a1);
  }

  return result;
}

uint64_t DKConstantVelocityFilter.deinit()
{
  v0 = DKKalmanFilter.deinit();

  return v0;
}

uint64_t DKConstantVelocityFilter.__deallocating_deinit()
{
  DKKalmanFilter.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1BB6B1B44()
{
  result = qword_1EBC5E6E0;
  if (!qword_1EBC5E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E6E0);
  }

  return result;
}

unint64_t sub_1BB6B1B9C()
{
  result = qword_1EBC5E6E8;
  if (!qword_1EBC5E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC5E6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E6E8);
  }

  return result;
}

void sub_1BB6B1D98()
{
  v52 = *MEMORY[0x1E69E9840];
  v2 = sub_1BB6BA654();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  *(v0 + 16) = 0;
  v12 = (v0 + 16);
  *(v0 + 48) = 0u;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 0;
  context = espresso_create_context();
  if (!context)
  {
    sub_1BB5A8D60();
    swift_allocError();
    *v23 = 0xD000000000000018;
    *(v23 + 8) = 0x80000001BB6D06C0;
    *(v23 + 16) = 0;
    swift_willThrow();

    return;
  }

  v43 = context;
  v44 = v0 + 48;
  v48 = v2;
  v49 = v3;
  v42 = v1;
  v47 = v0;
  plan = espresso_create_plan();
  v50 = 0;
  v51 = 0;
  v14 = sub_1BB6BAC04();
  v15 = [objc_opt_self() bundleWithIdentifier_];

  if (v15)
  {
    v45 = v15;
    v16 = [v15 bundleURL];
    sub_1BB6BA634();

    sub_1BB6BA614();
    sub_1BB6BA614();
    v17 = v48;
    v18 = v49 + 8;
    v19 = *(v49 + 8);
    v19(v5, v48);
    sub_1BB6BA624();
    sub_1BB6BA644();
    v20 = v11;
    v19(v5, v17);
    sub_1BB6BACA4();

    v21 = espresso_plan_add_network();

    if (v21)
    {
      sub_1BB5A8D60();
      swift_allocError();
      *v22 = 0xD000000000000016;
      *(v22 + 8) = 0x80000001BB6D0700;
      *(v22 + 16) = 0;
      swift_willThrow();

      v19(v8, v17);
      v19(v20, v17);
      return;
    }

    v40 = v19;
    v41 = v8;
    v49 = v18;
    v24 = v45;
    v25 = v20;
    if (espresso_plan_build())
    {
      v26 = 0x80000001BB6D0720;
      sub_1BB5A8D60();
      swift_allocError();
      *v27 = 0xD000000000000014;
LABEL_8:
      *(v27 + 8) = v26;
LABEL_11:
      *(v27 + 16) = 0;
      swift_willThrow();

      v28 = v40;
      v29 = v48;
      v40(v41, v48);
      v28(v25, v29);
      return;
    }

    if (espresso_network_bind_buffer())
    {
      sub_1BB5A8D60();
      swift_allocError();
      *v27 = 0xD000000000000014;
      *(v27 + 8) = 0x80000001BB6D0740;
      goto LABEL_11;
    }

    *(v47 + 384) = 1572864;
    sub_1BB6BACA4();
    v30 = espresso_network_bind_buffer();

    if (v30)
    {
      sub_1BB6BACA4();
      v31 = espresso_network_bind_buffer();

      if (v31)
      {
        if (espresso_network_bind_buffer())
        {
          v26 = 0x80000001BB6D0760;
          sub_1BB5A8D60();
          swift_allocError();
          *v27 = 0xD000000000000015;
          goto LABEL_8;
        }
      }
    }

    v32 = v47;
    v33 = v41;
    if (*(v47 + 24))
    {
      espresso_plan_destroy();
    }

    if (*v12)
    {
      espresso_context_destroy();
    }

    v34 = v33;
    v35 = v48;
    v36 = v40;
    v40(v34, v48);
    v36(v25, v35);
    v37 = plan;
    *(v32 + 16) = v43;
    *(v32 + 24) = v37;
    v38 = v51;
    *(v32 + 32) = v50;
    *(v32 + 40) = v38;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BB6B244C()
{
  espresso_plan_destroy();
  espresso_context_destroy();

  return swift_deallocClassInstance();
}

unint64_t sub_1BB6B24B0(unint64_t result)
{
  v2 = v1[6];
  if (!v2)
  {
    goto LABEL_71;
  }

  v3 = result;
  if (result >> 62)
  {
    goto LABEL_62;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    goto LABEL_4;
  }

  while (1)
  {
LABEL_27:
    result = espresso_plan_execute_sync();
    if (result)
    {
      v18 = result;
      sub_1BB6BB2F4();

      v36 = v18;
      type metadata accessor for espresso_return_status_t(0);
      v19 = sub_1BB6BAC94();
      MEMORY[0x1BFB10B60](v19);

      sub_1BB5A8D60();
      swift_allocError();
      *v20 = 0xD000000000000020;
      *(v20 + 8) = 0x80000001BB6D0690;
      *(v20 + 16) = 0;
      return swift_willThrow();
    }

    v3 = v1[38];
    if ((v1[37] * v3) >> 64 != (v1[37] * v3) >> 63)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v21 = v1[27];
    if (!v21)
    {
      goto LABEL_72;
    }

    if (v3 < 0)
    {
      goto LABEL_66;
    }

    if (!v3)
    {
      break;
    }

    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    v35 = v1[38];
    while (1)
    {
      v24 = v1[37];
      if (v24 < 0)
      {
        break;
      }

      if (v24)
      {
        v25 = sub_1BB59D03C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v3 = 0;
        while (1)
        {
          v26 = v1[37];
          v27 = v22 * v26;
          if ((v22 * v26) >> 64 != (v22 * v26) >> 63)
          {
            break;
          }

          v28 = __OFADD__(v27, v3);
          v29 = v27 + v3;
          if (v28)
          {
            goto LABEL_56;
          }

          v30 = *(v21 + 4 * v29);
          v2 = *(v25 + 2);
          v31 = *(v25 + 3);
          if (v2 >= v31 >> 1)
          {
            v25 = sub_1BB59D03C((v31 > 1), v2 + 1, 1, v25);
          }

          ++v3;
          *(v25 + 2) = v2 + 1;
          *&v25[8 * v2 + 32] = v30;
          if (v24 == v3)
          {
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v25 = MEMORY[0x1E69E7CC0];
LABEL_44:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BB59DA44(0, v23[2] + 1, 1, v23);
        v23 = result;
      }

      v3 = v35;
      v2 = v23[2];
      v32 = v23[3];
      if (v2 >= v32 >> 1)
      {
        result = sub_1BB59DA44((v32 > 1), v2 + 1, 1, v23);
        v23 = result;
      }

      ++v22;
      v23[2] = v2 + 1;
      v23[v2 + 4] = v25;
      if (v22 == v35)
      {
        goto LABEL_51;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_62:
      result = sub_1BB6BB564();
      v4 = result;
      if (!result)
      {
        break;
      }

LABEL_4:
      if (v4 < 1)
      {
        __break(1u);
        goto LABEL_65;
      }

      v5 = 0xAAAAAAAAAAAALL;
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = 0;
        v7 = v2 + 0x10000;
        v2 = 0x8000;
        while (1)
        {
          v8 = MEMORY[0x1BFB111F0](v6, v3);
          v9 = (*(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_redBuffer) + 32);
          if ((v7 - 0x10000) != v9)
          {
            memmove((v7 - 0x10000), v9, 0x10000uLL);
          }

          v10 = (*(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_greenBuffer) + 32);
          if (v7 != v10)
          {
            memmove(v7, v10, 0x10000uLL);
          }

          if (v6 == 0xAAAAAAAAAAAALL)
          {
            break;
          }

          v11 = (*(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_blueBuffer) + 32);
          if ((v7 + 0x10000) != v11)
          {
            memmove((v7 + 0x10000), v11, 0x10000uLL);
          }

          swift_unknownObjectRelease();
          if (__OFADD__(v2, 0x4000))
          {
            goto LABEL_58;
          }

          ++v6;
          v7 += 196608;
          v2 += 49152;
          if (v4 == v6)
          {
            goto LABEL_27;
          }
        }

LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      else
      {
        v12 = (v3 + 32);
        v3 = v2 + 0x10000;
        v13 = 0x8000;
        while (1)
        {
          v14 = *v12;
          v15 = (*(*v12 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_redBuffer) + 32);
          if ((v3 - 0x10000) != v15)
          {
            memmove((v3 - 0x10000), v15, 0x10000uLL);
          }

          v16 = (*(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_greenBuffer) + 32);
          if (v3 != v16)
          {
            memmove(v3, v16, 0x10000uLL);
          }

          if (!v5)
          {
            break;
          }

          v17 = (*(v14 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKImageRGBBufferStamped_blueBuffer) + 32);
          if ((v3 + 0x10000) != v17)
          {
            memmove((v3 + 0x10000), v17, 0x10000uLL);
          }

          if (__OFADD__(v13, 0x4000))
          {
            goto LABEL_60;
          }

          v3 += 196608;
          v13 += 49152;
          --v5;
          ++v12;
          if (!--v4)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
    }
  }

  v23 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_51:
  v33 = *(v23[4] + 16);
  if (v33 < 2)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v33 < 4)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v33 != 4)
  {
    LOBYTE(v36) = 5;
    sub_1BB6BB2F4();
    MEMORY[0x1BFB10B60](0x676E696B61657053, 0xE90000000000003DLL);
    sub_1BB6BAFB4();
    MEMORY[0x1BFB10B60](0x676E696B6F6F4C20, 0xE90000000000003DLL);
    sub_1BB6BAFB4();
    v34 = sub_1BB6BB064();
    _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v36, 0, 0xE000000000000000, v34);
  }

LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
  return result;
}

uint64_t DKBodyTracker.__allocating_init(time:configuration:uuid:trackerId:anstId:camera:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v70 = a6;
  v71 = a3;
  v66 = a5;
  v67 = a4;
  v72 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v57 - v8;
  v9 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = sub_1BB6BA844();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BB6BA7F4();
  v63 = *(v18 - 8);
  v19 = v63;
  MEMORY[0x1EEE9AC00](v18);
  v60 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  v24 = swift_allocObject();
  v25 = *(v19 + 16);
  v69 = v23;
  v58 = v25;
  v59 = v19 + 16;
  v25(v23, v72, v18);
  v68 = v15;
  v26 = *(v15 + 16);
  v26(v17, v71, v14);
  v62 = type metadata accessor for DKCamera;
  sub_1BB64B8F0(v70, v13, type metadata accessor for DKCamera);
  v27 = (v24 + qword_1EBC5EE08);
  *v27 = -1;
  v27[1] = 0;
  sub_1BB6BAA24();
  v28 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *(v24 + v28) = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  *(v24 + qword_1EBC5EE38) = 0;
  v29 = MEMORY[0x1E69E7CC0];
  *(v24 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
  *(v24 + *(*v24 + 200)) = 0;
  *(v24 + *(*v24 + 216)) = 0;
  v30 = *(*v24 + 232);
  v31 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v31 - 8) + 56))(v24 + v30, 1, 1, v31);
  *(v24 + *(*v24 + 240)) = 0;
  *(v24 + *(*v24 + 256)) = 0;
  *(v24 + qword_1EBC5EE28) = a2;
  *(v24 + qword_1EBC5EE00) = v67;
  v67 = v17;
  v65 = v14;
  v26((v24 + qword_1EBC5EDF8), v17, v14);
  v32 = v62;
  v33 = v63;
  *(v24 + qword_1EBC5EE10) = v66;
  v34 = v24 + *(*v24 + 224);
  v66 = v13;
  sub_1BB64B8F0(v13, v34, v32);
  v35 = *(a2 + 16);
  v36 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
  swift_allocObject();

  *(v24 + *(*v24 + 208)) = sub_1BB6B44C8(v29, v35, v36);
  v37 = *(a2 + 176);
  v38 = *(a2 + 184);
  v39 = *(v33 + 56);
  v40 = v64;
  v39(v64, 1, 1, v18);
  type metadata accessor for DKSmoothingFilter();
  v41 = swift_allocObject();
  *(v41 + 33) = 0;
  *(v41 + 40) = 0;
  *(v41 + 48) = 0;
  *(v41 + 56) = 0x3FF0000000000000;
  v42 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v43 = v18;
  v39((v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v18);
  v44 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  v45 = v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *(v41 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v41 + 16) = v37;
  *(v41 + 24) = v38;
  *(v41 + 32) = 0;
  sub_1BB5BA0DC(v40, v41 + v42, &qword_1EBC5C050);
  *v44 = 0;
  *(v44 + 8) = 1;
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v24 + *(*v24 + 248)) = v41;
  if (*(a2 + 136) == 1)
  {
    v46 = v60;
    v58(v60, v69, v18);
    v47 = v66;
    v48 = v61;
    sub_1BB64B8F0(v66, v61, type metadata accessor for DKCamera);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v49 = sub_1BB66327C(v46, a2, v48);

    sub_1BB5D818C(v70, type metadata accessor for DKCamera);
    v50 = *(v68 + 8);
    v51 = v65;
    v50(v71, v65);
    v52 = *(v33 + 8);
    v52(v72, v43);
    sub_1BB5D818C(v47, type metadata accessor for DKCamera);
    v50(v67, v51);
    v52(v69, v43);
    *(v24 + *(*v24 + 216)) = v49;
  }

  else
  {

    sub_1BB5D818C(v70, type metadata accessor for DKCamera);
    v53 = *(v68 + 8);
    v54 = v65;
    v53(v71, v65);
    v55 = *(v33 + 8);
    v55(v72, v18);
    sub_1BB5D818C(v66, type metadata accessor for DKCamera);
    v53(v67, v54);
    v55(v69, v18);
  }

  return v24;
}

uint64_t DKBodyTrackerConfiguration.__allocating_init(configuration:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BB5F5620(a1);

  return v2;
}

uint64_t DKBodyTrackerConfiguration.init(configuration:)(uint64_t a1)
{
  v1 = sub_1BB5F5620(a1);

  return v1;
}

uint64_t DKBodyTrackerConfiguration.deinit()
{

  return v0;
}

uint64_t DKBodyTrackerConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6B3338(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C478);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v56 = &v51 - v5;
  v6 = sub_1BB6BA844();
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1BB6BA7F4();
  v8 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v51 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for DKMotion3();
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB6AAD04(v64);
  v23 = 0;
  if (v65)
  {
    return v23;
  }

  v66 = v64[0];
  v67 = v64[1];
  v24 = *(v1 + *(*v1 + 216));
  v54 = v6;
  v53 = v8;
  v52 = a1;
  if (v24 && (, , sub_1BB59911C(a1), , , sub_1BB59911C(a1), , , sub_1BB59911C(a1), , sub_1BB6626AC(a1), v25 = *(v24 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKSphericalMotionFilter_lastState), , , v25))
  {
    sub_1BB64B8F0(v25 + OBJC_IVAR____TtCC23IntelligentTrackingCore23DKSphericalMotionFilter5State_motion, v19, type metadata accessor for DKMotion3);

    v55 = *(v62 + 56);
    v55(v19, 0, 1, v20);
    sub_1BB5DD278(v19, v22);
    v26 = *(v8 + 16);
    v27 = v56;
    v26(v57, v52, v63);
  }

  else
  {
    v55 = *(v62 + 56);
    v55(v19, 1, 1, v20);
    v28 = v14;
    v29 = v20;
    v30 = *(v8 + 16);
    v31 = v63;
    v30(v28, a1, v63);
    v51 = v30;
    v30(v22, v28, v31);
    v20 = v29;
    *&v22[v29[5]] = &unk_1F3A48768;
    *&v22[v29[6]] = &unk_1F3A487A0;
    (*(v8 + 8))(v28, v31);
    *&v22[v29[7]] = &unk_1F3A487D8;
    if ((*(v62 + 48))(v19, 1, v29) != 1)
    {
      sub_1BB598308(v19, &qword_1EBC5BCB8);
    }

    v6 = v54;
    v27 = v56;
    v26 = v51;
    v51(v57, v52, v63);
  }

  (*(v60 + 16))(v59, v2 + qword_1EBC5EDF8, v6);
  v56 = *(v2 + qword_1EBC5EE08);
  v32 = *(v2 + qword_1EBC5EE08 + 8);
  v52 = *(v2 + qword_1EBC5EE10);
  v33 = *(v2 + qword_1EBC5EE00);
  sub_1BB5F5764(v2 + *(*v2 + 232), v27);
  v34 = type metadata accessor for DKPersonGroupFilter.Track(0);
  if ((*(*(v34 - 8) + 48))(v27, 1, v34))
  {
    sub_1BB598308(v27, &qword_1EBC5C478);
LABEL_11:
    v35 = -1;
    goto LABEL_12;
  }

  v35 = *v27;
  v36 = *(v27 + 8);
  sub_1BB598308(v27, &qword_1EBC5C478);
  if (v36 == 1)
  {
    goto LABEL_11;
  }

LABEL_12:
  v37 = v58;
  sub_1BB64B8F0(v22, v58, type metadata accessor for DKMotion3);
  v55(v37, 0, 1, v20);
  v26(v61, v2 + qword_1EBC5EE30, v63);
  v38 = *(v2 + *(*v2 + 248));
  v39 = 0.0;
  if (*(v38 + 33) == 1)
  {
    if (*(v38 + 32) == 1)
    {
      v39 = atan2(*(v38 + 48), *(v38 + 56));
    }

    else
    {
      v39 = *(v38 + 40);
    }
  }

  v40 = *(v2 + qword_1EBC5EE40);
  v41 = *(v40 + 16);
  if (v41)
  {
    v42 = *(v40 + 8 * v41 + 24);
  }

  else
  {
    v42 = 0;
  }

  sub_1BB5D818C(v22, type metadata accessor for DKMotion3);
  type metadata accessor for DKBodyTrackerState(0);
  v23 = swift_allocObject();
  v43 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion;
  v55((v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_motion), 1, 1, v20);
  v44 = OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastObservation;
  v45 = *(v53 + 32);
  v46 = v63;
  v45(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_time, v57, v63);
  (*(v60 + 32))(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_uuid, v59, v54);
  v47 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_rect);
  v48 = v67;
  *v47 = v66;
  v47[1] = v48;
  v49 = (v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_identity);
  *v49 = v56;
  v49[1] = v32;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_anstId) = v52;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerId) = v33;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_groupId) = v35;
  sub_1BB5BA0DC(v58, v23 + v43, &qword_1EBC5BCB8);
  v45(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_lastUpdated, v61, v46);
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_framesSinceLastUpdate) = 0;
  *(v23 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKBodyTrackerState_trackerConfidence) = v39;
  *(v23 + v44) = v42;
  return v23;
}

uint64_t DKBodyTracker.init(time:configuration:uuid:trackerId:anstId:camera:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v72 = a6;
  v62 = a5;
  v66 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v57 - v12;
  v13 = type metadata accessor for DKCamera();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v61 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v57 - v16;
  v70 = &v57 - v16;
  v18 = sub_1BB6BA844();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BB6BA7F4();
  v71 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v60 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = *(v26 + 16);
  v68 = a1;
  v69 = &v57 - v28;
  v58 = v27;
  v59 = v26 + 16;
  v27(v25);
  v65 = v19;
  v29 = *(v19 + 16);
  v67 = a3;
  v29(v21, a3, v18);
  sub_1BB64B8F0(v72, v17, type metadata accessor for DKCamera);
  v30 = (v7 + qword_1EBC5EE08);
  *v30 = -1;
  v30[1] = 0;
  *(v7 + qword_1EBC5EE10) = -1;
  sub_1BB6BAA24();
  v31 = qword_1EBC5EE20;
  type metadata accessor for DKBoundingBoxFilter();
  swift_allocObject();
  *(v7 + v31) = DKBoundingBoxFilter.init(alpha:)(0.9);
  sub_1BB6BA724();
  *(v7 + qword_1EBC5EE38) = 0;
  *(v7 + qword_1EBC5EE40) = MEMORY[0x1E69E7CC0];
  *(v7 + *(*v7 + 200)) = 0;
  *(v7 + *(*v7 + 216)) = 0;
  v32 = *(*v7 + 232);
  v33 = type metadata accessor for DKPersonGroupFilter.Track(0);
  (*(*(v33 - 8) + 56))(v7 + v32, 1, 1, v33);
  *(v7 + *(*v7 + 240)) = 0;
  *(v7 + *(*v7 + 256)) = 0;
  *(v7 + qword_1EBC5EE28) = a2;
  *(v7 + qword_1EBC5EE00) = v66;
  v64 = v21;
  v34 = v21;
  v35 = v22;
  v66 = v18;
  v29((v7 + qword_1EBC5EDF8), v34, v18);
  *(v7 + qword_1EBC5EE10) = v62;
  sub_1BB64B8F0(v70, v7 + *(*v7 + 224), type metadata accessor for DKCamera);
  v36 = *(a2 + 16);
  v37 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C488);
  swift_allocObject();

  *(v7 + *(*v7 + 208)) = sub_1BB6B44C8(MEMORY[0x1E69E7CC0], v36, v37);
  v38 = *(a2 + 176);
  v39 = *(a2 + 184);
  v40 = *(v71 + 56);
  v41 = v63;
  v40(v63, 1, 1, v35);
  type metadata accessor for DKSmoothingFilter();
  v42 = swift_allocObject();
  *(v42 + 33) = 0;
  *(v42 + 40) = 0;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0x3FF0000000000000;
  v43 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v40((v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v35);
  v44 = v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v42 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v42 + 16) = v38;
  *(v42 + 24) = v39;
  *(v42 + 32) = 0;
  sub_1BB5BA0DC(v41, v42 + v43, &qword_1EBC5C050);
  *v44 = 0;
  *(v44 + 8) = 1;
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v7 + *(*v7 + 248)) = v42;
  if (*(a2 + 136) == 1)
  {
    v46 = v60;
    (v58)(v60, v69, v35);
    v47 = v70;
    v48 = v61;
    sub_1BB64B8F0(v70, v61, type metadata accessor for DKCamera);
    type metadata accessor for DKSphericalMotionFilter(0);
    swift_allocObject();
    v49 = sub_1BB66327C(v46, a2, v48);

    sub_1BB5D818C(v72, type metadata accessor for DKCamera);
    v50 = v66;
    v51 = *(v65 + 8);
    v51(v67, v66);
    v52 = *(v71 + 8);
    v52(v68, v35);
    sub_1BB5D818C(v47, type metadata accessor for DKCamera);
    v51(v64, v50);
    v52(v69, v35);
    *(v7 + *(*v7 + 216)) = v49;
  }

  else
  {

    sub_1BB5D818C(v72, type metadata accessor for DKCamera);
    v53 = v66;
    v54 = *(v65 + 8);
    v54(v67, v66);
    v55 = *(v71 + 8);
    v55(v68, v35);
    sub_1BB5D818C(v70, type metadata accessor for DKCamera);
    v54(v64, v53);
    v55(v69, v35);
  }

  return v7;
}

uint64_t DKBodyTracker.__deallocating_deinit()
{
  _s23IntelligentTrackingCore13DKBodyTrackerCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6B44A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BB6B3338(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BB6B44C8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v39 - v9;
  *(v4 + 16) = sub_1BB5B08C4(MEMORY[0x1E69E7CC0]);
  *(v4 + 24) = 0x3FE0000000000000;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v4;
  }

  v11 = 1.0 / v10;
  v12 = (a1 + 32);
  v42 = sub_1BB6BA7F4();
  v13 = *(v42 - 8);
  v14 = *(v13 + 56);
  v40 = v13 + 56;
  v41 = v14;
  v39 = xmmword_1BB6BE460;
  while (1)
  {
    v16 = *v12++;
    v15 = v16;
    v18 = v42;
    v17 = v43;
    v19 = v41;
    v41(v43, 1, 1, v42);
    type metadata accessor for DKSmoothingFilter();
    v20 = swift_allocObject();
    *(v20 + 48) = v39;
    v21 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v19(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v18);
    v22 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v23 = 0;
    *(v23 + 8) = 1;
    *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *(v20 + 32) = 256;
    *(v20 + 40) = v11;
    sub_1BB5BA0DC(v17, v20 + v21, &qword_1EBC5C050);
    *v22 = 0;
    *(v22 + 8) = 1;
    *v23 = 0;
    *(v23 + 8) = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v4 + 16);
    v25 = v44;
    *(v4 + 16) = 0x8000000000000000;
    v26 = sub_1BB6A1004(v16);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v25[3] < v31)
    {
      sub_1BB5E624C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1BB6A1004(v15);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v34 = v44;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v37 = v26;
    sub_1BB5E9BA4();
    v26 = v37;
    v34 = v44;
    if (v32)
    {
LABEL_3:
      *(v34[7] + 8 * v26) = v20;

      goto LABEL_4;
    }

LABEL_11:
    v34[(v26 >> 6) + 8] |= 1 << v26;
    *(v34[6] + 8 * v26) = v15;
    *(v34[7] + 8 * v26) = v20;
    v35 = v34[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v34[2] = v36;
LABEL_4:
    *(v4 + 16) = v34;

    if (!--v10)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t sub_1BB6B47F8(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v39 - v9;
  *(v4 + 16) = sub_1BB5B09F4(MEMORY[0x1E69E7CC0]);
  *(v4 + 24) = 0x3FE0000000000000;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v4;
  }

  v11 = 1.0 / v10;
  v12 = (a1 + 32);
  v42 = sub_1BB6BA7F4();
  v13 = *(v42 - 8);
  v14 = *(v13 + 56);
  v40 = v13 + 56;
  v41 = v14;
  v39 = xmmword_1BB6BE460;
  while (1)
  {
    v16 = *v12++;
    v15 = v16;
    v18 = v42;
    v17 = v43;
    v19 = v41;
    v41(v43, 1, 1, v42);
    type metadata accessor for DKSmoothingFilter();
    v20 = swift_allocObject();
    *(v20 + 48) = v39;
    v21 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v19(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v18);
    v22 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v23 = 0;
    *(v23 + 8) = 1;
    *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *(v20 + 32) = 256;
    *(v20 + 40) = v11;
    sub_1BB5BA0DC(v17, v20 + v21, &qword_1EBC5C050);
    *v22 = 0;
    *(v22 + 8) = 1;
    *v23 = 0;
    *(v23 + 8) = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v4 + 16);
    v25 = v44;
    *(v4 + 16) = 0x8000000000000000;
    v26 = sub_1BB6A36B4(v16);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v25[3] < v31)
    {
      sub_1BB5E64BC(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1BB6A36B4(v15);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v34 = v44;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v37 = v26;
    sub_1BB5E9D00();
    v26 = v37;
    v34 = v44;
    if (v32)
    {
LABEL_3:
      *(v34[7] + 8 * v26) = v20;

      goto LABEL_4;
    }

LABEL_11:
    v34[(v26 >> 6) + 8] |= 1 << v26;
    *(v34[6] + v26) = v15;
    *(v34[7] + 8 * v26) = v20;
    v35 = v34[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v34[2] = v36;
LABEL_4:
    *(v4 + 16) = v34;

    if (!--v10)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t sub_1BB6B4B28(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v39 - v9;
  *(v4 + 16) = sub_1BB5B0C2C(MEMORY[0x1E69E7CC0]);
  *(v4 + 24) = 0x3FE0000000000000;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v4;
  }

  v11 = 1.0 / v10;
  v12 = (a1 + 32);
  v42 = sub_1BB6BA7F4();
  v13 = *(v42 - 8);
  v14 = *(v13 + 56);
  v40 = v13 + 56;
  v41 = v14;
  v39 = xmmword_1BB6BE460;
  while (1)
  {
    v16 = *v12++;
    v15 = v16;
    v18 = v42;
    v17 = v43;
    v19 = v41;
    v41(v43, 1, 1, v42);
    type metadata accessor for DKSmoothingFilter();
    v20 = swift_allocObject();
    *(v20 + 48) = v39;
    v21 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v19(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v18);
    v22 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v23 = 0;
    *(v23 + 8) = 1;
    *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *(v20 + 32) = 256;
    *(v20 + 40) = v11;
    sub_1BB5BA0DC(v17, v20 + v21, &qword_1EBC5C050);
    *v22 = 0;
    *(v22 + 8) = 1;
    *v23 = 0;
    *(v23 + 8) = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v4 + 16);
    v25 = v44;
    *(v4 + 16) = 0x8000000000000000;
    v26 = sub_1BB6A36B4(v16);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v25[3] < v31)
    {
      sub_1BB5E6FC8(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1BB6A36B4(v15);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v34 = v44;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v37 = v26;
    sub_1BB5EA468();
    v26 = v37;
    v34 = v44;
    if (v32)
    {
LABEL_3:
      *(v34[7] + 8 * v26) = v20;

      goto LABEL_4;
    }

LABEL_11:
    v34[(v26 >> 6) + 8] |= 1 << v26;
    *(v34[6] + v26) = v15;
    *(v34[7] + 8 * v26) = v20;
    v35 = v34[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v34[2] = v36;
LABEL_4:
    *(v4 + 16) = v34;

    if (!--v10)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t sub_1BB6B4E58(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v39 - v9;
  *(v4 + 16) = sub_1BB5B0C04(MEMORY[0x1E69E7CC0]);
  *(v4 + 24) = 0x3FE0000000000000;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v4;
  }

  v11 = 1.0 / v10;
  v12 = (a1 + 32);
  v42 = sub_1BB6BA7F4();
  v13 = *(v42 - 8);
  v14 = *(v13 + 56);
  v40 = v13 + 56;
  v41 = v14;
  v39 = xmmword_1BB6BE460;
  while (1)
  {
    v16 = *v12++;
    v15 = v16;
    v18 = v42;
    v17 = v43;
    v19 = v41;
    v41(v43, 1, 1, v42);
    type metadata accessor for DKSmoothingFilter();
    v20 = swift_allocObject();
    *(v20 + 48) = v39;
    v21 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
    v19(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated, 1, 1, v18);
    v22 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
    *v23 = 0;
    *(v23 + 8) = 1;
    *(v20 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;
    *(v20 + 32) = 256;
    *(v20 + 40) = v11;
    sub_1BB5BA0DC(v17, v20 + v21, &qword_1EBC5C050);
    *v22 = 0;
    *(v22 + 8) = 1;
    *v23 = 0;
    *(v23 + 8) = 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v4 + 16);
    v25 = v44;
    *(v4 + 16) = 0x8000000000000000;
    v26 = sub_1BB6A36B4(v16);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      break;
    }

    v32 = v27;
    if (v25[3] < v31)
    {
      sub_1BB5E6FB4(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1BB6A36B4(v15);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v34 = v44;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v37 = v26;
    sub_1BB5EA454();
    v26 = v37;
    v34 = v44;
    if (v32)
    {
LABEL_3:
      *(v34[7] + 8 * v26) = v20;

      goto LABEL_4;
    }

LABEL_11:
    v34[(v26 >> 6) + 8] |= 1 << v26;
    *(v34[6] + v26) = v15;
    *(v34[7] + 8 * v26) = v20;
    v35 = v34[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_17;
    }

    v34[2] = v36;
LABEL_4:
    *(v4 + 16) = v34;

    if (!--v10)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1BB6BB874();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DKBodyTracker()
{
  result = qword_1EBC5E718;
  if (!qword_1EBC5E718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6B51F8()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB0);
  v1[13] = swift_task_alloc();
  v2 = type metadata accessor for DKCamera();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6B52F0, 0, 0);
}

uint64_t sub_1BB6B52F0()
{
  v44 = v0;
  v1 = *(v0 + 96);
  v2 = *(v1 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_selectedSubjects);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = *(v0 + 104);
  sub_1BB5982A0(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_camera, v6, &qword_1EBC5BCB0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    sub_1BB598308(*(v0 + 104), &qword_1EBC5BCB0);
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v10 = *(v0 + 128);
  v11 = *(v0 + 96);
  sub_1BB5981C8(*(v0 + 104), v10);
  v12 = *(*(v11 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_framingEngine);

  sub_1BB67D36C(v2);

  v13 = *(v1 + 48);
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_framingMode) = *(v12 + 41);
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_verticalFraming) = *(v12 + 43);
  v14 = *(v12 + 42);
  *(v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_horizontalFraming) = v14;
  *(*(v11 + 40) + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastHorizontalFraming) = v14;
  v15 = *(v12 + 48);
  v16 = *(v12 + 56) - v15;
  v17 = *(v12 + 64);
  v18 = *(v12 + 72) - v17;
  v19 = v13 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D;
  *v19 = v15;
  *(v19 + 8) = v17;
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v19 + 32) = 0;
  v20 = *(v10 + 8);
  LOBYTE(v42) = *v10;
  v21 = sub_1BB67F0A0(&v42, v20);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v41 = 3;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_1BB6BB2F4();
  v28 = v43;
  *(v0 + 80) = v42;
  *(v0 + 88) = v28;
  result = MEMORY[0x1BFB10B60](0x646E616264616544, 0xEB00000000206432);
  v29 = *(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband2D;
  if (*(v29 + 32))
  {
    __break(1u);
    return result;
  }

  v30 = *(v0 + 128);
  v31 = *(v29 + 16);
  *(v0 + 16) = *v29;
  *(v0 + 32) = v31;
  type metadata accessor for CGRect(0);
  sub_1BB6BB4B4();
  MEMORY[0x1BFB10B60](0x6E61626461654420, 0xEC00000020643364);
  *(v0 + 48) = v21;
  *(v0 + 56) = v23;
  *(v0 + 64) = v25;
  *(v0 + 72) = v27;
  sub_1BB6BB4B4();
  v32 = *(v0 + 80);
  v33 = *(v0 + 88);
  v34 = sub_1BB6BB064();
  _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v41, v32, v33, v34);

  v35 = COERCE_DOUBLE(sub_1BB6B5710(v3));
  v37 = v36;
  v39 = v38;

  sub_1BB59822C(v30);
  v40 = *(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_deadband3D;
  if (v39)
  {
    *v40 = 0u;
    *(v40 + 16) = 0u;
    v7 = 1;
    *(v40 + 32) = 1;
  }

  else
  {
    *v40 = v21 + v35 - v25 * 0.5;
    *(v40 + 8) = v23 + v37 - v27 * 0.5;
    *(v40 + 16) = v25;
    *(v40 + 24) = v27;
    *(v40 + 32) = 0;
    v7 = 1;
  }

LABEL_5:

  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t type metadata accessor for DKFramingTask()
{
  result = qword_1EBC5E728;
  if (!qword_1EBC5E728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6B5710(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5BCB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v41 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14 < 1)
  {
LABEL_59:
    *&result = 0.0;
    return result;
  }

LABEL_3:
  v48 = v13;
  v46 = v9;
  v41 = v4;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1BB5E5760(0, v14, 0);
  v4 = 0;
  v9 = v52;
  v50 = a1 & 0xC000000000000001;
  v51 = a1;
  for (i = v14; i != v4; v22 = i)
  {
    if (v50)
    {
      v15 = MEMORY[0x1BFB111F0](v4, v51);
    }

    else
    {
      v15 = v51[v4 + 4];
    }

    sub_1BB5982A0(v15 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, v12, &qword_1EBC5BCB8);
    v16 = type metadata accessor for DKMotion3();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    a1 = (v17 + 48);
    v19 = 0;
    if (!v18(v12, 1, v16))
    {
      v20 = *&v12[*(v16 + 20)];
      if (!*(v20 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v14 = sub_1BB6BB564();
        if (v14 < 1)
        {
          goto LABEL_59;
        }

        goto LABEL_3;
      }

      v19 = *(v20 + 32);
    }

    sub_1BB598308(v12, &qword_1EBC5BCB8);
    v52 = v9;
    v13 = *(v9 + 16);
    v21 = *(v9 + 24);
    if (v13 >= v21 >> 1)
    {
      sub_1BB5E5760((v21 > 1), v13 + 1, 1);
      v9 = v52;
    }

    v4 = (v4 + 1);
    *(v9 + 16) = v13 + 1;
    *(v9 + 8 * v13 + 32) = v19;
  }

  if (v13 <= 2)
  {
    v23 = 0;
    v24 = 0.0;
    v25 = v48;
    goto LABEL_18;
  }

  v23 = (v13 + 1) & 0x7FFFFFFFFFFFFFFCLL;
  v26 = (v9 + 48);
  v24 = 0.0;
  v27 = v23;
  v25 = v48;
  do
  {
    v24 = v24 + *(v26 - 2) + *(v26 - 1) + *v26 + v26[1];
    v26 += 4;
    v27 -= 4;
  }

  while (v27);
  if (v13 + 1 != v23)
  {
LABEL_18:
    v28 = v13 - v23 + 1;
    v29 = (v9 + 8 * v23 + 32);
    do
    {
      v30 = *v29++;
      v24 = v24 + v30;
      --v28;
    }

    while (v28);
  }

  *&result = COERCE_DOUBLE();
  if (!v25)
  {
    v4 = v51;
    v32 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v46;
    if (v32)
    {
      goto LABEL_22;
    }

LABEL_51:
    *&result = v24 / v22;
    return result;
  }

  v4 = v51;
  *&result = COERCE_DOUBLE(sub_1BB6BB564());
  v32 = result;
  v13 = v46;
  if (*&result == 0.0)
  {
    goto LABEL_51;
  }

LABEL_22:
  if (v50)
  {
    v12 = MEMORY[0x1BFB111F0](0, v4);
    if (v32 == 1)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v12 = v4[4];

    if (v32 == 1)
    {
      goto LABEL_47;
    }
  }

  v42 = v4 & 0xFFFFFFFFFFFFFF8;
  v43 = v32;
  v33 = 1;
  v47 = a1;
  v48 = v18;
  while (2)
  {
    v44 = v12;
    v9 = v33;
    while (2)
    {
      if (v50)
      {
        v34 = MEMORY[0x1BFB111F0](v9, v4);
        v33 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        if (v9 >= *(v42 + 16))
        {
          goto LABEL_55;
        }

        v33 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_53;
        }
      }

      v4 = &OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion;
      v35 = v34;
      v12 = &unk_1BB6BCE60;
      sub_1BB5982A0(v34 + OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion, v13, &qword_1EBC5BCB8);
      v36 = 0.0;
      if (!v18(v13, 1, v16))
      {
        v37 = *(v13 + *(v16 + 20));
        if (*(v37 + 16) < 2uLL)
        {
          goto LABEL_56;
        }

        v36 = *(v37 + 40);
        a1 = v47;
        v18 = v48;
      }

      sub_1BB598308(v13, &qword_1EBC5BCB8);
      v13 = v45;
      sub_1BB5982A0(&v44[OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion], v45, &qword_1EBC5BCB8);
      if (v18(v13, 1, v16))
      {
        sub_1BB598308(v13, &qword_1EBC5BCB8);
        v4 = v51;
        v12 = v35;
        if (v36 < 0.0)
        {
          break;
        }

        goto LABEL_28;
      }

      v38 = *(v13 + *(v16 + 20));
      v4 = v51;
      if (*(v38 + 16) < 2uLL)
      {
        goto LABEL_57;
      }

      v12 = v35;
      v39 = *(v38 + 40);
      sub_1BB598308(v13, &qword_1EBC5BCB8);
      if (v36 >= v39)
      {
LABEL_28:

        ++v9;
        v13 = v46;
        a1 = v47;
        v18 = v48;
        if (v33 == v43)
        {
          v12 = v44;
          goto LABEL_47;
        }

        continue;
      }

      break;
    }

    v13 = v46;
    a1 = v47;
    v18 = v48;
    if (v33 != v43)
    {
      continue;
    }

    break;
  }

LABEL_47:
  v40 = v41;
  sub_1BB5982A0(&v12[OBJC_IVAR____TtC23IntelligentTrackingCore20DKPersonTrackerState_motion], v41, &qword_1EBC5BCB8);

  *&result = COERCE_DOUBLE((v18)(v40, 1, v16));
  if (result)
  {
    v22 = i;
    goto LABEL_50;
  }

  v22 = i;
  if (*(*(v40 + *(v16 + 20)) + 16) >= 2uLL)
  {
LABEL_50:
    sub_1BB598308(v40, &qword_1EBC5BCB8);
    goto LABEL_51;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1BB6B5D54(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v7 = *a1;
  v6 = a1[1];
  sub_1BB6BA724();
  sub_1BB6BA724();
  v8 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C908);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_statsFilter;
  type metadata accessor for DKStatisticsFilter();
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 48) = MEMORY[0x1E69E7CC0];
  *(v11 + 56) = v12;
  *(v11 + 16) = 30;
  *(v11 + 24) = 0;
  *(v1 + v10) = v11;
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastThermalStateStamped;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5E780);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + 16) = v7;
  *(v1 + 24) = v6;
  v15 = *(a1 + 2);
  v24 = *(a1 + 1);
  *(v1 + 32) = v24;
  *(v1 + 48) = v15;
  *(v1 + 64) = v6;
  *(v1 + 72) = 0;
  v16 = 1.0 / v6;
  sub_1BB6BA724();
  v17 = sub_1BB6BA7F4();
  v18 = *(*(v17 - 8) + 56);
  v18(v5, 0, 1, v17);
  type metadata accessor for DKSmoothingFilter();
  v19 = swift_allocObject();
  *(v19 + 48) = xmmword_1BB6BE460;
  v20 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v18((v19 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v17);
  v21 = v19 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = v19 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v19 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v19 + 16) = v24;
  *(v19 + 32) = 256;
  *(v19 + 40) = v16;
  sub_1BB5BA0DC(v5, v19 + v20, &qword_1EBC5C050);
  *v21 = 0;
  *(v21 + 8) = 1;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v1 + 80) = v19;
  return v1;
}

void sub_1BB6B6020(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = sub_1BB6BA7F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lock;
  v14 = *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lock);

  os_unfair_lock_lock(v14 + 4);

  sub_1BB6BA7D4();

  sub_1BB5A0F24(a1);

  v15 = sub_1BB5A1408();
  if ((v16 & 1) == 0)
  {
    v17 = *&v15;
    (*(v8 + 56))(v6, 1, 1, v7);

    sub_1BB6ABB40(0, 1, v6, v17);

    sub_1BB598308(v6, &qword_1EBC5C050);
  }

  v18 = *(v2 + 80);
  if (*(v18 + 33) != 1)
  {
    goto LABEL_30;
  }

  if (*(v18 + 32) == 1)
  {
    v19 = atan2(*(v18 + 48), *(v18 + 56));
  }

  else
  {
    v19 = *(v18 + 40);
  }

  if (fabs(v19) < 0.00001)
  {
    v19 = dbl_1BB6C5920[v19 > 0.0];
  }

  v20 = 1.0 / v19;
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = *(v2 + 16);
  v22 = __OFSUB__(v21, 2);
  v23 = v21 - 2;
  if (v22)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v23 <= v20)
  {
    v23 = v20;
  }

  if (*(v2 + 24) >= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = *(v2 + 24);
  }

  v25 = *(v2 + 64);
  if (!__OFSUB__(v25, v24))
  {
    if (v25 != v24)
    {
      v48 = 13;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1BB6BB2F4();

      v46 = 0xD000000000000018;
      v47 = 0x80000001BB6D08E0;
      v45 = *(v2 + 64);
      v26 = sub_1BB6BB794();
      MEMORY[0x1BFB10B60](v26);

      MEMORY[0x1BFB10B60](544175136, 0xE400000000000000);
      v45 = v24;
      v27 = sub_1BB6BB794();
      MEMORY[0x1BFB10B60](v27);

      v28 = v46;
      v29 = v47;
      v30 = sub_1BB6BB084();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v48, v28, v29, v30);

      *(v2 + 64) = v24;
    }

    if (*(v2 + 72))
    {
      if (*(v2 + 72) == 1)
      {
LABEL_23:
        if (*(v2 + 64) == *(v2 + 24) && !sub_1BB6B666C())
        {
          v42 = *(v8 + 16);
          v43 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastModeSwitchTime;
          v31 = v44;
          v42(v44, v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastModeSwitchTime, v7);
          sub_1BB6BA744();
          v33 = v32;
          v34 = *(v8 + 8);
          v34(v31, v7);
          if (*(v2 + 48) < v33)
          {
            *(v2 + 72) = 0;
            LOBYTE(v45) = 13;
            v46 = 0;
            v47 = 0xE000000000000000;
            sub_1BB6BB2F4();
            MEMORY[0x1BFB10B60](0xD000000000000026, 0x80000001BB6D0900);
            v35 = v44;
            v42(v44, v2 + v43, v7);
            sub_1BB6BA744();
            v34(v35, v7);
            sub_1BB6BAFB4();
            MEMORY[0x1BFB10B60](0xD000000000000019, 0x80000001BB6D0930);
            v36 = v46;
            v37 = v47;
            v38 = sub_1BB6BB084();
            _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v45, v36, v37, v38);

            (*(v8 + 24))(v2 + v43, v12, v7);
          }
        }
      }
    }

    else if (v24 < *(v2 + 16) || sub_1BB6B666C())
    {
      *(v2 + 72) = 1;
      (*(v8 + 24))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastModeSwitchTime, v12, v7);
      LOBYTE(v46) = 13;
      v39 = sub_1BB6BB084();
      _s23IntelligentTrackingCore5DKLogC3log8category7message5levelyAC8CategoryO_SSSo03os_E7_type_tatFZ_0(&v46, 0xD00000000000001FLL, 0x80000001BB6D0950, v39);
    }

    else if (*(v2 + 72) == 1)
    {
      goto LABEL_23;
    }

LABEL_30:
    (*(v8 + 24))(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastProcessTime, v12, v7);
    v40 = *(v2 + v13);

    os_unfair_lock_unlock(v40 + 4);
    (*(v8 + 8))(v12, v7);

    return;
  }

LABEL_37:
  __break(1u);
}

BOOL sub_1BB6B666C()
{
  v1 = v0;
  v2 = sub_1BB6BA7F4();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E760);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5E780);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v34 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastThermalStateStamped;
  sub_1BB6B6EFC(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastThermalStateStamped, v13);
  v35 = *(v15 + 48);
  if (v35(v13, 1, v14) == 1)
  {
    sub_1BB598308(v13, &qword_1EBC5E760);
    v21 = *(v14 + 48);
    sub_1BB6BA7D4();
    v22 = [objc_opt_self() processInfo];
    v23 = [v22 thermalState];

    *&v10[v21] = v23;
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_1BB5BA0DC(v10, v1 + v20, &qword_1EBC5E760);
    v24 = v1;
  }

  else
  {
    sub_1BB6B6F6C(v13, v19);
    sub_1BB6BA7D4();
    sub_1BB6BA744();
    v26 = v25;
    (*(v32 + 8))(v4, v33);
    v24 = v1;
    if (*(v1 + 56) >= v26)
    {
      sub_1BB598308(v19, qword_1EBC5E780);
    }

    else
    {
      v33 = *(v14 + 48);
      sub_1BB6BA7D4();
      v27 = [objc_opt_self() processInfo];
      v28 = [v27 thermalState];

      sub_1BB598308(v19, qword_1EBC5E780);
      *&v10[v33] = v28;
      (*(v15 + 56))(v10, 0, 1, v14);
      sub_1BB5BA0DC(v10, v24 + v20, &qword_1EBC5E760);
    }
  }

  sub_1BB6B6EFC(v24 + v20, v7);
  if (v35(v7, 1, v14) == 1)
  {
    sub_1BB598308(v7, &qword_1EBC5E760);
    return 0;
  }

  else
  {
    v30 = v34;
    sub_1BB6B6F6C(v7, v34);
    v31 = *(v30 + *(v14 + 48));
    sub_1BB598308(v30, qword_1EBC5E780);
    return v31 == 3;
  }
}

uint64_t DKAdaptiveFramerate.deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastModeSwitchTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastProcessTime, v2);

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastThermalStateStamped, &qword_1EBC5E760);
  return v0;
}

uint64_t DKAdaptiveFramerate.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastModeSwitchTime;
  v2 = sub_1BB6BA7F4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastProcessTime, v2);

  sub_1BB598308(v0 + OBJC_IVAR____TtC23IntelligentTrackingCore19DKAdaptiveFramerate_lastThermalStateStamped, &qword_1EBC5E760);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DKAdaptiveFramerate()
{
  result = qword_1EBC5E768;
  if (!qword_1EBC5E768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BB6B6D1C()
{
  sub_1BB6BA7F4();
  if (v0 <= 0x3F)
  {
    sub_1BB6B6E30();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BB6B6E30()
{
  if (!qword_1EBC5E778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBC5E780);
    v0 = sub_1BB6BB184();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC5E778);
    }
  }
}

uint64_t sub_1BB6B6E94(uint64_t a1, int a2)
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

uint64_t sub_1BB6B6EB4(uint64_t result, int a2, int a3)
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

uint64_t sub_1BB6B6EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5E760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB6B6F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBC5E780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DKProbabilityValue.__allocating_init(variable:probability:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 80) - 8) + 32))(v4 + *(*v4 + 104), a1);
  *(v4 + *(*v4 + 112)) = a2;
  return v4;
}

uint64_t DKProbabilityDistribution.__allocating_init(variables:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BB6B70C8(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1BB6B71E4(v3);
}

uint64_t DKProbabilityValue.init(variable:probability:)(uint64_t a1, double a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 104), a1);
  *(v2 + *(*v2 + 112)) = a2;
  return v2;
}

uint64_t sub_1BB6B7378(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C626169726176 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BB6BB7E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C696261626F7270 && a2 == 0xEB00000000797469)
  {

    return 1;
  }

  else
  {
    v6 = sub_1BB6BB7E4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BB6B7480(char a1)
{
  sub_1BB6BB924();
  MEMORY[0x1BFB117B0](a1 & 1);
  return sub_1BB6BB964();
}

uint64_t sub_1BB6B74C8(char a1)
{
  if (a1)
  {
    return 0x6C696261626F7270;
  }

  else
  {
    return 0x656C626169726176;
  }
}

uint64_t sub_1BB6B7548()
{
  sub_1BB6BB924();
  sub_1BB6B7458(v2, *v0);
  return sub_1BB6BB964();
}

uint64_t sub_1BB6B75A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6B7378(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BB6B75DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB6B8EF8();
  *a1 = result;
  return result;
}

uint64_t sub_1BB6B7610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BB6B7664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DKProbabilityValue.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6B77D4(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 80);
  v20 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v15 - v5;
  v18 = *(v6 + 96);
  type metadata accessor for DKProbabilityValue.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1BB6BB754();
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v16;
  v11 = v7;
  sub_1BB6BB984();
  (*(*(*(*v2 + 80) - 8) + 16))(v10, v2 + *(*v2 + 104));
  v22 = 0;
  v12 = v19;
  sub_1BB6BB744();
  if (v12)
  {
    (*(v20 + 8))(v10, v4);
    return (*(v17 + 8))(v9, v7);
  }

  else
  {
    v14 = v17;
    (*(v20 + 8))(v10, v4);
    v21 = 1;
    sub_1BB6BB724();
    return (*(v14 + 8))(v9, v11);
  }
}

uint64_t DKProbabilityValue.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKProbabilityValue.init(from:)(a1);
  return v2;
}

uint64_t DKProbabilityValue.init(from:)(void *a1)
{
  v3 = *(*v1 + 80);
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v20 = &v17 - v4;
  v21 = *(v5 + 96);
  type metadata accessor for DKProbabilityValue.CodingKeys();
  swift_getWitnessTable();
  v19 = sub_1BB6BB6A4();
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v17 - v6;
  v8 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v9 = v22;
  sub_1BB6BB974();
  if (v9)
  {
    type metadata accessor for DKProbabilityValue();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v17;
    v11 = v18;
    v25 = 0;
    v12 = v19;
    sub_1BB6BB684();
    v13 = *(v11 + 32);
    v22 = *(*v1 + 104);
    v13(v1 + v22, v20, v3);
    v24 = 1;
    sub_1BB6BB664();
    v16 = v15;
    (*(v10 + 8))(v7, v12);
    *(v1 + *(*v1 + 112)) = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v1;
}

uint64_t sub_1BB6B7EAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DKProbabilityValue.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BB6B7EFC()
{
  sub_1BB5DFB68();
}

uint64_t sub_1BB6B7F60()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 2);
  v14[9] = 0;
  v14[10] = v3;
  v4 = v2[10];
  v14[4] = v4;
  v5 = v2[11];
  v14[5] = v5;
  v6 = v2[12];
  v14[6] = v6;
  v7 = type metadata accessor for DKProbabilityValue();
  v8 = sub_1BB6BAF04();

  swift_getWitnessTable();
  sub_1BB6BAD84();

  if (v15 != 0.0)
  {
    v14[1] = v14;
    v15 = v0[2];
    v13[2] = v4;
    v13[3] = v5;
    v13[4] = v6;
    v13[5] = MEMORY[0x1EEE9AC00](result);

    WitnessTable = swift_getWitnessTable();
    v12 = sub_1BB5BA144(sub_1BB6B8A08, v13, v8, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);

    *(v1 + 2) = v12;
  }

  return result;
}

uint64_t sub_1BB6B8154()
{
  type metadata accessor for DKProbabilityValue();
  sub_1BB6BAF04();

  swift_getWitnessTable();
  sub_1BB6BAD94();

  swift_getWitnessTable();
  sub_1BB6BAB94();

  return v1;
}

uint64_t sub_1BB6B8284(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C626169726176 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BB6BB7E4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BB6B8320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BB6B8284(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BB6B8358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BB5937B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BB6B8390(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1BB6B83E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t DKProbabilityDistribution.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6B8490(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v10[3] = *(*v2 + 80);
  v10[2] = *(v4 + 88);
  v10[1] = *(v4 + 96);
  type metadata accessor for DKProbabilityDistribution.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1BB6BB754();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BB6BB984();
  v10[7] = v2[2];
  type metadata accessor for DKProbabilityValue();
  sub_1BB6BAF04();
  v10[5] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1BB6BB744();
  return (*(v6 + 8))(v8, v5);
}

uint64_t DKProbabilityDistribution.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DKProbabilityDistribution.init(from:)(a1);
  return v2;
}

uint64_t DKProbabilityDistribution.init(from:)(void *a1)
{
  type metadata accessor for DKProbabilityDistribution.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1BB6BB6A4();
  v10 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  type metadata accessor for DKProbabilityValue();
  *(v1 + 16) = sub_1BB6BAE84();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = v11;
  sub_1BB6BB974();
  if (v6)
  {
  }

  else
  {
    v7 = v10;
    sub_1BB6BAF04();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1BB6BB684();
    (*(v7 + 8))(v5, v3);
    *(v1 + 16) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1BB6B898C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DKProbabilityDistribution.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1BB6B89DC@<D0>(double *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *(*a2 + *(**a2 + 112));
  *a3 = result;
  return result;
}

uint64_t sub_1BB6B8A08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *(v3 + *(*v3 + 112)) = *(v3 + *(*v3 + 112)) / *(v2 + 40);
  *a2 = v3;
}

uint64_t sub_1BB6B8AA8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BB6B8F08()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  v1[3] = swift_task_alloc();
  v2 = sub_1BB6BA7F4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BB6B9000, 0, 0);
}

uint64_t sub_1BB6B9000()
{
  v1 = v0[2];
  v2 = *(v1 + 40);
  v3 = *(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_localHomePosition);
  if (v3 && (*(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKReturnToBaseTask_returnToBaseIssued) & 1) == 0)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    *(v1 + OBJC_IVAR____TtC23IntelligentTrackingCore18DKReturnToBaseTask_returnToBaseIssued) = 1;
    v7 = *(v1 + 48);
    v8 = *(v5 + 16);
    v8(v4, v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v6);
    type metadata accessor for DKIntelligentTrackingCommand(0);
    v9 = swift_allocObject();
    (*(v5 + 32))(v9 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_time, v4, v6);
    v10 = v9 + OBJC_IVAR____TtC23IntelligentTrackingCore28DKIntelligentTrackingCommand_command;
    *v10 = v3;
    *(v10 + 8) = 0x4008000000000000;
    *(v10 + 16) = 0x4000;
    *(v7 + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_command) = v9;

    v11 = *(v1 + 40);
    v12 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastReturnToBaseCommandTime;

    sub_1BB5A1908(v11 + v12);
    v8(v11 + v12, *(v1 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v6);
    (*(v5 + 56))(v11 + v12, 0, 1, v6);

    v2 = *(v1 + 40);
  }

  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];
  sub_1BB5BA930(v2 + OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastReturnToBaseCommandTime, v15);
  LODWORD(v13) = (*(v14 + 48))(v15, 1, v13);
  sub_1BB5A1908(v15);
  if (v13 == 1)
  {
    v16 = v0[4];
    v17 = v0[5];
    v18 = v0[2];
    v19 = *(v1 + 40);
    v20 = OBJC_IVAR____TtC23IntelligentTrackingCore34DKIntelligentTrackingInternalState_lastReturnToBaseCommandTime;

    sub_1BB5A1908(v19 + v20);
    (*(v17 + 16))(v19 + v20, *(v18 + 48) + OBJC_IVAR____TtC23IntelligentTrackingCore26DKIntelligentTrackingState_time, v16);
    (*(v17 + 56))(v19 + v20, 0, 1, v16);
  }

  v21 = v0[1];

  return v21(1);
}

uint64_t type metadata accessor for DKReturnToBaseTask()
{
  result = qword_1EBC5E988;
  if (!qword_1EBC5E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BB6B9358(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v13 = xmmword_1BB6CA300;
  *(v1 + 56) = xmmword_1BB6CA300;
  *(v1 + 72) = xmmword_1BB6CA310;
  *(v1 + 88) = xmmword_1BB6CA310;
  *(v1 + 104) = xmmword_1BB6CA320;
  *(v1 + 120) = xmmword_1BB6CA330;
  *(v1 + 136) = 0;
  *(v1 + 138) = 0;
  sub_1BB6BAA24();
  *(v1 + 137) = a1;
  v6 = sub_1BB6BA7F4();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  *(v1 + 49) = 0;
  *(v1 + 24) = 0x3FE0000000000000;
  type metadata accessor for DKSmoothingFilter();
  v8 = swift_allocObject();
  *(v8 + 48) = xmmword_1BB6BE460;
  v9 = OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated;
  v7((v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lastUpdated), 1, 1, v6);
  v10 = v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_lowThreshold;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_highThreshold;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v8 + OBJC_IVAR____TtC23IntelligentTrackingCore17DKSmoothingFilter_BOOLeanValue) = 0;
  *(v8 + 16) = v13;
  *(v8 + 32) = 256;
  *(v8 + 40) = 0x3FE0000000000000;
  sub_1BB5BF3C4(v5, v8 + v9);
  *v10 = 0;
  *(v10 + 8) = 1;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v1 + 16) = v8;
  *(v1 + 32) = 0x3FE6666666666666;
  *(v1 + 40) = 0x3FD3333333333333;
  *(v1 + 48) = 0;
  return v1;
}

uint64_t sub_1BB6B95A4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  *(v1 + 136) = a1;
  if (a1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = sub_1BB6BA7F4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);

  sub_1BB6ABB40(0x3FF0000000000000, 0, v5, v6);

  result = sub_1BB5A1908(v5);
  v9 = *(v1 + 138);
  if (a1)
  {
    if ((*(v1 + 138) & 2) != 0)
    {
      goto LABEL_10;
    }

    v9 |= 2u;
  }

  else
  {
    if ((*(v1 + 138) & 2) == 0)
    {
      goto LABEL_10;
    }

    v9 &= ~2u;
  }

  *(v1 + 138) = v9;
LABEL_10:
  if ((v9 & 0x3D) != 1)
  {
    *(v1 + 138) = v9 & 0xC2 | 1;
  }

  return result;
}

BOOL sub_1BB6B96E8(double *a1)
{
  v66 = type metadata accessor for DKPersonSelectionFilter.Signals(0);
  MEMORY[0x1EEE9AC00](v66);
  v4 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1BB6BAA34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v63[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v63[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC5C050);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v63[-v19];
  v67 = v1;
  if (*(v1 + 138))
  {
    *(v67 + 138) = *(v1 + 138) & 0xFE;
  }

  if ((*(a1 + *(v66 + 44)) & 1) == 0)
  {
    v33 = a1[2];
    goto LABEL_14;
  }

  v21 = *a1;
  if (*a1 > 0.75 && a1[1] > 0.75)
  {
    v22 = sub_1BB6BA7F4();
    (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
    v23 = v67;

    sub_1BB6ABB40(0, 1, v20, 1.0);

    sub_1BB5A1908(v20);
    v24 = v6;
    v25 = *(v6 + 16);
    v26 = v5;
    v25(v17, v23 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKPersonSelectionFilter_logger, v5);
    v27 = sub_1BB6BAA14();
    v28 = sub_1BB6BB064();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1BB58A000, v27, v28, "hybrid selection: always select if speaking and looking", v29, 2u);
      MEMORY[0x1BFB122F0](v29, -1, -1);
    }

    (*(v24 + 8))(v17, v26);
    result = *(a1 + *(v66 + 40)) < 0.5;
    v31 = *(v67 + 138);
    if ((v31 & 0x3E) != 0x1A)
    {
      v32 = v31 & 0x18 ^ 0x1A | v31 & 0xD9;
LABEL_31:
      *(v67 + 138) = v32;
      return result;
    }

    return result;
  }

  v33 = a1[2];
  if (v33 < 1.5)
  {
    v34 = a1[1];
    if (v21 > 0.75 || v34 > 0.75)
    {
      v53 = sub_1BB6BA7F4();
      (*(*(v53 - 8) + 56))(v20, 1, 1, v53);
      v54 = v67;

      sub_1BB6ABB40(0, 1, v20, 1.0);

      sub_1BB5A1908(v20);
      v55 = v6;
      v56 = *(v6 + 16);
      v57 = v5;
      v56(v14, v54 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKPersonSelectionFilter_logger, v5);
      v58 = sub_1BB6BAA14();
      v59 = sub_1BB6BB064();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1BB58A000, v58, v59, "hybrid selection: always select if near camera and speaking or looking", v60, 2u);
        MEMORY[0x1BFB122F0](v60, -1, -1);
      }

      (*(v55 + 8))(v14, v57);
      result = *(a1 + *(v66 + 40)) < 0.5;
      v61 = *(v67 + 138);
      v62 = v61 & 0xFFFFFFF9 | 2;
      if ((v61 & 6) != 2)
      {
        *(v67 + 138) = v62;
      }

      if (v21 <= 0.75)
      {
        if ((v61 & 8) == 0)
        {
          goto LABEL_43;
        }

        v62 = v61 & 0xF1 | 2;
      }

      else
      {
        if ((v61 & 8) != 0)
        {
          goto LABEL_43;
        }

        v62 = v61 & 0xFFFFFFF1 | 0xA;
      }

      *(v67 + 138) = v62;
LABEL_43:
      if (v34 <= 0.75)
      {
        if ((v62 & 0x10) == 0)
        {
          goto LABEL_49;
        }

        v62 &= 0xEFu;
      }

      else
      {
        if ((v62 & 0x10) != 0)
        {
          goto LABEL_49;
        }

        v62 |= 0x10u;
      }

      *(v67 + 138) = v62;
LABEL_49:
      if ((~v62 & 0x38) != 0)
      {
        v32 = v62 | 0x38;
        goto LABEL_31;
      }

      return result;
    }
  }

LABEL_14:
  if (v33 <= 2.0 || a1[1] >= 0.25 || *a1 >= 0.25)
  {
    v64 = *(a1 + *(v66 + 44));
    (*(v6 + 16))(v8, v67 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKPersonSelectionFilter_logger, v5);
    sub_1BB6BA27C(a1, v4);
    v65 = v8;
    v43 = sub_1BB6BAA14();
    v44 = sub_1BB6BB064();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = v4;
      v47 = v45;
      *v45 = 67109120;
      v48 = *(v46 + *(v66 + 40)) >= 0.5;
      sub_1BB6BA2E0(v46);
      *(v47 + 1) = v48;
      _os_log_impl(&dword_1BB58A000, v43, v44, "hybrid selection: select using iss %{BOOL}d", v47, 8u);
      MEMORY[0x1BFB122F0](v47, -1, -1);
    }

    else
    {
      sub_1BB6BA2E0(v4);
    }

    (*(v6 + 8))(v65, v5);
    v49 = *(a1 + *(v66 + 40));
    v50 = v64 ^ 1;
    if (v49 <= 0.5)
    {
      v50 = 0;
    }

    if ((v50 & 1) == 0)
    {
      v51 = sub_1BB6BA7F4();
      (*(*(v51 - 8) + 56))(v20, 1, 1, v51);

      sub_1BB6ABB40(0x3FB999999999999ALL, 0, v20, v49);

      sub_1BB5A1908(v20);
    }

    v52 = *(v67 + 138);
    if ((v52 & 0x3E) == 6)
    {
      return 0;
    }

    result = 0;
    v32 = v52 & 0xC1 | 6;
    goto LABEL_31;
  }

  v35 = sub_1BB6BA7F4();
  (*(*(v35 - 8) + 56))(v20, 1, 1, v35);
  v36 = v67;

  sub_1BB6ABB40(0, 1, v20, 0.0);

  sub_1BB5A1908(v20);
  v37 = v6;
  v38 = *(v6 + 16);
  v39 = v5;
  v38(v11, v36 + OBJC_IVAR____TtC23IntelligentTrackingCore23DKPersonSelectionFilter_logger, v5);
  v40 = sub_1BB6BAA14();
  v41 = sub_1BB6BB064();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1BB58A000, v40, v41, "hybrid selection: never select if far from camera and not looking and not speeking", v42, 2u);
    MEMORY[0x1BFB122F0](v42, -1, -1);
  }

  (*(v37 + 8))(v11, v39);
  result = *(a1 + *(v66 + 40)) >= 0.5;
  if ((*(v67 + 138) & 0x3E) != 0)
  {
    v32 = *(v67 + 138) & 0xC1;
    goto LABEL_31;
  }

  return result;
}

uint64_t sub_1BB6B9FF0()
{
  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKPersonSelectionFilter_logger;
  v2 = sub_1BB6BAA34();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1BB6BA058()
{

  v1 = OBJC_IVAR____TtC23IntelligentTrackingCore23DKPersonSelectionFilter_logger;
  v2 = sub_1BB6BAA34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BB6BA124()
{
  result = sub_1BB6BAA34();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_1BB6BA208()
{
  result = qword_1EBC5E9B0;
  if (!qword_1EBC5E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC5E9B0);
  }

  return result;
}

uint64_t sub_1BB6BA27C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DKPersonSelectionFilter.Signals(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB6BA2E0(uint64_t a1)
{
  v2 = type metadata accessor for DKPersonSelectionFilter.Signals(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BB6BA364()
{
  result = sub_1BB6BA7F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

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

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect VNImageRectForNormalizedRect(CGRect normalizedRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x1EEDE7378](imageWidth, imageHeight, normalizedRect.origin, *&normalizedRect.origin.y, normalizedRect.size, *&normalizedRect.size.height);
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