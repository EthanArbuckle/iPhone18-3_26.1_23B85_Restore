unint64_t sub_257BFB35C()
{
  result = qword_27F8F58F8;
  if (!qword_27F8F58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F58F8);
  }

  return result;
}

unint64_t sub_257BFB3B4()
{
  result = qword_281545AB0;
  if (!qword_281545AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545AB0);
  }

  return result;
}

unint64_t sub_257BFB40C()
{
  result = qword_281545AB8;
  if (!qword_281545AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281545AB8);
  }

  return result;
}

uint64_t SpatialPersonDetection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SpatialPersonDetection.id.setter(uint64_t a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for SpatialPersonDetection()
{
  result = qword_27F8F5918;
  if (!qword_27F8F5918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 SpatialPersonDetection.dimensions.setter(__n128 a1)
{
  v2 = type metadata accessor for SpatialPersonDetection();
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

__n128 SpatialPersonDetection.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = (v4 + *(type metadata accessor for SpatialPersonDetection() + 24));
  *v5 = a1;
  v5[1] = a2;
  result = a4;
  v5[2] = a3;
  v5[3] = a4;
  return result;
}

uint64_t sub_257BFB7A4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v113 - v8;
  v119 = sub_257ECCCF0();
  v118 = *(v119 - 8);
  v9 = MEMORY[0x28223BE20](v119);
  v114 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v116 = &v113 - v11;
  v12 = type metadata accessor for SpatialPersonDetection();
  v123 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v115 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IsLandscape = UIInterfaceOrientationIsLandscape(a3);
  v15 = [a2 capturedImage];
  v16 = v15;
  if (IsLandscape)
  {
    Width = CVPixelBufferGetWidth(v15);

    v18 = [a2 capturedImage];
    Height = CVPixelBufferGetHeight(v18);
  }

  else
  {
    Width = CVPixelBufferGetHeight(v15);

    v18 = [a2 capturedImage];
    Height = CVPixelBufferGetWidth(v18);
  }

  v20 = Height;

  v21 = Width;
  v22 = v20;
  [a1 screenRect];
  switch(a3)
  {
    case 1:
      c = -v21;
      a = 0.0;
      b = v20;
      d = 0.0;
      tx = Width;
      ty = 0.0;
      break;
    case 2:
      b = -v22;
      a = 0.0;
      c = Width;
      d = 0.0;
      ty = v20;
      tx = 0.0;
      break;
    case 4:
      a = -v21;
      d = -v22;
      b = 0.0;
      tx = Width;
      ty = v20;
      c = 0.0;
      break;
    default:
      v33 = v23;
      v34 = v24;
      v35 = v25;
      v36 = v26;
      CGAffineTransformMakeScale(&v130, Width, v20);
      v26 = v36;
      v25 = v35;
      v24 = v34;
      v23 = v33;
      a = v130.a;
      b = v130.b;
      c = v130.c;
      d = v130.d;
      tx = v130.tx;
      ty = v130.ty;
      break;
  }

  v130.a = a;
  v130.b = b;
  v130.c = c;
  v130.d = d;
  v130.tx = tx;
  v130.ty = ty;
  v133 = CGRectApplyAffineTransform(*&v23, &v130);
  x = v133.origin.x;
  y = v133.origin.y;
  v39 = v133.size.width;
  v40 = v133.size.height;
  CGRectGetMinX(v133);
  v134.origin.x = x;
  v134.origin.y = y;
  v134.size.width = v39;
  v134.size.height = v40;
  CGRectGetMinY(v134);
  v135.origin.x = x;
  v135.origin.y = y;
  v135.size.width = v39;
  v135.size.height = v40;
  v120.i64[0] = CGRectGetMaxX(v135);
  v136.origin.x = x;
  v136.origin.y = y;
  v136.size.width = v39;
  v136.size.height = v40;
  CGRectGetMaxY(v136);
  v124 = a1;
  [a1 position];
  v41.f32[0] = v41.i32[2] / -1000.0;
  v126 = v41;
  v42 = [a2 camera];
  [v42 transform];
  v128 = v44;
  v129 = v43;
  v121 = v45;
  v122 = v46;

  v47 = vmulq_f32(v129, 0);
  v129 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v129, 0, v128), 0, v121), 0, v122);
  v48 = vmlaq_f32(v47, 0, v128);
  v127 = vmlaq_f32(vaddq_f32(v121, v48), 0, v122);
  __asm { FMOV            V2.4S, #-1.0 }

  v128 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v47, _Q2, v128), 0, v121), 0, v122);
  v126 = vaddq_f32(v122, vmlaq_n_f32(v48, v121, v126.f32[0]));
  v54 = [a2 camera];
  v55 = sub_257ECFF00();
  v57 = v56;
  v59 = v58;

  if (v59 & 1) != 0 || (v60 = [a2 camera], v61 = sub_257ECFF00(), v63 = v62, v65 = v64, v60, (v65))
  {

    v66 = 1;
    v67 = v125;
    v68 = v12;
  }

  else
  {
    v69.i64[0] = v55;
    v69.i64[1] = v57;
    v70.i64[0] = v61;
    v70.i64[1] = v63;
    v71 = *&v61;
    *v72.f32 = vabd_f32(v55, v61);
    v73 = v72.f32[1];
    if (v72.f32[1] >= v72.f32[0])
    {
      v73 = v72.f32[0];
    }

    v72.i64[1] = LODWORD(v73);
    v68 = v12;
    v74 = v115;
    *&v115[*(v12 + 20)] = v72;
    v75 = vaddq_f32(v69, v70);
    v72.f32[0] = (*&v55 + v71) * 0.5;
    v127 = v72;
    v72.f32[0] = vmuls_lane_f32(0.5, *v75.f32, 1);
    v128 = v72;
    v72.f32[0] = vmuls_lane_f32(0.5, v75, 2);
    v129 = v72;
    v76 = [a2 camera];
    [v76 transform];
    v126 = v77;
    v122 = v78;
    v121 = v79;
    v120 = v80;

    v131.columns[0] = v126;
    v131.columns[1] = v122;
    v131.columns[2] = v121;
    v131.columns[3] = v120;
    v132 = __invert_f4(v131);
    v129 = vaddq_f32(v132.columns[3], vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v132.columns[0], v127.f32[0]), v132.columns[1], v128.f32[0]), v132.columns[2], v129.f32[0]));
    v81 = ARCameraToDisplayRotation();
    v82 = __sincosf_stret(((v81 * 3.1416) / 180.0) * 0.5);
    v83 = vmulq_n_f32(xmmword_257ED6C00, v82.__sinval);
    v83.n128_u32[3] = LODWORD(v82.__cosval);
    *v84.i64 = MEMORY[0x259C72730](v83);
    v126 = v84;
    v127 = v85;
    v128 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A48);
    v87 = swift_allocObject();
    v88 = v127;
    v89 = v128;
    *(v87 + 32) = v126;
    *(v87 + 48) = v88;
    v90 = v129;
    *(v87 + 64) = v89;
    *(v87 + 80) = v90;
    swift_setDeallocating();
    swift_deallocClassInstance();
    v91 = [a2 camera];
    [v91 transform];
    v113 = v92;
    v120 = v93;
    v121 = v94;
    v122 = v95;

    v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, v127.f32[0]), v120, *v127.f32, 1), v121, v127, 2), v122, v127, 3);
    v97 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, v128.f32[0]), v120, *v128.f32, 1), v121, v128, 2), v122, v128, 3);
    v98 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, v129.f32[0]), v120, *v129.f32, 1), v121, v129, 2), v122, v129, 3);
    v99 = (v74 + *(v12 + 24));
    *v99 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v113, v126.f32[0]), v120, *v126.f32, 1), v121, v126, 2), v122, v126, 3);
    v99[1] = v96;
    v99[2] = v97;
    v99[3] = v98;
    v100 = v124;
    v101 = [v124 uuid];
    if (v101)
    {
      v102 = v114;
      v103 = v101;
      sub_257ECCCD0();

      v104 = v118;
      v105 = *(v118 + 32);
      v106 = v117;
      v107 = v102;
      v108 = v119;
      v105(v117, v107, v119);
      (*(v104 + 56))(v106, 0, 1, v108);
      v109 = v116;
      v105(v116, v106, v108);
    }

    else
    {
      v104 = v118;
      v110 = v117;
      v108 = v119;
      (*(v118 + 56))(v117, 1, 1, v119);
      v109 = v116;
      sub_257ECCCE0();

      if ((*(v104 + 48))(v110, 1, v108) != 1)
      {
        sub_257BE4084(v110, &qword_27F8F5728);
      }
    }

    (*(v104 + 32))(v74, v109, v108);
    *(v74 + *(v68 + 28)) = v100;
    v111 = v125;
    sub_257BFE904(v74, v125);
    v67 = v111;
    v66 = 0;
  }

  return (*(v123 + 56))(v67, v66, 1, v68);
}

uint64_t SpatialPersonDetection.hash(into:)()
{
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

id sub_257BFC1BC(double a1)
{
  v3 = type metadata accessor for SpatialPersonDetection();
  sub_257ECFB60();
  v7 = [objc_opt_self() boxWithWidth:v4 height:v5 length:v6 chamferRadius:0.0];
  v8 = [objc_opt_self() nodeWithGeometry_];

  [v8 setOpacity_];
  v9 = [v8 geometry];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 firstMaterial];

    if (v11)
    {
      v12 = [v11 diffuse];

      v13 = [objc_opt_self() whiteColor];
      [v12 setContents_];
    }
  }

  [v8 setSimdWorldTransform_];
  sub_257ECCCA0();
  v14 = sub_257ECF4C0();

  [v8 setName_];

  v15 = [objc_opt_self() shapeWithNode:v8 options:0];
  v16 = [objc_opt_self() bodyWithType:2 shape:v15];

  [v8 setPhysicsBody_];
  v17 = [v8 physicsBody];
  if (v17)
  {
    v18 = v17;
    [v17 setCategoryBitMask_];
  }

  [v8 setCategoryBitMask_];
  return v8;
}

void *static SpatialPersonDetection.spatialize(_:frame:orientation:)(unint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5900);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v24 = type metadata accessor for SpatialPersonDetection();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v10 = 0;
    v22 = a1 & 0xC000000000000001;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v12 = (v21 + 48);
    v13 = MEMORY[0x277D84F90];
    v20 = a3;
    while (1)
    {
      if (v22)
      {
        v14 = a1;
        v15 = MEMORY[0x259C72E20](v10, a1);
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_18;
        }

        v14 = a1;
        v15 = *(a1 + 8 * v10 + 32);
      }

      a1 = v15;
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      sub_257BFB7A4(v15, v25, a3, v7);
      if ((*v12)(v7, 1, v24) == 1)
      {
        sub_257BE4084(v7, &qword_27F8F5900);
      }

      else
      {
        sub_257BFE904(v7, v23);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_257BFDFAC(0, v13[2] + 1, 1, v13, &qword_27F8F5A40, &unk_257EDB2B0, type metadata accessor for SpatialPersonDetection);
        }

        v18 = v13[2];
        v17 = v13[3];
        if (v18 >= v17 >> 1)
        {
          v13 = sub_257BFDFAC(v17 > 1, v18 + 1, 1, v13, &qword_27F8F5A40, &unk_257EDB2B0, type metadata accessor for SpatialPersonDetection);
        }

        v13[2] = v18 + 1;
        sub_257BFE904(v23, v13 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18);
        a3 = v20;
      }

      a1 = v14;
      ++v10;
      if (v16 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t SpatialPersonDetection.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257BFC7D8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_257BFC860()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257BFC8E8()
{
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

uint64_t sub_257BFC96C()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257BFEA50(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

char *sub_257BFC9F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A20);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFCB3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A30);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFCC70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
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

char *sub_257BFCDB8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFCF1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6960);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_257BFD06C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_257BFD1BC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_257BFD2F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6A70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_257BFD468(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5258);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFD574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_257BFD6B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFD7D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6A60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257BFD91C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6920);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_257BFDA9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_257BFDBE4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFDD2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_257BFDE70(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

size_t sub_257BFDFAC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_257BFE188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F69F0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_257BFE28C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6980);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FA6A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_257BFE3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59E0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_257BFE4C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5960);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_257BFE610(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_257BFE744(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F59C0);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s16MagnifierSupport22SpatialPersonDetectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SpatialPersonDetection();
  result = 0;
  v6 = vmovn_s32(vceqq_f32(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))));
  if (v6.i8[0] & 1) != 0 && (v6.i8[2] & 1) != 0 && (v6.i8[4])
  {
    v7 = *(v4 + 24);
    return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + v7 + 16), *(a2 + v7 + 16)), vceqq_f32(*(a1 + v7), *(a2 + v7))), vandq_s8(vceqq_f32(*(a1 + v7 + 32), *(a2 + v7 + 32)), vceqq_f32(*(a1 + v7 + 48), *(a2 + v7 + 48))))) >> 31;
  }

  return result;
}

uint64_t sub_257BFE904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialPersonDetection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_257BFE9B0(uint64_t a1)
{
  result = sub_257BFEA50(&qword_27F8F5908, type metadata accessor for SpatialPersonDetection);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_257BFEA50(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257BFEAC0()
{
  sub_257ECCCF0();
  if (v0 <= 0x3F)
  {
    sub_257BFEB74();
    if (v1 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v2 <= 0x3F)
      {
        sub_257BFEC24();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_257BFEB74()
{
  if (!qword_27F8F5928)
  {
    sub_257BFEBD0();
    v0 = sub_257ED0770();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F5928);
    }
  }
}

unint64_t sub_257BFEBD0()
{
  result = qword_27F8F5930;
  if (!qword_27F8F5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5930);
  }

  return result;
}

unint64_t sub_257BFEC24()
{
  result = qword_27F8F5938;
  if (!qword_27F8F5938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5938);
  }

  return result;
}

uint64_t sub_257BFEC80()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();

  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

unint64_t sub_257BFEE54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_257C0234C(*a1);
  *a2 = result;
  return result;
}

void sub_257BFEF40()
{
  v1 = v0;
  v64.receiver = v0;
  v64.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v64, sel_viewDidLoad);
  v2 = [objc_opt_self() shared];
  v3 = [v2 doorAttributesClassifierProperties];

  if (v3)
  {
    *&v62 = 0xD000000000000017;
    *(&v62 + 1) = 0x8000000257EF93E0;
    v4 = [v3 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v4)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    v59 = v62;
    v60 = v63;
    if (!*(&v63 + 1))
    {

      sub_257BE4084(&v59, &unk_27F8F62F0);
      return;
    }

    sub_257BD2C2C(0, &unk_27F8F58C0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v58 = v1;
    v5 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAED0);
    v6 = swift_allocObject();
    *(v6 + 1) = xmmword_257EDB2E0;
    *(v6 + 32) = 4;
    *&v59 = 0x746174536E65704FLL;
    *(&v59 + 1) = 0xE900000000000065;
    v7 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v7)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x746174536E65704FLL;
      *(&v59 + 1) = 0xE900000000000065;
      v8 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v8)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v9 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v9 = sub_257ECFF10();
    }

    v6[5] = v9;
    *(v6 + 48) = 5;
    *&v59 = 0x6570616853;
    *(&v59 + 1) = 0xE500000000000000;
    v10 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v10)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6570616853;
      *(&v59 + 1) = 0xE500000000000000;
      v11 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v11)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v12 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v12 = sub_257ECFF10();
    }

    v6[7] = v12;
    *(v6 + 64) = 0;
    *&v59 = 0x6863616F72707041;
    *(&v59 + 1) = 0xE800000000000000;
    v13 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v13)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6863616F72707041;
      *(&v59 + 1) = 0xE800000000000000;
      v14 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v14)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v15 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v15 = sub_257ECFF10();
    }

    v6[9] = v15;
    *(v6 + 80) = 3;
    *&v59 = 0x6874654D6E65704FLL;
    *(&v59 + 1) = 0xEA0000000000646FLL;
    v16 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    v57 = v5;
    if (v16)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6874654D6E65704FLL;
      *(&v59 + 1) = 0xEA0000000000646FLL;
      v17 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v17)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v18 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v18 = sub_257ECFF10();
    }

    v6[11] = v18;
    *(v6 + 96) = 6;
    *&v59 = 1702521171;
    *(&v59 + 1) = 0xE400000000000000;
    v19 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v19)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 1702521171;
      *(&v59 + 1) = 0xE400000000000000;
      v20 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v20)
      {
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v21 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v21 = sub_257ECFF10();
    }

    v6[13] = v21;
    *(v6 + 112) = 2;
    *&v59 = 0x646E6148726F6F44;
    *(&v59 + 1) = 0xEA0000000000656CLL;
    v22 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v22)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x646E6148726F6F44;
      *(&v59 + 1) = 0xEA0000000000656CLL;
      v23 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v23)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v24 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v24 = sub_257ECFF10();
    }

    v6[15] = v24;
    *(v6 + 128) = 7;
    *&v59 = 0x776F646E6957;
    *(&v59 + 1) = 0xE600000000000000;
    v25 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v25)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x776F646E6957;
      *(&v59 + 1) = 0xE600000000000000;
      v26 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v26)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v27 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v27 = sub_257ECFF10();
    }

    v6[17] = v27;
    *(v6 + 144) = 1;
    *&v59 = 0x726F6C6F43;
    *(&v59 + 1) = 0xE500000000000000;
    v28 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v28)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x726F6C6F43;
      *(&v59 + 1) = 0xE500000000000000;
      v29 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v29)
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v30 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v30 = sub_257ECFF10();
    }

    v6[19] = v30;
    *(v6 + 160) = 8;
    *&v59 = 0x6C6169726574614DLL;
    *(&v59 + 1) = 0xE800000000000000;
    v31 = [v5 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v31)
    {
      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BE4084(&v59, &unk_27F8F62F0);
      *&v59 = 0x6C6169726574614DLL;
      *(&v59 + 1) = 0xE800000000000000;
      v32 = [v5 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (!v32)
      {
LABEL_73:
        __break(1u);

        __break(1u);
        return;
      }

      sub_257ED0160();
      swift_unknownObjectRelease();
      sub_257BEBE08(&v62, &v59);
      sub_257BD2C2C(0, &qword_281543DC0);
      swift_dynamicCast();
      v33 = v61;
    }

    else
    {
      v59 = 0u;
      v60 = 0u;
      sub_257BE4084(&v59, &unk_27F8F62F0);
      sub_257BD2C2C(0, &qword_281543DC0);
      v33 = sub_257ECFF10();
    }

    v34 = v1;
    v55 = v3;
    v6[21] = v33;
    v35 = sub_257BE82F8(v6);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FAEE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v36 = *(v35 + 16);
    if (v36)
    {
      v6 = sub_257C63E00(*(v35 + 16), 0);
      v37 = sub_257C6764C(&v59, (v6 + 4), v36, v35);

      sub_257C02520();
      if (v37 != v36)
      {
        __break(1u);
        goto LABEL_63;
      }

      v34 = v1;
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
    }

    *&v59 = v6;
    v6 = 0;
    sub_257C01A64(&v59);
    v56 = v59;
    v38 = *(v59 + 16);
    if (v38)
    {
      sub_257BD2C2C(0, &qword_281543DC0);
      v39 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes;
      v6 = (v56 + 40);
      do
      {
        v40 = *(v6 - 8);
        v41 = *v6;
        v42 = sub_257ECFF10();
        v43 = sub_257ECFF50();

        if ((v43 & 1) == 0)
        {
          swift_beginAccess();
          v44 = *&v34[v39];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v34[v39] = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = sub_257BFCEF4(0, *(v44 + 2) + 1, 1, v44);
            *&v34[v39] = v44;
          }

          v47 = *(v44 + 2);
          v46 = *(v44 + 3);
          if (v47 >= v46 >> 1)
          {
            v44 = sub_257BFCEF4((v46 > 1), v47 + 1, 1, v44);
          }

          *(v44 + 2) = v47 + 1;
          v44[v47 + 32] = v40;
          v34 = v58;
          *&v58[v39] = v44;
          swift_endAccess();
        }

        v6 += 2;
        --v38;
      }

      while (v38);
    }

    v48 = *&v34[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_tableView];
    [v48 setDataSource_];
    [v48 setDelegate_];
    sub_257BD2C2C(0, &qword_27F8F5560);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v50 = sub_257ECF4C0();
    [v48 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v50];

    [v48 setTranslatesAutoresizingMaskIntoConstraints_];
    v51 = [v34 view];
    if (v51)
    {
      v52 = v51;
      [v51 addSubview_];

      v53 = [v34 view];
      v6 = v55;
      if (v53)
      {
        v54 = v53;

        sub_257EB6FD8(v54, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

        return;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }
}

void sub_257C001B4(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 navigationItem];
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_257ECF4C0();
  v7 = sub_257ECF4C0();
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  if (!v8)
  {
    sub_257ECF500();
    v8 = sub_257ECF4C0();
  }

  [v3 setTitle_];
}

id sub_257C00454(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_tableView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 systemYellowColor];
  [v10 setTintColor_];

  [v10 setClipsToBounds_];
  *&v3[v7] = v10;
  *&v3[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v12 = &v3[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_delegate];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  if (a2)
  {
    v13 = sub_257ECF4C0();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v3;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v13, a3);

  return v14;
}

id sub_257C00624(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_tableView;
  v5 = [objc_allocWithZone(MEMORY[0x277D75B40]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 systemYellowColor];
  [v7 setTintColor_];

  [v7 setClipsToBounds_];
  *&v1[v4] = v7;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes] = MEMORY[0x277D84F90];
  v9 = &v1[OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_delegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithCoder_, a1);

  if (v10)
  {
  }

  return v10;
}

id sub_257C00874(void *a1)
{
  v2 = v1;
  v4 = sub_257ECF4C0();
  v5 = sub_257ECCE30();
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:v5];

  v7 = 0;
  if (!sub_257ECCEA0())
  {
    v7 = sub_257ECCE60();
  }

  v8 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes;
  swift_beginAccess();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = *(v2 + v8);
  if (v7 >= *(v9 + 16))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  LOBYTE(v7) = *(v9 + v7 + 32);
  v10 = [v6 textLabel];
  if (v10)
  {
    v11 = v10;
    sub_257BFEC80();
    v12 = sub_257ECF4C0();

    [v11 setText_];
  }

  if (qword_281544FE0 != -1)
  {
    goto LABEL_16;
  }

LABEL_8:
  swift_beginAccess();
  v13 = qword_2815447E0;

  if (v13 != -1)
  {
    v14 = swift_once();
  }

  MEMORY[0x28223BE20](v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
  sub_257ECFD50();

  v15 = sub_257C592D0(v7, v18);

  if (v15)
  {
    v16 = 3;
  }

  else
  {
    v16 = 0;
  }

  [v6 setAccessoryType_];
  return v6;
}

void sub_257C00CB4(void *a1)
{
  v2 = v1;
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v85 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECF120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_257ECCE30();
  v12 = [a1 cellForRowAtIndexPath_];

  if (!v12)
  {
    return;
  }

  v13 = sub_257ECCE30();
  [a1 deselectRowAtIndexPath:v13 animated:1];

  if (sub_257ECCEA0())
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_257ECCE60();
  }

  v15 = OBJC_IVAR____TtC16MagnifierSupport40DoorAttributeCustomizationViewController_doorAttributes;
  swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v16 = *(v2 + v15);
  if (v14 >= *(v16 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v79 = v8;
  v80 = v10;
  v82 = v5;
  v83 = v4;
  LODWORD(v2) = *(v16 + v14 + 32);
  if (qword_281544FE0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v81 = v7;
  v17 = qword_281548348;
  v18 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__selectedAttributes);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  v78 = v18;
  v21 = v18[2];
  v90 = v19;
  v91 = v20;
  v92 = v21;
  v22 = qword_2815447E0;

  if (v22 != -1)
  {
    v23 = swift_once();
  }

  v24 = qword_2815447E8;
  MEMORY[0x28223BE20](v23);
  *(&v74 - 2) = &v90;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5A90);
  v25 = 0;
  sub_257ECFD50();

  v26 = v94;
  v27 = sub_257C592D0(v2, v94);
  v84 = v24;
  if (v27)
  {
    v75 = 0;
    v76 = v17;
    v28 = v12;
    v29 = *(v26 + 16);
    if (v29)
    {
      v30 = (v26 + 32);
      v31 = MEMORY[0x277D84F90];
      do
      {
        v35 = *v30++;
        v34 = v35;
        if (v35 != v2)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v31;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_257BF2764(0, *(v31 + 16) + 1, 1);
            v31 = v90;
          }

          v33 = *(v31 + 16);
          v32 = *(v31 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_257BF2764((v32 > 1), v33 + 1, 1);
            v31 = v90;
          }

          *(v31 + 16) = v33 + 1;
          *(v31 + v33 + 32) = v34;
        }

        --v29;
      }

      while (v29);
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    sub_257ECC3F0();
    v12 = v28;
    [v28 setAccessoryType_];
    v17 = v76;
    v25 = v75;
  }

  else
  {
    [v12 setAccessoryType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5AA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = v2;
    v90 = v26;
    sub_257EB0628(inited);
    v31 = v90;
  }

  v38 = v17 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__doorDetectionAttributes;
  v39 = (v79 + 8);
  if (*(v31 + 16))
  {
    swift_beginAccess();
    LOBYTE(v94) = 1;
  }

  else
  {
    swift_beginAccess();
    LOBYTE(v94) = 0;
  }

  v40 = v80;
  v41 = sub_257ECF110();
  MEMORY[0x28223BE20](v41);
  *(&v74 - 2) = &v94;
  *(&v74 - 1) = v38;
  sub_257ECFD40();
  (*v39)(v40, v81);
  swift_endAccess();
  v42 = v85;
  sub_257ECD420();

  v43 = sub_257ECDA20();
  v44 = sub_257ECFBD0();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v90 = v46;
    *v45 = 136315138;
    v47 = MEMORY[0x259C72340](v31, &type metadata for DoorAttribute);
    v81 = v25;
    v48 = v12;
    v49 = v42;
    v50 = v17;
    v52 = v51;

    v53 = sub_257BF1FC8(v47, v52, &v90);
    v17 = v50;

    *(v45 + 4) = v53;
    _os_log_impl(&dword_257BAC000, v43, v44, "New attributes: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x259C74820](v46, -1, -1);
    MEMORY[0x259C74820](v45, -1, -1);

    v54 = v49;
    v12 = v48;
    (*(v82 + 8))(v54, v83);
  }

  else
  {

    (*(v82 + 8))(v42, v83);
  }

  sub_257D52CC8(v31);

  v55 = swift_beginAccess();
  v56 = v17[16];
  v57 = v17[17];
  v58 = v17[18];
  v90 = v17[15];
  v91 = v56;
  v92 = v57;
  v93 = v58;
  MEMORY[0x28223BE20](v55);
  *(&v74 - 2) = &v90;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D70);
  sub_257ECFD50();

  v59 = v87;
  if (v87)
  {
    v85 = v12;
    v60 = v86;
    v61 = swift_beginAccess();
    v62 = v17[12];
    v63 = v17[13];
    v86 = v17[11];
    v87 = v62;
    v88 = v63;
    MEMORY[0x28223BE20](v61);
    *(&v74 - 2) = &v86;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4D90);
    sub_257ECFD50();

    v64 = v89;
    if (*(v89 + 16))
    {
      v65 = sub_257C03F6C(v60, v59);
      v67 = v66;

      v68 = v85;
      if (v67)
      {
        v69 = *(*(v64 + 56) + 296 * v65 + 168);

        v71 = v78[1];
        v72 = v78[2];
        v86 = *v78;
        v87 = v71;
        v88 = v72;
        MEMORY[0x28223BE20](v70);
        *(&v74 - 2) = &v86;

        sub_257ECFD50();

        v73 = sub_257D7430C(v69, v89);

        if ((v73 & 1) == 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v86) = 1;
          sub_257ECC3F0();
          sub_257ECDD70();
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for DoorAttribute(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DoorAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_257C019A8()
{
  result = qword_27F8F5A80;
  if (!qword_27F8F5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5A80);
  }

  return result;
}

unint64_t sub_257C01A00()
{
  result = qword_27F8F5A88;
  if (!qword_27F8F5A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F8F5A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5A88);
  }

  return result;
}

uint64_t sub_257C01A64(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_257C670CC(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_257ED05F0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 4);
      do
      {
        v11 = LOBYTE(v2[2 * v9 + 4]);
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FAEF0);
      v7 = sub_257ECF850();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_257C01BC0(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_257C01BC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_257C66E20(v9);
      v9 = result;
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_257C02148((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v16 = *v13;
      v15 = v13 + 32;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 16;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 16 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = *(v24 + 1);
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_257BFCB00(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_257BFCB00((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
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
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v42 + 40];
        sub_257C02148((*a3 + 16 * v81), (*a3 + 16 * *&v9[16 * v42 + 32]), (*a3 + 16 * v82), v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_257C66E20(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_257C66D94(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v8 - 16;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 16 * v8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v8;
      v30 += 16;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 3);
    *(v34 + 1) = *v34;
    *v34 = v32;
    *(v34 + 1) = v35;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_257C02148(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, char *a4)
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
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 16);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

unint64_t sub_257C0234C(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_257C0235C()
{
  result = qword_2815458D8;
  if (!qword_2815458D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815458D8);
  }

  return result;
}

uint64_t sub_257C023CC()
{
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = sub_257ECF500();
  return v5;
}

uint64_t sub_257C024BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_257C02558(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_257C025A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257C02618@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECEA70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_257ECC8C0();
  MEMORY[0x28223BE20](v6 - 8);
  sub_257C02858(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_257ECEAE0();
  v10 = v9;
  v12 = v11;
  v24 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v25 = v26;
  v14 = MFReaderFont.rawValue.getter();
  v16 = v15;
  (*(v3 + 104))(v5, *MEMORY[0x277CE0AC0], v2);
  MEMORY[0x259C71520](v14, v16, v5, 17.0);

  (*(v3 + 8))(v5, v2);
  v17 = sub_257ECEAC0();
  v19 = v18;
  LOBYTE(v16) = v20;
  v22 = v21;

  sub_257C0300C(v8, v10, v12 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_257C02858@<X0>(uint64_t a1@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC0);
  v3 = MEMORY[0x28223BE20](v49);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC8);
  MEMORY[0x28223BE20](v47);
  v50 = &v40 - v6;
  v7 = sub_257ECC8C0();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v53 = sub_257ECC8A0();
  v55 = *(v53 - 8);
  v16 = MEMORY[0x28223BE20](v53);
  v51 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v54 = &v40 - v18;
  v19 = sub_257ECC950();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = *v1;

  sub_257ECC940();
  sub_257ECC8D0();
  v21 = *(v1 + 40);
  v22 = sub_257D428AC();
  if (v21)
  {
    v23 = sub_257ECEDA0();

    v57[0] = v23;
    v45 = sub_257C0301C();
    result = sub_257ECC8E0();
    if (*(v1 + 8))
    {
      swift_getKeyPath();
      v57[0] = v20;
      sub_257C03070(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
      sub_257ECCEE0();

      if ((*(v20 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16) & 1) == 0 && (*(v20 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange) ^ *(v20 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 8)) >= 0x4000)
      {
        v52 = *(v52 + 16);
        (v52)(v9, a1, v7);
        v44 = sub_257C03070(&qword_27F8F5AE8, MEMORY[0x277CC8C40]);
        sub_257ECC8B0();
        v25 = v53;
        v43 = *(v55 + 48);
        if (v43(v15, 1, v53) == 1)
        {
          return sub_257BE4084(v15, &qword_27F8F5AD0);
        }

        else
        {
          v41 = *(v55 + 32);
          v42 = v55 + 32;
          (v41)(v54, v15, v25);
          (v52)(v9, a1, v7);
          sub_257ECC8B0();
          v26 = v25;
          if (v43(v13, 1, v25) == 1)
          {
            (*(v55 + 8))(v54, v25);
            return sub_257BE4084(v13, &qword_27F8F5AD0);
          }

          else
          {
            v27 = v51;
            v41();
            sub_257C03070(&qword_27F8F5AF0, MEMORY[0x277CC8C20]);
            v28 = v54;
            result = sub_257ECF440();
            if (result)
            {
              v29 = v28;
              v30 = v55;
              v31 = *(v55 + 16);
              v32 = v46;
              v31(v46, v29, v26);
              v33 = v49;
              v31((v32 + *(v49 + 48)), v27, v26);
              v34 = v48;
              sub_257C030B8(v32, v48);
              v52 = *(v33 + 48);
              v35 = v41;
              (v41)(v50, v34, v26);
              v36 = *(v30 + 8);
              v36(v34 + v52, v26);
              sub_257C03128(v32, v34);
              v37 = v50;
              (v35)(&v50[*(v47 + 36)], v34 + *(v33 + 48), v26);
              v36(v34, v26);
              v38 = sub_257D428AC();
              sub_257C03198();
              v39 = sub_257ECC8F0();
              v56 = v38;
              sub_257ECC960();
              v39(v57, 0);
              sub_257BE4084(v37, &qword_27F8F5AC8);
              v36(v51, v26);
              return (v36)(v54, v26);
            }

            else
            {
              __break(1u);
            }
          }
        }
      }
    }
  }

  else
  {
    v57[0] = v22;
    sub_257C0301C();
    return sub_257ECC8E0();
  }

  return result;
}

uint64_t sub_257C0300C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_257C0301C()
{
  result = qword_27F8F5AD8;
  if (!qword_27F8F5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5AD8);
  }

  return result;
}

uint64_t sub_257C03070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257C030B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257C03128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5AC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257C03198()
{
  result = qword_27F8F5AF8;
  if (!qword_27F8F5AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5AF8);
  }

  return result;
}

uint64_t MAGCaptureEventHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_257EC6E08(&unk_257EDB6B8, v10, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t MAGCaptureEventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BE8790(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_257C0334C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_257BE3DE0;

  return v7(a2);
}

uint64_t sub_257C03440(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return sub_257C0334C(a1, a2, v6);
}

Swift::Void __swiftcall MAGCaptureEventHandler.unregister(_:)(Swift::String a1)
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
      sub_257C093FC(&qword_27F8F5720);
    }

    sub_257C0746C(v5, v9);
    *(v2 + 16) = v9;
  }

  swift_endAccess();
}

uint64_t MAGCaptureEventHandler.send(_:)(_OWORD *a1)
{
  *(v2 + 88) = v1;
  v4 = sub_257ECDA30();
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = *a1;

  return MEMORY[0x2822009F8](sub_257C036BC, 0, 0);
}

uint64_t sub_257C036BC()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 136) = v2;
  v3 = *(v2 + 32);
  *(v0 + 200) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);

  if (v6)
  {
    v8 = 0;
LABEL_8:
    *(v0 + 144) = v6;
    *(v0 + 152) = v8;
    v10 = (v8 << 10) | (16 * __clz(__rbit64(v6)));
    v11 = (*(v7 + 48) + v10);
    *(v0 + 160) = *v11;
    *(v0 + 168) = v11[1];
    v12 = (*(v7 + 56) + v10);
    v13 = *v12;
    *(v0 + 176) = v12[1];
    *(v0 + 64) = *(v0 + 120);

    sub_257ECC3F0();
    v17 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_257C038D8;

    return v17();
  }

  else
  {
    v9 = 0;
    while (((63 - v5) >> 6) - 1 != v9)
    {
      v8 = v9 + 1;
      v6 = *(v7 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_257C038D8()
{
  *(*v1 + 192) = v0;

  if (v0)
  {

    v2 = sub_257C03BEC;
  }

  else
  {

    v2 = sub_257C03A04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_257C03A04()
{
  v1 = *(v0 + 152);
  v2 = (*(v0 + 144) - 1) & *(v0 + 144);
  if (v2)
  {
    v3 = *(v0 + 136);
LABEL_7:
    *(v0 + 144) = v2;
    *(v0 + 152) = v1;
    v5 = (v1 << 10) | (16 * __clz(__rbit64(v2)));
    v6 = (*(v3 + 48) + v5);
    *(v0 + 160) = *v6;
    *(v0 + 168) = v6[1];
    v7 = (*(v3 + 56) + v5);
    v8 = *v7;
    *(v0 + 176) = v7[1];
    *(v0 + 64) = *(v0 + 120);

    sub_257ECC3F0();
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_257C038D8;

    v11();
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 136);
      if (v4 >= (((1 << *(v0 + 200)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v10 = *(v0 + 8);

    v10();
  }
}

uint64_t sub_257C03BEC()
{
  v32 = v0;
  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];
  sub_257ECD4F0();

  sub_257BEE3F8(v3, v2);
  v4 = v1;
  v5 = sub_257ECDA20();
  v6 = sub_257ECFBE0();

  sub_257BEE3D0(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[13];
    v26 = v0[14];
    v25 = v0[12];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315650;
    v14 = sub_257BF1FC8(v8, v7, &v27);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_257ED02D0();

    v28 = 0x2065727574706143;
    v29 = 0xEF203A746E657645;
    v30 = v10;
    v31 = v9;
    v15 = MAGCaptureEvent.CaptureEventType.description.getter();
    MEMORY[0x259C72150](v15);

    v16 = sub_257BF1FC8(v28, v29, &v27);

    *(v12 + 14) = v16;
    *(v12 + 22) = 2080;
    swift_getErrorValue();
    v17 = sub_257ED0720();
    v19 = sub_257BF1FC8(v17, v18, &v27);

    *(v12 + 24) = v19;
    _os_log_impl(&dword_257BAC000, v5, v6, "Handler=%s error handling event=%s. Error=%s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v13, -1, -1);
    MEMORY[0x259C74820](v12, -1, -1);

    (*(v11 + 8))(v26, v25);
  }

  else
  {
    v21 = v0[13];
    v20 = v0[14];
    v22 = v0[12];

    (*(v21 + 8))(v20, v22);
  }

  swift_willThrow();

  v23 = v0[1];

  return v23();
}

uint64_t MAGCaptureEventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_257C03F28(uint64_t a1)
{
  v2 = sub_257ED0260();

  return sub_257C046B4(a1, v2);
}

unint64_t sub_257C03F6C(uint64_t a1, uint64_t a2)
{
  sub_257ED07B0();
  sub_257ECF5D0();
  v4 = sub_257ED0800();

  return sub_257C0477C(a1, a2, v4);
}

unint64_t sub_257C04010(uint64_t a1)
{
  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v2 = sub_257ED0800();

  return sub_257C06578(a1, v2);
}

unint64_t sub_257C040A0(uint64_t a1)
{
  v2 = sub_257ED07A0();

  return sub_257C04DB0(a1, v2);
}

unint64_t sub_257C04110(uint64_t a1)
{
  sub_257ED07B0();
  type metadata accessor for CFString(0);
  sub_257C09E2C(&qword_27F8F5B00, type metadata accessor for CFString);
  sub_257ECD1F0();
  v2 = sub_257ED0800();

  return sub_257C05348(a1, v2);
}

unint64_t sub_257C041C4(unsigned __int8 a1)
{
  sub_257ED07B0();
  MEMORY[0x259C732E0](a1);
  v2 = sub_257ED0800();
  return sub_257C05454(a1, v2);
}

unint64_t sub_257C04244(uint64_t a1)
{
  sub_257ECF500();
  v2 = sub_257ECF4C0();

  sub_257ECF500();
  sub_257ED07B0();
  sub_257ECF5D0();
  v3 = sub_257ED0800();

  return sub_257C057F4(a1, v3);
}

unint64_t sub_257C042F8(uint64_t a1)
{
  sub_257ECCCF0();
  sub_257C09E2C(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  v2 = sub_257ECF3F0();

  return sub_257C05978(a1, v2);
}

unint64_t sub_257C04390(unsigned __int8 a1)
{
  sub_257ED07B0();
  sub_257ECF5D0();

  v2 = sub_257ED0800();

  return sub_257C05B38(a1, v2);
}

uint64_t sub_257C0449C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_257ED07B0();
  a2(v5);
  sub_257ECF5D0();

  v6 = sub_257ED0800();

  return a3(a1, v6);
}

uint64_t sub_257C045A4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257C09E2C(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v3 = sub_257ED0800();

  return a2(a1, v3);
}

unint64_t sub_257C046B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_257C09CB4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x259C72D90](v9, a1);
      sub_257C09D10(v9);
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

unint64_t sub_257C0477C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_257ED0640())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_257C04834(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x746C7561666564;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6544656C706F6570;
          v7 = 0xEF6E6F6974636574;
          break;
        case 2:
          v10 = 1919905636;
          goto LABEL_19;
        case 3:
          v8 = 0xD000000000000013;
          v7 = 0x8000000257EF74D0;
          break;
        case 4:
          v8 = 0x7061436567616D69;
          v7 = 0xEC0000006E6F6974;
          break;
        case 5:
          v8 = 0x646E41746E696F70;
          v7 = 0xED00006B61657053;
          break;
        case 6:
          v10 = 1954047348;
LABEL_19:
          v8 = v10 | 0x6574654400000000;
          v7 = 0xED00006E6F697463;
          break;
        case 7:
          v8 = 0x746E656D75636F64;
          v9 = 1835102790;
          goto LABEL_15;
        case 8:
          v8 = 0xD000000000000012;
          v7 = 0x8000000257EF7520;
          break;
        case 9:
          v8 = 0x7061546B636162;
          break;
        case 0xA:
          v8 = 0x65636E756F6E6E61;
          v7 = 0xEC000000746E656DLL;
          break;
        case 0xB:
          v8 = 0x6F72506C65646F6DLL;
          v9 = 1936942435;
LABEL_15:
          v7 = v9 | 0xEF676E6900000000;
          break;
        case 0xC:
          v8 = 0x6E616353706F6F6CLL;
          v7 = 0xEC000000676E696ELL;
          break;
        case 0xD:
          v8 = 0x65636E6164697567;
          v7 = 0xEF73736563637553;
          break;
        case 0xE:
          v8 = 0x65636E6164697567;
          v7 = 0xEF6572756C696146;
          break;
        case 0xF:
          v8 = 0x75476E4F6B636F6CLL;
          v7 = 0xEE0065636E616469;
          break;
        case 0x10:
          v8 = 0x4766664F6B636F6CLL;
          v7 = 0xEF65636E61646975;
          break;
        default:
          break;
      }

      v11 = 0xE700000000000000;
      v12 = 0x746C7561666564;
      switch(a1)
      {
        case 1:
          v11 = 0xEF6E6F6974636574;
          if (v8 == 0x6544656C706F6570)
          {
            goto LABEL_53;
          }

          goto LABEL_54;
        case 2:
          v19 = 1919905636;
          goto LABEL_48;
        case 3:
          v11 = 0x8000000257EF74D0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 4:
          v17 = 0x7061436567616D69;
          v18 = 1852795252;
          goto LABEL_32;
        case 5:
          v20 = 0x646E41746E696F70;
          v21 = 0x6B61657053;
          goto LABEL_49;
        case 6:
          v19 = 1954047348;
LABEL_48:
          v20 = v19 | 0x6574654400000000;
          v21 = 0x6E6F697463;
LABEL_49:
          v11 = v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v20)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 7:
          v15 = 0x746E656D75636F64;
          v16 = 1835102790;
          goto LABEL_42;
        case 8:
          v11 = 0x8000000257EF7520;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 9:
          if (v8 != 0x7061546B636162)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 10:
          v12 = 0x65636E756F6E6E61;
          v11 = 0xEC000000746E656DLL;
          goto LABEL_52;
        case 11:
          v15 = 0x6F72506C65646F6DLL;
          v16 = 1936942435;
LABEL_42:
          v11 = v16 | 0xEF676E6900000000;
          if (v8 != v15)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 12:
          v17 = 0x6E616353706F6F6CLL;
          v18 = 1735289198;
LABEL_32:
          v11 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v17)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 13:
          v11 = 0xEF73736563637553;
          if (v8 != 0x65636E6164697567)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 14:
          v13 = 0x65636E6164697567;
          v14 = 0x72756C696146;
          goto LABEL_27;
        case 15:
          v11 = 0xEE0065636E616469;
          if (v8 != 0x75476E4F6B636F6CLL)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        case 16:
          v13 = 0x4766664F6B636F6CLL;
          v14 = 0x636E61646975;
LABEL_27:
          v11 = v14 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
          if (v8 != v13)
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        default:
LABEL_52:
          if (v8 != v12)
          {
            goto LABEL_54;
          }

LABEL_53:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_54:
          v22 = sub_257ED0640();

          if (v22)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_257C04DB0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_257C04E1C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEA0000000000726FLL;
      v8 = 0x746361466D6F6F7ALL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x8000000257EF7780;
          break;
        case 2:
          v8 = 0x4379616C70736964;
          v7 = 0xEF74736172746E6FLL;
          break;
        case 3:
          v7 = 0xE700000000000000;
          v8 = 0x737265746C6966;
          break;
        case 4:
          v7 = 0xEA00000000007468;
          v8 = 0x67696C6873616C66;
          break;
        case 5:
          v8 = 0x6544656C706F6570;
          v7 = 0xEF6E6F6974636574;
          break;
        case 6:
          v8 = 0x636F4C7375636F66;
          v7 = 0xE90000000000006BLL;
          break;
        case 7:
          v8 = 0x79546172656D6163;
          v7 = 0xEA00000000006570;
          break;
        case 8:
          v8 = 0x4D65727574706163;
          v7 = 0xEB0000000065646FLL;
          break;
        case 9:
          v8 = 0x6F69746365746564;
          v7 = 0xED000065646F4D6ELL;
          break;
        case 0xA:
          v9 = 1919905636;
          goto LABEL_18;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x8000000257EF74D0;
          break;
        case 0xC:
          v8 = 0x7061436567616D69;
          v7 = 0xEC0000006E6F6974;
          break;
        case 0xD:
          v7 = 0xEA00000000006B61;
          v8 = 0x657053746E696F70;
          break;
        case 0xE:
          v9 = 1954047348;
LABEL_18:
          v8 = v9 | 0x6574654400000000;
          v7 = 0xED00006E6F697463;
          break;
        case 0xF:
          v7 = 0xEA00000000007365;
          v8 = 0x6974697669746361;
          break;
        default:
          break;
      }

      v10 = 0xEA0000000000726FLL;
      v11 = 0x746361466D6F6F7ALL;
      switch(a1)
      {
        case 1:
          v10 = 0x8000000257EF7780;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        case 2:
          v10 = 0xEF74736172746E6FLL;
          if (v8 != 0x4379616C70736964)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 3:
          v10 = 0xE700000000000000;
          if (v8 != 0x737265746C6966)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 4:
          v10 = 0xEA00000000007468;
          if (v8 != 0x67696C6873616C66)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 5:
          v10 = 0xEF6E6F6974636574;
          if (v8 != 0x6544656C706F6570)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 6:
          v10 = 0xE90000000000006BLL;
          if (v8 != 0x636F4C7375636F66)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 7:
          v10 = 0xEA00000000006570;
          if (v8 != 0x79546172656D6163)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 8:
          v10 = 0xEB0000000065646FLL;
          if (v8 != 0x4D65727574706163)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 9:
          v12 = 0x6F69746365746564;
          v13 = 0x65646F4D6ELL;
          goto LABEL_31;
        case 10:
          v11 = 0x65746544726F6F64;
          v10 = 0xED00006E6F697463;
          goto LABEL_48;
        case 11:
          v10 = 0x8000000257EF74D0;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 12:
          v10 = 0xEC0000006E6F6974;
          if (v8 != 0x7061436567616D69)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 13:
          v10 = 0xEA00000000006B61;
          if (v8 != 0x657053746E696F70)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 14:
          v12 = 0x6574654474786574;
          v13 = 0x6E6F697463;
LABEL_31:
          v10 = v13 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          if (v8 != v12)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        case 15:
          v10 = 0xEA00000000007365;
          if (v8 != 0x6974697669746361)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        default:
LABEL_48:
          if (v8 != v11)
          {
            goto LABEL_50;
          }

LABEL_49:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_50:
          v14 = sub_257ED0640();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_257C05348(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_257C09E2C(&qword_27F8F5B00, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_257ECD1E0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_257C05454(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_257C054C4(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v31 = type metadata accessor for DetectedTextBlock();
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  v34 = v2 + 64;
  if (((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return v8;
  }

  v9 = *(v4 + 72);
  v32 = ~v7;
  v33 = v9;
  while (1)
  {
    sub_257C09D64(*(v2 + 48) + v33 * v8, v6, type metadata accessor for DetectedTextBlock);
    result = sub_257ECCCC0();
    if ((result & 1) == 0)
    {
      goto LABEL_4;
    }

    v11 = v31[5];
    v12 = *&v6[v11];
    v13 = *(v35 + v11);
    if (!v12)
    {
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }

    if (!v13)
    {
      goto LABEL_4;
    }

    v14 = *(v12 + 16);
    if (v14 != *(v13 + 16))
    {
      goto LABEL_4;
    }

    if (v14 && v12 != v13)
    {
      break;
    }

LABEL_14:
    if (CGRectEqualToRect(*&v6[v31[6]], *(v35 + v31[6])) && *&v6[v31[7]] == *(v35 + v31[7]) && v6[v31[8]] == *(v35 + v31[8]))
    {
      v16 = v31[9];
      v17 = *&v6[v16];
      v18 = *(v35 + v16);
      if (v17)
      {
        if (v18)
        {
          sub_257BD2C2C(0, &qword_27F8F5B20);
          v19 = v18;
          v20 = v17;
          v21 = sub_257ECFF50();

          if (v21)
          {
LABEL_35:
            sub_257C09DCC(v6, type metadata accessor for DetectedTextBlock);
            return v8;
          }
        }
      }

      else if (!v18)
      {
        goto LABEL_35;
      }
    }

LABEL_4:
    sub_257C09DCC(v6, type metadata accessor for DetectedTextBlock);
    v8 = (v8 + 1) & v32;
    if (((*(v34 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return v8;
    }
  }

  v22 = (v12 + 56);
  v23 = (v13 + 56);
  while (v14)
  {
    result = *(v22 - 3);
    v24 = *(v22 - 1);
    v25 = *v22;
    v27 = *(v23 - 1);
    v26 = *v23;
    if (result != *(v23 - 3) || *(v22 - 2) != *(v23 - 2))
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v24 != v27 || v25 != v26)
    {
      result = sub_257ED0640();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v22 += 4;
    v23 += 4;
    if (!--v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_257C057F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v16 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + 8 * v4);
      sub_257ECF500();
      v6 = v5;
      v7 = sub_257ECF4C0();

      sub_257ECF500();
      v8 = sub_257ECF4C0();

      v9 = sub_257ECF500();
      v11 = v10;
      if (v9 == sub_257ECF500() && v11 == v12)
      {
        break;
      }

      v14 = sub_257ED0640();

      if ((v14 & 1) == 0)
      {
        v4 = (v4 + 1) & v16;
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

unint64_t sub_257C05978(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_257C09E2C(&qword_27F8F57B8, MEMORY[0x277CC95F0]);
      v15 = sub_257ECF450();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_257C05B38(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 1954047348 : 0x727574696E727566;
      v8 = v6 == 2 ? 0xE400000000000000 : 0xE900000000000065;
      v9 = *(*(v2 + 48) + v4) ? 0x73726F6F64 : 0x656C706F6570;
      v10 = *(*(v2 + 48) + v4) ? 0xE500000000000000 : 0xE600000000000000;
      v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v2 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 1954047348 : 0x727574696E727566;
      v14 = v5 == 2 ? 0xE400000000000000 : 0xE900000000000065;
      v15 = v5 ? 0x73726F6F64 : 0x656C706F6570;
      v16 = v5 ? 0xE500000000000000 : 0xE600000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_257ED0640();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
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

unint64_t sub_257C05CE0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE00686769486563;
      v8 = 0x6E61747369447861;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6E61747369447861;
          v7 = 0xED0000776F4C6563;
          break;
        case 2:
          v8 = 0xD000000000000011;
          v7 = 0x8000000257EF78F0;
          break;
        case 3:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7910;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7930;
          break;
        case 5:
          v8 = 0x74736944726F6F64;
          v7 = 0xEF776F4C65636E61;
          break;
        case 6:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7960;
          break;
        case 7:
          v8 = 0x6F69746365746564;
          v7 = 0xEF6465737561506ELL;
          break;
        case 8:
          v8 = 0xD000000000000010;
          v7 = 0x8000000257EF7990;
          break;
        case 9:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000257EF79B0;
          break;
        case 0xA:
          v8 = 0xD00000000000001DLL;
          v7 = 0x8000000257EF79D0;
          break;
        case 0xB:
          v8 = 0xD000000000000014;
          v7 = 0x8000000257EF7760;
          break;
        case 0xC:
          v8 = 0xD00000000000001ALL;
          v7 = 0x8000000257EF79F0;
          break;
        case 0xD:
          v8 = 0xD000000000000017;
          v7 = 0x8000000257EF7A10;
          break;
        case 0xE:
          v8 = 0x6F72506C65646F6DLL;
          v7 = 0xEF676E6973736563;
          break;
        case 0xF:
          v8 = 0x6E616353706F6F6CLL;
          v7 = 0xEC000000676E696ELL;
          break;
        case 0x10:
          v8 = 0x65636E6164697567;
          v7 = 0xEF73736563637553;
          break;
        case 0x11:
          v8 = 0x65636E6164697567;
          v9 = 0x72756C696146;
          goto LABEL_23;
        case 0x12:
          v8 = 0x75476E4F6B636F6CLL;
          v7 = 0xEE0065636E616469;
          break;
        case 0x13:
          v8 = 0x4766664F6B636F6CLL;
          v9 = 0x636E61646975;
LABEL_23:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
          break;
        default:
          break;
      }

      v10 = 0x6E61747369447861;
      v11 = 0xEE00686769486563;
      switch(a1)
      {
        case 1:
          v11 = 0xED0000776F4C6563;
          if (v8 == 0x6E61747369447861)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          v11 = 0x8000000257EF78F0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 3:
          v11 = 0x8000000257EF7910;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v11 = 0x8000000257EF7930;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v11 = 0xEF776F4C65636E61;
          if (v8 != 0x74736944726F6F64)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v11 = 0x8000000257EF7960;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v11 = 0xEF6465737561506ELL;
          if (v8 != 0x6F69746365746564)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v10 = 0xD000000000000010;
          v11 = 0x8000000257EF7990;
          goto LABEL_59;
        case 9:
          v11 = 0x8000000257EF79B0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v11 = 0x8000000257EF79D0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v11 = 0x8000000257EF7760;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v11 = 0x8000000257EF79F0;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v11 = 0x8000000257EF7A10;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v11 = 0xEF676E6973736563;
          if (v8 != 0x6F72506C65646F6DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v11 = 0xEC000000676E696ELL;
          if (v8 != 0x6E616353706F6F6CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v11 = 0xEF73736563637553;
          if (v8 != 0x65636E6164697567)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v12 = 0x65636E6164697567;
          v13 = 0x72756C696146;
          goto LABEL_65;
        case 18:
          v11 = 0xEE0065636E616469;
          if (v8 != 0x75476E4F6B636F6CLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v12 = 0x4766664F6B636F6CLL;
          v13 = 0x636E61646975;
LABEL_65:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEF65000000000000;
          if (v8 != v12)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
LABEL_59:
          if (v8 != v10)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_61:
          v14 = sub_257ED0640();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_257C06350(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SpatialTextBlock() - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_257C09D64(*(v2 + 48) + v12 * v10, v8, type metadata accessor for SpatialTextBlock);
      v13 = _s16MagnifierSupport16SpatialTextBlockV2eeoiySbAC_ACtFZ_0(v8, a1);
      sub_257C09DCC(v8, type metadata accessor for SpatialTextBlock);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_257C064AC(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_257BD2C2C(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_257ECFF50();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_257C06578(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_257ECF500();
      v8 = v7;
      if (v6 == sub_257ECF500() && v8 == v9)
      {
        break;
      }

      v11 = sub_257ED0640();

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

uint64_t sub_257C0667C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_257C06A58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v6);
      result = sub_257ED07A0();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v12 + 8 * v3);
          if (v3 != v6 || v17 >= v13 + 1)
          {
            *v17 = *v13;
          }

          v18 = *(a2 + 56);
          v19 = v18 + 56 * v3;
          v20 = (v18 + 56 * v6);
          if (v3 != v6 || v19 >= v20 + 56)
          {
            v9 = *v20;
            v10 = v20[1];
            v11 = v20[2];
            *(v19 + 48) = *(v20 + 6);
            *(v19 + 16) = v10;
            *(v19 + 32) = v11;
            *v19 = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_257C06BDC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_257ED07A0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_257ECCCF0() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_257C06D88(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();

      sub_257ECF5D0();
      v9 = sub_257ED0800();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 296 * v3);
        v15 = (v14 + 296 * v6);
        if (v3 != v6 || result >= v15 + 296)
        {
          result = memmove(result, v15, 0x128uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_257C06F3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_257ED07B0();
      MEMORY[0x259C732E0](v9);
      result = sub_257ED0800();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 4 * v3);
        v16 = (v14 + 4 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_257C070D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_257C0746C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();

      sub_257ECF5D0();
      v9 = sub_257ED0800();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_257C0761C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_257ED01A0() + 1) & ~v5;
    do
    {
      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_257C079B8(int64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for SpatialTextBlock();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = (sub_257ED01A0() + 1) & ~v7;
    v11 = *(v4 + 72);
    v28 = v11;
    v29 = a2 + 64;
    do
    {
      v12 = v11 * v8;
      v13 = v30;
      sub_257C09D64(*(a2 + 48) + v11 * v8, v30, type metadata accessor for SpatialTextBlock);
      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257C09E2C(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      sub_257ECF400();
      v14 = sub_257ED0800();
      sub_257C09DCC(v13, type metadata accessor for SpatialTextBlock);
      v15 = v14 & v9;
      if (a1 >= v10)
      {
        if (v15 < v10)
        {
          v6 = v29;
          goto LABEL_4;
        }

        if (a1 < v15)
        {
          goto LABEL_3;
        }
      }

      else if (v15 < v10 && a1 < v15)
      {
LABEL_3:
        v6 = v29;
LABEL_4:
        v11 = v28;
        goto LABEL_5;
      }

      v11 = v28;
      if (v28 * a1 < v12 || *(a2 + 48) + v28 * a1 >= (*(a2 + 48) + v12 + v28))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v28 * a1 != v12)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for DetectedTextBlock() - 8) + 72);
      v18 = v17 * a1;
      v19 = v16 + v17 * a1;
      v20 = v17 * v8;
      v21 = v16 + v17 * v8 + v17;
      v22 = v18 < v20 || v19 >= v21;
      v6 = v29;
      if (v22)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_25:
        a1 = v8;
        goto LABEL_5;
      }

      a1 = v8;
      if (v18 != v20)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_25;
      }

LABEL_5:
      v8 = (v8 + 1) & v9;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

void *sub_257C07D0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D0);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_257C07E70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B38);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_257C07FD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5758);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 8 * v17;
        v19 = *(*(v2 + 48) + 8 * v17);
        v17 *= 56;
        v20 = *(v2 + 56) + v17;
        v21 = *v20;
        v22 = *(v20 + 8);
        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        *(*(v4 + 48) + v18) = v19;
        v27 = *(v4 + 56) + v17;
        *v27 = v21;
        *(v27 + 8) = v22;
        *(v27 + 16) = v24;
        *(v27 + 24) = v23;
        *(v27 + 32) = v25;
        *(v27 + 40) = v26;
        v28 = v23;

        v29 = v22;
        result = v24;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_257C08174()
{
  v1 = v0;
  v29 = sub_257ECCCF0();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5768);
  v3 = *v0;
  v4 = sub_257ED0460();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_257C083F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55A0);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_257C09C58(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 296 * v16;
      memcpy(__dst, (*(v2 + 56) + 296 * v16), 0x128uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x128uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_257C085AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5688);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_257C086F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5610);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_257C08870()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B08);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_257C089E0()
{
  v1 = v0;
  v2 = type metadata accessor for SpatialTextBlock();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DetectedTextBlock();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B30);
  v6 = *v0;
  v7 = sub_257ED0460();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_257C09D64(*(v6 + 48) + v23, v29, type metadata accessor for DetectedTextBlock);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_257C09D64(*(v6 + 56) + v25, v31, type metadata accessor for SpatialTextBlock);
        v26 = v33;
        sub_257BD584C(v22, *(v33 + 48) + v23, type metadata accessor for DetectedTextBlock);
        result = sub_257BD584C(v24, *(v26 + 56) + v25, type metadata accessor for SpatialTextBlock);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_257C08D10(uint64_t *a1)
{
  v3 = v1;
  v33 = sub_257ECCCF0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v5 = *v1;
  v6 = sub_257ED0460();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    v28 = v3;
    v29 = (v5 + 64);
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, v29, 8 * v9);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = v35;
        v22 = *(v35 + 72) * v20;
        v24 = v32;
        v23 = v33;
        (*(v35 + 16))(v32, *(v5 + 48) + v22, v33);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v34;
        (*(v21 + 32))(*(v34 + 48) + v22, v24, v23);
        *(*(v26 + 56) + 8 * v20) = v25;

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v3 = v28;
        v7 = v34;
        goto LABEL_21;
      }

      v19 = *(v29 + v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v3 = v7;
  }

  return result;
}

id sub_257C08F9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5658);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_257C09100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D8);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_257C0925C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5648);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_257C093FC(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_257ED0460();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = 16 * (v15 | (v9 << 6));
        v19 = (*(v3 + 48) + v18);
        v21 = *v19;
        v20 = v19[1];
        v22 = *(*(v3 + 56) + v18);
        v23 = (*(v5 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        *(*(v5 + 56) + v18) = v22;

        result = sub_257ECC3F0();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_257C0956C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5618);
  v2 = *v0;
  v3 = sub_257ED0460();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_257C096C8()
{
  v1 = v0;
  v2 = type metadata accessor for DetectedTextBlock();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SpatialTextBlock();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B10);
  v6 = *v0;
  v7 = sub_257ED0460();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_257C09D64(*(v6 + 48) + v23, v29, type metadata accessor for SpatialTextBlock);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_257C09D64(*(v6 + 56) + v25, v31, type metadata accessor for DetectedTextBlock);
        v26 = v33;
        sub_257BD584C(v22, *(v33 + 48) + v23, type metadata accessor for SpatialTextBlock);
        result = sub_257BD584C(v24, *(v26 + 56) + v25, type metadata accessor for DetectedTextBlock);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_257C099BC()
{
  v1 = v0;
  v2 = type metadata accessor for DetectedTextBlock();
  v28 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B18);
  v4 = *v0;
  v5 = sub_257ED0460();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_257C09D64(*(v4 + 48) + v21, v27, type metadata accessor for DetectedTextBlock);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        sub_257BD584C(v20, *(v29 + 48) + v21, type metadata accessor for DetectedTextBlock);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_257C09D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C09DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257C09E2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257C09EC8()
{
  sub_257C09F4C();
  if (v0 <= 0x3F)
  {
    sub_257C09FE0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257C09F4C()
{
  if (!qword_27F8F5B58)
  {
    type metadata accessor for MFReaderTextFormatterModel(255);
    sub_257C0DF1C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
    v0 = sub_257ECE180();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F5B58);
    }
  }
}

void sub_257C09FE0()
{
  if (!qword_27F8F5B68)
  {
    sub_257ECE1D0();
    v0 = sub_257ECDFE0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F5B68);
    }
  }
}

uint64_t sub_257C0A080(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257C0A0B8()
{
  sub_257C09FE0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_257C0A140@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_257ECE4D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_257BE401C(v2, &v14 - v9, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE1D0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_257C0A340@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECE1D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() whiteColor];
  v23 = sub_257ECED30();
  sub_257C0A140(v5);
  sub_257ECE1C0();
  v7 = *(v3 + 8);
  v7(v5, v2);
  sub_257ECE010();
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v22 = v30;
  v11 = v31;
  v21 = sub_257ECF060();
  v20 = v12;
  v13 = objc_opt_self();
  v14 = [v13 mainScreen];
  [v14 bounds];

  sub_257C0A140(v5);
  sub_257ECE1C0();
  v7(v5, v2);
  v15 = [v13 mainScreen];
  [v15 bounds];

  sub_257C0A140(v5);
  sub_257ECE1C0();
  v7(v5, v2);
  sub_257ECF060();
  sub_257ECE080();
  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  v16 = v23;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v16;
  *(a1 + 48) = 256;
  v17 = v20;
  *(a1 + 56) = v21;
  *(a1 + 64) = v17;
  v18 = v25;
  *(a1 + 72) = v24;
  *(a1 + 88) = v18;
  result = *&v26;
  *(a1 + 104) = v26;
  return result;
}

uint64_t sub_257C0A634@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MFReaderCustomThemeSelectionMenu(0);
  sub_257BE401C(v1 + *(v10 + 20), v9, &qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_257ECE1D0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_257ECFBF0();
    v13 = sub_257ECE900();
    sub_257ECD960();

    sub_257ECE4C0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_257C0A85C@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B80);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B88);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v44 = v1;
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257C0DF1C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v42 = v50;
  v43 = v49;
  v41 = v51;
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B90);
  swift_storeEnumTagMultiPayload();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B98);
  v9 = v8[13];
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  v10 = (a1 + v8[14]);
  *v10 = xmmword_257EDB760;
  v10[1] = xmmword_257EDB770;
  v11 = (a1 + v8[15]);
  v46 = 0;
  sub_257ECEE50();
  v12 = v48;
  *v11 = v47;
  v11[1] = v12;
  v13 = a1 + v8[16];
  LOBYTE(v46) = 0;
  sub_257ECEE50();
  v14 = v48;
  *v13 = v47;
  *(v13 + 1) = v14;
  v15 = (a1 + v8[17]);
  v46 = 0;
  sub_257ECEE50();
  v16 = v48;
  *v15 = v47;
  v15[1] = v16;
  v17 = (a1 + v8[18]);
  v46 = 0;
  sub_257ECEE50();
  v18 = v48;
  *v17 = v47;
  v17[1] = v18;
  v19 = v8[20];
  *(a1 + v19) = 2;
  v20 = v8[22];
  v36 = v8[21];
  v40 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA8);
  v22 = *(v21 - 8);
  v38 = *(v22 + 56);
  v39 = v22 + 56;
  v38(a1 + v20, 1, 1, v21);
  v23 = v8[23];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BB0);
  v25 = *(*(v24 - 8) + 56);
  v25(a1 + v23, 1, 1, v24);
  v26 = v8[24];
  v37 = v8[25];
  v27 = a1 + v26;
  v35 = (a1 + v8[26]);
  *(a1 + v19) = 1;
  *(a1 + v36) = 1;
  v28 = v44;
  sub_257C0ACF4(v44, v7);
  v25(v7, 0, 1, v24);
  sub_257C0DA64(v7, a1 + v23, &qword_27F8F5B88);
  v29 = v45;
  sub_257C0C034(v28, v45);
  v38(v29, 0, 1, v21);
  result = sub_257C0DA64(v29, a1 + v40, &qword_27F8F5B80);
  v31 = a1 + v8[19];
  v32 = v42;
  *v31 = v43;
  *(v31 + 1) = v32;
  v31[16] = v41;
  *v27 = 0x4074000000000000;
  v27[8] = 0;
  *(a1 + v37) = 0;
  v33 = v35;
  *v35 = 0;
  v33[1] = 0;
  return result;
}

uint64_t sub_257C0ACF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C58) - 8;
  v3 = MEMORY[0x28223BE20](v156);
  v163 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v174 = &v135 - v5;
  v173 = sub_257ECE5A0();
  v154 = *(v173 - 8);
  v155 = v173 - 8;
  v179 = v154;
  MEMORY[0x28223BE20](v173 - 8);
  v172 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_257ECE1D0();
  v178 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v170 = &v135 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for MFColorPicker();
  MEMORY[0x28223BE20](v169);
  v9 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C60) - 8;
  v148 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v157 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v135 - v13;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C68);
  v15 = MEMORY[0x28223BE20](v165);
  v159 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v135 - v17;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C70);
  v19 = MEMORY[0x28223BE20](v171);
  v162 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v161 = &v135 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v158 = &v135 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v160 = &v135 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v177 = &v135 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  *&v168 = &v135 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v140 = &v135 - v32;
  MEMORY[0x28223BE20](v31);
  v176 = &v135 - v33;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v167 = ObjCClassFromMetadata;
  v166 = objc_opt_self();
  v35 = [v166 bundleForClass_];
  v36 = sub_257ECF4C0();
  v37 = sub_257ECF4C0();
  v38 = [v35 localizedStringForKey:v36 value:0 table:v37];

  v39 = sub_257ECF500();
  v41 = v40;

  v42 = a1[1];
  v153 = *a1;
  v152 = v42;
  v151 = type metadata accessor for MFReaderTextFormatterModel(0);
  v149 = sub_257C0DF1C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v147 = v183;
  v43 = v184;
  *&v9[*(v169 + 28)] = swift_getKeyPath();
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  swift_storeEnumTagMultiPayload();
  *v9 = v39;
  *(v9 + 1) = v41;
  v180 = 0;
  sub_257ECEE50();
  v44 = v182;
  v9[16] = v181;
  *(v9 + 3) = v44;
  *(v9 + 2) = v147;
  *(v9 + 6) = v43;
  *&v147 = sub_257C0DF1C(&qword_27F8F5C78, type metadata accessor for MFColorPicker);
  sub_257ECEC90();
  sub_257C0DCB8(v9);
  v45 = sub_257ECE920();
  v46 = &v14[*(v10 + 44)];
  *v46 = v45;
  *(v46 + 8) = 0u;
  *(v46 + 24) = 0u;
  v46[40] = 1;
  LOBYTE(v43) = sub_257ECE940();
  v47 = v170;
  v142 = a1;
  sub_257C0A634(v170);
  sub_257ECE1C0();
  v48 = *(v178 + 8);
  v178 += 8;
  v146 = v48;
  v48(v47, v175);
  sub_257ECDF40();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_257C0DD14(v14, v18, &qword_27F8F5C60);
  v57 = &v18[*(v165 + 36)];
  *v57 = v43;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  sub_257C0BF40();
  *&v183 = v58;
  *(&v183 + 1) = v59;
  v135 = sub_257BDAB08();
  v60 = sub_257ECEAF0();
  v62 = v61;
  v64 = v63;
  v145 = sub_257C0DDAC(&qword_27F8F5C80, &qword_27F8F5C68, &unk_257EDBA88, sub_257C0DD7C);
  sub_257ECEC00();
  sub_257C0300C(v60, v62, v64 & 1);

  sub_257BE4084(v18, &qword_27F8F5C68);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8);
  v155 = *(v154 + 72);
  v65 = v179;
  v154 = *(v179 + 80);
  v141 = (v154 + 32) & ~v154;
  v66 = swift_allocObject();
  v143 = xmmword_257ED6D30;
  *(v66 + 16) = xmmword_257ED6D30;
  sub_257ECE590();
  *&v183 = v66;
  v138 = sub_257C0DF1C(&qword_27F8F5BD0, MEMORY[0x277CE01F0]);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8);
  v139 = sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8);
  v68 = v172;
  v67 = v173;
  sub_257ED0180();
  v69 = v140;
  v70 = v168;
  sub_257ECE220();
  v71 = *(v65 + 8);
  v179 = v65 + 8;
  v136 = v71;
  v71(v68, v67);
  sub_257BE4084(v70, &qword_27F8F5C70);
  v72 = v166;
  v73 = v167;
  v74 = [v166 bundleForClass_];
  v75 = sub_257ECF4C0();
  v76 = sub_257ECF4C0();
  v77 = [v74 localizedStringForKey:v75 value:0 table:v76];

  v78 = sub_257ECF500();
  v80 = v79;

  *&v183 = v78;
  *(&v183 + 1) = v80;
  sub_257ECE1F0();

  sub_257BE4084(v69, &qword_27F8F5C70);
  v81 = v174;
  sub_257ECEF70();
  v82 = sub_257ECED60();
  v83 = sub_257ECE930();
  v84 = v81 + *(v156 + 44);
  *v84 = v82;
  *(v84 + 8) = v83;
  v85 = [v72 bundleForClass_];
  v86 = sub_257ECF4C0();
  v87 = sub_257ECF4C0();
  v88 = [v85 localizedStringForKey:v86 value:0 table:v87];

  v89 = sub_257ECF500();
  v91 = v90;

  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v168 = v183;
  v92 = v184;
  *&v9[*(v169 + 28)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v9 = v89;
  *(v9 + 1) = v91;
  v180 = 0;
  sub_257ECEE50();
  v93 = v182;
  v9[16] = v181;
  *(v9 + 3) = v93;
  *(v9 + 2) = v168;
  *(v9 + 6) = v92;
  v94 = v157;
  sub_257ECEC90();
  sub_257C0DCB8(v9);
  v95 = sub_257ECE920();
  v96 = v94 + *(v148 + 44);
  *v96 = v95;
  *(v96 + 8) = 0u;
  *(v96 + 24) = 0u;
  *(v96 + 40) = 1;
  LOBYTE(v91) = sub_257ECE950();
  v97 = v170;
  sub_257C0A634(v170);
  sub_257ECE1C0();
  v146(v97, v175);
  sub_257ECDF40();
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v106 = v159;
  sub_257C0DD14(v94, v159, &qword_27F8F5C60);
  v107 = v106 + *(v165 + 36);
  *v107 = v91;
  *(v107 + 8) = v99;
  *(v107 + 16) = v101;
  *(v107 + 24) = v103;
  *(v107 + 32) = v105;
  *(v107 + 40) = 0;
  sub_257C0BF40();
  *&v183 = v108;
  *(&v183 + 1) = v109;
  v110 = sub_257ECEAF0();
  v112 = v111;
  LOBYTE(v94) = v113;
  v114 = v158;
  sub_257ECEC00();
  sub_257C0300C(v110, v112, v94 & 1);

  sub_257BE4084(v106, &qword_27F8F5C68);
  v115 = swift_allocObject();
  *(v115 + 16) = v143;
  sub_257ECE590();
  *&v183 = v115;
  v117 = v172;
  v116 = v173;
  sub_257ED0180();
  v118 = v160;
  sub_257ECE220();
  v136(v117, v116);
  sub_257BE4084(v114, &qword_27F8F5C70);
  v119 = [v166 bundleForClass_];
  v120 = sub_257ECF4C0();
  v121 = sub_257ECF4C0();
  v122 = [v119 localizedStringForKey:v120 value:0 table:v121];

  v123 = sub_257ECF500();
  v125 = v124;

  *&v183 = v123;
  *(&v183 + 1) = v125;
  v126 = v177;
  sub_257ECE1F0();

  sub_257BE4084(v118, &qword_27F8F5C70);
  v127 = v176;
  v128 = v161;
  sub_257BE401C(v176, v161, &qword_27F8F5C70);
  v129 = v174;
  v130 = v163;
  sub_257BE401C(v174, v163, &qword_27F8F5C58);
  v131 = v162;
  sub_257BE401C(v126, v162, &qword_27F8F5C70);
  v132 = v164;
  sub_257BE401C(v128, v164, &qword_27F8F5C70);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5CA8);
  sub_257BE401C(v130, v132 + *(v133 + 48), &qword_27F8F5C58);
  sub_257BE401C(v131, v132 + *(v133 + 64), &qword_27F8F5C70);
  sub_257BE4084(v177, &qword_27F8F5C70);
  sub_257BE4084(v129, &qword_27F8F5C58);
  sub_257BE4084(v127, &qword_27F8F5C70);
  sub_257BE4084(v131, &qword_27F8F5C70);
  sub_257BE4084(v130, &qword_27F8F5C58);
  return sub_257BE4084(v128, &qword_27F8F5C70);
}

void sub_257C0BF40()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    if (v2)
    {
      sub_257C0DACC();
      sub_257ECC3F0();
      v0 = sub_257ECFEF0();
      v1 = [v0 _accessibilityColorDescription];

      if (v1)
      {
        sub_257ECF500();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_257C0C034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_257ECE5A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BB8);
  MEMORY[0x28223BE20](v68);
  v8 = (v67 - v7);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA8);
  v9 = MEMORY[0x28223BE20](v74);
  v11 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v67 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v70 = v67 - v16;
  MEMORY[0x28223BE20](v15);
  v72 = v67 - v17;
  *v8 = sub_257ECF060();
  v8[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC0);
  sub_257C0CA24(a1, v8 + *(v19 + 44));
  v20 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v69 = v20;
  sub_257ECDD60();

  v73 = a1;
  if (v75 >= 4u)
  {

    goto LABEL_5;
  }

  v21 = sub_257ED0640();

  if (v21)
  {
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_257ED9BD0;
    sub_257ECE580();
    sub_257ECE590();
    v75 = v23;
    sub_257C0DF1C(&qword_27F8F5BD0, MEMORY[0x277CE01F0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8);
    sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BC8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_257ED6D30;
  sub_257ECE590();
  v75 = v22;
  sub_257C0DF1C(&qword_27F8F5BD0, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BD8);
  sub_257BD2D4C(&qword_27F8F5BE0, &qword_27F8F5BD8);
LABEL_6:
  sub_257ED0180();
  sub_257BD2D4C(&qword_27F8F5BE8, &qword_27F8F5BB8);
  sub_257ECEC80();
  (*(v4 + 8))(v6, v3);
  sub_257BE4084(v8, &qword_27F8F5BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v77 = v78;
  v75 = sub_257BE6C10();
  v76 = v24;
  v25 = sub_257BDAB08();
  sub_257ECE200();

  sub_257BE4084(v11, &qword_27F8F5BA8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v77 = v78;
  v75 = sub_257BE6D7C();
  v76 = v26;
  v27 = v70;
  v28 = v25;
  sub_257ECE1F0();

  sub_257BE4084(v14, &qword_27F8F5BA8);
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = ObjCClassFromMetadata;
  v68 = objc_opt_self();
  v30 = [v68 bundleForClass_];
  v31 = sub_257ECF4C0();
  v32 = sub_257ECF4C0();
  v33 = [v30 localizedStringForKey:v31 value:0 table:v32];

  v34 = sub_257ECF500();
  v36 = v35;

  v75 = v34;
  v76 = v36;
  v67[1] = v28;
  v37 = sub_257ECEAF0();
  v39 = v38;
  LOBYTE(v33) = v40;
  sub_257C0BF40();
  v75 = v41;
  v76 = v42;
  v43 = sub_257ECEAF0();
  v45 = v44;
  LOBYTE(ObjCClassFromMetadata) = v46;
  sub_257ECE1E0();
  sub_257C0300C(v43, v45, ObjCClassFromMetadata & 1);

  sub_257C0300C(v37, v39, v33 & 1);

  sub_257BE4084(v27, &qword_27F8F5BA8);
  v47 = [v68 bundleForClass_];
  v48 = sub_257ECF4C0();
  v49 = sub_257ECF4C0();
  v50 = [v47 localizedStringForKey:v48 value:0 table:v49];

  v51 = sub_257ECF500();
  v53 = v52;

  v75 = v51;
  v76 = v53;
  v54 = sub_257ECEAF0();
  v56 = v55;
  v58 = v57;
  sub_257C0BF40();
  v75 = v59;
  v76 = v60;
  v61 = sub_257ECEAF0();
  v63 = v62;
  LOBYTE(v33) = v64;
  v65 = v72;
  sub_257ECE1E0();
  sub_257C0300C(v61, v63, v33 & 1);

  sub_257C0300C(v54, v56, v58 & 1);

  return sub_257BE4084(v65, &qword_27F8F5BA8);
}

void sub_257C0CA24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = sub_257ECEE20();
  v104 = *(v3 - 8);
  v105 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BF8);
  v6 = MEMORY[0x28223BE20](v113);
  v8 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = &v97 - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C00);
  MEMORY[0x28223BE20](v110);
  v112 = &v97 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C08);
  MEMORY[0x28223BE20](v111);
  v102 = (&v97 - v11);
  v12 = type metadata accessor for MFReaderThemeSelectionOverlay(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v108 = (&v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v99 = (&v97 - v15);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C10);
  v16 = MEMORY[0x28223BE20](v109);
  v106 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v98 = &v97 - v18;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C18);
  v19 = MEMORY[0x28223BE20](v97);
  v100 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v97 - v22;
  MEMORY[0x28223BE20](v21);
  v101 = &v97 - v24;
  v25 = sub_257ECE1D0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = a1;
  v29 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v115 = v29;
  sub_257ECDD60();

  v30 = v129;
  if (v129)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    v103 = v129;
    if (v129)
    {
      v108 = v30;
      sub_257ECC3F0();
      sub_257C0A634(v28);
      v31 = sub_257ECE1C0();
      v32 = *(v26 + 8);
      v32(v28, v25);
      if (v31)
      {
        v33 = [objc_opt_self() mainScreen];
        [v33 bounds];
      }

      sub_257C0A634(v28);
      v50 = sub_257ECE1C0();
      v32(v28, v25);
      if (v50)
      {
        v51 = [objc_opt_self() mainScreen];
        [v51 &selRef__accessibilitySupplementaryFooterViews];
      }

      sub_257ECF060();
      sub_257ECE080();
      *(v133 + 6) = *(&v133[3] + 6);
      *(&v133[1] + 6) = *(&v133[4] + 6);
      *(&v133[2] + 6) = *(&v133[5] + 6);
      sub_257ECF0F0();
      v129 = xmmword_257EDB780;
      *&v130[0] = v108;
      WORD4(v130[0]) = 256;
      *(v130 + 10) = v133[0];
      *(&v130[1] + 10) = v133[1];
      *(&v130[2] + 10) = v133[2];
      *(&v130[3] + 1) = *(&v133[2] + 14);
      *&v131 = 0xBFE921FB54442D18;
      *(&v131 + 1) = v52;
      v132 = v53;
      sub_257ECC3F0();
      sub_257C0A634(v28);
      v54 = sub_257ECE1C0();
      v32(v28, v25);
      if (v54)
      {
        v55 = [objc_opt_self() mainScreen];
        [v55 &selRef__accessibilitySupplementaryFooterViews];
      }

      sub_257C0A634(v28);
      v56 = sub_257ECE1C0();
      v32(v28, v25);
      if (v56)
      {
        v57 = [objc_opt_self() mainScreen];
        [v57 &selRef__accessibilitySupplementaryFooterViews];
      }

      v58 = v99;
      sub_257ECF060();
      sub_257ECE080();
      *&v128[6] = *(&v133[6] + 6);
      *&v128[22] = *(&v133[7] + 6);
      *&v128[38] = *(&v133[8] + 6);
      sub_257ECF0F0();
      v60 = v59;
      v62 = v61;
      *v58 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_257ECDD60();

      if (LOBYTE(v126[0]) >= 4u)
      {

        v77 = 1.0;
      }

      else
      {
        v76 = sub_257ED0640();

        if (v76)
        {
          v77 = 1.0;
        }

        else
        {
          v77 = 0.0;
        }
      }

      v78 = v109;
      v79 = v98;
      sub_257C0DB18(v58, v98);
      *(v79 + *(v78 + 36)) = v77;
      v80 = sub_257ECF060();
      v82 = v81;
      v83 = &v23[*(v97 + 36)];
      sub_257C0DD14(v79, v83, &qword_27F8F5C10);
      v84 = (v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C20) + 36));
      *v84 = v80;
      v84[1] = v82;
      *v23 = xmmword_257EDB790;
      *(v23 + 9) = *&v128[46];
      v85 = *&v128[16];
      *(v23 + 58) = *&v128[32];
      v86 = *v128;
      *(v23 + 42) = v85;
      *(v23 + 2) = v103;
      *(v23 + 12) = 256;
      *(v23 + 26) = v86;
      *(v23 + 10) = 0xBFE921FB54442D18;
      *(v23 + 11) = v60;
      *(v23 + 12) = v62;
      v87 = v101;
      sub_257C0DD14(v23, v101, &qword_27F8F5C18);
      v121 = v130[3];
      v122 = v131;
      v123 = v132;
      v117 = v129;
      v118 = v130[0];
      v119 = v130[1];
      v120 = v130[2];
      v88 = v100;
      sub_257BE401C(v87, v100, &qword_27F8F5C18);
      v89 = v121;
      v90 = v122;
      v124[4] = v121;
      v124[5] = v122;
      v91 = v123;
      v125 = v123;
      v92 = v118;
      v124[0] = v117;
      v124[1] = v118;
      v94 = v119;
      v93 = v120;
      v124[2] = v119;
      v124[3] = v120;
      v95 = v102;
      *v102 = v117;
      *(v95 + 16) = v92;
      *(v95 + 96) = v91;
      *(v95 + 32) = v94;
      *(v95 + 48) = v93;
      *(v95 + 64) = v89;
      *(v95 + 80) = v90;
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C48);
      sub_257BE401C(v88, v95 + *(v96 + 48), &qword_27F8F5C18);
      sub_257BE401C(&v129, v126, &qword_27F8F5C50);
      sub_257BE401C(v124, v126, &qword_27F8F5C50);
      sub_257BE4084(v88, &qword_27F8F5C18);
      v126[4] = v121;
      v126[5] = v122;
      v127 = v123;
      v126[0] = v117;
      v126[1] = v118;
      v126[2] = v119;
      v126[3] = v120;
      sub_257BE4084(v126, &qword_27F8F5C50);
      sub_257BE401C(v95, v112, &qword_27F8F5C08);
      swift_storeEnumTagMultiPayload();
      sub_257BD2D4C(&qword_27F8F5C28, &qword_27F8F5C08);
      sub_257C0DB7C();
      sub_257ECE6F0();
      sub_257BE4084(&v129, &qword_27F8F5C50);

      sub_257BE4084(v95, &qword_27F8F5C08);
      v74 = v87;
      v75 = &qword_27F8F5C18;
      goto LABEL_29;
    }
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass_];
  v36 = sub_257ECF4C0();
  v37 = [objc_opt_self() imageNamed:v36 inBundle:v35];

  if (v37)
  {
    sub_257ECEE00();
    v39 = v104;
    v38 = v105;
    (*(v104 + 104))(v5, *MEMORY[0x277CE0FE0], v105);
    v103 = sub_257ECEE40();

    (*(v39 + 8))(v5, v38);
    sub_257C0A634(v28);
    LOBYTE(v38) = sub_257ECE1C0();
    v40 = *(v26 + 8);
    v40(v28, v25);
    if (v38)
    {
      v41 = [objc_opt_self() mainScreen];
      [v41 bounds];
    }

    sub_257C0A634(v28);
    v42 = sub_257ECE1C0();
    v40(v28, v25);
    if (v42)
    {
      v43 = [objc_opt_self() mainScreen];
      [v43 bounds];
    }

    v44 = v108;
    sub_257ECF060();
    sub_257ECE080();
    v45 = v129;
    v46 = BYTE8(v129);
    v47 = *&v130[0];
    v48 = BYTE8(v130[0]);
    v105 = *(&v130[1] + 1);
    v49 = *&v130[1];
    *v44 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_257ECDD60();

    LODWORD(v116) = v48;
    v108 = v49;
    if (LOBYTE(v126[0]) >= 4u)
    {
      v63 = v45;
    }

    else
    {
      v63 = v45;
      v64 = sub_257ED0640();

      v65 = 0.0;
      if ((v64 & 1) == 0)
      {
LABEL_24:
        v66 = v106;
        sub_257C0DB18(v44, v106);
        *(v66 + *(v109 + 36)) = v65;
        v67 = sub_257ECF060();
        v69 = v68;
        v70 = &v8[*(v113 + 36)];
        sub_257C0DD14(v66, v70, &qword_27F8F5C10);
        v71 = (v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5C20) + 36));
        *v71 = v67;
        v71[1] = v69;
        *v8 = v103;
        *(v8 + 1) = v63;
        v8[16] = v46;
        *(v8 + 3) = v47;
        v8[32] = v116;
        v72 = v107;
        v73 = v105;
        *(v8 + 5) = v108;
        *(v8 + 6) = v73;
        sub_257C0DD14(v8, v72, &qword_27F8F5BF8);
        sub_257BE401C(v72, v112, &qword_27F8F5BF8);
        swift_storeEnumTagMultiPayload();
        sub_257BD2D4C(&qword_27F8F5C28, &qword_27F8F5C08);
        sub_257C0DB7C();
        sub_257ECE6F0();
        v74 = v72;
        v75 = &qword_27F8F5BF8;
LABEL_29:
        sub_257BE4084(v74, v75);
        return;
      }
    }

    v65 = 1.0;
    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_257C0DA64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_257C0DACC()
{
  result = qword_27F8F5BF0;
  if (!qword_27F8F5BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5BF0);
  }

  return result;
}

uint64_t sub_257C0DB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderThemeSelectionOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257C0DB7C()
{
  result = qword_27F8F5C30;
  if (!qword_27F8F5C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5BF8);
    sub_257C0DC34();
    sub_257BD2D4C(&qword_27F8F5C40, &qword_27F8F5C20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5C30);
  }

  return result;
}

unint64_t sub_257C0DC34()
{
  result = qword_27F8F6850;
  if (!qword_27F8F6850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F6850);
  }

  return result;
}

uint64_t sub_257C0DCB8(uint64_t a1)
{
  v2 = type metadata accessor for MFColorPicker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_257C0DD14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_257C0DDAC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257C0DE30()
{
  result = qword_27F8F5C90;
  if (!qword_27F8F5C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F5C98);
    sub_257C0DF1C(&qword_27F8F5C78, type metadata accessor for MFColorPicker);
    sub_257C0DF1C(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5C90);
  }

  return result;
}

uint64_t sub_257C0DF1C(unint64_t *a1, void (*a2)(uint64_t))
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