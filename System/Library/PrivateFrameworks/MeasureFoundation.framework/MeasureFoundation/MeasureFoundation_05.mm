uint64_t sub_2583C75BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_258428F10();
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
      result = sub_258428F10();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_258398260(&qword_27F928A80, &qword_27F928A78);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928A78);
            v9 = sub_2583C775C(v13, i, a3);
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
        type metadata accessor for PatchTracker.Patch();
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

uint64_t (*sub_2583C775C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x259C7E900](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2583C77DC;
  }

  __break(1u);
  return result;
}

uint64_t sub_2583C77E4(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_2583C780C()
{
  result = qword_27F928A50;
  if (!qword_27F928A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A50);
  }

  return result;
}

unint64_t sub_2583C7864()
{
  result = qword_27F928A58;
  if (!qword_27F928A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A58);
  }

  return result;
}

unint64_t sub_2583C78BC()
{
  result = qword_27F928A60;
  if (!qword_27F928A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A60);
  }

  return result;
}

unint64_t sub_2583C7914()
{
  result = qword_27F928A68;
  if (!qword_27F928A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928A68);
  }

  return result;
}

__n128 sub_2583C7994(__n128 *a1, __n128 **a2)
{
  v2 = *a2;
  result = *a1;
  v2[2] = *a1;
  v2[3].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2583C7A24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_2583C7A8C(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2583C7AB0()
{
  swift_unownedRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

CGImageRef static CGImageRef.fromByteArrayGray(_:width:height:)(uint64_t a1, size_t a2, size_t a3)
{
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v7 = __CGBitmapContextCreate_2((a1 + 32), a2, a3, 8uLL, a2, DeviceGray, 0);
  if (v7)
  {
    v8 = v7;
    Image = CGBitmapContextCreateImage(v8);
  }

  else
  {

    return 0;
  }

  return Image;
}

CGImageRef static CGImageRef.fromByteArrayRGBA(_:width:height:)(CGImageRef result, size_t a2, size_t a3)
{
  if ((a2 - 0x2000000000000000) >> 62 == 3)
  {
    v4 = result;
    v5 = 4 * a2;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v8 = __CGBitmapContextCreate_2(v4 + 32, a2, a3, 8uLL, v5, DeviceRGB, 1u);
    if (v8)
    {
      v9 = v8;
      Image = CGBitmapContextCreateImage(v9);
    }

    else
    {

      return 0;
    }

    return Image;
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64_t CGImageRef.toByteArrayRGBA()()
{
  Width = CGImageGetWidth(v0);
  result = CGImageGetHeight(v0);
  v3 = Width * result;
  if ((Width * result) >> 64 != (Width * result) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if ((v3 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = 4 * v3;
  if (4 * v3 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v4)
  {
    v5 = sub_2584288E0();
    *(v5 + 16) = v4;
    bzero((v5 + 32), v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v6 = CGImageGetColorSpace(v0);
  if (v6)
  {
    v7 = v6;
    v8 = CGImageGetWidth(v0);
    Height = CGImageGetHeight(v0);
    BitsPerComponent = CGImageGetBitsPerComponent(v0);
    BytesPerRow = CGImageGetBytesPerRow(v0);
    v12 = __CGBitmapContextCreate_2((v5 + 32), v8, Height, BitsPerComponent, BytesPerRow, v7, 1u);
    if (v12)
    {
      v13 = v12;
      CGImageGetWidth(v0);
      CGImageGetHeight(v0);
      sub_258428C40();

      v7 = v13;
    }
  }

  return v5;
}

int *PlaneSelector.firstPointMaxDistanceSquared.unsafeMutableAddressor()
{
  if (qword_27F927A80 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.firstPointMaxDistanceSquared;
}

uint64_t static PlaneSelector.DebuggerClass.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  static PlaneSelector.DebuggerClass = a1;
  qword_27F92F268 = a2;
  return result;
}

void sub_2583C7EE0()
{
  if ([objc_opt_self() jasperAvailable])
  {
    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_258428630();
    [v0 floatForKey_];
    v3 = v2;

    v4 = v3 * v3;
  }

  else
  {
    if (qword_27F927AC0 != -1)
    {
      swift_once();
    }

    v4 = 1.0;
    if (static MeasureCore.isTrackingVGAEnabled)
    {
      v4 = 4.0;
    }
  }

  static PlaneSelector.firstPointMaxDistanceSquared = LODWORD(v4);
}

float static PlaneSelector.firstPointMaxDistanceSquared.getter()
{
  if (qword_27F927A80 != -1)
  {
    swift_once();
  }

  return *&static PlaneSelector.firstPointMaxDistanceSquared;
}

uint64_t sub_2583C8054(uint64_t a1, uint64_t a2)
{
  v3 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v3);

  return a2;
}

uint64_t sub_2583C80D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v4);

  return a3;
}

char *sub_2583C8148()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_2583D1D30();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t PlaneSelector.debugOptions.getter()
{
  if (*(v0 + 176) != 1)
  {
    return *(v0 + 168);
  }

  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = static PlaneSelector.DebugOptions.default;
  *(v0 + 168) = static PlaneSelector.DebugOptions.default;
  *(v0 + 176) = 0;
  return result;
}

uint64_t *PlaneSelector.DebugOptions.default.unsafeMutableAddressor()
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.DebugOptions.default;
}

uint64_t PlaneSelector.debugOptions.setter(uint64_t result)
{
  *(v1 + 168) = result;
  *(v1 + 176) = 0;
  return result;
}

void *(*PlaneSelector.debugOptions.modify(uint64_t *a1))(void *result)
{
  a1[1] = v1;
  *a1 = PlaneSelector.debugOptions.getter();
  return sub_2583C82D8;
}

void *sub_2583C82D8(void *result)
{
  v1 = result[1];
  *(v1 + 168) = *result;
  *(v1 + 176) = 0;
  return result;
}

uint64_t property wrapper backing initializer of PlaneSelector.planeSelectionStats(_OWORD *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AD0);
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 80) = v3;
  v4 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v5;
  return v2;
}

double PlaneSelector.planeSelectionStats.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 64);
  os_unfair_lock_unlock(v4);

  *a1 = v6;
  a1[1] = v7;
  result = *&v8;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

double sub_2583C83E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 64);
  os_unfair_lock_unlock(v4);

  *a2 = v6;
  a2[1] = v7;
  result = *&v8;
  a2[2] = v8;
  a2[3] = v9;
  return result;
}

uint64_t sub_2583C8470(_OWORD *a1, uint64_t a2)
{
  v3 = *(*a2 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v5 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  v6 = a1[3];
  *(v3 + 48) = a1[2];
  *(v3 + 64) = v6;
  os_unfair_lock_unlock(v4);
}

void __swiftcall PlaneSelector.PlaneSelectionStats.init()(MeasureFoundation::PlaneSelector::PlaneSelectionStats *__return_ptr retstr)
{
  *&retstr->inferredCount = 0u;
  *&retstr->prevCount = 0u;
  *&retstr->adCount = 0u;
  *&retstr->localPlaneCount = 0u;
}

__n128 sub_2583C8500@<Q0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v5 = a1;
  v6 = *&a3;
  v7 = *(&a3 + 1);
  v8 = *(v3 + 96);
  v9 = [a1 camera];
  ObjectType = swift_getObjectType();
  v77 = v8[3];
  v11 = v77(ObjectType, v8, v6, v7);
  v13 = v12;
  v74 = v8[1];
  v74(ObjectType, v8);
  [v9 imageResolution];
  ARViewToCameraImageTransform();
  v103.x = v11;
  v103.y = v13;
  v14 = CGPointApplyAffineTransform(v103, &v95);
  x_low = LODWORD(v14.x);

  sub_2583C8E94(v5, v89, v6, v7);
  v16 = [v5 hitTest:32 types:{v14.x, v14.y}];
  sub_258385DB0(0, &qword_27F928B10);
  v17 = sub_258428860();

  if (v17 >> 62)
  {
    if (sub_258428F10())
    {
      goto LABEL_3;
    }

LABEL_8:

    v88 = 0;
    v20.n128_u64[1] = 0;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    memset(&v83, 0, sizeof(v83));
    goto LABEL_9;
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x259C7E900](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  sub_258411D3C(v19, 0, &v95);

  v85 = v97;
  v86 = v98;
  v87 = v99;
  v88 = v100;
  v83 = v95;
  v20.n128_u64[1] = *&v95.ty;
  v21.n128_u64[1] = *(&v96 + 1);
  v84 = v96;
LABEL_9:
  v20.n128_f64[0] = v6;
  v21.n128_f64[0] = v7;
  sub_2583C96B8(v5, v90, v20, v21);
  v22 = v91;
  *v82 = *v92;
  *&v82[3] = *&v92[3];
  v4 = v93;
  x_low = v94;
  v70 = v90[2];
  v71 = v90[1];
  v68 = v90[0];
  v69 = v90[3];
  v73 = v90[4];
  v67 = v90[5];
  if (!v93)
  {
    v49 = v91;
    sub_258385E40(&v83, &qword_27F928B18);
    v22 = v49;
    sub_258385E40(v89, &qword_27F928B18);
    v4 = 0;
    *v81 = *v82;
    v50 = *&v82[3];
LABEL_29:
    *&v81[3] = v50;
    goto LABEL_36;
  }

  *v80 = *v92;
  *&v80[3] = *&v92[3];
  if (!*(&v87 + 1))
  {
    sub_258385E40(v89, &qword_27F928B18);
    *v81 = *v80;
    v50 = *&v80[3];
    goto LABEL_29;
  }

  v65 = v91;
  v23 = [v5 camera];
  v24 = v77(ObjectType, v8, v6, v7);
  v26 = v25;
  v74(ObjectType, v8);
  [v23 imageResolution];
  ARViewToCameraImageTransform();
  v104.x = v24;
  v104.y = v26;
  CGPointApplyAffineTransform(v104, &v95);

  v27 = [v5 camera];
  memset(v101, 0, sizeof(v101));
  v102 = 1;
  v28 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v27, v101).n128_u64[0];
  v75 = v29;
  v78 = *&v28;

  v5 = [objc_allocWithZone(MEMORY[0x277CE5330]) initWithOrigin:0 direction:2 allowingTarget:v78 alignment:v75];
  v30 = (v8[2])(ObjectType, v8);
  v8 = [v30 raycast_];

  sub_258385DB0(0, &qword_27F928B20);
  v31 = sub_258428860();

  v72 = v31;
  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_13;
    }

LABEL_34:

    goto LABEL_35;
  }

LABEL_33:
  v32 = sub_258428F10();
  if (!v32)
  {
    goto LABEL_34;
  }

LABEL_13:
  v64 = v5;
  if (v32 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  swift_beginAccess();
  v33 = 0;
  v8 = 0;
  v34 = INFINITY;
  v35 = INFINITY;
  do
  {
    if ((v72 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x259C7E900](v33, v72);
    }

    else
    {
      v36 = *(v72 + 8 * v33 + 32);
    }

    v37 = v36;
    [v36 worldTransform];
    v79 = v38;
    v40 = vsubq_f32(v73, v39);
    v41 = vmulq_f32(v40, v40);
    v42 = v41.f32[2] + vaddv_f32(*v41.f32);
    v43 = v4;
    v44 = *(v4 + 16);
    v45 = *(v44 + 24);
    sub_258389808(v90, &v95, &qword_27F928B18);

    os_unfair_lock_lock(v45);
    swift_beginAccess();
    v46 = *(v44 + 16);
    os_unfair_lock_unlock(v45);

    sub_258385E40(v90, &qword_27F928B18);
    [v46 transform];
    v76 = v47;

    if (v42 >= v34)
    {
    }

    else
    {
      v48 = vmulq_f32(v79, v76);
      v35 = fabsf(v48.f32[2] + vaddv_f32(*v48.f32));

      v34 = v42;
      v8 = v37;
    }

    ++v33;
    v4 = v43;
  }

  while (v32 != v33);

  v5 = v64;
  if (!v8)
  {
LABEL_35:
    sub_258385E40(&v83, &qword_27F928B18);

    sub_258385E40(v89, &qword_27F928B18);
    *v81 = *v80;
    *&v81[3] = *&v80[3];
    v22 = v65;
    goto LABEL_36;
  }

  [v8 worldTransform];
  if (v35 <= 0.76604 || v34 >= 72.25)
  {

    goto LABEL_35;
  }

  v51.i32[3] = 0;
  _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(v52, v51);
  sceneKitToARKit(_:)(v54, v53);
  v70 = v56;
  v71 = v55;
  v69 = v57;
  v73 = v58;
  v59 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  type metadata accessor for WorldPlane();
  v4 = swift_allocObject();
  *(v4 + 24) = xmmword_25842EC50;
  *(v4 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v60 = swift_allocObject();
  v32 = v59;
  v61 = swift_slowAlloc();
  *v61 = 0;
  *(v60 + 16) = v32;
  *(v60 + 24) = v61;
  *(v4 + 16) = v60;
  swift_endAccess();
  *(v4 + 48) = 3;
  *(v4 + 52) = 0x3F80000000000000;
  if (qword_27F9279F0 != -1)
  {
LABEL_38:
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v32, v101, static SIMD3<>.zero);

  v81[0] = 1;
  v68 = xmmword_25842EC60;
  *&v95.a = xmmword_25842EC60;
  *&v95.c = v71;
  *&v95.tx = v70;
  v96 = v69;
  v97 = v73;
  v98 = 0u;
  v67 = 0u;
  LOBYTE(v99) = 1;
  *(&v99 + 1) = v4;
  v100 = 0;
  sub_258411874();
  x_low = v62;

  sub_258385E40(v89, &qword_27F928B18);
  sub_258385E40(v90, &qword_27F928B18);
  v22 = 1;
  sub_258385E40(&v83, &qword_27F928B18);

LABEL_36:
  *a2 = v68;
  *(a2 + 16) = v71;
  *(a2 + 32) = v70;
  *(a2 + 48) = v69;
  result = v67;
  *(a2 + 64) = v73;
  *(a2 + 80) = v67;
  *(a2 + 96) = v22;
  *(a2 + 97) = *v81;
  *(a2 + 100) = *&v81[3];
  *(a2 + 104) = v4;
  *(a2 + 112) = x_low;
  return result;
}

uint64_t sub_2583C8E94@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = v4;
  v10 = *(sub_2583C8148() + 2);

  if (!v10)
  {
    v45 = 0;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    goto LABEL_31;
  }

  v55 = a2;
  v12 = *(v4 + 96);
  result = swift_getObjectType();
  v56 = *(v12 + 24);
  v59 = *(v12 + 8);
  memset(&v86, 0, sizeof(v86));
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  v97 = 0;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  memset(&v92, 0, sizeof(v92));
  v13 = *(v4 + 160);
  if (!*(v13 + 16))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = 0;
  v16 = 0;
  v17 = v10 - 1;
  v18 = INFINITY;
  while (1)
  {
    v19 = v13 + v15;
    v20 = *(v19 + 32) + a3;
    v21 = *(v19 + 40) + a4;
    v22 = [a1 camera];
    v23 = v56(v14, v12, v20, v21);
    v25 = v24;
    v59(v14, v12);
    [v22 imageResolution];
    ARViewToCameraImageTransform();
    v110.x = v23;
    v110.y = v25;
    v26 = CGPointApplyAffineTransform(v110, &v104);

    v27 = [a1 hitTest:32 types:{v26.x, v26.y}];
    sub_258385DB0(0, &qword_27F928B10);
    v28 = sub_258428860();

    if (v28 >> 62)
    {
      break;
    }

    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_18:

    v76 = v88;
    v77 = v89;
    v78 = v90;
    v79 = v91;
    v74 = v86;
    v75 = v87;
    v80 = v92;
    v81 = v93;
    v85 = v97;
    v83 = v95;
    v84 = v96;
    v82 = v94;
    if (v17 == v16)
    {
      goto LABEL_22;
    }

LABEL_19:
    v88 = v76;
    v89 = v77;
    v90 = v78;
    v91 = v79;
    v86 = v74;
    v87 = v75;
    v92 = v80;
    v93 = v81;
    v97 = v85;
    v95 = v83;
    v96 = v84;
    v94 = v82;
    v13 = *(v5 + 160);
    ++v16;
    v15 += 16;
    if (v16 >= *(v13 + 16))
    {
      goto LABEL_32;
    }
  }

  result = sub_258428F10();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_6:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x259C7E900](0, v28);
  }

  else
  {
    if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_33;
    }

    v29 = *(v28 + 32);
  }

  v30 = v29;

  sub_258411D3C(v30, 0, &v98);
  v106 = v100;
  v107 = v101;
  v108 = v102;
  v109 = v103;
  v104 = v98;
  v105 = v99;

  if (v16)
  {
    v70 = v94;
    v71 = v95;
    v72 = v96;
    v73 = v97;
    v68 = v92;
    v69 = v93;
  }

  else
  {
    sub_258385E40(&v92, &qword_27F928B18);
    v70 = v106;
    v71 = v107;
    v72 = v108;
    v73 = v109;
    v68 = v104;
    v69 = v105;
    sub_2583D25EC(&v98, v65);
  }

  v31 = WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(a1);
  if (v31 >= v18)
  {
    result = sub_2583D2648(&v98);
    v76 = v88;
    v77 = v89;
    v78 = v90;
    v79 = v91;
    v74 = v86;
    v75 = v87;
    v80 = v68;
    v81 = v69;
    v85 = v73;
    v33 = v71;
    v84 = v72;
    v34 = v70;
  }

  else
  {
    v32 = v31;
    result = sub_258385E40(&v86, &qword_27F928B18);
    v76 = v106;
    v77 = v107;
    v78 = v108;
    v79 = v109;
    v74 = v104;
    v75 = v105;
    v80 = v68;
    v81 = v69;
    v85 = v73;
    v33 = v71;
    v84 = v72;
    v34 = v70;
    v18 = v32;
  }

  v82 = v34;
  v83 = v33;
  if (v17 != v16)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (*(&v78 + 1))
  {
    if (*(&v84 + 1) && (v35 = vsubq_f32(v82, v76), v36 = vmulq_f32(v35, v35), (v36.f32[2] + vaddv_f32(*v36.f32)) <= 0.000625))
    {
      v58 = *&v80.c;
      v60 = *&v80.a;
      v57 = *&v80.tx;
      v53 = v83;
      v54 = v81;
      v45 = v85;
      v62 = v84;
      v64 = v82;
    }

    else
    {
      v37 = [a1 camera];
      v38 = v56(v14, v12, a3, a4);
      v40 = v39;
      v59(v14, v12);
      [v37 imageResolution];
      ARViewToCameraImageTransform();
      v111.x = v38;
      v111.y = v40;
      CGPointApplyAffineTransform(v111, &v104);

      v70 = v76;
      v71 = v77;
      v72 = v78;
      v73 = v79;
      v68 = v74;
      v69 = v75;
      sub_2583D25EC(&v68, &v104);
      v41 = WorldPlane.baseType.getter();
      v42 = [a1 camera];
      v67 = 1;
      memset(v65, 0, sizeof(v65));
      v66 = 1;
      v43 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v42, v65);
      v61 = v44;
      v63 = v43;

      WorldPlane.hitTest(hitRay:withPlaneType:)(v41, &v104, v63, v61);
      v58 = *&v104.c;
      v60 = *&v104.a;
      v57 = *&v104.tx;
      v53 = v107;
      v54 = v105;
      v62 = v108;
      v64 = v106;
      v45 = v109;
      sub_258385E40(&v80, &qword_27F928B18);
      sub_258385E40(&v74, &qword_27F928B18);
    }

    result = sub_258385E40(&v74, &qword_27F928B18);
    v51 = v53;
    v50 = v54;
    v49 = v57;
    v48 = v58;
    v46 = v60;
    v52 = v62;
    v47 = v64;
  }

  else
  {
    result = sub_258385E40(&v80, &qword_27F928B18);
    v45 = 0;
    v46 = 0uLL;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
  }

  a2 = v55;
LABEL_31:
  *a2 = v46;
  *(a2 + 16) = v48;
  *(a2 + 32) = v49;
  *(a2 + 48) = v50;
  *(a2 + 64) = v47;
  *(a2 + 80) = v51;
  *(a2 + 96) = v52;
  *(a2 + 112) = v45;
  return result;
}

id sub_2583C96B8@<X0>(objc_class *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  result = [objc_opt_self() jasperAvailable];
  if (!result)
  {
    goto LABEL_46;
  }

  v83 = v4;
  v7 = sub_2583C8148();
  v8 = *(v7 + 2);
  if (v8)
  {
    v9 = a1;
    *&v169[0] = MEMORY[0x277D84F90];
    v10 = v7;
    sub_258392214(0, v8, 0);
    v11 = v10;
    v12 = *&v169[0];
    v13 = *(*&v169[0] + 16);
    *&v14.f64[0] = a3.n128_u64[0];
    *&v14.f64[1] = a4.n128_u64[0];
    v15 = 32;
    do
    {
      v16 = *&v11[v15];
      *&v169[0] = v12;
      v17 = v12[3];
      if (v13 >= v17 >> 1)
      {
        v104 = v16;
        v109 = v14;
        sub_258392214((v17 > 1), v13 + 1, 1);
        v16 = v104;
        v14 = v109;
        v11 = v10;
        v12 = *&v169[0];
      }

      v12[2] = v13 + 1;
      *&v12[2 * v13 + 4] = vaddq_f64(v16, v14);
      v15 += 16;
      ++v13;
      --v8;
    }

    while (v8);

    a1 = v9;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  v18 = static MeasureCore.shared;
  swift_beginAccess();
  if (!*(v18 + 112))
  {
    goto LABEL_45;
  }

  v19._rawValue = v12;
  v20.super.isa = a1;
  sub_2583B7438(v19, v20);
  v22 = v21;

  if (!v22)
  {
    v57 = 0;
    v71 = 0;
LABEL_48:
    v58 = 0;
    v72 = 0.0;
    v78 = 0uLL;
    v79 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    goto LABEL_49;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_45:

LABEL_46:
    v57 = 0;
LABEL_47:
    v71 = 0;
    v22 = 0;
    goto LABEL_48;
  }

  v24 = 0;
  v150 = 0.0;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v144 = 0u;
  v145 = 0u;
  v25 = v23 - 1;
  v143 = 0u;
  v26 = INFINITY;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0.0;
  while (1)
  {
    v27 = v22 + v24;
    if ((*(v22 + v24 + 104) & 1) == 0)
    {
      break;
    }

    v131 = v147;
    v132 = v148;
    v133 = v149;
    v134 = v150;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v130 = v146;
    v137 = v153;
    v138 = v154;
    v135 = v151;
    v136 = v152;
    v142 = v158;
    v140 = v156;
    v141 = v157;
    v139 = v155;
    if (!v25)
    {
      goto LABEL_38;
    }

LABEL_16:
    v147 = v131;
    v148 = v132;
    v149 = v133;
    v150 = v134;
    v143 = v127;
    v144 = v128;
    v145 = v129;
    v146 = v130;
    v154 = v138;
    v153 = v137;
    v152 = v136;
    v151 = v135;
    v158 = v142;
    v157 = v141;
    --v25;
    v24 += 80;
    v156 = v140;
    v155 = v139;
  }

  v28 = *(v27 + 80);
  v30 = *(v27 + 64);
  v29.i64[1] = DWORD2(v30);
  v29.i64[0] = v30;
  v31 = *(v27 + 96) * -0.5;
  *&v32 = _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(v28, v29);
  v101 = v33;
  v105 = v32;
  v110 = v34;
  v98 = vsubq_f32(0, v35);
  v36 = [objc_allocWithZone(MEMORY[0x277CE5218]) initWithTransform_];
  type metadata accessor for WorldPlane();
  v37 = swift_allocObject();
  *(v37 + 24) = xmmword_25842EC50;
  *(v37 + 40) = 0x3F5DB22D40000000;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
  v38 = swift_allocObject();
  v39 = v36;
  v40 = swift_slowAlloc();
  *v40 = 0;
  *(v38 + 16) = v39;
  *(v38 + 24) = v40;
  *(v37 + 16) = v38;
  swift_endAccess();
  *(v37 + 48) = 6;
  *(v37 + 52) = v31 + 1.0;
  *(v37 + 56) = 1065353216;
  LOBYTE(v115[0]) = 1;
  memset(v175, 0, sizeof(v175));
  v176 = 1;
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v39, v175, static SIMD3<>.zero);

  v114[0] = 1;
  v41 = *(v37 + 48);
  if (v41 > 6)
  {
    goto LABEL_27;
  }

  if (((1 << v41) & 0x68) != 0)
  {
    v42 = WorldPlane.confidence.getter();
    goto LABEL_29;
  }

  if (((1 << v41) & 0x14) != 0)
  {
    v42 = WorldPlane.confidence.getter() * 0.5;
    goto LABEL_29;
  }

  if (v41 == 1)
  {
    v42 = WorldPlane.confidence.getter() * 0.75;
  }

  else
  {
LABEL_27:
    v43 = v110;
    v43.i32[3] = 0;
    v44 = WorldPlane.distanceToEdge(point:)(v43);
    v42 = 0.0;
    if ((v44 & 0x100000000) == 0)
    {
      v42 = fmaxf(1.0 - (fminf(COERCE_FLOAT(v44 & 0x7FFFFFFF), 0.06) / 0.06), 0.2) * WorldPlane.confidence.getter();
    }
  }

LABEL_29:
  v45 = v22;
  v169[0] = xmmword_25842EC60;
  v169[1] = v105;
  v169[2] = v101;
  v169[3] = v98;
  v169[4] = v110;
  v170 = 0;
  v171 = 0;
  v172 = v114[0];
  v173 = v37;
  v174 = v42;
  if (v24)
  {
    v47 = *(&v151 + 1);
    LODWORD(v46) = v151;
    v49 = HIDWORD(v151);
    v48 = DWORD2(v151);
    v92 = v153;
    v95 = v152;
    v88 = v155;
    v90 = v154;
    v51 = *(&v156 + 1);
    v50 = v156;
    v52 = v157;
    LODWORD(v122[0]) = *(&v157 + 1);
    *(v122 + 3) = DWORD1(v157);
    v53 = *(&v157 + 1);
    v54 = v158;
  }

  else
  {
    sub_258385E40(&v151, &qword_27F928B18);
    sub_2583D25EC(v169, &v159);
    v50 = 0;
    v51 = 0;
    v47 = 0.75;
    v49 = 1045220557;
    v46 = 0.5;
    v48 = 1031127695;
    v92 = v101;
    v95 = v105;
    v88 = v110;
    v90 = v98;
    v52 = v114[0];
    v53 = v37;
    v54 = v42;
  }

  v55 = WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(a1);
  if (v55 >= v26)
  {
    sub_2583D2648(v169);
    v131 = v147;
    v132 = v148;
    v133 = v149;
    v134 = v150;
    v127 = v143;
    v128 = v144;
    v129 = v145;
    v130 = v146;
    *&v135 = __PAIR64__(LODWORD(v47), LODWORD(v46));
    *(&v135 + 1) = __PAIR64__(v49, v48);
    v136 = v95;
    v137 = v92;
    v138 = v90;
    v139 = v88;
    *&v140 = v50;
    *(&v140 + 1) = v51;
    LOBYTE(v141) = v52;
    DWORD1(v141) = *(v122 + 3);
    *(&v141 + 1) = v122[0];
    *(&v141 + 1) = v53;
  }

  else
  {
    v56 = v55;
    sub_258385E40(&v143, &qword_27F928B18);
    v127 = xmmword_25842EC60;
    v128 = v105;
    v129 = v101;
    v130 = v98;
    v131 = v110;
    v132 = 0uLL;
    LOBYTE(v133) = v114[0];
    *(&v133 + 1) = v37;
    v134 = v42;
    *&v135 = __PAIR64__(LODWORD(v47), LODWORD(v46));
    *(&v135 + 1) = __PAIR64__(v49, v48);
    v136 = v95;
    v137 = v92;
    v138 = v90;
    v139 = v88;
    *&v140 = v50;
    *(&v140 + 1) = v51;
    LOBYTE(v141) = v52;
    DWORD1(v141) = *(v122 + 3);
    *(&v141 + 1) = v122[0];
    *(&v141 + 1) = v53;
    v26 = v56;
  }

  v142 = v54;
  v22 = v45;
  if (v25)
  {
    goto LABEL_16;
  }

LABEL_38:

  v124 = v132;
  v125 = v133;
  v126 = v134;
  v122[0] = v127;
  v122[1] = v128;
  v122[2] = v129;
  v122[3] = v130;
  v123 = v131;
  v57 = *(&v133 + 1);
  if (!*(&v133 + 1))
  {
    result = sub_258385E40(&v135, &qword_27F928B18);
    goto LABEL_47;
  }

  v58 = *(&v141 + 1);
  if (*(&v141 + 1) && (v59 = vsubq_f32(v139, v123), v60 = vmulq_f32(v59, v59), (v60.f32[2] + vaddv_f32(*v60.f32)) <= 0.000625))
  {
    v103 = v136;
    v108 = v135;
    v97 = v138;
    v100 = v137;
    v71 = *(&v140 + 1);
    v57 = v140;
    v22 = v141;
    v72 = v142;
    v113 = v139;
    result = sub_258385E40(&v127, &qword_27F928B18);
    v82 = v97;
    v81 = v100;
    v80 = v103;
    v79 = v108;
    v78 = v113;
  }

  else
  {
    v61 = *(v83 + 96);
    v62 = [(objc_class *)a1 camera];
    ObjectType = swift_getObjectType();
    v64 = (*(v61 + 24))(ObjectType, v61, a3, a4);
    v66 = v65;
    (*(v61 + 8))(ObjectType, v61);
    [v62 imageResolution];
    ARViewToCameraImageTransform();
    v179.x = v64;
    v179.y = v66;
    CGPointApplyAffineTransform(v179, &v159);

    sub_2583D25EC(v122, &v159);
    v67 = WorldPlane.baseType.getter();
    v68 = [(objc_class *)a1 camera];
    v121 = 1;
    memset(v167, 0, sizeof(v167));
    v168 = 1;
    v69 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v68, v167);
    v106 = v70;
    v111 = v69;

    WorldPlane.hitTest(hitRay:withPlaneType:)(v67, &v159, v111, v106);
    v102 = *&v159.c;
    v107 = *&v159.a;
    v96 = v160;
    v99 = *&v159.tx;
    v112 = v161;
    v57 = v162;
    v71 = v163;
    v22 = v164;
    v58 = v165;
    v72 = v166;
    sub_258385E40(&v127, &qword_27F928B18);
    if (v58)
    {
      v115[0] = v107;
      v115[1] = v102;
      v115[2] = v99;
      v115[3] = v96;
      v115[4] = v112;
      v116 = v57;
      v117 = v71;
      v118 = v22;
      v119 = v58;
      v120 = v72;
      sub_2583D25EC(v115, v114);
      v73 = [(objc_class *)a1 camera];
      [v73 transform];
      v91 = v75;
      v93 = v74;
      v87 = v77;
      v89 = v76;

      v177.columns[1] = v91;
      v177.columns[0] = v93;
      v177.columns[3] = v87;
      v177.columns[2] = v89;
      v178 = __invert_f4(v177);
      v94 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v178.columns[0], v112.f32[0]), v178.columns[1], *v112.f32, 1), v178.columns[2], v112, 2), v178.columns[3], v112, 3);
      sub_258385E40(&v135, &qword_27F928B18);
      sub_258385E40(&v159, &qword_27F928B18);
      result = sub_258385E40(&v127, &qword_27F928B18);
      if (v94.f32[2] > 0.0)
      {
        result = sub_258385E40(&v159, &qword_27F928B18);
        goto LABEL_46;
      }
    }

    else
    {
      sub_258385E40(&v135, &qword_27F928B18);
      result = sub_258385E40(&v127, &qword_27F928B18);
    }

    v79 = v107;
    v78 = v112;
    v81 = v99;
    v80 = v102;
    v82 = v96;
  }

LABEL_49:
  *a2 = v79;
  *(a2 + 16) = v80;
  *(a2 + 32) = v81;
  *(a2 + 48) = v82;
  *(a2 + 64) = v78;
  *(a2 + 80) = v57;
  *(a2 + 88) = v71;
  *(a2 + 96) = v22;
  *(a2 + 104) = v58;
  *(a2 + 112) = v72;
  return result;
}

void sub_2583CA29C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v426 = v8;
  v410 = v9;
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  v14 = &v661;
  v15 = &v470;
  *&v701.tx = v10[2];
  v702 = v13;
  *&v701.a = v11;
  *&v701.c = v12;
  v16 = v10[4];
  v17 = v10[5];
  v18 = v10[8];
  v706 = v10[7];
  v707 = v18;
  v19 = v10[6];
  v424.i64[0] = v10;
  v704 = v17;
  v705 = v19;
  v703 = v16;
  v20 = sub_258428470();
  v398 = *(v20 - 8);
  v399 = v20;
  MEMORY[0x28223BE20](v20);
  v396 = &v393 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_258428490();
  v400 = *(v22 - 8);
  v401 = v22;
  MEMORY[0x28223BE20](v22);
  v397 = &v393 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = *&v426;
  *&v25 = *(&v426 + 1);
  v425.i64[0] = v1;
  v26 = *(v1 + 96);
  *&v426 = v7;
  v27 = [v7 camera];
  ObjectType = swift_getObjectType();
  v29 = (*(v26 + 24))(ObjectType, v26, *&v24, *&v25);
  v31 = v30;
  (*(v26 + 8))(ObjectType, v26);
  [v27 imageResolution];
  v407 = v6;
  ARViewToCameraImageTransform();
  v708.x = v29;
  v708.y = v31;
  v34 = CGPointApplyAffineTransform(v708, &v565);
  *&v33 = v34.y;
  *&v32 = v34.x;
  v408 = v33;
  v409 = v32;

  v602 = 0u;
  v603 = 0u;
  v604 = 0u;
  v605 = 0u;
  v606 = 0u;
  v607 = 0u;
  v608 = 0u;
  v609 = 0;
  memset(&v476, 0, sizeof(v476));
  v477 = 0u;
  v478 = 0u;
  v479 = 0u;
  v480 = 0u;
  v481 = 0.0;
  if (v4)
  {
    v35 = 0;
    v36 = *(v4 + 16);
    while (v36 != v35)
    {
      v37 = v4 + v35++;
      if (!*(v37 + 32))
      {
        goto LABEL_5;
      }
    }

    v420.i32[0] = 0;
    v418 = 0;
    v38 = 0;
    v39 = 0;
    *&v419 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v413 = 0u;
    v414 = 0u;
    v411 = 0u;
    v412 = 0u;
  }

  else
  {
LABEL_5:
    sub_2583C8E94(v426, v482, *&v24, *&v25);
    v38 = v483;
    v39 = v484;
    v413 = v486;
    v414 = v485;
    v411 = v488;
    v412 = v487;
    v40 = v490;
    v41 = v491;
    v42 = v492;
    v43 = v493;
    v420.i32[0] = v482[0];
    *&v419 = v489;
    v418 = v482[1];
    if (!v4)
    {
      v415 = v493;
      v416 = v492;
      v417 = v484;
      *&v421 = v491;
      v422.i32[0] = v483;
      v423.i64[0] = v490;
LABEL_14:
      v59 = *(sub_2583C8148() + 2);

      v60 = 0;
      v61 = 0;
      v15 = 0x27F927000;
      v45 = &static MeasureCore.shared;
      while (1)
      {
        if (v59 == v61)
        {
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0uLL;
          v55 = 0uLL;
          v56 = 0uLL;
          v57 = 0uLL;
          v58 = 0uLL;
          goto LABEL_26;
        }

        v62 = *(v425.i64[0] + 160);
        if (v61 >= *(v62 + 16))
        {
          break;
        }

        v63 = (&v60->a + v62);
        v64 = v63[4];
        v65 = v63[5];
        if (qword_27F927AC8 != -1)
        {
          swift_once();
        }

        sub_2583DED0C(v426, &v494, COERCE_UNSIGNED_INT64(v64 + *&v24), COERCE_UNSIGNED_INT64(v65 + *&v25));
        v47 = v504;
        v60 = (v60 + 16);
        ++v61;
        if (v504)
        {
          if (v61 == 1)
          {
            v48 = v505;
            v53 = v503;
            v52 = v502;
            v51 = v501;
            v15 = &v470;
            v56 = v499;
            v57 = v500;
            v54 = v497;
            v55 = v498;
            *&v58 = v495;
            v50 = v496;
            v49 = v494;
            v45 = v424.i64[0];
            if (v4)
            {
              goto LABEL_27;
            }

            goto LABEL_30;
          }

          v66 = [v426 camera];
          LOBYTE(v565.a) = 1;
          memset(v654, 0, 64);
          v654[64] = 1;
          v67 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v66, v654);
          v405 = v68;
          v406 = v67;

          sub_2583DEFAC(&v506, v406, v405);
          *&v69 = v507;
          v402 = v69;
          v70 = v506;
          v71 = v508;
          v405 = v510;
          v406 = v509;
          v403 = v512;
          v404 = v511;
          v51 = v513;
          v52 = v514;
          v53 = v515;
          v47 = v516;
          v72 = v517;
          sub_258385E40(&v494, &qword_27F928B18);
          v48 = v72;
          v58 = v402;
          v57 = v403;
          v56 = v404;
          v55 = v405;
          v54 = v406;
          v49 = v70;
          v50 = v71;
LABEL_26:
          v15 = &v470;
          v45 = v424.i64[0];
          if (v4)
          {
            goto LABEL_27;
          }

LABEL_30:
          v393 = v53;
          v76 = v48;
          v402 = v58;
          v403 = v57;
          v404 = v56;
          v405 = v55;
          v406 = v54;
          v394 = v49;
          v395 = v50;
          sub_2583CE3B4(v426, v45, v518, *&v24, *&v25);
          v77 = v518[0];
          v78 = v518[1];
          v79 = v518[2];
          v80 = v518[3];
          v81 = v519;
          v82 = v520;
          v83 = v521;
          v84 = v522;
          v73 = v523;
          v85 = v524;
          v86 = v525;
          v87 = v526;
          v88 = v527;
          if (v4)
          {
            v53 = v393;
            v49 = v394;
            v50 = v395;
            v55 = v405;
            v54 = v406;
            v57 = v403;
            v56 = v404;
            *&v58 = v402;
            v48 = v76;
            goto LABEL_33;
          }

          v92 = v76;
          LODWORD(v655.a) = v518[0];
          v93 = v423.i64[0];
          v94 = v422.i32[0];
          v95 = v421;
          v53 = v393;
          v49 = v394;
          v50 = v395;
          v55 = v405;
          v54 = v406;
          v57 = v403;
          v56 = v404;
          *&v58 = v402;
LABEL_39:
          *(&v655.a + 4) = __PAIR64__(v79, v78);
          HIDWORD(v655.b) = v80;
          *&v655.c = v81;
          *&v655.tx = v82;
          v656 = v83;
          v657 = v84;
          *&v658 = v73;
          *(&v658 + 1) = v85;
          *&v659 = v86;
          *(&v659 + 1) = v87;
          v660 = v88;
          *(&v661 + 4) = v58;
          LODWORD(v661) = v49;
          HIDWORD(v661) = v50;
          v662 = v54;
          v663 = v55;
          v664 = v56;
          v665 = v57;
          *&v666 = v51;
          *(&v666 + 1) = v52;
          *&v667 = v53;
          *(&v667 + 1) = v47;
          v668 = v92;
          *&v669.a = __PAIR64__(v418, v420.u32[0]);
          *&v669.b = __PAIR64__(v417, v94);
          *&v669.c = v414;
          *&v669.tx = v413;
          v670 = v412;
          v671 = v411;
          *&v672 = v419;
          *(&v672 + 1) = v93;
          *&v673 = v95;
          *(&v673 + 1) = v416;
          v674 = v415;
          if (![objc_opt_self() jasperAvailable])
          {
            v680 = 0.0;
            v678 = 0u;
            v679 = 0u;
            v676 = 0u;
            v677 = 0u;
            memset(&v675, 0, sizeof(v675));
            v683 = v657;
            v684 = v658;
            v685 = v659;
            v686 = v660;
            v681 = v655;
            v682 = v656;
            v689 = v663;
            v690 = v664;
            v687 = v661;
            v688 = v662;
            v694 = v668;
            v692 = v666;
            v693 = v667;
            v691 = v665;
            v695 = v669;
            v696 = v670;
            v700 = v674;
            v698 = v672;
            v699 = v673;
            v697 = v671;
            v96 = v425.i64[0];
            goto LABEL_54;
          }

          v96 = v425.i64[0];
          if (*(v425.i64[0] + 85))
          {
            v97.n128_u64[0] = v24;
            v98.n128_u64[0] = v25;
            sub_2583C96B8(v426, &v528, v97, v98);
            v567 = v530;
            v568 = v531;
            v569 = v532;
            v565 = v528;
            *&v570 = v533;
            v566 = v529;
            if (*(&v532 + 1))
            {
              v422.i64[0] = *(&v532 + 1);
              v423 = v530;
              v99 = v533;
              v536 = v530;
              v537 = v531;
              v538 = v532;
              *&v539 = v533;
              v534 = v528;
              v535 = v529;
              sub_2583D25EC(&v534, v559);
              if (qword_27F927AC8 != -1)
              {
                swift_once();
              }

              v100 = v423;
              v100.i32[3] = 0;
              v423 = v100;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B38);
              v101 = swift_allocObject();
              v102 = v665;
              v103 = v667;
              *(v101 + 112) = v666;
              *(v101 + 128) = v103;
              *(v101 + 144) = v668;
              v104 = v661;
              v105 = v662;
              *(v101 + 16) = xmmword_25842BFB0;
              *(v101 + 32) = v104;
              v106 = v663;
              v107 = v664;
              *(v101 + 48) = v105;
              *(v101 + 64) = v106;
              *(v101 + 80) = v107;
              *(v101 + 96) = v102;
              v108 = v672;
              *(v101 + 224) = v671;
              *(v101 + 240) = v108;
              *(v101 + 256) = v673;
              *(v101 + 272) = v674;
              v109 = *&v669.c;
              *(v101 + 160) = *&v669.a;
              *(v101 + 176) = v109;
              v110 = v670;
              *(v101 + 192) = *&v669.tx;
              *(v101 + 208) = v110;
              v111 = *&v655.a;
              v112 = *&v655.c;
              v113 = v656;
              *(v101 + 320) = *&v655.tx;
              *(v101 + 336) = v113;
              *(v101 + 288) = v111;
              *(v101 + 304) = v112;
              v114 = v657;
              v115 = v658;
              v116 = v659;
              *(v101 + 400) = v660;
              *(v101 + 368) = v115;
              *(v101 + 384) = v116;
              *(v101 + 352) = v114;
              v420.i64[0] = sub_2583E3A68(v101, v423);
              *&v421 = v117;
              v119 = v118;
              swift_setDeallocating();
              sub_258389808(&v661, v559, &qword_27F928B18);
              sub_258389808(&v669, v559, &qword_27F928B18);
              sub_258389808(&v655, v559, &qword_27F928B18);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B18);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              sub_258385E40(&v528, &qword_27F928B18);
              if (v119)
              {
                v677 = v567;
                v678 = v568;
                v679 = v569;
                v680 = *&v570;
                v675 = v565;
                v676 = v566;
                v681 = v655;
                v682 = v656;
                v686 = v660;
                v684 = v658;
                v685 = v659;
                v683 = v657;
                v689 = v663;
                v690 = v664;
                v687 = v661;
                v688 = v662;
                v694 = v668;
                v692 = v666;
                v693 = v667;
                v691 = v665;
              }

              else
              {
                v124.i64[0] = v420.i64[0];
                v124.i64[1] = v421;
                LODWORD(v419) = *(v422.i64[0] + 48);
                _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*v423.i64, v124);
                sceneKitToARKit(_:)(v126, v125);
                v422 = v128;
                v423 = v127;
                v420 = v130;
                v421 = v129;
                v131 = objc_allocWithZone(MEMORY[0x277CE5218]);
                v132 = [v131 initWithTransform_];
                type metadata accessor for WorldPlane();
                v133 = swift_allocObject();
                *(v133 + 24) = xmmword_25842EC50;
                *(v133 + 40) = 0x3F5DB22D40000000;
                swift_beginAccess();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
                v134 = swift_allocObject();
                v135 = v132;
                v136 = swift_slowAlloc();
                *v136 = 0;
                *(v134 + 16) = v135;
                *(v134 + 24) = v136;
                *(v133 + 16) = v134;
                swift_endAccess();
                *(v133 + 48) = v419;
                *(v133 + 52) = 1.0 - v99;
                *(v133 + 56) = 1065353216;
                v559[0] = 1;
                memset(v653, 0, 64);
                v653[64] = 1;
                if (qword_27F9279F0 != -1)
                {
                  swift_once();
                }

                WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v135, v653, static SIMD3<>.zero);

                LOBYTE(v552.a) = 1;
                v419 = xmmword_25842EC60;
                v643 = xmmword_25842EC60;
                v644 = v423;
                v645 = v422;
                v646 = v421;
                v647 = v420;
                v649 = 0;
                v648 = 0;
                v650 = 1;
                v651 = v133;
                v652 = 0;
                sub_258411874();
                v138 = v137;
                sub_258385E40(&v528, &qword_27F928B18);
                *&v675.a = v419;
                *&v675.c = v423;
                *&v675.tx = v422;
                v676 = v421;
                v677 = v420;
                v678 = 0uLL;
                LOBYTE(v679) = 1;
                *(&v679 + 1) = v133;
                v680 = v138;
                v683 = v657;
                v684 = v658;
                v685 = v659;
                v686 = v660;
                v681 = v655;
                v682 = v656;
                v691 = v665;
                v692 = v666;
                v693 = v667;
                v694 = v668;
                v687 = v661;
                v688 = v662;
                v689 = v663;
                v690 = v664;
              }

              v695 = v669;
              v696 = v670;
              v700 = v674;
              v698 = v672;
              v699 = v673;
              v697 = v671;
              v96 = v425.i64[0];
              goto LABEL_54;
            }

            v677 = v530;
            v678 = v531;
            v679 = v532;
            v680 = v533;
            v675 = v528;
            v676 = v529;
            v681 = v655;
            v682 = v656;
            v686 = v660;
            v684 = v658;
            v685 = v659;
            v683 = v657;
            v689 = v663;
            v690 = v664;
            v687 = v661;
            v688 = v662;
            v694 = v668;
            v692 = v666;
            v693 = v667;
            v691 = v665;
            v120 = *&v669.a;
            v121 = *&v669.c;
            v122 = *&v669.tx;
            v123 = v670;
          }

          else
          {
            v680 = 0.0;
            v678 = 0u;
            v679 = 0u;
            v676 = 0u;
            v677 = 0u;
            memset(&v675, 0, sizeof(v675));
            v683 = v657;
            v684 = v658;
            v685 = v659;
            v686 = v660;
            v681 = v655;
            v682 = v656;
            v689 = v663;
            v690 = v664;
            v687 = v661;
            v688 = v662;
            v694 = v668;
            v692 = v666;
            v693 = v667;
            v691 = v665;
            v120 = *&v669.a;
            v121 = *&v669.c;
            v122 = *&v669.tx;
            v123 = v670;
          }

          *&v695.tx = v122;
          v696 = v123;
          *&v695.a = v120;
          *&v695.c = v121;
          v700 = v674;
          v698 = v672;
          v699 = v673;
          v697 = v671;
          goto LABEL_54;
        }
      }

      __break(1u);
      goto LABEL_209;
    }

    v36 = *(v4 + 16);
  }

  v44 = (v4 + 32);
  v45 = v424.i64[0];
  v423.i64[0] = v40;
  v422.i32[0] = v38;
  *&v421 = v41;
  v417 = v39;
  v416 = v42;
  v415 = v43;
  while (v36)
  {
    v46 = *v44++;
    --v36;
    if (v46 == 3)
    {
      goto LABEL_14;
    }
  }

  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0uLL;
  v55 = 0uLL;
  v56 = 0uLL;
  v57 = 0uLL;
  v58 = 0uLL;
LABEL_27:
  v73 = *(v4 + 16);
  v74 = (v4 + 32);
  while (v73)
  {
    v75 = *v74++;
    --v73;
    if (v75 == 1)
    {
      goto LABEL_30;
    }
  }

  v77 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v81 = 0uLL;
  v82 = 0uLL;
  v83 = 0uLL;
  v84 = 0uLL;
LABEL_33:
  v89 = *(v4 + 16);
  v90 = (v4 + 32);
  while (v89)
  {
    v91 = *v90++;
    --v89;
    if (v91 == 6)
    {
      v92 = v48;
      LODWORD(v655.a) = v77;
      v93 = v423.i64[0];
      v94 = v422.i32[0];
      v95 = v421;
      goto LABEL_39;
    }
  }

  v680 = 0.0;
  v678 = 0u;
  v679 = 0u;
  v676 = 0u;
  v677 = 0u;
  memset(&v675, 0, sizeof(v675));
  *&v681.a = __PAIR64__(v78, v77);
  *&v681.b = __PAIR64__(v80, v79);
  *&v681.c = v81;
  *&v681.tx = v82;
  v682 = v83;
  v683 = v84;
  *&v684 = v73;
  *(&v684 + 1) = v85;
  *&v685 = v86;
  *(&v685 + 1) = v87;
  v686 = v88;
  *(&v687 + 4) = v58;
  LODWORD(v687) = v49;
  HIDWORD(v687) = v50;
  v688 = v54;
  v689 = v55;
  v690 = v56;
  v691 = v57;
  *&v692 = v51;
  *(&v692 + 1) = v52;
  *&v693 = v53;
  *(&v693 + 1) = v47;
  v694 = v48;
  *&v695.a = __PAIR64__(v418, v420.u32[0]);
  *&v695.b = __PAIR64__(v417, v422.u32[0]);
  *&v695.c = v414;
  *&v695.tx = v413;
  v696 = v412;
  v697 = v411;
  *&v698 = v419;
  *(&v698 + 1) = v423.i64[0];
  *&v699 = v421;
  *(&v699 + 1) = v416;
  v700 = v415;
  v96 = v425.i64[0];
LABEL_54:
  v612 = v677;
  v613 = v678;
  v614 = v679;
  v615 = v680;
  v610 = v675;
  v611 = v676;
  v597 = v682;
  v596 = *&v681.tx;
  v595 = *&v681.c;
  v594 = *&v681.a;
  v601 = v686;
  v600 = v685;
  v599 = v684;
  v598 = v683;
  v589 = v696;
  v588 = v695;
  v593 = v700;
  v592 = v699;
  v591 = v698;
  v590 = v697;
  v583 = v690;
  v582 = v689;
  v581 = v688;
  v580 = v687;
  v587 = v694;
  v586 = v693;
  v585 = v692;
  v584 = v691;
  if ([objc_opt_self() jasperAvailable])
  {
    v139 = *(v96 + 85);
    if (v139 == 3)
    {
      v554 = v478;
      v555 = v479;
      v556 = v480;
      *&v557 = v481;
      v552 = v476;
      v553 = v477;
      v476 = v610;
      v477 = v611;
      v481 = v615;
      v479 = v613;
      v480 = v614;
      v478 = v612;
      sub_258389808(&v675, &v565, &qword_27F928B18);
      sub_258385E40(&v552, &qword_27F928B18);
      v560 = v478;
      v561 = v479;
      v562 = v480;
      *v559 = v476;
      *&v559[48] = v477;
      v140 = v45[1];
      *&v565.a = *v45;
      v141 = v45[5];
      v567 = v45[4];
      v142 = v45[2];
      v566 = v45[3];
      *&v565.tx = v142;
      *&v565.c = v140;
      v143 = v45[7];
      v571 = v45[8];
      v144 = v45[6];
      v570 = v143;
      v569 = v144;
      *&v563 = v481;
      v568 = v141;
      if (sub_2583C77E4(&v565) == 1)
      {
        sub_258389808(v559, &v534, &qword_27F928B18);
        sub_258385E40(&v675, &qword_27F928B18);
        goto LABEL_96;
      }

      if (LOBYTE(v565.a))
      {
        sub_258389808(v559, &v534, &qword_27F928B18);
        v148 = &v675;
        v149 = &qword_27F928B18;
      }

      else
      {
        sub_258389808(v559, &v534, &qword_27F928B18);
        sub_258389808(v45, &v534, &qword_27F928B30);
        if ((PlaneSelector.debugOptions.getter() & 1) != 0 && (swift_beginAccess(), *(v96 + 208)))
        {
          sub_2583ACFA4(v96 + 184, &v534);
          d = v534.d;
          tx = v534.tx;
          __swift_project_boxed_opaque_existential_0(&v534, *&v534.d);
          (*(*&tx + 16))(&v580, &v588, &v594, &v602, &v610, COERCE_CGFLOAT(*&d), COERCE_CGFLOAT(*&tx));
          sub_258385E40(&v675, &qword_27F928B18);
          __swift_destroy_boxed_opaque_existential_0(&v534);
        }

        else
        {
          sub_258385E40(&v675, &qword_27F928B18);
        }

        if (*(v96 + 168))
        {
          swift_beginAccess();
          if (*(v96 + 208))
          {
            sub_2583ACFA4(v96 + 184, &v545);
            v164 = v545.d;
            v165 = v545.tx;
            __swift_project_boxed_opaque_existential_0(&v545, *&v545.d);
            v536 = v478;
            v537 = v479;
            v538 = v480;
            *&v539 = v481;
            v534 = v476;
            v535 = v477;
            (*(*&v165 + 24))(&v534, COERCE_CGFLOAT(*&v164), COERCE_CGFLOAT(*&v165));
            __swift_destroy_boxed_opaque_existential_0(&v545);
          }
        }

        if ((*(v96 + 168) & 2) != 0)
        {
          swift_beginAccess();
          if (*(v96 + 208))
          {
            sub_2583ACFA4(v96 + 184, &v545);
            v166 = v545.d;
            v167 = v545.tx;
            __swift_project_boxed_opaque_existential_0(&v545, *&v545.d);
            *&v168.f64[0] = v409;
            *&v168.f64[1] = v408;
            (*(*&v167 + 32))(v426, COERCE_CGFLOAT(*&v166), COERCE_CGFLOAT(*&v167), COERCE_DOUBLE(vcvt_f32_f64(v168)));
            sub_258385E40(v45, &qword_27F928B30);
            __swift_destroy_boxed_opaque_existential_0(&v545);
            goto LABEL_96;
          }
        }

        v149 = &qword_27F928B30;
        v148 = v45;
      }

      sub_258385E40(v148, v149);
LABEL_96:
      v169 = [objc_opt_self() standardUserDefaults];
      v170 = [v169 kPEShowStats];

      if (v170)
      {
        v549 = v480;
        v547 = v478;
        v548 = v479;
        *&v550 = v481;
        v545 = v476;
        v546 = v477;
        v171 = *(&v480 + 1);
        if (*(&v480 + 1))
        {
          v630 = v477;
          v631 = v478;
          v632 = v479;
          v629 = v476;
          v172 = v550;
          *&v633 = v480;
          sub_258385DB0(0, &qword_27F928550);
          v429 = v478;
          v430 = v479;
          v431 = v480;
          v432 = v481;
          v427 = v476;
          v428 = v477;
          sub_2583D25EC(&v427, &v439);
          v173 = sub_258428CC0();
          v174 = swift_allocObject();
          swift_weakInit();
          v175 = swift_allocObject();
          *(v175 + 16) = v174;
          v176 = v630;
          v177 = v632;
          *(v175 + 96) = v631;
          *(v175 + 112) = v177;
          v178 = v633;
          v179 = *&v629.c;
          *(v175 + 32) = *&v629.a;
          *(v175 + 48) = v179;
          *(v175 + 64) = *&v629.tx;
          *(v175 + 80) = v176;
          *(v175 + 128) = v178;
          *(v175 + 136) = v171;
          *(v175 + 144) = v172;
          *&v616.tx = sub_2583D2804;
          *&v616.ty = v175;
          *&v616.a = MEMORY[0x277D85DD0];
          *&v616.b = 1107296256;
          *&v616.c = sub_258383428;
          *&v616.d = &block_descriptor_57;
          v180 = _Block_copy(&v616);
          v441 = v547;
          v442 = v548;
          v443 = v549;
          v444.i32[0] = v550;
          v439 = v545;
          v440 = v546;
          sub_2583D25EC(&v439, &v636);

          v181 = v397;
          sub_258428480();
          *&v636.a = MEMORY[0x277D84F90];
          sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608);
          sub_2583A3F30();
          v182 = v396;
          v183 = v399;
          sub_258428E70();
          MEMORY[0x259C7E5E0](0, v181, v182, v180);
          _Block_release(v180);

          sub_258385E40(&v545, &qword_27F928B18);
          sub_258385E40(&v681, &qword_27F928B18);
          sub_258385E40(&v695, &qword_27F928B18);
          sub_258385E40(&v687, &qword_27F928B18);
          (*(v398 + 8))(v182, v183);
          v184 = (*(v400 + 8))(v181, v401);
          v184.i64[0] = *v559;
          v424 = v184;
          v184.i64[0] = *&v559[8];
          v422 = v184;
          v425 = *&v559[32];
          v426 = *&v559[16];
          v423 = *&v559[48];
          v420 = v562;
          v421 = v560;
          v185 = v561;
LABEL_101:
          v419 = v185;
          v188 = *&v563;
LABEL_215:
          v385 = *&v15[4].c;
          *&v15[1].c = *&v15[4].a;
          *&v15[1].tx = v385;
          *&v15[2].a = *&v15[4].tx;
          v475 = v481;
          v386 = *&v15[3].a;
          *&v15->a = *&v15[2].tx;
          *&v15->c = v386;
          v387 = *&v15[3].tx;
          *&v15->tx = *&v15[3].c;
          *&v15[1].a = v387;
          sub_258385E40(&v470, &qword_27F928B18);
          v388 = v410;
          v389 = v422.i64[0];
          *v410 = v424.i64[0];
          v388[1] = v389;
          v390 = v425;
          *(v388 + 1) = v426;
          *(v388 + 2) = v390;
          v392 = v420;
          v391 = v421;
          *(v388 + 3) = v423;
          *(v388 + 4) = v391;
          *(v388 + 5) = v419;
          *(v388 + 6) = v392;
          *(v388 + 28) = v188;
          return;
        }
      }

      sub_258385E40(&v681, &qword_27F928B18);
      sub_258385E40(&v695, &qword_27F928B18);
      v186 = &v687;
LABEL_100:
      sub_258385E40(v186, &qword_27F928B18);
      v187.i64[0] = *v559;
      v424 = v187;
      v187.i64[0] = *&v559[8];
      v422 = v187;
      v425 = *&v559[32];
      v426 = *&v559[16];
      v423 = *&v559[48];
      v420 = v562;
      v421 = v560;
      v185 = v561;
      goto LABEL_101;
    }

    v145 = *(&v679 + 1);
    if (*(&v679 + 1))
    {
      v146 = v680;
      if (v139 == 1)
      {
        v147 = *(v96 + 48);
      }

      else
      {
        if (v139 != 2)
        {
          goto LABEL_69;
        }

        v147 = *(v96 + 56);
      }

      if (vcvts_n_f32_s64(v147, 1uLL) <= v680)
      {
        v575 = v676;
        v576 = v677;
        v577 = v678;
        v574 = v675;
        v545 = v476;
        v546 = v477;
        v549 = v480;
        v547 = v478;
        v548 = v479;
        v553 = v676;
        *&v578 = v679;
        *&v550 = v481;
        v552 = v675;
        *&v557 = v680;
        v556 = v679;
        v555 = v678;
        v554 = v677;
        sub_2583D25EC(&v552, &v565);
        sub_258385E40(&v545, &qword_27F928B18);
        v476 = v574;
        v478 = v576;
        v479 = v577;
        v477 = v575;
        *&v480 = v578;
        *(&v480 + 1) = v145;
        v481 = v146;
        *&v559[48] = v575;
        *v559 = v574;
        *&v563 = v146;
        v562 = v480;
        v561 = v577;
        v560 = v576;
        v158 = v45[1];
        *&v565.a = *v45;
        v159 = v45[2];
        v160 = v45[3];
        v161 = v45[5];
        v567 = v45[4];
        v566 = v160;
        *&v565.tx = v159;
        *&v565.c = v158;
        v162 = v45[6];
        v163 = v45[7];
        v571 = v45[8];
        v570 = v163;
        v569 = v162;
        v568 = v161;
        if (sub_2583C77E4(&v565) == 1 || (LOBYTE(v565.a) & 1) != 0)
        {
          sub_258389808(v559, &v534, &qword_27F928B18);
        }

        else
        {
          sub_258389808(v45, &v534, &qword_27F928B30);
          sub_258389808(v559, &v534, &qword_27F928B18);
          if (PlaneSelector.debugOptions.getter())
          {
            swift_beginAccess();
            if (*(v96 + 208))
            {
              sub_2583ACFA4(v96 + 184, &v534);
              v337 = v534.d;
              v338 = v534.tx;
              __swift_project_boxed_opaque_existential_0(&v534, *&v534.d);
              (*(*&v338 + 16))(&v580, &v588, &v594, &v602, &v610, COERCE_CGFLOAT(*&v337), COERCE_CGFLOAT(*&v338));
              __swift_destroy_boxed_opaque_existential_0(&v534);
            }
          }

          if (*(v96 + 168))
          {
            swift_beginAccess();
            if (*(v96 + 208))
            {
              sub_2583ACFA4(v96 + 184, &v439);
              v339 = v439.d;
              v340 = v439.tx;
              __swift_project_boxed_opaque_existential_0(&v439, *&v439.d);
              v536 = v478;
              v537 = v479;
              v538 = v480;
              *&v539 = v481;
              v534 = v476;
              v535 = v477;
              (*(*&v340 + 24))(&v534, COERCE_CGFLOAT(*&v339), COERCE_CGFLOAT(*&v340));
              __swift_destroy_boxed_opaque_existential_0(&v439);
            }
          }

          if ((*(v96 + 168) & 2) != 0 && (swift_beginAccess(), *(v96 + 208)))
          {
            sub_2583ACFA4(v96 + 184, &v439);
            v341 = v439.d;
            v342 = v439.tx;
            __swift_project_boxed_opaque_existential_0(&v439, *&v439.d);
            *&v343.f64[0] = v409;
            *&v343.f64[1] = v408;
            (*(*&v342 + 32))(v426, COERCE_CGFLOAT(*&v341), COERCE_CGFLOAT(*&v342), COERCE_DOUBLE(vcvt_f32_f64(v343)));
            sub_258385E40(v45, &qword_27F928B30);
            __swift_destroy_boxed_opaque_existential_0(&v439);
          }

          else
          {
            sub_258385E40(v45, &qword_27F928B30);
          }
        }

        v344 = [objc_opt_self() standardUserDefaults];
        v345 = [v344 kPEShowStats];

        if (v345)
        {
          v442 = v479;
          v443 = v480;
          v444.f32[0] = v481;
          v439 = v476;
          v440 = v477;
          v441 = v478;
          v346 = *(&v480 + 1);
          if (*(&v480 + 1))
          {
            v617 = v477;
            v618 = v478;
            v619 = v479;
            v616 = v476;
            v347 = v444.i32[0];
            *&v620 = v480;
            sub_258385DB0(0, &qword_27F928550);
            v638 = v478;
            v639 = v479;
            v640 = v480;
            v636 = v476;
            v641 = v481;
            v637 = v477;
            sub_2583D25EC(&v636, &v427);
            v348 = sub_258428CC0();
            v349 = swift_allocObject();
            swift_weakInit();
            v350 = swift_allocObject();
            *(v350 + 16) = v349;
            v351 = v617;
            v352 = v619;
            *(v350 + 96) = v618;
            *(v350 + 112) = v352;
            v353 = v620;
            v354 = *&v616.c;
            *(v350 + 32) = *&v616.a;
            *(v350 + 48) = v354;
            *(v350 + 64) = *&v616.tx;
            *(v350 + 80) = v351;
            *(v350 + 128) = v353;
            *(v350 + 136) = v346;
            *(v350 + 144) = v347;
            v544[4] = sub_2583D2804;
            v544[5] = v350;
            v544[0] = MEMORY[0x277D85DD0];
            v544[1] = 1107296256;
            v544[2] = sub_258383428;
            v544[3] = &block_descriptor_49;
            v355 = _Block_copy(v544);
            v429 = v441;
            v430 = v442;
            v431 = v443;
            v432 = v444.f32[0];
            v427 = v439;
            v428 = v440;
            sub_2583D25EC(&v427, &v629);

            v356 = v397;
            sub_258428480();
            *&v629.a = MEMORY[0x277D84F90];
            sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608);
            sub_2583A3F30();
            v357 = v396;
            v358 = v399;
            sub_258428E70();
            MEMORY[0x259C7E5E0](0, v356, v357, v355);
            _Block_release(v355);

            sub_258385E40(&v439, &qword_27F928B18);
            sub_258385E40(&v681, &qword_27F928B18);
            sub_258385E40(&v695, &qword_27F928B18);
            sub_258385E40(&v687, &qword_27F928B18);
            sub_258385E40(&v675, &qword_27F928B18);
            (*(v398 + 8))(v357, v358);
            v359 = (*(v400 + 8))(v356, v401);
            v359.i64[0] = *v559;
            v424 = v359;
            v359.i64[0] = *&v559[8];
            v422 = v359;
            v425 = *&v559[32];
            v426 = *&v559[16];
            v423 = *&v559[48];
            v420 = v562;
            v421 = v560;
            v185 = v561;
            goto LABEL_101;
          }
        }

        sub_258385E40(&v681, &qword_27F928B18);
        sub_258385E40(&v695, &qword_27F928B18);
        sub_258385E40(&v687, &qword_27F928B18);
        v186 = &v675;
        goto LABEL_100;
      }
    }
  }

LABEL_69:
  v152 = *(v96 + 84);
  if (!*(v96 + 84))
  {
    v475 = 0.0;
    v156 = 0uLL;
    v60 = &v433;
LABEL_82:
    v474 = v156;
    v473 = v156;
    v472 = v156;
    *&v470.tx = v156;
    v471 = v156;
    *&v470.a = v156;
    *&v470.c = v156;
    v618 = v156;
    v619 = v156;
    v620 = v156;
    *&v616.a = v156;
    *&v616.c = v156;
    *&v616.tx = v156;
    v621 = v475;
    v617 = v156;
    goto LABEL_83;
  }

  v60 = &v433;
  if (v4)
  {
    v153 = *(v4 + 16);
    v154 = (v4 + 32);
    while (v153)
    {
      v155 = *v154++;
      --v153;
      if (v155 == 5)
      {
        goto LABEL_74;
      }
    }

    v475 = 0.0;
    v473 = 0u;
    v474 = 0u;
    v471 = 0u;
    v472 = 0u;
    v157 = 1;
    memset(&v470, 0, sizeof(v470));
    goto LABEL_122;
  }

LABEL_74:
  if (*(&v699 + 1))
  {
    v554 = v697;
    v555 = v698;
    v556 = v699;
    v552 = v695;
    LODWORD(v557) = v700;
    v553 = v696;
LABEL_76:
    sub_258389808(&v695, &v565, &qword_27F928B18);
    sub_258385E40(&v552, &qword_27F928B18);
    goto LABEL_80;
  }

  if (!*(&v693 + 1))
  {
    if (!*(&v685 + 1))
    {
      goto LABEL_104;
    }

    v567 = v683;
    v568 = v684;
    v569 = v685;
    v565 = v681;
    LODWORD(v570) = v686;
    v566 = v682;
    sub_2583D25EC(&v565, &v534);
    v554 = v683;
    v555 = v684;
    v556 = v685;
    v552 = v681;
    LODWORD(v557) = v686;
    v553 = v682;
    goto LABEL_76;
  }

LABEL_80:
  if (v152 == 1)
  {
    v475 = 0.0;
    v156 = 0uLL;
    goto LABEL_82;
  }

LABEL_104:
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  if (!*(static MeasureCore.shared + 96))
  {
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
    __break(1u);
    goto LABEL_220;
  }

  PatchTracker.hitTest(frame:screenPoint:context:)(v426, v45, &v534, v24, v25);

  v570 = v539;
  v571 = v540;
  v572 = v541;
  v566 = v535;
  v567 = v536;
  v568 = v537;
  v569 = v538;
  v565 = v534;
  v573 = v542;
  if (sub_2583B26C4(&v565) == 1)
  {
    v189 = 0;
    v190 = 0;
    v191 = 0.0;
    v192 = 0uLL;
    v193 = 0uLL;
    v194 = 0uLL;
    v195 = 0uLL;
    v196 = 0uLL;
  }

  else
  {
    v423 = *&v565.a;
    v197 = v573;
    if (LOBYTE(v565.tx))
    {
      v198 = [v426 camera];
      [v198 transform];
      v422 = v199;

      v200 = v422;
      v200.i32[3] = 0;
    }

    else
    {
      v200 = *&v565.c;
    }

    v422 = v200;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B38);
    v201 = swift_allocObject();
    v202 = v590;
    v203 = v592;
    *(v201 + 112) = v591;
    *(v201 + 128) = v203;
    *(v201 + 144) = v593;
    v204 = *&v588.a;
    *(v201 + 16) = xmmword_25842D9A0;
    *(v201 + 32) = v204;
    v205 = *&v588.tx;
    *(v201 + 48) = *&v588.c;
    *(v201 + 64) = v205;
    *(v201 + 80) = v589;
    *(v201 + 96) = v202;
    *(v201 + 272) = v601;
    v206 = v600;
    v207 = v598;
    *(v201 + 240) = v599;
    *(v201 + 256) = v206;
    v208 = v596;
    *(v201 + 208) = v597;
    *(v201 + 224) = v207;
    v209 = v594;
    *(v201 + 176) = v595;
    *(v201 + 192) = v208;
    *(v201 + 160) = v209;
    v210 = v580;
    v211 = v581;
    v212 = v583;
    *(v201 + 320) = v582;
    *(v201 + 336) = v212;
    *(v201 + 288) = v210;
    *(v201 + 304) = v211;
    v213 = v584;
    v214 = v585;
    v215 = v586;
    *(v201 + 400) = v587;
    *(v201 + 368) = v214;
    *(v201 + 384) = v215;
    *(v201 + 352) = v213;
    v216 = (v201 + 416);
    v217 = v45[1];
    *v559 = *v45;
    v218 = v45[5];
    v560 = v45[4];
    v219 = v45[2];
    *&v559[48] = v45[3];
    *&v559[32] = v219;
    *&v559[16] = v217;
    v220 = v45[6];
    v221 = v45[7];
    v564 = v45[8];
    v563 = v221;
    v562 = v220;
    v561 = v218;
    if (sub_2583C77E4(v559) == 1)
    {
      v222 = v607;
      *(v201 + 480) = v606;
      *(v201 + 496) = v222;
      *(v201 + 512) = v608;
      *(v201 + 528) = v609;
      v223 = v603;
      *v216 = v602;
      *(v201 + 432) = v223;
      v224 = v605;
      *(v201 + 448) = v604;
      *(v201 + 464) = v224;
    }

    else
    {
      v225 = v561;
      v576 = v561;
      v226 = v562;
      v577 = v562;
      v227 = v563;
      v578 = v563;
      v228 = v564;
      v579 = v564;
      v574 = *&v559[16];
      v229 = *&v559[32];
      v230 = *&v559[48];
      v231 = v560;
      v575 = v560;
      *v216 = *&v559[16];
      *(v201 + 432) = v229;
      *(v201 + 448) = v230;
      *(v201 + 464) = v231;
      *(v201 + 480) = v225;
      *(v201 + 496) = v226;
      *(v201 + 512) = v227;
      *(v201 + 528) = v228;
      sub_258389808(&v574, &v545, &qword_27F928B18);
    }

    v232 = sub_2583E3A68(v201, v423);
    *&v421 = v233;
    v235 = v234;
    swift_setDeallocating();
    sub_258389808(&v681, &v545, &qword_27F928B18);
    sub_258389808(&v695, &v545, &qword_27F928B18);
    sub_258389808(&v687, &v545, &qword_27F928B18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B18);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v236.i64[0] = v232;
    if (v235)
    {
      v237 = -1;
    }

    else
    {
      v237 = 0;
    }

    v236.i64[1] = v421;
    _sSo13simd_float4x4a17MeasureFoundationE4make8position17normalizedForwardABs5SIMD3VySfG_AItFZ_0(*v423.i64, vbslq_s8(vdupq_n_s32(v237), v422, v236));
    sceneKitToARKit(_:)(v239, v238);
    v422 = v241;
    v423 = v240;
    v420 = v243;
    v421 = v242;
    v244 = objc_allocWithZone(MEMORY[0x277CE5218]);
    v245 = [v244 initWithTransform_];
    type metadata accessor for WorldPlane();
    v190 = swift_allocObject();
    *(v190 + 24) = xmmword_25842EC50;
    *(v190 + 40) = 0x3F5DB22D40000000;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
    v246 = swift_allocObject();
    v247 = v245;
    v248 = swift_slowAlloc();
    *v248 = 0;
    *(v246 + 16) = v247;
    *(v246 + 24) = v248;
    *(v190 + 16) = v246;
    swift_endAccess();
    *(v190 + 48) = 5;
    *(v190 + 52) = 1.0 - v197;
    *(v190 + 56) = 1065353216;
    v189 = 1;
    LOBYTE(v545.a) = 1;
    memset(v642, 0, 64);
    v642[64] = 1;
    if (qword_27F9279F0 != -1)
    {
      swift_once();
    }

    WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v247, v642, static SIMD3<>.zero);

    LOBYTE(v439.a) = 1;
    v419 = xmmword_25842EC60;
    *&v636.a = xmmword_25842EC60;
    *&v636.c = v423;
    *&v636.tx = v422;
    v637 = v421;
    v638 = v420;
    v639 = 0uLL;
    LOBYTE(v640) = 1;
    *(&v640 + 1) = v190;
    v641 = 0.0;
    sub_258411874();
    v191 = v249;
    sub_258385E40(&v534, &qword_27F928890);
    v196 = v419;
    v195 = v420;
    v96 = v425.i64[0];
    v45 = v424.i64[0];
    v193 = v422;
    v192 = v423;
    v194 = v421;
  }

  *&v470.a = v196;
  *&v470.c = v192;
  *&v470.tx = v193;
  v471 = v194;
  v472 = v195;
  v473 = 0uLL;
  LOBYTE(v474) = v189;
  BYTE7(v474) = 0;
  *(&v474 + 5) = 0;
  *(&v474 + 1) = 0;
  *(&v474 + 1) = v190;
  v157 = v190 == 0;
  v475 = v191;
LABEL_122:
  v618 = v472;
  v619 = v473;
  v620 = v474;
  v616 = v470;
  v621 = v475;
  v617 = v471;
  if (v152 != 4 && (v152 != 3 || v157))
  {
LABEL_83:
    sub_2583CEC74(v426, &v580, &v588, &v594, &v616, &v610, v45, v543);
    sub_2583C7A24(v543, &v476, &qword_27F928B18);
    if (*(&v480 + 1))
    {
      goto LABEL_130;
    }

    goto LABEL_126;
  }

  v554 = v478;
  v555 = v479;
  v556 = v480;
  v552 = v476;
  *&v557 = v481;
  v553 = v477;
  sub_258389808(&v470, &v545, &qword_27F928B18);
  sub_258385E40(&v552, &qword_27F928B18);
  v478 = v618;
  v479 = v619;
  v480 = v620;
  v481 = v621;
  v476 = v616;
  v477 = v617;
  if (*(&v620 + 1))
  {
    goto LABEL_130;
  }

LABEL_126:
  v250 = v45[4];
  v555 = v45[5];
  v251 = v45[7];
  v556 = v45[6];
  v557 = v251;
  v558 = v45[8];
  v252 = *v45;
  *&v552.c = v45[1];
  v253 = v45[3];
  *&v552.tx = v45[2];
  v553 = v253;
  v554 = v250;
  *&v552.a = v252;
  if (sub_2583C77E4(&v552) != 1 && *(&v558 + 1))
  {
    v254 = [v426 camera];
    LOBYTE(v629.a) = 1;
    memset(v635, 0, 64);
    v635[64] = 1;
    v255 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v254, v635);
    v424 = v256;
    v425 = v255;

    WorldPlane.hitTest(hitRay:withPlaneType:)(2, v544, v425, v424);
    sub_2583C7A24(v544, &v476, &qword_27F928B18);
    v441 = v478;
    v442 = v479;
    v443 = v480;
    v444.f32[0] = v481;
    v439 = v476;
    v440 = v477;
    *&v550 = v481;
    v549 = v480;
    v547 = v478;
    v548 = v479;
    v545 = v476;
    v546 = v477;
    goto LABEL_131;
  }

  sub_2583C7A24(&v602, &v476, &qword_27F928B18);
LABEL_130:
  v441 = v478;
  v442 = v479;
  v443 = v480;
  v439 = v476;
  v440 = v477;
  v545 = v476;
  v546 = v477;
  v444.f32[0] = v481;
  *&v550 = v481;
  v549 = v480;
  v547 = v478;
  v548 = v479;
LABEL_131:
  sub_258389808(&v439, &v427, &qword_27F928B18);
  sub_258385E40(&v545, &qword_27F928B18);
  if (!*(&v480 + 1))
  {
    goto LABEL_169;
  }

  v257 = *(*(&v480 + 1) + 48);
  if (v257 != 4 && v257 != 2)
  {
    goto LABEL_169;
  }

  v630 = v477;
  v631 = v478;
  v632 = v479;
  v629 = v476;
  v633 = v480;
  v634 = v481;
  if (WorldPlaneHitTestResult.distanceToCamera(in:)(v426) > 30.0)
  {
    v258 = v45[7];
    v549 = v45[6];
    v550 = v258;
    v551 = v45[8];
    v259 = v45[3];
    *&v545.tx = v45[2];
    v546 = v259;
    v260 = v45[5];
    v547 = v45[4];
    v548 = v260;
    v261 = v45[1];
    *&v545.a = *v45;
    *&v545.c = v261;
    if (sub_2583C77E4(&v545) != 1 && (LOBYTE(v545.a) & 1) == 0)
    {
      v443 = v705;
      v444 = v706;
      v445 = v707;
      v439 = v701;
      v440 = v702;
      v441 = v703;
      v442 = v704;
      sub_2583D26FC(&v439, &v427);
      if (PlaneSelector.debugOptions.getter())
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v427);
          v262 = v427.d;
          v263 = v427.tx;
          __swift_project_boxed_opaque_existential_0(&v427, *&v427.d);
          (*(*&v263 + 16))(&v580, &v588, &v594, &v616, &v610, COERCE_CGFLOAT(*&v262), COERCE_CGFLOAT(*&v263));
          __swift_destroy_boxed_opaque_existential_0(&v427);
        }
      }

      if (*(v96 + 168))
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v464);
          v264 = v464.d;
          v265 = v464.tx;
          __swift_project_boxed_opaque_existential_0(&v464, *&v464.d);
          v429 = v478;
          v430 = v479;
          v431 = v480;
          v432 = v481;
          v427 = v476;
          v428 = v477;
          (*(*&v265 + 24))(&v427, COERCE_CGFLOAT(*&v264), COERCE_CGFLOAT(*&v265));
          __swift_destroy_boxed_opaque_existential_0(&v464);
        }
      }

      if ((*(v96 + 168) & 2) != 0 && (swift_beginAccess(), *(v96 + 208)))
      {
        sub_2583ACFA4(v96 + 184, &v464);
        v266 = v464.d;
        v267 = v464.tx;
        __swift_project_boxed_opaque_existential_0(&v464, *&v464.d);
        *&v268.f64[0] = v409;
        *&v268.f64[1] = v408;
        (*(*&v267 + 32))(v426, COERCE_CGFLOAT(*&v266), COERCE_CGFLOAT(*&v267), COERCE_DOUBLE(vcvt_f32_f64(v268)));
        sub_258385E40(v45, &qword_27F928B30);
        __swift_destroy_boxed_opaque_existential_0(&v464);
      }

      else
      {
        sub_258385E40(v45, &qword_27F928B30);
      }
    }

    v322 = [objc_opt_self() standardUserDefaults];
    v323 = [v322 kPEShowStats];

    if (v323)
    {
      v442 = v479;
      v443 = v480;
      v444.f32[0] = v481;
      v439 = v476;
      v440 = v477;
      v441 = v478;
      v324 = *(&v480 + 1);
      if (*(&v480 + 1))
      {
        v325 = v444.i32[0];
        v448 = v478;
        v449 = v479;
        v450 = v480;
        v446 = v476;
        v447 = v477;
        sub_258385DB0(0, &qword_27F928550);
        v460 = v478;
        v461 = v479;
        v462 = v480;
        v463 = v481;
        v458 = v476;
        v459 = v477;
        sub_2583D25EC(&v458, &v464);
        v326 = sub_258428CC0();
        v327 = swift_allocObject();
        swift_weakInit();
        v328 = swift_allocObject();
        *(v328 + 16) = v327;
        v329 = v449;
        *(v328 + 96) = v448;
        *(v328 + 112) = v329;
        v330 = v450;
        v331 = *&v446.c;
        *(v328 + 32) = *&v446.a;
        *(v328 + 48) = v331;
        v332 = v447;
        *(v328 + 64) = *&v446.tx;
        *(v328 + 80) = v332;
        *(v328 + 128) = v330;
        *(v328 + 136) = v324;
        *(v328 + 144) = v325;
        *&v433.tx = sub_2583D2804;
        *&v433.ty = v328;
        *&v433.a = MEMORY[0x277D85DD0];
        *&v433.b = 1107296256;
        *&v433.c = sub_258383428;
        *&v433.d = &block_descriptor_41;
        v333 = _Block_copy(&v433);
        v466 = v441;
        v467 = v442;
        v468 = v443;
        v469 = v444.f32[0];
        v464 = v439;
        v465 = v440;
        sub_2583D25EC(&v464, &v452);

        v334 = v397;
        sub_258428480();
        *&v452.a = MEMORY[0x277D84F90];
        sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608);
        sub_2583A3F30();
        v335 = v396;
        v336 = v399;
        sub_258428E70();
        MEMORY[0x259C7E5E0](0, v334, v335, v333);
        _Block_release(v333);

LABEL_193:
        sub_258385E40(&v681, &qword_27F928B18);
        sub_258385E40(&v687, &qword_27F928B18);
        sub_258385E40(&v695, &qword_27F928B18);
        sub_258385E40(&v439, &qword_27F928B18);
        sub_258385E40(&v675, &qword_27F928B18);
        sub_258385E40(&v470, &qword_27F928B18);
        (*(v398 + 8))(v335, v336);
        (*(v400 + 8))(v334, v401);
LABEL_214:
        v188 = 0.0;
        v425 = 0u;
        v426 = 0u;
        v423 = 0u;
        v424 = 0u;
        v420 = 0u;
        v421 = 0u;
        v419 = 0u;
        v422 = 0u;
        goto LABEL_215;
      }
    }

    goto LABEL_213;
  }

  if (!*(v96 + 140) || *(v96 + 140) == 33)
  {
    goto LABEL_169;
  }

  v269 = *(&v480 + 1);
  if (!*(&v480 + 1))
  {
    goto LABEL_217;
  }

  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v270 = *(v269 + 16);
  v271 = *(v270 + 24);

  os_unfair_lock_lock(v271);
  swift_beginAccess();
  v272 = *(v270 + 16);
  os_unfair_lock_unlock(v271);

  LODWORD(v270) = sub_2583E2618(v272);

  if (!v270)
  {
    goto LABEL_169;
  }

  v273 = *(&v480 + 1);
  if (!*(&v480 + 1))
  {
    goto LABEL_218;
  }

  swift_beginAccess();
  v274 = *(v273 + 16);
  v275 = *(v274 + 24);

  os_unfair_lock_lock(v275);
  swift_beginAccess();
  v276 = *(v274 + 16);
  os_unfair_lock_unlock(v275);

  v277 = sub_2583E2618(v276);

  v278 = *(v96 + 140);
  v14 = &v494;
  if (v278 != 33 && v278 == v277)
  {
    goto LABEL_169;
  }

  v467 = v479;
  v468 = v480;
  v469 = v481;
  v464 = v476;
  v465 = v477;
  v466 = v478;
  if (!*(&v480 + 1))
  {
    goto LABEL_219;
  }

  v279 = v478;
  v279.i32[3] = 0;
  v425 = v279;
  v460 = v478;
  v461 = v479;
  v462 = v480;
  v463 = v481;
  v458 = v476;
  v459 = v477;
  sub_2583D25EC(&v458, &v545);
  v280 = WorldPlane.distanceToEdge(point:)(v425);
  sub_258385E40(&v464, &qword_27F928B18);
  if ((v280 & 0x100000000) == 0)
  {
    if (*&v280 > 0.25)
    {
      v281 = v45[7];
      v549 = v45[6];
      v550 = v281;
      v551 = v45[8];
      v282 = v45[3];
      *&v545.tx = v45[2];
      v546 = v282;
      v283 = v45[5];
      v547 = v45[4];
      v548 = v283;
      v284 = v45[1];
      *&v545.a = *v45;
      *&v545.c = v284;
      if (sub_2583C77E4(&v545) == 1 || (LOBYTE(v545.a) & 1) != 0)
      {
LABEL_210:
        v360 = [objc_opt_self() standardUserDefaults];
        v361 = [v360 kPEShowStats];

        if (v361)
        {
          v362 = *&v15[4].tx;
          *&v60[8].c = *&v15[4].c;
          *&v60[8].tx = v362;
          v363 = *&v15[4].a;
          v444.f32[0] = v481;
          v364 = *&v15[3].a;
          *&v60[6].tx = *&v15[2].tx;
          *&v60[7].a = v364;
          v365 = *&v15[3].tx;
          *&v60[7].c = *&v15[3].c;
          *&v60[7].tx = v365;
          *&v60[8].a = v363;
          v366 = *(&v443 + 1);
          if (*(&v443 + 1))
          {
            v367 = *&v15[3].c;
            v14[156] = *&v15[3].tx;
            v368 = *&v15[4].c;
            v14[157] = *&v15[4].a;
            v14[158] = v368;
            v369 = *&v15[3].a;
            v14[153] = *&v15[2].tx;
            v14[154] = v369;
            v370 = v444.i32[0];
            v628 = v480;
            v624 = v367;
            sub_258385DB0(0, &qword_27F928550);
            v371 = *&v15[4].c;
            *&v60[11].a = *&v15[4].a;
            *&v60[11].c = v371;
            *&v60[11].tx = *&v15[4].tx;
            v451 = v481;
            v372 = *&v15[3].a;
            *&v60[9].tx = *&v15[2].tx;
            *&v60[10].a = v372;
            v373 = *&v15[3].tx;
            *&v60[10].c = *&v15[3].c;
            *&v60[10].tx = v373;
            sub_2583D25EC(&v446, &v452);
            v374 = sub_258428CC0();
            v375 = swift_allocObject();
            swift_weakInit();
            v376 = swift_allocObject();
            *(v376 + 16) = v375;
            v377 = v625;
            v378 = v627;
            *(v376 + 96) = v626;
            *(v376 + 112) = v378;
            v379 = v628;
            v380 = v623;
            *(v376 + 32) = v622;
            *(v376 + 48) = v380;
            *(v376 + 64) = v624;
            *(v376 + 80) = v377;
            *(v376 + 128) = v379;
            *(v376 + 136) = v366;
            *(v376 + 144) = v370;
            v438[4] = sub_2583D2804;
            v438[5] = v376;
            v438[0] = MEMORY[0x277D85DD0];
            v438[1] = 1107296256;
            v438[2] = sub_258383428;
            v438[3] = &block_descriptor_33;
            v381 = _Block_copy(v438);
            v382 = *&v60[8].c;
            *&v60[13].tx = *&v60[8].a;
            *&v60[14].a = v382;
            *&v60[14].c = *&v60[8].tx;
            v457 = v444.f32[0];
            v383 = *&v60[7].a;
            *&v60[12].c = *&v60[6].tx;
            *&v60[12].tx = v383;
            v384 = *&v60[7].tx;
            *&v60[13].a = *&v60[7].c;
            *&v60[13].c = v384;
            sub_2583D25EC(&v452, &v433);

            v334 = v397;
            sub_258428480();
            *&v433.a = MEMORY[0x277D84F90];
            sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608);
            sub_2583A3F30();
            v335 = v396;
            v336 = v399;
            sub_258428E70();
            MEMORY[0x259C7E5E0](0, v334, v335, v381);
            _Block_release(v381);

            goto LABEL_193;
          }
        }

LABEL_213:
        sub_258385E40(&v681, &qword_27F928B18);
        sub_258385E40(&v687, &qword_27F928B18);
        sub_258385E40(&v695, &qword_27F928B18);
        sub_258385E40(&v675, &qword_27F928B18);
        sub_258385E40(&v470, &qword_27F928B18);
        goto LABEL_214;
      }

      v443 = v705;
      v444 = v706;
      v445 = v707;
      v439 = v701;
      v440 = v702;
      v441 = v703;
      v442 = v704;
      sub_2583D26FC(&v439, &v427);
      if (PlaneSelector.debugOptions.getter())
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v427);
          v285 = v427.d;
          v286 = v427.tx;
          __swift_project_boxed_opaque_existential_0(&v427, *&v427.d);
          (*(*&v286 + 16))(&v580, &v588, &v594, &v616, &v610, COERCE_CGFLOAT(*&v285), COERCE_CGFLOAT(*&v286));
          __swift_destroy_boxed_opaque_existential_0(&v427);
        }
      }

      if (*(v96 + 168))
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v452);
          v287 = v452.d;
          v288 = v452.tx;
          __swift_project_boxed_opaque_existential_0(&v452, *&v452.d);
          v429 = v478;
          v430 = v479;
          v431 = v480;
          v432 = v481;
          v427 = v476;
          v428 = v477;
          (*(*&v288 + 24))(&v427, COERCE_CGFLOAT(*&v287), COERCE_CGFLOAT(*&v288));
          __swift_destroy_boxed_opaque_existential_0(&v452);
        }
      }

      if ((*(v96 + 168) & 2) != 0)
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v452);
          v289 = v452.d;
          v290 = v452.tx;
          __swift_project_boxed_opaque_existential_0(&v452, *&v452.d);
          *&v291.f64[0] = v409;
          *&v291.f64[1] = v408;
          (*(*&v290 + 32))(v426, COERCE_CGFLOAT(*&v289), COERCE_CGFLOAT(*&v290), COERCE_DOUBLE(vcvt_f32_f64(v291)));
          sub_258385E40(v45, &qword_27F928B30);
          __swift_destroy_boxed_opaque_existential_0(&v452);
          goto LABEL_210;
        }
      }

LABEL_209:
      sub_258385E40(v45, &qword_27F928B30);
      goto LABEL_210;
    }

LABEL_169:
    v429 = v478;
    v430 = v479;
    v431 = v480;
    v432 = v481;
    v427 = v476;
    v428 = v477;
    v292 = *v45;
    v293 = v45[1];
    v294 = v45[3];
    *&v545.tx = v45[2];
    v546 = v294;
    *&v545.a = v292;
    *&v545.c = v293;
    v295 = v45[4];
    v296 = v45[5];
    v297 = v45[7];
    v551 = v45[8];
    v298 = v45[6];
    v550 = v297;
    v549 = v298;
    v547 = v295;
    v548 = v296;
    if (sub_2583C77E4(&v545) == 1 || (LOBYTE(v545.a) & 1) != 0)
    {
      sub_258389808(&v427, &v439, &qword_27F928B18);
    }

    else
    {
      sub_258389808(v45, &v439, &qword_27F928B30);
      sub_258389808(&v427, &v439, &qword_27F928B18);
      if (PlaneSelector.debugOptions.getter())
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v439);
          v315 = v439.d;
          v316 = v439.tx;
          __swift_project_boxed_opaque_existential_0(&v439, *&v439.d);
          (*(*&v316 + 16))(&v580, &v588, &v594, &v616, &v610, COERCE_CGFLOAT(*&v315), COERCE_CGFLOAT(*&v316));
          __swift_destroy_boxed_opaque_existential_0(&v439);
        }
      }

      if (*(v96 + 168))
      {
        swift_beginAccess();
        if (*(v96 + 208))
        {
          sub_2583ACFA4(v96 + 184, &v464);
          v317 = v464.d;
          v318 = v464.tx;
          __swift_project_boxed_opaque_existential_0(&v464, *&v464.d);
          v441 = v478;
          v442 = v479;
          v443 = v480;
          v444.f32[0] = v481;
          v439 = v476;
          v440 = v477;
          (*(*&v318 + 24))(&v439, COERCE_CGFLOAT(*&v317), COERCE_CGFLOAT(*&v318));
          __swift_destroy_boxed_opaque_existential_0(&v464);
        }
      }

      if ((*(v96 + 168) & 2) != 0 && (swift_beginAccess(), *(v96 + 208)))
      {
        sub_2583ACFA4(v96 + 184, &v464);
        v319 = v464.d;
        v320 = v464.tx;
        __swift_project_boxed_opaque_existential_0(&v464, *&v464.d);
        *&v321.f64[0] = v409;
        *&v321.f64[1] = v408;
        (*(*&v320 + 32))(v426, COERCE_CGFLOAT(*&v319), COERCE_CGFLOAT(*&v320), COERCE_DOUBLE(vcvt_f32_f64(v321)));
        sub_258385E40(v45, &qword_27F928B30);
        __swift_destroy_boxed_opaque_existential_0(&v464);
      }

      else
      {
        sub_258385E40(v45, &qword_27F928B30);
      }
    }

    v299 = [objc_opt_self() standardUserDefaults];
    v300 = [v299 kPEShowStats];

    if (v300 && (v467 = v479, v468 = v480, v469 = v481, v464 = v476, v465 = v477, v466 = v478, (v301 = *(&v480 + 1)) != 0))
    {
      v302 = v469;
      v435 = v478;
      v436 = v479;
      v437 = v480;
      v433 = v476;
      v434 = v477;
      sub_258385DB0(0, &qword_27F928550);
      v454 = v478;
      v455 = v479;
      v456 = v480;
      v457 = v481;
      v452 = v476;
      v453 = v477;
      sub_2583D25EC(&v452, &v458);
      v303 = sub_258428CC0();
      v304 = swift_allocObject();
      swift_weakInit();
      v305 = swift_allocObject();
      *(v305 + 16) = v304;
      v306 = v436;
      *(v305 + 96) = v435;
      *(v305 + 112) = v306;
      v307 = v437;
      v308 = *&v433.c;
      *(v305 + 32) = *&v433.a;
      *(v305 + 48) = v308;
      v309 = v434;
      *(v305 + 64) = *&v433.tx;
      *(v305 + 80) = v309;
      *(v305 + 128) = v307;
      *(v305 + 136) = v301;
      *(v305 + 144) = v302;
      *&v624 = sub_2583D26D8;
      *(&v624 + 1) = v305;
      *&v622 = MEMORY[0x277D85DD0];
      *(&v622 + 1) = 1107296256;
      *&v623 = sub_258383428;
      *(&v623 + 1) = &block_descriptor_2;
      v310 = _Block_copy(&v622);
      v460 = v466;
      v461 = v467;
      v462 = v468;
      v463 = v469;
      v458 = v464;
      v459 = v465;
      sub_2583D25EC(&v458, &v446);

      v311 = v397;
      sub_258428480();
      *&v446.a = MEMORY[0x277D84F90];
      sub_2583D2798(&qword_27F928600, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928608);
      sub_2583A3F30();
      v312 = v396;
      v313 = v399;
      sub_258428E70();
      MEMORY[0x259C7E5E0](0, v311, v312, v310);
      _Block_release(v310);

      sub_258385E40(&v681, &qword_27F928B18);
      sub_258385E40(&v687, &qword_27F928B18);
      sub_258385E40(&v695, &qword_27F928B18);
      sub_258385E40(&v464, &qword_27F928B18);
      sub_258385E40(&v675, &qword_27F928B18);
      sub_258385E40(&v470, &qword_27F928B18);
      (*(v398 + 8))(v312, v313);
      (*(v400 + 8))(v311, v401);
    }

    else
    {
      sub_258385E40(&v681, &qword_27F928B18);
      sub_258385E40(&v687, &qword_27F928B18);
      sub_258385E40(&v695, &qword_27F928B18);
      sub_258385E40(&v675, &qword_27F928B18);
      sub_258385E40(&v470, &qword_27F928B18);
    }

    v314.i64[0] = *&v427.a;
    v424 = v314;
    v314.i64[0] = *&v427.b;
    v422 = v314;
    v425 = *&v427.tx;
    v426 = *&v427.c;
    v423 = v428;
    v420 = v431;
    v421 = v429;
    v419 = v430;
    v188 = v432;
    goto LABEL_215;
  }

LABEL_220:
  __break(1u);
}

uint64_t sub_2583CE3B4@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = a2[4];
  v145 = a2[5];
  v11 = a2[7];
  v146 = a2[6];
  v147 = v11;
  v148 = a2[8];
  v12 = *a2;
  v141 = a2[1];
  v13 = a2[3];
  v142 = a2[2];
  v143 = v13;
  v144 = v10;
  v140 = v12;
  result = sub_2583C77E4(&v140);
  v15 = 0uLL;
  if (result == 1 || (v120 = v146, v121 = v147, v122 = v148, v118[0] = v141, v118[1] = v142, v118[2] = v143, v118[3] = v144, v119 = v145, (v16 = *(&v147 + 1)) == 0))
  {
    v21 = 0;
LABEL_31:
    v68 = 0uLL;
    v69 = 0uLL;
    v66 = 0uLL;
    v67 = 0uLL;
    v64 = 0uLL;
    v65 = 0uLL;
    goto LABEL_32;
  }

  v99 = v5;
  v101 = v119;
  swift_retain_n();
  v17 = [a1 camera];
  memset(v149, 0, 64);
  v149[64] = 1;
  v18 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v17, v149);
  v105 = v19;
  v111 = v18;

  WorldPlane.hitTest(hitRay:withPlaneType:)(7, v123, v111, v105);
  sub_258385E40(v118, &qword_27F928B18);
  if (v125)
  {
    v112 = v124;
    sub_258385E40(v123, &qword_27F928B18);
    v20 = v112;
    v20.i32[3] = 0;
  }

  else
  {
    v22 = v101;
    v22.i32[3] = 0;
    v102 = v22;
    sub_2583EF3B4(a1, v126);
    v106 = v128;
    v113 = v127;
    *v91 = v130;
    v95 = v129;
    sub_2583EF3B4(a1, v131);
    _s17MeasureFoundation0A6CameraC12projectPoint_14viewProjection12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v102, v113, v106, v95, *v91, v131[0]);
    if (v23 < 0.0 || v23 > 1.0)
    {
      goto LABEL_30;
    }

    *&v24 = a4;
    *&v25 = a5;
    v26.n128_u64[0] = __PAIR64__(v25, v24);
    v26.n128_u64[1] = LODWORD(v23);
    v114 = v26;
    sub_2583EF3B4(a1, v132);
    v103 = v134;
    v107 = v133;
    *v92 = v136;
    v96 = v135;
    sub_2583EF3B4(a1, v137);
    *v20.i64 = _s17MeasureFoundation0A6CameraC14unprojectPoint_17viewProjectionInv12viewportSizes5SIMD3VySfGAI_So13simd_float4x4as5SIMD2VySfGtFZ_0(v114, v107, v103, v96, *v92, v137[0]);
  }

  v115 = v20;
  if (qword_27F927AC8 != -1)
  {
    swift_once();
  }

  v27 = static MeasureCore.shared;
  v28 = *(static MeasureCore.shared + 80);
  if (!v28)
  {
    goto LABEL_30;
  }

  v29 = *(v28 + 272);

  [v29 lock];
  *&v30 = COERCE_DOUBLE(SegmentationProcessor.projectPoint(_:)(v115));
  if (v32)
  {
    [v29 unlock];

LABEL_30:
    result = sub_258385E40(v118, &qword_27F928B18);
    v21 = 0;
    v15 = 0uLL;
    goto LABEL_31;
  }

  v33 = *&v30;
  v34 = v31;
  [v29 lock];
  sub_2583E685C(v33, v34);
  LODWORD(v37) = sub_2583E6944(v35, v36);
  [v29 unlock];
  [v29 unlock];

  if (!v37 || v37 == 33)
  {
    goto LABEL_30;
  }

  swift_beginAccess();
  v38 = *(v16 + 16);
  v39 = *(v38 + 24);
  v108 = v37;
  sub_258389808(v118, v138, &qword_27F928B18);

  os_unfair_lock_lock(v39);
  swift_beginAccess();
  v40 = *(v38 + 16);
  os_unfair_lock_unlock(v39);

  LOBYTE(v38) = sub_2583E2618(v40);

  v37 = v37;
  sub_258385E40(v118, &qword_27F928B18);
  if (v37 == v38)
  {
    v41 = &property descriptor for Transformer.viewToClip;
    goto LABEL_22;
  }

  v42 = *(v27 + 80);
  v41 = &property descriptor for Transformer.viewToClip;
  if (!v42)
  {
    goto LABEL_21;
  }

  v43 = *(v42 + 272);

  [v43 lock];
  *&v44 = COERCE_DOUBLE(SegmentationProcessor.projectPoint(_:)(v115));
  if (v46)
  {
    [v43 unlock];

    goto LABEL_21;
  }

  v70 = *&v44;
  v71 = v45;
  [v43 lock];
  sub_2583E685C(v70, v71);
  v73 = v72;
  v98 = v74;
  result = sub_2583E6944(v72, v74);
  v75 = result;
  v94 = v43;
  if (!result || result == 33)
  {
LABEL_65:
    [v94 unlock];
    [v94 unlock];

    v37 = v108;
    if (v75 != 33 && v108 == v75)
    {
LABEL_22:
      *(v99 + 140) = v37;
      v51 = *(v27 + 80);
      if (v51)
      {
        v52 = *(v51 + 272);

        [v52 v41[384]];
        v53 = SegmentationProcessor.projectPoint(_:)(v115);
        if (v55)
        {
          v56 = 0;
          v57 = 0;
          v58 = 1;
        }

        else
        {
          v56 = SegmentationProcessor.normal(at:)(*&v53, v54);
          v57 = v59;
          v58 = v60;
        }

        [*(v51 + 272) unlock];
      }

      else
      {
        v56 = 0;
        v57 = 0;
        v58 = 1;
      }

      if (sub_2583D0C70(a1, 0, v37, v56, v57, v58 & 1))
      {

        v61 = [a1 camera];
        v62 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v61, v149);
        v109 = v63;
        v116 = v62;

        WorldPlane.hitTest(hitRay:withPlaneType:)(1, v138, v116, v109);
        v110 = v138[1];
        v117 = v138[0];
        v100 = v138[3];
        v104 = v138[2];
        *v93 = v138[5];
        v97 = v138[4];
        v89 = v138[6];
        v21 = v139;

        sub_258385E40(v118, &qword_27F928B18);

        v65 = v89;
        v64 = *v93;
        v67 = v97;
        v66 = v100;
        v69 = v104;
        v68 = v110;
        v15 = v117;
LABEL_32:
        *a3 = v15;
        *(a3 + 16) = v68;
        *(a3 + 32) = v69;
        *(a3 + 48) = v66;
        *(a3 + 64) = v67;
        *(a3 + 80) = v64;
        *(a3 + 96) = v65;
        *(a3 + 112) = v21;
        return result;
      }

      goto LABEL_30;
    }

LABEL_21:
    v47 = *(v16 + 16);
    v48 = *(v47 + 24);
    sub_258389808(v118, v138, &qword_27F928B18);

    os_unfair_lock_lock(v48);
    swift_beginAccess();
    v49 = *(v47 + 16);
    os_unfair_lock_unlock(v48);

    v50 = sub_2583E2618(v49);

    v37 = v50;
    sub_258385E40(v118, &qword_27F928B18);
    goto LABEL_22;
  }

  v76 = v98 - 5;
  if (__OFSUB__(v98, 5))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    v75 = 0;
    goto LABEL_65;
  }

  v77 = __OFSUB__(v73, 5);
  v78 = -5;
  v87 = v77;
  while (1)
  {
    v88 = v78;
    if (v77)
    {
      break;
    }

    v79 = -4;
    v80 = v73 - 5;
    v90 = v76;
    while (1)
    {
      v81 = *(v42 + 280);
      if (!v81)
      {
LABEL_52:
        result = 0;
        goto LABEL_53;
      }

      result = 0;
      if ((v80 & 0x8000000000000000) == 0)
      {
        v82 = v81[9];
        if (v80 < v82 && (v76 & 0x8000000000000000) == 0)
        {
          if (v76 >= v81[10])
          {
            goto LABEL_52;
          }

          v83 = v76 * v82;
          if ((v76 * v82) >> 64 != (v76 * v82) >> 63)
          {
            goto LABEL_70;
          }

          v84 = __OFADD__(v83, v80);
          v85 = v83 + v80;
          if (v84)
          {
            goto LABEL_71;
          }

          v86 = *(v81[6] + v85);
          if ([objc_opt_self() jasperAvailable])
          {
            result = _s17MeasureFoundation18SegmentationResultC5LabelO8rawValueAESgs5UInt8V_tcfC_0(v86);
            v41 = &property descriptor for Transformer.viewToClip;
            v76 = v90;
            if (result == 33)
            {
              goto LABEL_64;
            }
          }

          else
          {
            if (v86 >= 0xD)
            {
              v75 = 0;
              v41 = &property descriptor for Transformer.viewToClip;
              goto LABEL_65;
            }

            result = byte_25842F21A[v86];
            v41 = &property descriptor for Transformer.viewToClip;
            v76 = v90;
          }
        }
      }

LABEL_53:
      if (v75 != result)
      {
        goto LABEL_64;
      }

      if (v79 == 6)
      {
        break;
      }

      v84 = __OFADD__(v73, v79);
      v80 = v73 + v79++;
      if (v84)
      {
        goto LABEL_69;
      }
    }

    if (v88 == 5)
    {
      goto LABEL_65;
    }

    v78 = v88 + 1;
    v76 = v98 + v88 + 1;
    v77 = v87;
    if (__OFADD__(v98, v88 + 1))
    {
      goto LABEL_63;
    }
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

__n128 sub_2583CEC74@<Q0>(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, float32x4_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, float32x4_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v249 = a8;
  v16 = a4[1];
  v382 = *a4;
  v383 = v16;
  v17 = a4[3];
  v384 = a4[2];
  v385 = v17;
  v18 = a4[5];
  v244 = a4[4];
  v19 = a4[6].i64[0];
  v20 = a4[6].i64[1];
  v246.super.isa = a1;
  v247 = v20;
  v381 = v19;
  v380 = v18;
  v245 = a4[7].i32[0];
  v21 = *a2;
  v387 = *(a2 + 16);
  v386 = v21;
  v22 = *(a2 + 32);
  v23 = *(a2 + 48);
  v24 = *(a2 + 64);
  v25 = *(a2 + 80);
  v26 = *(a2 + 96);
  v248.i64[0] = *(a2 + 104);
  v392 = v26;
  v391 = v25;
  v390 = v24;
  v388 = v22;
  v389 = v23;
  v27 = *(a2 + 112);
  v28 = *a5;
  v394 = *(a5 + 16);
  v393 = v28;
  v29 = *(a5 + 32);
  v30 = *(a5 + 48);
  v31 = *(a5 + 64);
  v32 = *(a5 + 80);
  v33 = *(a5 + 104);
  v399 = *(a5 + 96);
  v398 = v32;
  v397 = v31;
  v395 = v29;
  v396 = v30;
  v34 = *(a5 + 112);
  v35 = *a6;
  v36 = *(a6 + 16);
  v37 = *(a6 + 48);
  v402 = *(a6 + 32);
  v403 = v37;
  v400 = v35;
  v401 = v36;
  v38 = *(a6 + 64);
  v39 = *(a6 + 80);
  v40 = *(a6 + 96);
  v407 = *(a6 + 112);
  v405 = v39;
  v406 = v40;
  v404 = v38;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928B40);
  v41 = MEMORY[0x28223BE20](v242);
  v233 = v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v234 = v217 - v44;
  MEMORY[0x28223BE20](v43);
  v237 = v217 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928B48);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v231 = v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v235 = v217 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v238 = v217 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v230 = v217 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v236 = v217 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v239 = v217 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v232 = v217 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v240 = v217 - v62;
  MEMORY[0x28223BE20](v61);
  v241 = v217 - v63;
  v243 = sub_2584283F0();
  v64 = MEMORY[0x28223BE20](v243);
  v65 = MEMORY[0x28223BE20](v64);
  MEMORY[0x28223BE20](v65);
  v70 = *(a6 + 104);
  if (v70 && (v71 = *(a6 + 112), vcvts_n_f32_s64(*(v9 + 48), 1uLL) <= v71))
  {
    v92 = *(a6 + 80);
    v255 = *(a6 + 64);
    v256 = v92;
    v257 = *(a6 + 96);
    v93 = *(a6 + 16);
    v251 = *a6;
    v252 = v93;
    v94 = *(a6 + 48);
    v253 = *(a6 + 32);
    v254 = v94;
    v341 = v255;
    v342 = v92;
    v343 = *(a6 + 96);
    v344.i32[0] = *(a6 + 112);
    v338 = v93;
    v337 = v251;
    v339 = v253;
    v340 = v94;
    sub_2583D25EC(&v337, &v372);
    v95 = v249;
  }

  else
  {
    v227 = v69;
    v228 = v217 - v66;
    v225 = v68;
    v229 = v67;
    v72 = a7[7];
    v343 = a7[6];
    v344 = v72;
    v345 = a7[8];
    v73 = a7[3];
    v339 = a7[2];
    v340 = v73;
    v74 = a7[4];
    v342 = a7[5];
    v341 = v74;
    v75 = *a7;
    v338 = a7[1];
    v337 = v75;
    if (sub_2583C77E4(&v337) == 1)
    {
      v313 = 0.0;
      v312 = 0u;
      v311 = 0u;
      v310 = 0u;
      v309 = 0u;
      v308 = 0u;
      v307 = 0u;
      v306 = 0u;
    }

    else
    {
      v376 = v342;
      v377 = v343;
      v378 = v344;
      v379 = v345.f32[0];
      v372 = v338;
      v373 = v339;
      v374 = v340;
      v375 = v341;
      sub_258389808(&v372, &v364, &qword_27F928B18);
      v310 = v376;
      v311 = v377;
      v312 = v378;
      v313 = v379;
      v306 = v372;
      v307 = v373;
      v308 = v374;
      v309 = v375;
    }

    v76 = *(a3 + 16);
    v283 = *a3;
    v284 = v76;
    v77 = *(a3 + 48);
    v285 = *(a3 + 32);
    v286 = v77;
    v78 = *(a3 + 80);
    v250 = *(a3 + 64);
    v281 = v78;
    v79 = *(a3 + 104);
    v282 = *(a3 + 96);
    v80 = *(a3 + 112);
    if (!*(a2 + 104))
    {
      if (!*(a5 + 104))
      {
        sub_258389808(a6, &v372, &qword_27F928B18);
        sub_258389808(a3, &v372, &qword_27F928B18);
        v298 = v404;
        v299 = v405;
        v300 = v406;
        v301 = v407;
        v294 = v400;
        v295 = v401;
        v96 = &v393;
        v296 = v402;
        v297 = v403;
        isa = v246.super.isa;
        v91 = v247;
        goto LABEL_20;
      }

      sub_258389808(a5, &v372, &qword_27F928B18);
      sub_258389808(a3, &v372, &qword_27F928B18);
      sub_258389808(a5, &v372, &qword_27F928B18);
      v291 = v397;
      v292 = v398;
      v293 = v399;
      v287 = v393;
      v288 = v394;
      v27 = v34;
      v290 = v396;
      v289 = v395;
      isa = v246.super.isa;
      v91 = v247;
LABEL_19:
      v298 = v291;
      v299 = v292;
      v294 = v287;
      v295 = v288;
      v297 = v290;
      v296 = v289;
      *&v300 = v293;
      *(&v300 + 1) = v33;
      v96 = &v287;
      v34 = v27;
      *&v301 = v27;
LABEL_20:
      v97 = v245;
      v98 = v96[5];
      v302[4] = v96[4];
      v302[5] = v98;
      v99 = v96[6].i64[0];
      v100 = v96[1];
      v302[0] = *v96;
      v302[1] = v100;
      v101 = v96[2];
      v102 = v96[3];
      v302[3] = v102;
      v302[2] = v101;
      v305 = v34;
      v102.i32[0] = v80;
      v90.i64[0] = 0;
      if (!v79)
      {
        v102.f32[0] = 0.0;
      }

      v226 = v102;
      v303 = v99;
      v304 = v33;
      v103 = v250;
      if (!v91)
      {
        if (!v79)
        {
          v152 = a4[5];
          v318 = a4[4];
          v319 = v152;
          v153 = a4[6].i64[0];
          v154 = a4[1];
          v314 = *a4;
          v315 = v154;
          v156 = a4[2];
          v317 = a4[3];
          v155.i64[1] = v317.i64[1];
          v316 = v156;
          v155.i64[0] = 0;
          v248 = v155;
          v130 = INFINITY;
          v320 = v153;
          goto LABEL_44;
        }

LABEL_30:
        v248 = v90;
        v364 = v283;
        v365 = v284;
        v366 = v285;
        v367 = v286;
        v369 = v281;
        v368 = v103;
        v370.i64[0] = v282;
        v370.i64[1] = v79;
        v371 = *&v80;
        v130 = WorldPlaneHitTestResult.distanceToCamera(in:)(isa);
        v131 = a4[5];
        v318 = a4[4];
        v319 = v131;
        v132 = a4[6].i64[1];
        v320 = a4[6].i64[0];
        v133 = a4[1];
        v314 = *a4;
        v315 = v133;
        v134 = a4[2];
        v317 = a4[3];
        v316 = v134;
        if (v132)
        {
          v135 = a4[7].i32[0];
LABEL_33:
          v325 = v318;
          v326 = v319;
          v321 = v314;
          v322 = v315;
          v324 = v317;
          v323 = v316;
          v327 = v320;
          v328 = v132;
          v329 = v135;
          if ((v130 - WorldPlaneHitTestResult.distanceToCamera(in:)(isa)) <= 0.03)
          {
            v95 = v249;
            goto LABEL_40;
          }

          v140 = *(&v300 + 1);
          v103 = v250;
          if (*(&v300 + 1) && v79)
          {
            v141 = *&v80;
            v258 = v294;
            v259 = v295;
            v260 = v296;
            v261 = v297;
            v142 = v298;
            v251 = v299;
            v252.i64[0] = v300;
            v80 = v301;
            v143 = vsub_f32(*v250.i8, *v298.f32);
            v144 = vmul_f32(v143, v143);
            v145 = vsub_f32(*v244.i8, *v298.f32);
            v146 = vmul_f32(v145, v145);
            v147 = vsub_f32(vzip1_s32(*&vextq_s8(v244, v244, 8uLL), *&vextq_s8(v250, v250, 8uLL)), vdup_laneq_s32(v298, 2));
            v148 = vadd_f32(vmul_f32(v147, v147), vadd_f32(vzip1_s32(v146, v144), vzip2_s32(v146, v144)));
            if ((vcgt_f32(vdup_lane_s32(v148, 1), v148).u8[0] & 1) != 0 && v148.f32[0] < 0.0009)
            {
              v346 = v283;
              v347 = v284;
              v348 = v285;
              v349 = v286;
              v350 = v250;
              v351 = v281;
              v352 = v282;
              v353 = v79;
              v354 = LODWORD(v141);
              v358 = v385;
              v357 = v384;
              v356 = v383;
              v355 = v382;
              v359 = v244;
              v360 = v380;
              v361 = v381;
              v362 = v91;
              v363 = v245;
              v248 = v298;
              sub_2583D25EC(&v355, &v267);
              sub_258385E40(&v346, &qword_27F928B18);
              v142 = v248;
              v149 = a4[1];
              v283 = *a4;
              v284 = v149;
              v150 = a4[3];
              v285 = a4[2];
              v286 = v150;
              v103 = a4[4];
              v151 = a4[5];
              v282 = a4[6].i64[0];
              v141 = a4[7].f32[0];
              v280 = v261;
              v281 = v151;
              v278 = v259;
              v279 = v260;
              v277 = v258;
              v276 = v252.i64[0];
              v79 = v132;
              v275 = v251;
            }

            else
            {
              v277 = v294;
              v278 = v295;
              v279 = v296;
              v280 = v297;
              v275 = v299;
              v276 = v300;
            }

            v95 = v249;
LABEL_58:
            v346 = v277;
            v347 = v278;
            v348 = v279;
            v349 = v280;
            v248 = v142;
            v350 = v142;
            v351 = v275;
            v352 = v276;
            v353 = v140;
            v354 = v80;
            v250 = v103;
            if (v79)
            {
              v355 = v283;
              v356 = v284;
              v357 = v285;
              v358 = v286;
              v360 = v281;
              v359 = v103;
              v361 = v282;
              v362 = v79;
              *&v363 = v141;
              v166 = WorldPlaneHitTestResult.distanceToCamera(in:)(isa);
            }

            else
            {
              v166 = INFINITY;
            }

            v167 = WorldPlaneHitTestResult.distanceToCamera(in:)(isa);
            v271 = v298;
            v272 = v299;
            v273 = v300;
            v274 = v301;
            v267 = v294;
            v268 = v295;
            v269 = v296;
            v270 = v297;
            sub_2583D25EC(&v267, &v258);
            v168 = WorldPlane.confidence.getter();
            sub_258385E40(v302, &qword_27F928B18);
            sub_258385E40(&v294, &qword_27F928B18);
            v169 = (1.0 - v168) * ((1.0 - v168) * 0.015);
            if (v169 < (v166 - v167))
            {
              sub_258385E40(&v306, &qword_27F928B18);
              v258 = v283;
              v259 = v284;
              v260 = v285;
              v261 = v286;
              v262 = v250;
              v263 = v281;
              v264 = v282;
              v265 = v79;
              v266 = v141;
LABEL_63:
              sub_258385E40(&v258, &qword_27F928B18);
              v283 = v277;
              v284 = v278;
              v285 = v279;
              v286 = v280;
              v281 = v275;
              v170 = v248;
              v79 = v140;
              v282 = v276;
LABEL_93:
              v258 = v283;
              v259 = v284;
              v262 = v170;
              v263 = v281;
              v260 = v285;
              v261 = v286;
              v264 = v282;
              v265 = v79;
              v266 = *&v80;
              v267 = v283;
              v268 = v284;
              v269 = v285;
              v270 = v286;
              v271 = v170;
              v272 = v281;
              *&v273 = v282;
              *(&v273 + 1) = v79;
              v274 = v80;
              sub_258389808(&v258, &v251, &qword_27F928B18);
              sub_258385E40(&v267, &qword_27F928B18);
              v70 = v265;
              v257 = v264;
              v255 = v262;
              v256 = v263;
              v251 = v258;
              v252 = v259;
              v253 = v260;
              v254 = v261;
              v71 = v266;
              goto LABEL_94;
            }

            if ((v167 + -0.0005) >= (v166 - v169))
            {
              sub_258385E40(&v306, &qword_27F928B18);
            }

            else if (v312.i64[1])
            {
              v171 = *(v312.i64[1] + 48);
              sub_258385E40(&v306, &qword_27F928B18);
              if (v171 == 3)
              {
                v258 = v283;
                v259 = v284;
                v260 = v285;
                v261 = v286;
                v262 = v250;
                v263 = v281;
                v264 = v282;
                v265 = v79;
                v266 = v141;
                goto LABEL_63;
              }
            }

            sub_258385E40(&v294, &qword_27F928B18);
            *&v80 = v141;
LABEL_92:
            v170 = v250;
            goto LABEL_93;
          }

LABEL_45:
          v157 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v226, v248)), 0);
          v158 = &v283;
          if (v248.f32[0] > v226.f32[0])
          {
            v158 = &v382;
          }

          v159 = v158[1];
          v160 = vbslq_s8(v157, v244, v103);
          v161 = &v281;
          v355 = *v158;
          v356 = v159;
          if (v248.f32[0] <= v226.f32[0])
          {
            v162 = v79;
          }

          else
          {
            v161 = &v380;
            v162 = v91;
          }

          if (v248.f32[0] <= v226.f32[0])
          {
            v163 = v80;
          }

          else
          {
            v163 = v97;
          }

          v164 = v158[3];
          v357 = v158[2];
          v358 = v164;
          v165 = *(v161 + 2);
          v360 = *v161;
          v359 = v160;
          v361 = v165;
          v362 = v162;
          v363 = v163;
          v346 = v283;
          v347 = v284;
          v348 = v285;
          v349 = v286;
          v350 = v103;
          v351 = v281;
          v352 = v282;
          v353 = v79;
          v354 = v80;
          sub_258389808(&v355, &v267, &qword_27F928B18);
          sub_258385E40(&v346, &qword_27F928B18);
          v283 = v355;
          v284 = v356;
          v285 = v357;
          v286 = v358;
          v103 = v359;
          v281 = v360;
          v79 = v362;
          v282 = v361;
          v80 = v363;
LABEL_54:
          v95 = v249;
          v140 = *(&v300 + 1);
          if (!*(&v300 + 1))
          {
LABEL_91:
            v250 = v103;
            sub_258385E40(v302, &qword_27F928B18);
            sub_258385E40(&v306, &qword_27F928B18);
            goto LABEL_92;
          }

          goto LABEL_55;
        }

        v103 = v250;
LABEL_44:
        if ((v130 + -INFINITY) <= 0.03)
        {
          goto LABEL_54;
        }

        goto LABEL_45;
      }

      v90.i32[0] = v245;
      if (!v79)
      {
        v248 = v90;
        v136 = a4[5];
        v318 = a4[4];
        v319 = v136;
        v137 = a4[6].i64[0];
        v138 = a4[1];
        v314 = *a4;
        v315 = v138;
        v139 = a4[2];
        v317 = a4[3];
        v316 = v139;
        v130 = INFINITY;
        v135 = v245;
        v320 = v137;
        v132 = v91;
        goto LABEL_33;
      }

      v104 = vsubq_f32(v244, v250);
      v105 = vmulq_f32(v104, v104);
      if ((v105.f32[2] + vaddv_f32(*v105.f32)) >= 0.000001)
      {
        goto LABEL_30;
      }

      v106 = v312.i64[1];
      if (!v312.i64[1])
      {
        goto LABEL_30;
      }

      v219 = v80;
      v248 = v90;
      swift_beginAccess();
      v107 = *(v106 + 16);
      v108 = *(v107 + 24);

      sub_258389808(&v306, &v364, &qword_27F928B18);
      os_unfair_lock_lock(v108);
      swift_beginAccess();
      v109 = *(v107 + 16);
      os_unfair_lock_unlock(v108);

      sub_258385E40(&v306, &qword_27F928B18);
      v110 = [v109 identifier];

      v111 = v227;
      sub_2584283D0();

      v112 = v228;
      v113 = v229;
      v114 = v243;
      v217[0] = v229[4];
      v217[1] = v229 + 4;
      (v217[0])(v228, v111, v243);
      v115 = v79;
      v116 = v241;
      v220 = v113[2];
      v221 = v113 + 2;
      v220(v241, v112, v114);
      v117 = v113[7];
      v117(v116, 0, 1, v114);
      swift_beginAccess();
      v218 = v115;
      v118 = *(v115 + 16);
      v119 = *(v118 + 24);

      os_unfair_lock_lock(v119);
      swift_beginAccess();
      v120 = *(v118 + 16);
      os_unfair_lock_unlock(v119);

      v121 = [v120 identifier];

      v122 = v240;
      sub_2584283D0();

      v223 = v117;
      v224 = v113 + 7;
      v117(v122, 0, 1, v114);
      v123 = *(v242 + 48);
      v124 = v237;
      sub_258389808(v116, v237, &unk_27F928B48);
      sub_258389808(v122, v124 + v123, &unk_27F928B48);
      v125 = v229 + 6;
      v126 = v229[6];
      v127 = v126(v124, 1, v114);
      v222 = v125;
      v227 = v126;
      if (v127 == 1)
      {
        sub_258385E40(v122, &unk_27F928B48);
        sub_258385E40(v241, &unk_27F928B48);
        v128 = v126(v124 + v123, 1, v114);
        v129 = v114;
        v79 = v218;
        if (v128 == 1)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v172 = v232;
        sub_258389808(v124, v232, &unk_27F928B48);
        v129 = v114;
        if (v126(v124 + v123, 1, v114) != 1)
        {
          v186 = v225;
          (v217[0])(v225, v124 + v123, v114);
          sub_2583D2798(&qword_27F927FD0, MEMORY[0x277CC95F0]);
          v187 = sub_258428600();
          v188 = v229[1];
          v188(v186, v243);
          sub_258385E40(v240, &unk_27F928B48);
          sub_258385E40(v241, &unk_27F928B48);
          v188(v172, v243);
          v129 = v243;
          sub_258385E40(v124, &unk_27F928B48);
          v79 = v218;
          if (v187)
          {
            goto LABEL_83;
          }

          goto LABEL_73;
        }

        sub_258385E40(v240, &unk_27F928B48);
        sub_258385E40(v241, &unk_27F928B48);
        (v229[1])(v172, v114);
        v79 = v218;
      }

      sub_258385E40(v124, &unk_27F928B40);
LABEL_73:
      v173 = v239;
      v220(v239, v228, v129);
      v174 = v223;
      v223(v173, 0, 1, v129);
      v175 = v247;
      swift_beginAccess();
      v176 = *(v175 + 16);
      v177 = *(v176 + 24);

      os_unfair_lock_lock(v177);
      swift_beginAccess();
      v178 = *(v176 + 16);
      os_unfair_lock_unlock(v177);

      v179 = [v178 identifier];

      v180 = v236;
      sub_2584283D0();

      v174(v180, 0, 1, v243);
      v129 = v243;
      v181 = *(v242 + 48);
      v182 = v173;
      v124 = v234;
      sub_258389808(v182, v234, &unk_27F928B48);
      sub_258389808(v180, v124 + v181, &unk_27F928B48);
      v183 = v227;
      if (v227(v124, 1, v129) == 1)
      {
        sub_258385E40(v180, &unk_27F928B48);
        sub_258385E40(v239, &unk_27F928B48);
        if (v227(v124 + v181, 1, v129) == 1)
        {
LABEL_75:
          sub_258385E40(v124, &unk_27F928B48);
          goto LABEL_83;
        }

        goto LABEL_78;
      }

      v184 = v230;
      sub_258389808(v124, v230, &unk_27F928B48);
      if (v183(v124 + v181, 1, v129) == 1)
      {
        sub_258385E40(v236, &unk_27F928B48);
        sub_258385E40(v239, &unk_27F928B48);
        (v229[1])(v184, v129);
LABEL_78:
        sub_258385E40(v124, &unk_27F928B40);
        v185 = v229[1];
LABEL_79:
        v185(v228, v129);
        isa = v246.super.isa;
        v91 = v247;
        v103 = v250;
        v97 = v245;
        v90 = v248;
        v80 = v219;
        goto LABEL_30;
      }

      v189 = v124 + v181;
      v190 = v225;
      (v217[0])(v225, v189, v129);
      sub_2583D2798(&qword_27F927FD0, MEMORY[0x277CC95F0]);
      LODWORD(v241) = sub_258428600();
      v185 = v229[1];
      v185(v190, v129);
      sub_258385E40(v236, &unk_27F928B48);
      sub_258385E40(v239, &unk_27F928B48);
      v185(v184, v129);
      sub_258385E40(v124, &unk_27F928B48);
      if ((v241 & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_83:
      v191 = v238;
      v220(v238, v228, v129);
      v192 = v223;
      v223(v191, 0, 1, v129);
      v193 = v247;
      swift_beginAccess();
      v194 = *(v193 + 16);
      v195 = *(v194 + 24);

      os_unfair_lock_lock(v195);
      swift_beginAccess();
      v196 = *(v194 + 16);
      os_unfair_lock_unlock(v195);

      v197 = [v196 identifier];

      v198 = v235;
      sub_2584283D0();

      v192(v198, 0, 1, v243);
      v199 = v243;
      v200 = *(v242 + 48);
      v201 = v191;
      v202 = v233;
      sub_258389808(v201, v233, &unk_27F928B48);
      sub_258389808(v198, v202 + v200, &unk_27F928B48);
      v203 = v227;
      if (v227(v202, 1, v199) == 1)
      {
        sub_258385E40(v198, &unk_27F928B48);
        sub_258385E40(v238, &unk_27F928B48);
        (v229[1])(v228, v199);
        v204 = v227(v202 + v200, 1, v199);
        v95 = v249;
        isa = v246.super.isa;
        v80 = v219;
        if (v204 == 1)
        {
          sub_258385E40(v202, &unk_27F928B48);
          goto LABEL_90;
        }
      }

      else
      {
        v205 = v231;
        sub_258389808(v202, v231, &unk_27F928B48);
        if (v203(v202 + v200, 1, v199) != 1)
        {
          v208 = v225;
          (v217[0])(v225, v202 + v200, v199);
          sub_2583D2798(&qword_27F927FD0, MEMORY[0x277CC95F0]);
          v209 = sub_258428600();
          v210 = v229[1];
          v210(v208, v199);
          sub_258385E40(v235, &unk_27F928B48);
          sub_258385E40(v238, &unk_27F928B48);
          v210(v228, v199);
          v210(v231, v199);
          v80 = v219;
          sub_258385E40(v202, &unk_27F928B48);
          v95 = v249;
          isa = v246.super.isa;
          if (v209)
          {
LABEL_90:
            v355 = v283;
            v356 = v284;
            v357 = v285;
            v358 = v286;
            v359 = v250;
            v360 = v281;
            v361 = v282;
            v362 = v79;
            v363 = v80;
            v367 = v385;
            v366 = v384;
            v365 = v383;
            v364 = v382;
            v368 = v244;
            v369 = v380;
            v370.i64[0] = v381;
            v370.i64[1] = v247;
            v371 = *&v245;
            sub_2583D25EC(&v364, &v346);
            sub_258385E40(&v355, &qword_27F928B18);
            v79 = a4[6].i64[1];
            v282 = a4[6].i64[0];
            v211 = a4[1];
            v283 = *a4;
            v284 = v211;
            v212 = a4[3];
            v285 = a4[2];
            v286 = v212;
            v103 = a4[4];
            v281 = a4[5];
            v80 = a4[7].i32[0];
            v140 = *(&v300 + 1);
            if (!*(&v300 + 1))
            {
              goto LABEL_91;
            }

            goto LABEL_55;
          }

LABEL_40:
          v103 = v250;
          v140 = *(&v300 + 1);
          if (!*(&v300 + 1))
          {
            goto LABEL_91;
          }

LABEL_55:
          v141 = *&v80;
          v80 = v301;
          v277 = v294;
          v278 = v295;
          v279 = v296;
          v280 = v297;
          v142 = v298;
          v275 = v299;
          v276 = v300;
          goto LABEL_58;
        }

        v206 = v205;
        sub_258385E40(v235, &unk_27F928B48);
        sub_258385E40(v238, &unk_27F928B48);
        v207 = v229[1];
        v207(v228, v199);
        v207(v206, v199);
        v95 = v249;
        isa = v246.super.isa;
        v80 = v219;
      }

      sub_258385E40(v202, &unk_27F928B40);
      goto LABEL_40;
    }

    v368 = v390;
    v369 = v391;
    v364 = v386;
    v365 = v387;
    v367 = v389;
    v366 = v388;
    v370.i64[0] = v392;
    v370.i64[1] = v248.i64[0];
    v371 = v27;
    v372 = v386;
    v373 = v387;
    v374 = v388;
    v375 = v389;
    v379 = v27;
    v378 = v370;
    v377 = v391;
    v376 = v390;
    v33 = *(a5 + 104);
    if (!v33)
    {
      sub_258389808(a2, &v355, &qword_27F928B18);
      sub_258389808(a2, &v355, &qword_27F928B18);
      sub_258389808(a3, &v355, &qword_27F928B18);
      v291 = v390;
      v292 = v391;
      v293 = v392;
      v287 = v386;
      v288 = v387;
      v290 = v389;
      v289 = v388;
      isa = v246.super.isa;
      goto LABEL_18;
    }

    v81 = *(a5 + 112);
    v82 = *(a5 + 80);
    v332 = *(a5 + 64);
    v333 = v82;
    v83 = *(a5 + 96);
    v84 = *(a5 + 16);
    v330[0] = *a5;
    v330[1] = v84;
    v85 = *(a5 + 32);
    v331 = *(a5 + 48);
    v330[2] = v85;
    v334 = v83;
    v335 = v33;
    v336 = v81;
    v346 = v330[0];
    v347 = v84;
    v348 = v85;
    v349 = v331;
    v350 = v332;
    v351 = v82;
    v352 = v83;
    v86 = vsubq_f32(v368, v332);
    v87 = vmulq_f32(v86, v86);
    if ((v87.f32[2] + vaddv_f32(*v87.f32)) > 0.0009)
    {
      sub_258389808(a2, &v355, &qword_27F928B18);
      sub_258389808(a3, &v355, &qword_27F928B18);
      sub_258389808(a5, &v355, &qword_27F928B18);
      isa = v246.super.isa;
      v89 = WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(v246);
      if (v89 < WorldPlaneHitTestResult.distanceSquaredToCamera(in:)(isa))
      {
        sub_258385E40(a2, &qword_27F928B18);
        v291 = v350;
        v292 = v351;
        v293 = v352;
        v287 = v346;
        v288 = v347;
        v290 = v349;
        v289 = v348;
        sub_2583D25EC(v330, &v355);
        v27 = v81;
        v91 = v247;
        goto LABEL_19;
      }

      sub_258385E40(a5, &qword_27F928B18);
      sub_2583D25EC(&v364, &v355);
      v291 = v390;
      v292 = v391;
      v293 = v392;
      v287 = v386;
      v288 = v387;
      v290 = v389;
      v289 = v388;
LABEL_18:
      v91 = v247;
      v33 = v248.i64[0];
      goto LABEL_19;
    }

    sub_258389808(a2, &v355, &qword_27F928B18);
    sub_258389808(a3, &v355, &qword_27F928B18);
    sub_258385E40(&v306, &qword_27F928B18);
    v355 = v283;
    v356 = v284;
    v357 = v285;
    v358 = v286;
    v359 = v250;
    v360 = v281;
    v361 = v282;
    v362 = v79;
    v363 = v80;
    sub_258385E40(&v355, &qword_27F928B18);
    v255 = v390;
    v256 = v391;
    v257 = v392;
    v251 = v386;
    v252 = v387;
    v71 = v27;
    v253 = v388;
    v254 = v389;
    v95 = v249;
    v70 = v248.i64[0];
  }

LABEL_94:
  v213 = v256;
  *(v95 + 64) = v255;
  *(v95 + 80) = v213;
  v214 = v257;
  v215 = v252;
  *v95 = v251;
  *(v95 + 16) = v215;
  result = v254;
  *(v95 + 32) = v253;
  *(v95 + 48) = result;
  *(v95 + 96) = v214;
  *(v95 + 104) = v70;
  *(v95 + 112) = v71;
  return result;
}

unint64_t sub_2583D0C70(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  HIDWORD(v30) = a2;
  if (a3 == 33)
  {
    result = (*(v6 + 120))();
  }

  else
  {
    result = (*(v6 + 104))(a3);
    if (!result)
    {
      return result;
    }
  }

  v11 = result;
  if (result >> 62)
  {
    result = sub_258428F10();
    v12 = result;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_27:

    return 0;
  }

  v12 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v12 >= 1)
  {
    v31 = 0;
    LODWORD(v30) = 0;
    v13 = 0;
    v14.i64[0] = a4;
    v14.i64[1] = a5;
    v32 = v14;
    v15 = *&a4;
    v16 = 3.4028e38;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x259C7E900](v13, v11);
        if (a6)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v17 = *(v11 + 8 * v13 + 32);
        if (a6)
        {
          goto LABEL_17;
        }
      }

      [v17 transform];
      v19 = v15 * v18.f32[0];
      v20 = vmulq_f32(v18, v32);
      if (fabsf(v20.f32[2] + (v19 + v20.f32[1])) < 0.866)
      {

        goto LABEL_10;
      }

LABEL_17:
      type metadata accessor for WorldPlane();
      v21 = swift_allocObject();
      *(v21 + 24) = xmmword_25842EC50;
      *(v21 + 40) = 0x3F5DB22D40000000;
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928B28);
      v22 = swift_allocObject();
      v23 = v17;
      v24 = swift_slowAlloc();
      *v24 = 0;
      *(v22 + 16) = v23;
      *(v22 + 24) = v24;
      *(v21 + 16) = v22;
      swift_endAccess();
      *(v21 + 48) = 0;
      *(v21 + 52) = 0x3F80000000000000;
      memset(v39, 0, 64);
      v39[64] = 1;
      if (qword_27F9279F0 != -1)
      {
        swift_once();
      }

      WorldPlane.refresh(anchor:camera:uncertaintyPoint:)(v23, v39, static SIMD3<>.zero);
      v25 = [a1 camera];
      v26 = _sSo7ARFrameC17MeasureFoundationE9getHitRay11cameraPoint0G00G18CorrectedTransforms5SIMD3VySfG6origin_AJ9directionts5SIMD2VySfG_So8ARCameraCSo13simd_float4x4aSgtFZ_0(v25, v39);
      v34 = v27;
      v35 = v26;

      WorldPlane.hitTest(hitRay:withPlaneType:)(7, v36, v35, v34);
      if (v38)
      {
        v28 = v37;
        v28.i32[3] = 0;
        v29 = WorldPlane.distanceToEdge(point:)(v28);
        sub_258385E40(v36, &qword_27F928B18);

        if ((v29 & 0x100000000) == 0 && v16 > *&v29 && (*&v29 >= 0.0 || (v30 & 0x100000000) == 0))
        {

          v16 = *&v29;
          v31 = v21;
          LODWORD(v30) = v29;
          goto LABEL_10;
        }
      }

      else
      {
      }

LABEL_10:
      if (v12 == ++v13)
      {

        return v31;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t PlaneSelector.deinit()
{

  sub_258385E40(v0 + 184, &qword_27F928AD8);

  return v0;
}

uint64_t PlaneSelector.__deallocating_deinit()
{

  sub_258385E40(v0 + 184, &qword_27F928AD8);

  return swift_deallocClassInstance();
}

uint64_t sub_2583D10E4()
{
  v0 = sub_2583895B4(&unk_28697E668);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F928B50);
  result = swift_arrayDestroy();
  static PlaneSelector.DebugOptions.keyForFeature = v0;
  return result;
}

uint64_t *PlaneSelector.DebugOptions.keyForFeature.unsafeMutableAddressor()
{
  if (qword_27F927A88 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.DebugOptions.keyForFeature;
}

void sub_2583D11B4()
{
  if (qword_27F927A88 != -1)
  {
    swift_once();
  }

  v0 = static PlaneSelector.DebugOptions.keyForFeature;
  v1 = *(static PlaneSelector.DebugOptions.keyForFeature + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_25838C55C(*(static PlaneSelector.DebugOptions.keyForFeature + 16), 0);
  v3 = sub_2583E9038(&v4, v2 + 4, v1, v0);

  sub_2583980BC();
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x277D84F90];
  }

  static PlaneSelector.DebugOptions.keys = v2;
}

uint64_t *PlaneSelector.DebugOptions.keys.unsafeMutableAddressor()
{
  if (qword_27F927A90 != -1)
  {
    swift_once();
  }

  return &static PlaneSelector.DebugOptions.keys;
}

uint64_t sub_2583D131C()
{
  if (qword_27F927A88 != -1)
  {
    swift_once();
  }

  v1 = sub_2583E903C(v0);

  static PlaneSelector.DebugOptions.default = v1;
  return result;
}

uint64_t static PlaneSelector.DebugOptions.default.getter()
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static PlaneSelector.DebugOptions.default;
}

uint64_t static PlaneSelector.DebugOptions.default.setter(uint64_t a1)
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  static PlaneSelector.DebugOptions.default = a1;
  return result;
}

uint64_t (*static PlaneSelector.DebugOptions.default.modify())()
{
  if (qword_27F927A98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_2583D1684(uint64_t a1)
{
  v3 = *(v1 + 224);
  v4 = *(v3 + 80);

  os_unfair_lock_lock(v4);
  swift_beginAccess();
  v56 = *(v3 + 16);
  v57 = *(v3 + 32);
  v58 = *(v3 + 48);
  v5 = *(v3 + 72);
  v59 = *(v3 + 64);
  os_unfair_lock_unlock(v4);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = *(v3 + 80);
  os_unfair_lock_lock(v8);
  *(v3 + 16) = v56;
  *(v3 + 32) = v57;
  *(v3 + 48) = v58;
  *(v3 + 64) = v59;
  *(v3 + 72) = v7;
  os_unfair_lock_unlock(v8);

  v9 = *(*(a1 + 104) + 48);
  v10 = *(v1 + 224);
  v11 = *(v10 + 80);

  os_unfair_lock_lock(v11);
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        swift_beginAccess();
        v38 = *(v10 + 16);
        v39 = *(v10 + 32);
        v23 = *(v10 + 56);
        v40 = *(v10 + 48);
        v37 = *(v10 + 64);
        os_unfair_lock_unlock(v11);
        v6 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (!v6)
        {
          v14 = *(v10 + 80);
          os_unfair_lock_lock(v14);
          *(v10 + 16) = v38;
          *(v10 + 32) = v39;
          *(v10 + 48) = v40;
          *(v10 + 56) = v24;
          *(v10 + 64) = v37;
          goto LABEL_23;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      swift_beginAccess();
      v43 = *(v10 + 16);
      v44 = *(v10 + 32);
      v16 = *(v10 + 48);
      v41 = *(v10 + 56);
      v42 = *(v10 + 72);
      os_unfair_lock_unlock(v11);
      v6 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (!v6)
      {
        v14 = *(v10 + 80);
        os_unfair_lock_lock(v14);
        *(v10 + 16) = v43;
        *(v10 + 32) = v44;
        *(v10 + 48) = v17;
        *(v10 + 56) = v41;
        v15 = v42;
        goto LABEL_22;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    swift_beginAccess();
    v20 = *(v10 + 16);
    v21 = *(v10 + 24);
    v34 = *(v10 + 32);
    v35 = *(v10 + 48);
    v36 = *(v10 + 64);
    os_unfair_lock_unlock(v11);
    v6 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v6)
    {
      v14 = *(v10 + 80);
      os_unfair_lock_lock(v14);
      *(v10 + 16) = v20;
      *(v10 + 24) = v22;
      *(v10 + 32) = v34;
      *(v10 + 48) = v35;
      *(v10 + 64) = v36;
      goto LABEL_23;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v9 <= 4)
  {
    if (v9 == 3)
    {
      swift_beginAccess();
      v48 = *(v10 + 16);
      v12 = *(v10 + 32);
      v45 = *(v10 + 40);
      v46 = *(v10 + 56);
      v47 = *(v10 + 72);
      os_unfair_lock_unlock(v11);
      v6 = __OFADD__(v12, 1);
      v13 = v12 + 1;
      if (!v6)
      {
        v14 = *(v10 + 80);
        os_unfair_lock_lock(v14);
        *(v10 + 16) = v48;
        *(v10 + 32) = v13;
        *(v10 + 40) = v45;
        *(v10 + 56) = v46;
        v15 = v47;
LABEL_22:
        *(v10 + 72) = v15;
        goto LABEL_23;
      }

      goto LABEL_28;
    }

    swift_beginAccess();
    v53 = *(v10 + 16);
    v54 = *(v10 + 32);
    v55 = *(v10 + 48);
    v26 = *(v10 + 64);
    v25 = *(v10 + 72);
    os_unfair_lock_unlock(v11);
    v6 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v6)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v14 = *(v10 + 80);
    os_unfair_lock_lock(v14);
    *(v10 + 16) = v53;
    *(v10 + 32) = v54;
    *(v10 + 48) = v55;
    *(v10 + 64) = v27;
    *(v10 + 72) = v25;
LABEL_23:
    os_unfair_lock_unlock(v14);

    return;
  }

  if (v9 == 5)
  {
    swift_beginAccess();
    v51 = *(v10 + 16);
    v18 = *(v10 + 40);
    v52 = *(v10 + 32);
    v49 = *(v10 + 48);
    v50 = *(v10 + 64);
    os_unfair_lock_unlock(v11);
    v6 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v6)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v14 = *(v10 + 80);
    os_unfair_lock_lock(v14);
    *(v10 + 16) = v51;
    *(v10 + 32) = v52;
    *(v10 + 40) = v19;
    *(v10 + 48) = v49;
    *(v10 + 64) = v50;
    goto LABEL_23;
  }

  swift_beginAccess();
  v28 = *(v10 + 16);
  v30 = *(v10 + 24);
  v31 = *(v10 + 40);
  v32 = *(v10 + 56);
  v33 = *(v10 + 72);
  os_unfair_lock_unlock(v11);
  v6 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v6)
  {
    v14 = *(v10 + 80);
    os_unfair_lock_lock(v14);
    *(v10 + 16) = v29;
    *(v10 + 24) = v30;
    *(v10 + 40) = v31;
    *(v10 + 56) = v32;
    v15 = v33;
    goto LABEL_22;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_2583D1A40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2583D1684(a2);
  }

  return result;
}

unint64_t sub_2583D1AA4()
{
  result = qword_27F928AE0;
  if (!qword_27F928AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AE0);
  }

  return result;
}

unint64_t sub_2583D1AFC()
{
  result = qword_27F928AE8;
  if (!qword_27F928AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AE8);
  }

  return result;
}

unint64_t sub_2583D1B54()
{
  result = qword_27F928AF0;
  if (!qword_27F928AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AF0);
  }

  return result;
}

unint64_t sub_2583D1BAC()
{
  result = qword_27F928AF8;
  if (!qword_27F928AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928AF8);
  }

  return result;
}

unint64_t sub_2583D1C04()
{
  result = qword_27F928B00;
  if (!qword_27F928B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928B00);
  }

  return result;
}

unint64_t sub_2583D1C5C()
{
  result = qword_27F928B08;
  if (!qword_27F928B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928B08);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

char *sub_2583D1D30()
{
  v0 = sub_25839D0E8(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  if (v2 >= v1 >> 1)
  {
    v0 = sub_25839D0E8((v1 > 1), v2 + 1, 1, v0);
  }

  v3 = 0;
  *(v0 + 2) = v2 + 1;
  v4 = &v0[16 * v2];
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  __asm
  {
    FMOV            V9.2S, #20.0
    FMOV            V0.2D, #0.5
  }

  v24 = _Q0;
  do
  {
    v13 = __sincosf_stret(v3 * 0.7854);
    v12.f32[0] = v13.__cosval;
    sinval = v13.__sinval;
    v15 = *(v0 + 2);
    v14 = *(v0 + 3);
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      v21 = sub_25839D0E8((v14 > 1), v15 + 1, 1, v0);
      sinval = v13.__sinval;
      v12.i32[0] = LODWORD(v13.__cosval);
      v0 = v21;
    }

    v12.f32[1] = sinval;
    v17 = vcvtq_f64_f32(vmul_f32(v12, _D9));
    *(v0 + 2) = v16;
    *&v0[16 * v15 + 32] = v17;
    if ((v3 & 1) == 0)
    {
      v18 = *(v0 + 3);
      v19 = v15 + 2;
      if (v19 > (v18 >> 1))
      {
        v23 = v17;
        v20 = sub_25839D0E8((v18 > 1), v19, 1, v0);
        v17 = v23;
        v0 = v20;
      }

      *(v0 + 2) = v19;
      *&v0[16 * v16 + 32] = vmulq_f64(v17, v24);
    }

    ++v3;
  }

  while (v3 != 8);
  return v0;
}

void sub_2583D1E98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = v6;
  v52 = a4;
  v53 = a6;
  v51 = a5;
  *(v7 + 16) = xmmword_25842EC70;
  *(v7 + 32) = 1063105069;
  *(v7 + 40) = xmmword_25842EC80;
  *(v7 + 56) = 1;
  *(v7 + 64) = xmmword_25842EC90;
  *(v7 + 80) = 1106247680;
  v11 = objc_opt_self();
  v12 = [v11 standardUserDefaults];
  v13 = sub_258428630();
  v14 = [v12 integerForKey_];

  if (v14 > 4)
  {
    __break(1u);
    goto LABEL_22;
  }

  *(v7 + 84) = v14;
  v15 = [v11 standardUserDefaults];
  v16 = sub_258428630();
  v17 = [v15 integerForKey_];

  if (v17 > 3)
  {
LABEL_22:
    __break(1u);
    return;
  }

  *(v7 + 184) = 0u;
  *(v7 + 85) = v17;
  *(v7 + 136) = 953267991;
  *(v7 + 140) = 33;
  *(v7 + 144) = 0x3F490FDB41A00000;
  *(v7 + 152) = 975427339;
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;
  *(v7 + 176) = 1;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928AD0);
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 80) = v19;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v7 + 224) = v18;
  *(v7 + 88) = a1;
  *(v7 + 96) = a2;
  v20 = a1;
  v21 = a2;
  v22 = v51;
  v23 = v52;
  *(v7 + 104) = a3;
  *(v7 + 112) = v23;
  v24 = v53;
  *(v7 + 120) = v22;
  *(v7 + 128) = v24;
  swift_beginAccess();
  v25 = static PlaneSelector.DebuggerClass;
  if (static PlaneSelector.DebuggerClass)
  {
    v26 = qword_27F92F268;
    v50 = *(qword_27F92F268 + 8);
    v27 = sub_258428DA0();
    v51 = &v48;
    v48 = *(v27 - 8);
    v49 = v27;
    MEMORY[0x28223BE20](v27);
    v29 = &v48 - v28;
    v30 = v20;

    v50(v30, v21, v7, v25, v26);
    v31 = *(v25 - 8);
    if ((*(v31 + 48))(v29, 1, v25) == 1)
    {
      (*(v48 + 8))(v29, v49);
      v57 = 0;
      v55 = 0u;
      v56 = 0u;
    }

    else
    {
      *(&v56 + 1) = v25;
      v57 = v26;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v55);
      (*(v31 + 32))(boxed_opaque_existential_1, v29, v25);
    }
  }

  else
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    v32 = v20;
  }

  swift_beginAccess();
  sub_2583C7A24(&v55, v7 + 184, &qword_27F928AD8);
  swift_endAccess();
  if (qword_27F927B28 != -1)
  {
    swift_once();
  }

  v35 = qword_27F92F388;
  v34 = unk_27F92F390;
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  sub_258428FC0();
  MEMORY[0x259C7DFF0](0xD000000000000015, 0x8000000258437030);
  LOBYTE(v54) = *(v7 + 84);
  sub_2584290D0();
  v36 = *(&v55 + 1);
  v37 = v55;
  sub_258428C50();
  v38 = qword_27F927A30;

  if (v38 != -1)
  {
    swift_once();
  }

  v39 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = off_27F928850;
  if (*(off_27F928850 + 2) && (v41 = sub_258384364(v35, v34), (v42 & 1) != 0))
  {
    v43 = *(v40[7] + 8 * v41);
    swift_endAccess();
    v44 = v43;
  }

  else
  {
    v53 = v37;
    swift_endAccess();
    sub_258385DB0(0, &qword_27F927F98);
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v45 = sub_258428D90();
    swift_beginAccess();
    v44 = v45;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v44, v35, v34, isUniquelyReferenced_nonNull_native);

    off_27F928850 = v54;
    swift_endAccess();
    v37 = v53;
  }

  os_unfair_lock_unlock(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_25842CCB0;
  *(v47 + 56) = MEMORY[0x277D837D0];
  *(v47 + 64) = sub_258385D08();
  *(v47 + 32) = v37;
  *(v47 + 40) = v36;

  sub_258428440();
}

uint64_t sub_2583D269C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 148, 15);
}

uint64_t sub_2583D2798(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static Extremities.empty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258428DA0();
  sub_2584292C0();
  v5 = *(*(v4 - 8) + 72);
  swift_allocObject();
  sub_258428880();
  v7 = v6;
  v8 = *(*(a1 - 8) + 56);
  v8(v6, 1, 1, a1);
  v8(v7 + v5, 1, 1, a1);
  v8(v7 + 2 * v5, 1, 1, a1);
  v8(v7 + 3 * v5, 1, 1, a1);
  v9 = sub_258428980();
  nullsub_1(v9);

  return Extremities.init(sortedPoints:)(a1, a2);
}

uint64_t Extremities.init(sortedPoints:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_258428DA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *(*(a1 - 8) + 56);
  v8(a2, 1, 1, a1);
  v9 = type metadata accessor for Extremities();
  v10 = v9[7];
  v8(a2 + v10, 1, 1, a1);
  v15 = v9[8];
  v8(a2 + v15, 1, 1, a1);
  v11 = v9[9];
  v8(a2 + v11, 1, 1, a1);
  sub_2584289B0();
  v12 = *(v5 + 40);
  v12(a2, v7, v4);
  sub_2584289B0();
  v12(a2 + v10, v7, v4);
  sub_2584289B0();
  v12(a2 + v15, v7, v4);
  sub_2584289B0();

  return (v12)(a2 + v11, v7, v4);
}

uint64_t Extremities.top.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_258428DA0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Extremities.top.setter(uint64_t a1)
{
  v3 = sub_258428DA0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Extremities.left.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Extremities.left.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Extremities.bottom.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Extremities.bottom.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Extremities.right.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Extremities.right.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_258428DA0();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

BOOL Extremities.hasAllExtremities.getter(int *a1)
{
  Extremities.allPoints.getter(a1);
  v1 = sub_258428910();

  return v1 == 4;
}

uint64_t Extremities.allPoints.getter(int *a1)
{
  v3 = sub_258428DA0();
  sub_2584292C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  swift_allocObject();
  sub_258428880();
  v7 = v6;
  v8 = *(v4 + 16);
  v8(v6, v1, v3);
  v8(v7 + v5, v1 + a1[7], v3);
  v8(v7 + 2 * v5, v1 + a1[8], v3);
  v8(v7 + 3 * v5, v1 + a1[9], v3);
  v9 = sub_258428980();
  nullsub_1(v9);
  swift_getWitnessTable();
  v10 = sub_2584287A0();

  return v10;
}

uint64_t sub_2583D32C8()
{
  result = sub_258428DA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2583D333C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = *(v4 + 80);
    v10 = ((v7 + v9 + ((v7 + v9 + ((v7 + v9) & ~v9)) & ~v9)) & ~v9) + v7;
    v11 = 8 * v10;
    if (v10 > 3)
    {
      goto LABEL_8;
    }

    v13 = ((v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v13 <= 0xFF)
      {
        if (v13 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v12 = *(a1 + v10);
        if (!*(a1 + v10))
        {
          goto LABEL_26;
        }

LABEL_15:
        v14 = (v12 - 1) << v11;
        if (v10 > 3)
        {
          v14 = 0;
        }

        if (v10)
        {
          if (v10 > 3)
          {
            LODWORD(v10) = 4;
          }

          if (v10 > 2)
          {
            if (v10 == 3)
            {
              LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v10) = *a1;
            }
          }

          else if (v10 == 1)
          {
            LODWORD(v10) = *a1;
          }

          else
          {
            LODWORD(v10) = *a1;
          }
        }

        return v6 + (v10 | v14) + 1;
      }

      v12 = *(a1 + v10);
      if (*(a1 + v10))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_2583D34D4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v8 + v10 + ((v8 + v10 + ((v8 + v10) & ~v10)) & ~v10)) & ~v10) + v8;
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 == 0 || !v12)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v11 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
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
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v18 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v16 & ~(-1 << (8 * v11));
        v20 = result;
        bzero(result, v11);
        result = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v11] = v18;
              }

              else
              {
                *&result[v11] = v18;
              }

              return result;
            }
          }

          else
          {
            *v20 = v16;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = result;
      bzero(result, v11);
      result = v17;
      *v17 = v16;
      v18 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v11] = v18;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v11] = 0;
  }

  else if (v5)
  {
    result[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v21 = *(v6 + 56);

    return v21();
  }

  return result;
}

float sub_2583D3744()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 84);
  }

  *(v0 + 84) = 1048871919;
  *(v0 + 88) = 0;
  return 0.25882;
}

uint64_t sub_2583D376C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 200) = v2;
}

void *sub_2583D3804()
{
  if (*(v0 + 208))
  {
    v1 = *(v0 + 208);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928BD8);
    v1 = swift_allocObject();
    swift_weakInit();
    v2 = MEMORY[0x277D84F90];
    v1[3] = MEMORY[0x277D84F90];
    v1[4] = v2;
    v1[5] = v2;
    swift_weakAssign();
    *(v0 + 208) = v1;
  }

  return v1;
}

double PlaneSolver.solve(data:iteration:)@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_2583D48CC(a1, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

void PlaneSolver.getError(model:samples:)(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  if (v3[10].i8[0])
  {
    __break(1u);
  }

  else
  {
    v5 = v3[9];
    v6 = v5.f32[0] * a3.f32[0];
    v7 = vmulq_f32(v5, a3);
    if (fabsf(v7.f32[2] + (v6 + v7.f32[1])) >= sub_2583D3744())
    {
      sub_2583D4B40(a1, a2, a3);
    }
  }
}

void PlaneSolver.detectPlane(data:vergenceAngleCosines:pointOfView:camera:bestData:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, float32x4_t **a4@<X3>, float32x4_t *a5@<X8>, float32x4_t a6@<Q1>, float32x4_t a7@<Q2>, __n128 a8@<Q3>)
{
  v11 = *(a1 + 16);
  *(v8 + 96) = v11;
  v12 = 0uLL;
  v13 = 0.0;
  if (v11 < 4)
  {
    v14 = 1;
    v15 = 0uLL;
    goto LABEL_92;
  }

  v119 = sub_2583D4648(a1, a2, a3, 3.0);
  v17 = a8;
  v17.n128_u32[3] = 0;
  *(v8 + 112) = v17;
  *(v8 + 128) = 0;
  v18 = vmulq_f32(a7, a7);
  v19 = vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19));
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(*v18.f32, *v18.f32)));
  *(v8 + 144) = vmulq_n_f32(a7, vmul_f32(*v18.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v18.f32[2] + v19), vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  *(v8 + 160) = 0;
  v20 = vmulq_f32(a6, a6);
  *&v21 = v20.f32[2] + vaddv_f32(*v20.f32);
  *v20.f32 = vrsqrte_f32(v21);
  *v20.f32 = vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32)));
  *(v8 + 176) = vmulq_n_f32(a6, vmul_f32(*v20.f32, vrsqrts_f32(v21, vmul_f32(*v20.f32, *v20.f32))).f32[0]);
  *(v8 + 192) = 0;
  v22 = *(v8 + 96);
  v23 = v22 * 0.8;
  if (COERCE_INT(fabs(v23)) > 2139095039)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (v23 >= 9.2234e18)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v24 = v23;
  if (v23 >= 15)
  {
    v24 = 15;
  }

  if (v24 <= 3)
  {
    v24 = 3;
  }

  v118 = v24;
  v25 = sub_2583D441C(v22);

  v26 = sub_2583D3804();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

LABEL_91:
    v14 = 1;
    v15 = 0uLL;
    v12 = 0uLL;
    goto LABEL_92;
  }

  if (v25 < 0)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    return;
  }

  if (!v25)
  {

    goto LABEL_91;
  }

  v120 = v25;
  v117 = a4;
  v113 = a5;
  v114 = 0;
  v28 = 0;
  v115 = 0;
  v29 = v119;
  v30 = *(v119 + 16);
  v31 = v119 + 32;
  v116 = 1;
  v32 = INFINITY;
  v122 = Strong;
  do
  {
    v124 = v28;
    swift_beginAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v26[4];
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_25838716C(0, *(v34 + 16));
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
      if (*(v34 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F0);
        v35 = swift_allocObject();
        v36 = _swift_stdlib_malloc_size(v35);
        v37 = v36 - 32;
        if (v36 < 32)
        {
          v37 = v36 - 25;
        }

        v35[2] = 0;
        v35[3] = 2 * (v37 >> 3);
      }

      v26[4] = v35;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    v39 = v26[3];
    if (v38)
    {
      sub_258386FC4(0, *(v39 + 16));
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
      if (*(v39 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8);
        v40 = swift_allocObject();
        v41 = _swift_stdlib_malloc_size(v40);
        v42 = v41 - 32;
        if (v41 < 32)
        {
          v42 = v41 - 17;
        }

        v40[2] = 0;
        v40[3] = 2 * (v42 >> 4);
      }

      v26[3] = v40;
    }

    v43 = v26[4];
    if (*(v43 + 2) <= 3uLL)
    {
      while (1)
      {
        v54 = round(drand48() * (v30 - 1));
        if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v54 <= -9.22337204e18)
        {
          goto LABEL_98;
        }

        if (v54 >= 9.22337204e18)
        {
          goto LABEL_99;
        }

        v55 = 0;
        v56 = v54;
        v53 = *(v43 + 2);
        while (v53 != v55)
        {
          v57 = &v43[8 * v55++];
          if (*(v57 + 4) == v56)
          {
            goto LABEL_33;
          }
        }

        v58 = swift_isUniquelyReferenced_nonNull_native();
        v26[4] = v43;
        if ((v58 & 1) == 0)
        {
          v43 = sub_25839CFE4(0, v53 + 1, 1, v43);
          v26[4] = v43;
        }

        v60 = *(v43 + 2);
        v59 = *(v43 + 3);
        if (v60 >= v59 >> 1)
        {
          v43 = sub_25839CFE4((v59 > 1), v60 + 1, 1, v43);
        }

        *(v43 + 2) = v60 + 1;
        *&v43[8 * v60 + 32] = v56;
        v26[4] = v43;
        if ((v56 & 0x8000000000000000) != 0)
        {
          goto LABEL_100;
        }

        if (*(v29 + 16) <= v56)
        {
          goto LABEL_101;
        }

        v127 = *(v31 + 16 * v56);
        v61 = v26[3];
        v62 = swift_isUniquelyReferenced_nonNull_native();
        v26[3] = v61;
        if ((v62 & 1) == 0)
        {
          v61 = sub_25839D2FC(0, *(v61 + 2) + 1, 1, v61);
          v26[3] = v61;
        }

        v64 = *(v61 + 2);
        v63 = *(v61 + 3);
        if (v64 >= v63 >> 1)
        {
          v61 = sub_25839D2FC((v63 > 1), v64 + 1, 1, v61);
        }

        *(v61 + 2) = v64 + 1;
        *&v61[16 * v64 + 32] = v127;
        v26[3] = v61;
        v53 = *(v43 + 2);
LABEL_33:
        if (v53 >= 4)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:

      v32 = v9;
      a5 = v113;
      goto LABEL_94;
    }

LABEL_29:
    swift_endAccess();
    swift_endAccess();

    sub_2583D48CC(v44, v130, v45, v46);
    v47 = v130[0];
    v48 = v130[1];
    v49 = v130[2];
    v50 = v130[3];

    if (v131)
    {
      goto LABEL_71;
    }

    swift_beginAccess();
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v26[5];
    if (v51)
    {
      sub_258386FC4(0, *(v52 + 16));
    }

    else
    {
      v65 = MEMORY[0x277D84F90];
      if (*(v52 + 24) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8);
        v65 = swift_allocObject();
        v66 = _swift_stdlib_malloc_size(v65);
        v67 = v66 - 32;
        if (v66 < 32)
        {
          v67 = v66 - 17;
        }

        v65[2] = 0;
        v65[3] = 2 * (v67 >> 4);
      }

      v26[5] = v65;

      v29 = v119;
    }

    v68.i64[0] = v47;
    v68.i64[1] = v48;
    v121 = v68;
    v68.i64[0] = v49;
    v68.i64[1] = v50;
    a7 = v68;
    swift_endAccess();
    v69 = a7;
    if (v30)
    {
      v70 = 0;
      v9 = *&v49;
      v71 = vmulq_f32(v121, a7);
      v72 = v71.f32[2] + ((*&v47 * *&v49) + v71.f32[1]);
      do
      {
        v73 = v70++;
        v74 = v26[4];
        v75 = *(v74 + 16);
        v76 = (v74 + 32);
        while (v75)
        {
          v77 = *v76++;
          --v75;
          if (v77 == v73)
          {
            goto LABEL_59;
          }
        }

        v78 = *(v31 + 16 * v73);
        v79 = vmulq_f32(v78, v69);
        if ((((v79.f32[2] + ((*&v49 * v78.f32[0]) + v79.f32[1])) - v72) * ((v79.f32[2] + ((*&v49 * v78.f32[0]) + v79.f32[1])) - v72)) <= 0.000025)
        {
          v128 = *(v31 + 16 * v73);
          swift_beginAccess();
          v80 = v26[5];
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v26[5] = v80;
          if ((v81 & 1) == 0)
          {
            v80 = sub_25839D2FC(0, *(v80 + 2) + 1, 1, v80);
            v26[5] = v80;
          }

          v83 = *(v80 + 2);
          v82 = *(v80 + 3);
          v84 = v128;
          if (v83 >= v82 >> 1)
          {
            v85 = sub_25839D2FC((v82 > 1), v83 + 1, 1, v80);
            v84 = v128;
            v80 = v85;
          }

          *(v80 + 2) = v83 + 1;
          *&v80[16 * v83 + 32] = v84;
          v26[5] = v80;
          swift_endAccess();
          v69 = a7;
        }

LABEL_59:
        ;
      }

      while (v70 != v30);
    }

    v86 = *(v26[5] + 16);
    v87 = *(v26[3] + 16);
    v88 = __OFADD__(v86, v87);
    v89 = v86 + v87;
    if (v88)
    {
      __break(1u);
      goto LABEL_104;
    }

    if (v89 < v118)
    {
      goto LABEL_71;
    }

    swift_beginAccess();

    sub_2583C2328(v91);
    swift_endAccess();

    sub_2583D48CC(v92, v132, v93, v94);
    v95 = v132[0];
    v96 = v132[1];
    v98 = v132[2];
    v97 = v132[3];

    v99 = a7;
    if ((v133 & 1) == 0)
    {
      v100.i64[0] = v95;
      v100.i64[1] = v96;
      v121 = v100;
      v99.i64[0] = v98;
      v99.i64[1] = v97;
    }

    if (v122[10].i8[0])
    {
      goto LABEL_108;
    }

    v101 = v26[5];
    v102 = vmulq_f32(v99, v122[9]);
    v9 = fabsf(v102.f32[2] + ((COERCE_FLOAT(v122[9].i64[0]) * v99.f32[0]) + v102.f32[1]));
    a7 = v99;
    v29 = v119;
    if (v9 < sub_2583D3744())
    {
      goto LABEL_71;
    }

    v103 = v101[1].u64[0];
    v9 = sub_2583D4B40(v101, v121, a7) * (50.0 / v103);
    v90 = v124;
    if (v9 < v32)
    {
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v105 = *v117;
      if (v104)
      {
        sub_258386FC4(0, v105[1].i64[0]);
      }

      else
      {
        v106 = MEMORY[0x277D84F90];
        if (v105[1].i64[1] >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8);
          v106 = swift_allocObject();
          v107 = _swift_stdlib_malloc_size(v106);
          v108 = v107 - 32;
          if (v107 < 32)
          {
            v108 = v107 - 17;
          }

          v106[1].i64[0] = 0;
          v106[1].i64[1] = 2 * (v108 >> 4);
        }

        *v117 = v106;
        v29 = v119;
      }

      sub_2583C2328(v109);
      if (v9 == 0.0)
      {
        goto LABEL_102;
      }

      v116 = 0;
      v114 = a7.u64[1];
      v115 = a7.i64[0];
      v32 = v9;
LABEL_71:
      v90 = v124;
    }

    v28 = v90 + 1;
  }

  while (v28 != v120);

  a5 = v113;
  if (v116)
  {
    goto LABEL_91;
  }

  v111.i64[0] = v115;
  v111.i64[1] = v114;
  a7 = v111;
LABEL_94:
  v112 = *v117;
  *v12.i64 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(*v117, *v111.i64, v110);
  v13 = 0.0;
  if (v32 != INFINITY)
  {
    v129 = v12;
    v13 = (v32 / (sub_2583D4B40(v112, v12, a7) * -50.0)) + 1.0;
    v12 = v129;
  }

  v14 = 0;
  v15 = a7;
LABEL_92:
  *a5 = v12;
  a5[1] = v15;
  a5[2].f32[0] = v13;
  a5[2].i8[4] = v14;
}

uint64_t sub_2583D441C(uint64_t result)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = (result / 50.0) * (result / 50.0);
  if (COERCE_INT(fabs(v6)) > 2139095039)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 9.2234e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v5 * v6;
  if ((v5 * v6) >> 64 != v7 >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v2 + v7;
  if (__OFADD__(v2, v7))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t PlaneSolver.deinit()
{

  return v0;
}

uint64_t PlaneSolver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2583D4520()
{
  *(v0 + 16) = xmmword_25842F270;
  *(v0 + 32) = 1;
  *(v0 + 40) = xmmword_25842F280;
  *(v0 + 56) = 0x3FA78D3637D1B717;
  *(v0 + 64) = xmmword_25842F290;
  *(v0 + 80) = 1077936128;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  v1 = sub_2584288E0();
  v1[2] = 3;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v0 + 104) = v1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = MEMORY[0x277D84F90];
  *(v0 + 208) = 0;
  return v0;
}

double sub_2583D45D8@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_2583D48CC(a1, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_2583D4648(uint64_t a1, uint64_t a2, id a3, float a4)
{
  v5 = v4;
  [a3 intrinsics];
  v38 = v10;
  [a3 intrinsics];
  if (v11 >= v38)
  {
    v12 = v38;
  }

  else
  {
    v12 = v11;
  }

  [a3 viewMatrixForOrientation_];
  v36 = v14;
  v37 = v13;
  v34 = v16;
  v35 = v15;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v5 + 200);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_258386FC4(0, *(v18 + 16));
  }

  else
  {
    *(v5 + 200) = sub_25838C5F8(0, *(v18 + 24) >> 1);
  }

  result = swift_endAccess();
  v20 = *(a1 + 16);
  if (!v20)
  {
    return *(v5 + 200);
  }

  v21 = 0;
  v22 = a4 / v12;
  while (1)
  {
    v39 = *(a1 + 32 + 16 * v21);
    v23 = 1.0;
    if (a2)
    {
      break;
    }

LABEL_12:
    swift_beginAccess();
    v24 = *(v5 + 200);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 200) = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_25839D2FC(0, *(v24 + 2) + 1, 1, v24);
      *(v5 + 200) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_25839D2FC((v26 > 1), v27 + 1, 1, v24);
    }

    ++v21;
    v28.i32[1] = v34.i32[1];
    v29 = vaddq_f32(v34, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, v39.f32[0]), v36, *v39.f32, 1), v35, v39, 2));
    *v28.i32 = vmuls_lane_f32(v22, v29, 2) / v23;
    v30 = vmulq_f32(v29, v29);
    *v30.f32 = vadd_f32(*v30.f32, *&vextq_s8(v30, v30, 8uLL));
    v30.i32[0] = vadd_f32(*v30.f32, vdup_lane_s32(*v30.f32, 1)).u32[0];
    v31 = vrsqrte_f32(v30.u32[0]);
    v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
    v33 = vmulq_n_f32(v29, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
    *v30.f32 = vdup_lane_s32(v28, 0);
    *v28.i32 = vmuls_lane_f32(*v28.i32, v33, 2);
    v33.i64[0] = vaddq_f32(v39, vmulq_f32(v30, v33)).u64[0];
    v33.f32[2] = v39.f32[2] + *v28.i32;
    v33.i32[3] = 0;
    *(v24 + 2) = v27 + 1;
    *&v24[16 * v27 + 32] = v33;
    *(v5 + 200) = v24;
    result = swift_endAccess();
    if (v20 == v21)
    {
      return *(v5 + 200);
    }
  }

  if (v21 < *(a2 + 16))
  {
    v23 = sqrtf(1.0 - (*(a2 + 32 + 4 * v21) * *(a2 + 32 + 4 * v21))) / *(a2 + 32 + 4 * v21);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_2583D48CC(float32x4_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *&v7 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(a1, a3, a4);
  v31 = v7;
  v8 = (v4 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v8;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_25838716C(0, *(v10 + 2));
  }

  else
  {
    *v8 = sub_25838C574(0, *(v10 + 3) >> 1);
  }

  v11 = *v8;
  if (*(*v8 + 2) <= 2uLL)
  {
    while (1)
    {
      v13 = round(drand48() * (a1[1].i64[0] - 1));
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v13 <= -9.22337204e18)
      {
        goto LABEL_25;
      }

      if (v13 >= 9.22337204e18)
      {
        goto LABEL_26;
      }

      v14 = 0;
      v15 = v13;
      v11 = *v8;
      v12 = *(*v8 + 2);
      while (v12 != v14)
      {
        v16 = &v11[8 * v14++];
        if (*(v16 + 4) == v15)
        {
          goto LABEL_7;
        }
      }

      v17 = swift_isUniquelyReferenced_nonNull_native();
      *v8 = v11;
      if ((v17 & 1) == 0)
      {
        v11 = sub_25839CFE4(0, v12 + 1, 1, v11);
        *v8 = v11;
      }

      v19 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v19 >= v18 >> 1)
      {
        v11 = sub_25839CFE4((v18 > 1), v19 + 1, 1, v11);
      }

      *(v11 + 2) = v19 + 1;
      *&v11[8 * v19 + 32] = v15;
      *v8 = v11;
      v12 = *(v11 + 2);
LABEL_7:
      if (v12 >= 3)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_19:
  v20 = *(v11 + 4);
  if ((v20 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = a1[1].u64[0];
  if (v20 >= v21)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v22 = *(v11 + 5);
  if (v22 >= v21)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = *(v11 + 6);
  if (v23 < v21)
  {
    v24 = a1[v20 + 2];
    v25 = vsubq_f32(a1[v22 + 2], v24);
    v26 = vsubq_f32(a1[v23 + 2], v24);
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
    v28 = vmulq_f32(v27, v27);
    *&v29 = v28.f32[1] + (v28.f32[2] + v28.f32[0]);
    v30 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
    *v27.f32 = vrsqrte_f32(v29);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v29, vmul_f32(*v27.f32, *v27.f32)));
    *a2 = v31;
    *(a2 + 16) = vmulq_n_f32(v30, vmul_f32(*v27.f32, vrsqrts_f32(v29, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    *(a2 + 32) = 0;
    return;
  }

LABEL_30:
  __break(1u);
}

float sub_2583D4B40(float32x4_t *a1, float32x4_t a2, float32x4_t a3)
{
  v3 = a1[1].u64[0];
  if (v3)
  {
    v4 = vmulq_f32(a2, a3);
    v5 = v4.f32[2] + vaddv_f32(*v4.f32);
    v6 = a1 + 2;
    v7 = 0.0;
    v8 = a1[1].i64[0];
    do
    {
      v9 = *v6++;
      v10 = vmulq_f32(v9, a3);
      v11 = vaddv_f32(*v10.f32);
      v7 = v7 + (((v10.f32[2] + v11) - v5) * ((v10.f32[2] + v11) - v5));
      --v8;
    }

    while (v8);
  }

  else
  {
    v7 = 0.0;
  }

  return v7 / v3;
}

uint64_t sub_2583D4BA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 200);
}

double static PlaneUtil.getIntersection(ray:plane:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmulq_f32(a2, a2);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(a2, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vmulq_f32(v6, a4);
  v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  if (v8 != 0.0)
  {
    v9 = vmulq_f32(vsubq_f32(a3, a1), a4);
    *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v6.f32, (v9.f32[2] + vaddv_f32(*v9.f32)) / v8));
  }

  return *a1.i64;
}

double static PlaneUtil.getIntersection(sourceRay:destRay:)(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vmulq_f32(a2, a4);
  if (fabsf(v4.f32[2] + vaddv_f32(*v4.f32)) < 1.0)
  {
    v5 = vextq_s8(vuzp1q_s32(a4, a4), a4, 0xCuLL);
    v6 = vmlaq_f32(vmulq_f32(v5, vnegq_f32(a2)), a4, vextq_s8(vuzp1q_s32(a2, a2), a2, 0xCuLL));
    v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
    v8 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vnegq_f32(a4)), v7, v5);
    v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
    v10 = vmulq_f32(a2, a2);
    v5.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
    *v10.f32 = vrsqrte_f32(v5.u32[0]);
    *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v10.f32, *v10.f32)));
    v11 = vmulq_n_f32(a2, vmul_f32(*v10.f32, vrsqrts_f32(v5.u32[0], vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    v12 = vmulq_f32(v9, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 != 0.0)
    {
      v14 = vmulq_f32(vsubq_f32(a3, a1), v9);
      *a1.f32 = vadd_f32(*a1.f32, vmul_n_f32(*v11.f32, (v14.f32[2] + vaddv_f32(*v14.f32)) / v13));
    }
  }

  return *a1.i64;
}

void static PlaneUtil.findBestPlane(points:facing:)(float32x4_t *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  v31 = a1[1].u64[0];
  if (v31 < 3)
  {
    v32 = 0u;
    v33 = 0u;
    v6 = 1;
LABEL_6:
    *a2 = v32;
    *(a2 + 16) = v33;
    *(a2 + 32) = v6 & 1;
    return;
  }

  if (v31 == 3)
  {
    v7 = a1[2];
    v40 = vsubq_f32(a1[3], v7);
    v41 = vsubq_f32(a1[4], v7);
    *&v8 = _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(a1, *v41.i64, *v7.i64);
    v32 = v8;
    v6 = 0;
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v41, v41), v41, 0xCuLL), vnegq_f32(v40)), v41, vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL));
    v10 = vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL);
    v11 = vmulq_f32(v9, v9);
    *&v12 = v11.f32[1] + (v11.f32[2] + v11.f32[0]);
    *v11.f32 = vrsqrte_f32(v12);
    *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32)));
    v33 = vmulq_n_f32(v10, vmul_f32(*v11.f32, vrsqrts_f32(v12, vmul_f32(*v11.f32, *v11.f32))).f32[0]);
    goto LABEL_6;
  }

  v13 = 0;
  v14 = v31 - 2;
  v29 = a1 + 2;
  f32 = a1[4].f32;
  v32 = 0u;
  v6 = 1;
  v16 = v31 - 2;
  v33 = 0u;
  v30 = v31 - 2;
  while (v13 != v14)
  {
    if (v13 == v31)
    {
      goto LABEL_21;
    }

    v17 = v13 + 1;
    v37 = v29[v13];
    v27 = v16;
    v28 = f32;
    v26 = v13 + 1;
    do
    {
      if (v17 + 1 != v31)
      {
        v38 = v29[v17];
        v19 = f32;
        v20 = v16;
        do
        {
          v42 = *v19;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8);
          v21 = swift_allocObject();
          v21[1] = xmmword_25842BFB0;
          v21[2] = v37;
          v21[3] = v38;
          v21[4] = v42;
          static PlaneUtil.findBestPlane(points:facing:)(&v43, a3, a4, a5, a6);
          swift_setDeallocating();
          swift_deallocClassInstance();
          if ((v45 & 1) == 0)
          {
            if (v6 & 1) != 0 || (v22 = vmulq_f32(v44, a5), v22.i64[0] = vextq_s8(v22, v22, 4uLL).u64[0], v23 = vmulq_f32(v33, a5), v23.i64[0] = vextq_s8(v23, v23, 4uLL).u64[0], v24 = vdup_lane_s32(*v44.f32, 0), v24.i32[0] = v33.i32[0], *v22.i8 = vabs_f32(vadd_f32(vzip2_s32(*v23.i8, *v22.i8), vadd_f32(vmul_n_f32(v24, a5.n128_f32[0]), vzip1_s32(*v23.i8, *v22.i8)))), (vcgt_f32(vdup_lane_s32(*v22.i8, 1), *v22.i8).u8[0]))
            {
              v6 = 0;
              v32 = v43;
              v33 = v44;
            }

            else
            {
              v6 = 0;
            }
          }

          ++v19;
          --v20;
        }

        while (v20);
      }

      --v16;
      ++f32;
      v14 = v31 - 2;
    }

    while (v17++ != v30);
    v16 = v27 - 1;
    f32 = v28 + 1;
    v13 = v26;
    if (v26 == v30)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t static PlaneUtil.findPossiblePlanes(points:)(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7, float32x4_t a8)
{
  v8 = *(result + 16);
  if (v8 >= 3)
  {
    v10 = 0;
    v11 = v8 - 2;
    v42 = result + 32;
    v12 = (result + 64);
    v9 = MEMORY[0x277D84F90];
    __asm { FMOV            V0.4S, #3.0 }

    v44 = _Q0;
    v18 = v8 - 2;
    v43 = v8 - 2;
    while (v10 != v11)
    {
      if (v10 == v8)
      {
        goto LABEL_19;
      }

      v19 = v10 + 1;
      v48 = *(v42 + 16 * v10);
      LODWORD(v20) = *(v42 + 16 * v10 + 8);
      v40 = v18;
      v41 = v12;
      v39 = v10 + 1;
      do
      {
        v21 = v8;
        if (v19 + 1 != v8)
        {
          v22 = *(v42 + 16 * v19);
          v23 = vsubq_f32(v22, v48);
          v24 = COERCE_FLOAT(*(v42 + 16 * v19 + 8));
          a8.f32[0] = v24 - v20;
          v25 = v23;
          v25.f32[2] = v24 - v20;
          *(a8.i64 + 4) = v23.i64[0];
          v26 = v20 + v24;
          v46 = vnegq_f32(v25);
          v47 = a8;
          v45 = vaddq_f32(v48, v22);
          v27 = v12;
          v28 = v18;
          v29 = _Q0.i32[3];
          do
          {
            v49 = *v27;
            v50 = v29;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_25839D874(0, *(v9 + 16) + 1, 1, v9);
              v9 = result;
            }

            v31 = *(v9 + 16);
            v30 = *(v9 + 24);
            if (v31 >= v30 >> 1)
            {
              result = sub_25839D874((v30 > 1), v31 + 1, 1, v9);
              v9 = result;
            }

            v32 = vsubq_f32(v49, v48);
            v32.f32[2] = v49.f32[2] - v20;
            *&v33 = vdivq_f32(vaddq_f32(v45, v49), v44).u64[0];
            *(&v33 + 2) = (v26 + v49.f32[2]) / 3.0;
            HIDWORD(v33) = 0;
            v34 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL), v46), v32, v47);
            v35 = vmulq_f32(v34, v34);
            *&v36 = v35.f32[1] + (v35.f32[2] + v35.f32[0]);
            v37 = vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL);
            *v34.f32 = vrsqrte_f32(v36);
            *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v36, vmul_f32(*v34.f32, *v34.f32)));
            _Q0 = vmulq_n_f32(v37, vmul_f32(*v34.f32, vrsqrts_f32(v36, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
            _Q0.i32[3] = v50;
            *(v9 + 16) = v31 + 1;
            v38 = v9 + 32 * v31;
            *(v38 + 32) = v33;
            *(v38 + 48) = _Q0;
            ++v27;
            v29 = v50;
            --v28;
          }

          while (v28);
        }

        --v18;
        ++v12;
        v11 = v43;
        _ZF = v19++ == v43;
        v8 = v21;
      }

      while (!_ZF);
      v18 = v40 - 1;
      v12 = v41 + 1;
      v10 = v39;
      if (v39 == v43)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

float _s17MeasureFoundation9PlaneUtilC8distance5point5planeSfs5SIMD3VySfG_AI6center_AI6normalttFZ_0(int8x16_t a1, int8x16_t a2, float32x4_t a3)
{
  v3 = vext_s8(*a1.i8, *a2.i8, 4uLL);
  v4 = vextq_s8(a1, a1, 8uLL).u64[0];
  a1.i32[1] = a2.i32[1];
  *a1.i8 = vadd_f32(vmul_laneq_f32(vzip1_s32(v4, *&vextq_s8(a2, a2, 8uLL)), a3, 2), vadd_f32(vmul_f32(v3, vrev64_s32(*a3.f32)), vmul_f32(*a1.i8, *a3.f32)));
  *a1.i32 = fabsf(vsub_f32(*a1.i8, vdup_lane_s32(*a1.i8, 1)).f32[0]);
  return *a1.i32;
}

uint64_t sub_2583D5394(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_258428AD0();
  if (!v19)
  {
    return sub_2584288D0();
  }

  v41 = v19;
  v45 = sub_2584290A0();
  v32 = sub_2584290B0();
  sub_258429050();
  result = sub_258428AC0();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_258428B80();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_258429090();
      result = sub_258428B00();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2584288D0();
  swift_getTupleTypeMetadata2();
  v7 = sub_2584288D0();
  sub_2583B5FEC(v7, a1, a2, a3);

  v8 = sub_2584283A0();
  swift_getTupleTypeMetadata2();
  v9 = sub_2584288D0();
  sub_2583B5FEC(v9, a1, v8, a3);

  return v6;
}

uint64_t OrderedDictionary.subscript.setter(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_258428DA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - v13;
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v8 + 16);
  v23 = a1;
  v18(v14, a1, v7);
  if ((*(v15 + 48))(v14, 1, v6) == 1)
  {
    v19 = *(v8 + 8);
    v19(v14, v7);
    OrderedDictionary.removeValue(forKey:)(a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v19(v23, v7);
    return (v19)(v11, v7);
  }

  else
  {
    (*(v15 + 32))(v17, v14, v6);
    OrderedDictionary.updateValue(_:forKey:)(v17, a2, a3, v11);
    (*(*(*(a3 + 16) - 8) + 8))(a2);
    v21 = *(v8 + 8);
    v21(v23, v7);
    v21(v11, v7);
    return (*(v15 + 8))(v17, v6);
  }
}

uint64_t OrderedDictionary.updateValue(_:forKey:)@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_2584283A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17MeasureFoundation16MeasurementEventV4time0B04DateVvpfi_0();
  sub_2583D6964(a1, a2, v11, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t OrderedDictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v31 = &v29 - v8;
  v9 = *(a2 + 16);
  v35 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v29 - v12;
  v13 = *(a2 + 24);
  v14 = sub_258428DA0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v29 - v20;
  v22 = *(v13 - 8);
  MEMORY[0x28223BE20](v19);
  v34 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v3;
  v37 = a1;
  sub_258428560();
  if ((*(v22 + 48))(v21, 1, v13) == 1)
  {
    (*(v15 + 8))(v21, v14);
    return (*(v22 + 56))(v33, 1, 1, v13);
  }

  else
  {
    v29 = *(v22 + 32);
    v29(v34, v21, v13);
    (*(v35 + 16))(v32, v37, v9);
    v25 = *(v22 + 56);
    v25(v18, 1, 1, v13);
    sub_258428540();
    sub_258428570();
    v38 = *v36;
    sub_258428980();
    swift_getWitnessTable();
    result = sub_258428B60();
    if (v39)
    {
      __break(1u);
    }

    else
    {
      v26 = v30;
      sub_258428940();
      (*(v35 + 8))(v26, v9);
      sub_2584283A0();
      sub_258428540();
      v27 = v31;
      sub_258428520();
      sub_2583A07B4(v27);
      v28 = v33;
      v29(v33, v34, v13);
      return (v25)(v28, 0, 1, v13);
    }
  }

  return result;
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = sub_258428DA0();
  v8[2] = v9;
  v10 = *(v9 - 8);
  v8[3] = v10;
  v11 = *(v10 + 64);
  v12 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v10 + 64));
    v13 = malloc(v11);
  }

  v8[5] = v13;
  v14 = *(a3 + 16);
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  v17 = *(v15 + 64);
  if (v12)
  {
    v8[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v8[9] = v18;
  (*(v16 + 16))();
  sub_258428560();
  return sub_2583D62F4;
}

void sub_2583D62F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[8];
  v4 = (*a1)[9];
  if (a2)
  {
    v5 = v2[7];
    v11 = v2[6];
    v7 = v2[4];
    v6 = v2[5];
    v8 = v2[2];
    v9 = v2[3];
    v10 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v11);
    OrderedDictionary.subscript.setter(v7, v3, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[4];
    v6 = v2[5];
    OrderedDictionary.subscript.setter(v6, v4, *v2);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t OrderedDictionary.subscript.getter@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  v13 = a1;
  v5 = sub_258428DA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_258428560();
  v9 = *(a2 - 8);
  v10 = *(v9 + 48);
  if (v10(v8, 1, a2) != 1)
  {
    return (*(v9 + 32))(a3, v8, a2);
  }

  v13();
  result = (v10)(v8, 1, a2);
  if (result != 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t OrderedDictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2583D8DCC(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*OrderedDictionary.subscript.modify(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a5;
  v9[1] = v5;
  v11 = *(a5 + 24);
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v10[5] = v14;
  v16 = *(a5 + 16);
  v10[6] = v16;
  v17 = *(v16 - 8);
  v18 = v17;
  v10[7] = v17;
  if (v8)
  {
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(v17 + 64));
  }

  v10[8] = v19;
  (*(v18 + 16))();
  OrderedDictionary.subscript.getter(a3, v11, v15);
  return sub_2583D6828;
}

void sub_2583D6828(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_2583D8DCC(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_2583D8DCC((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_2583D6964@<X0>(void (*a1)(char *, uint64_t, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v39 = a3;
  v40 = a5;
  v34 = a1;
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v13 = sub_258428DA0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v37 = v5;
  v38 = a2;
  v35 = *(a4 + 32);
  sub_258428560();
  v20 = *(v12 - 8);
  v21 = (*(v20 + 48))(v19, 1, v12);
  v22 = (v9 + 16);
  v23 = (v20 + 16);
  v33 = (v20 + 56);
  if (v21 == 1)
  {
    (*(v14 + 8))(v19, v13);
    v24 = *v22;
    v25 = v36;
    v26 = v38;
    (*v22)(v36, v38, v8);
    (*v23)(v17, v34, v12);
    v34 = *v33;
    v34(v17, 0, 1, v12);
    sub_258428540();
    sub_258428570();
    v24(v25, v26, v8);
    sub_258428980();
    v27 = v37;
    sub_258428930();
    v34(v40, 1, 1, v12);
    v28 = v27;
  }

  else
  {
    v30 = *(v20 + 32);
    v29 = v20 + 32;
    v30(v40, v19, v12);
    v26 = v38;
    (*v22)(v36, v38, v8);
    (*(v29 - 16))(v17, v34, v12);
    v31 = *(v29 + 24);
    v31(v17, 0, 1, v12);
    sub_258428540();
    sub_258428570();
    v31(v40, 0, 1, v12);
    v28 = v37;
  }

  return sub_2583D6D34(v28, v26, v39, v8);
}

uint64_t sub_2583D6D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  MEMORY[0x28223BE20](v8);
  (*(v12 + 16))(&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
  v13 = sub_2584283A0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10, a3, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  sub_258428540();
  return sub_258428570();
}

uint64_t OrderedDictionary.values.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[9] = a1;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v7 = sub_258428980();

  WitnessTable = swift_getWitnessTable();
  v10 = sub_2583D5394(sub_2583D8F74, v12, v7, a5, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v9);

  return v10;
}

uint64_t sub_2583D6FB8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v4 = sub_258428DA0();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_258428560();
  v7 = *(a1 - 8);
  result = (*(v7 + 48))(v6, 1, a1);
  if (result != 1)
  {
    return (*(v7 + 32))(a2, v6, a1);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall OrderedDictionary.removeAll()()
{
  sub_258428980();
  sub_258428970();
  sub_258428540();
  sub_258428530();
}

uint64_t OrderedDictionary.merge(with:)()
{
  swift_getWitnessTable();
  sub_258428810();
  return sub_2583D740C();
}

uint64_t sub_2583D720C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a2;
  v23 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v21[1] = a8;
  v13 = sub_258428DA0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - v15;
  v17 = sub_2584283A0();
  sub_258428560();
  v18 = *(v17 - 8);
  result = (*(v18 + 48))(v12, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = type metadata accessor for OrderedDictionary();
    sub_2583D6964(v22, a1, v12, v20, v16);
    (*(v14 + 8))(v16, v13);
    return (*(v18 + 8))(v12, v17);
  }

  return result;
}

uint64_t sub_2583D740C()
{
  sub_258428980();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_2584285F0();
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static OrderedDictionary.+ infix(_:_:)()
{
  type metadata accessor for OrderedDictionary();

  OrderedDictionary.merge(with:)();
}

uint64_t OrderedDictionary.filter(_:)(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *v3;
  v5 = a3[3];
  v16 = a3[2];
  v4 = v16;
  v17 = v5;
  v6 = a3[4];
  v7 = sub_258428980();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_2583D5394(sub_2583D9048, v15, v7, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v22 = v11;
  sub_258428980();
  swift_getWitnessTable();
  v21 = sub_258429020();
  v18 = OrderedDictionary.init()(v4, v5, v6);
  v19 = v12;
  v20 = v13;
  swift_getWitnessTable();
  sub_2584287F0();

  return v22;
}

uint64_t sub_2583D7764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_258428DA0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  (*(*(a2 - 8) + 16))(a4, a1, a2);
  sub_258428560();
  v11 = *(a3 - 8);
  result = (*(v11 + 48))(v10, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(v11 + 32))(a4 + *(TupleTypeMetadata2 + 48), v10, a3);
  }

  return result;
}

uint64_t sub_2583D78DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v30 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v27 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v27 - v14;
  v31 = a5;
  v16 = sub_258428DA0();
  v27 = *(v16 - 8);
  v28 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = *(v13 + 16);
  v29 = a2;
  v19(v15, a2, TupleTypeMetadata2);
  v20 = sub_2584283A0();
  v21 = a4;
  sub_258428560();
  v22 = *(v20 - 8);
  result = (*(v22 + 48))(v11, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v31;
    v26 = type metadata accessor for OrderedDictionary();
    sub_2583D6964((v29 + v24), v29, v11, v26, v18);
    (*(v27 + 8))(v18, v28);
    (*(v22 + 8))(v11, v20);
    (*(*(v25 - 8) + 8))(&v15[v24], v25);
    return (*(*(v21 - 8) + 8))(v15, v21);
  }

  return result;
}

uint64_t sub_2583D7BF4(uint64_t a1, uint64_t a2)
{
  v14[3] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = sub_2584283A0();
  sub_258428560();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  result = v10(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_258428560();
    result = v10(v5, 1, v8);
    if (result != 1)
    {
      v12 = sub_258428370();
      v13 = *(v9 + 8);
      v13(v5, v8);
      v13(v7, v8);
      return v12 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2583D90EC(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2583D7E10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_2583D90EC(a1, a2[2], a2[3], a2[4]);
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  a3[1] = v6;
  a3[2] = v8;
  return result;
}

uint64_t OrderedDictionary.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v31 = a6;
  v9 = sub_258428DA0();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  v28[0] = *(a4 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = sub_258428DA0();
  v33 = *(v36 - 8);
  v16 = MEMORY[0x28223BE20](v36);
  v35 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v28 - v18;
  v41 = 91;
  v42 = 0xE100000000000000;
  v28[1] = a1;
  v40 = a1;
  v20 = sub_258428980();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x259C7E0C0](&v37, v20, WitnessTable);
  v39 = v37;
  sub_258429180();
  sub_258429150();
  v22 = sub_258429170();
  v33 += 4;
  v34 = v22;
  v32 = TupleTypeMetadata2 - 8;
  v28[2] = a5 - 8;
  v29 = (v28[0] + 32);
  for (i = (v28[0] + 8); ; (*i)(v14, a4))
  {
    v24 = v35;
    sub_258429160();
    (*v33)(v19, v24, v36);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1, TupleTypeMetadata2) == 1)
    {

      MEMORY[0x259C7DFF0](93, 0xE100000000000000);
      return v41;
    }

    v25 = *v19;
    (*v29)(v14, &v19[*(TupleTypeMetadata2 + 48)], a4);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_2584292F0();
    MEMORY[0x259C7DFF0](8250, 0xE200000000000000);
    sub_258428560();
    v26 = *(a5 - 8);
    result = (*(v26 + 48))(v12, 1, a5);
    if (result == 1)
    {
      break;
    }

    sub_2584292F0();
    (*(v26 + 8))(v12, a5);
    MEMORY[0x259C7DFF0](v37, v38);

    result = sub_258428910();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
      break;
    }

    if (v25 != result - 1)
    {
      MEMORY[0x259C7DFF0](8236, 0xE200000000000000);
    }
  }

  __break(1u);
  return result;
}

uint64_t OrderedDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_258428DA0();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_2584289B0();
  sub_258428560();
  v13 = *(a8 - 8);
  result = (*(v13 + 48))(v12, 1, a8);
  if (result != 1)
  {
    return (*(v13 + 32))(a2, v12, a8);
  }

  __break(1u);
  return result;
}

uint64_t sub_2583D8438()
{
  swift_getWitnessTable();

  return sub_258428A80();
}

uint64_t sub_2583D84C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2583D8544()
{
  swift_getWitnessTable();

  return sub_258428A60();
}

uint64_t sub_2583D85C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2583D863C@<X0>(uint64_t *a1@<X8>)
{
  result = OrderedDictionary.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_2583D8670(uint64_t *a1, uint64_t *a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[4] = TupleTypeMetadata2;
  v13 = *(TupleTypeMetadata2 - 8);
  v9[5] = v13;
  if (v7)
  {
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v14 = malloc(*(v13 + 64));
  }

  v15 = v14;
  v9[6] = v14;
  v16 = sub_2583D888C(v9, *a2, *v3, v3[1], v3[2], v11, v10);
  v18 = v17;
  v9[7] = v16;
  (*(*(v11 - 8) + 16))(v15);
  (*(*(v10 - 8) + 16))(v15 + *(TupleTypeMetadata2 + 48), v18, v10);
  return sub_2583D8814;
}

void sub_2583D8814(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_2583D888C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v14 = *(TupleTypeMetadata2 - 8);
  a1[1] = v14;
  if (MEMORY[0x277D84FD8])
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v14 + 64));
  }

  a1[2] = v15;
  OrderedDictionary.subscript.getter(v15, v15 + *(TupleTypeMetadata2 + 48), a2, a3, a4, v16, a6, a7);
  return sub_2583D89BC;
}

void sub_2583D89BC(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_2583D8A0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC710](a1, WitnessTable, v3);
}

uint64_t sub_2583D8A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2583D8B24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

__n128 sub_2583D8B9C@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u64[1] = 0;
  return result;
}

uint64_t sub_2583D8BB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_2583D8C0C()
{
  swift_getWitnessTable();
  v0 = sub_2583DBC6C();

  return v0;
}

uint64_t static OrderedDictionary<>.__derived_struct_equals(_:_:)()
{
  if ((sub_258428990() & 1) == 0 || (sub_258428550() & 1) == 0)
  {
    return 0;
  }

  sub_2584283A0();
  sub_2583D949C();

  return sub_258428550();
}

uint64_t sub_2583D8DCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = sub_258428DA0();
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = *(a3 + 16);
  MEMORY[0x28223BE20](v8);
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v14 = *(v6 - 8);
  (*(v14 + 16))(v10, a1, v6);
  (*(v14 + 56))(v10, 0, 1, v6);
  sub_258428540();
  return sub_258428570();
}

uint64_t sub_2583D8FD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_2583D906C(uint64_t a1)
{
  v3 = *(v1 + 40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_2583D90EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = sub_258428DA0();
  v29 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v26 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v37 = a4;
  v16 = OrderedDictionary.init()(a2, a3, a4);
  v39 = v16;
  v40 = v17;
  v41 = v18;
  if (!sub_258428910())
  {
    return v16;
  }

  v19 = 0;
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = (v10 + 16);
  v34 = a2;
  v30 = a3 - 8;
  v31 = a2 - 8;
  v28 = (v10 + 8);
  ++v29;
  while (1)
  {
    v20 = sub_2584288F0();
    sub_258428890();
    if (v20)
    {
      result = (*(v10 + 16))(v15, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, TupleTypeMetadata2);
    }

    else
    {
      result = sub_258428FE0();
      if (v27 != 8)
      {
        goto LABEL_13;
      }

      v38 = result;
      (*v33)(v15, &v38, TupleTypeMetadata2);
      result = swift_unknownObjectRelease();
    }

    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v23 = *(TupleTypeMetadata2 + 48);
    (*(*(v34 - 8) + 32))(v13, v15, v34);
    (*(*(a3 - 8) + 32))(&v13[v23], &v15[v32], a3);
    v24 = type metadata accessor for OrderedDictionary();
    v25 = v35;
    OrderedDictionary.updateValue(_:forKey:)(&v13[v23], v13, v24, v35);
    (*v29)(v25, v36);
    (*v28)(v13, TupleTypeMetadata2);
    ++v19;
    if (v22 == sub_258428910())
    {
      return v39;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_2583D949C()
{
  result = qword_27F928BE0;
  if (!qword_27F928BE0)
  {
    sub_2584283A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928BE0);
  }

  return result;
}

unint64_t sub_2583D9544()
{
  result = qword_27F928BF8;
  if (!qword_27F928BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928BF8);
  }

  return result;
}

uint64_t sub_2583D970C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F928BF0);
    sub_2583D9544();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2583D97BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2583D9804(uint64_t *a1, int a2)
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

uint64_t sub_2583D984C(uint64_t result, int a2, int a3)
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

double static Quadrilateral.zero.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

id VNRectangleObservation.quad.getter@<X0>(void *a1@<X8>)
{
  [v1 topLeft];
  v4 = v3;
  v6 = v5;
  [v1 topRight];
  v8 = v7;
  v10 = v9;
  [v1 bottomRight];
  v12 = v11;
  v14 = v13;
  result = [v1 bottomLeft];
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v17;
  return result;
}

void *Ransac.__allocating_init(solver:)()
{
  swift_allocObject();
  v0 = sub_2583DA628();
  swift_unknownObjectRelease();
  return v0;
}

void *Ransac.init(solver:)()
{
  v0 = sub_2583DA628();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t Ransac.fit(data:minInliners:iterations:errorThreshold:qualifiedInliners:bestData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7)
{
  v8 = v7;
  v71 = a6;
  v79 = a5;
  v86 = a3;
  v67 = a1;
  v12 = *(*v7 + 88);
  v13 = *(*v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v95 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - v17;
  v99 = v13;
  v19 = swift_getAssociatedTypeWitness();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v98 = &v66 - v23;
  v83 = sub_258428DA0();
  v70 = *(v83 - 8);
  v24 = MEMORY[0x28223BE20](v83);
  v74 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v85 = &v66 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - v28;
  Strong = swift_unknownObjectWeakLoadStrong();
  v31 = *(v20 + 56);
  v100 = Strong;
  if (!Strong)
  {
    return v31(v67, 1, 1, v19);
  }

  v75 = v29;
  v69 = v20 + 56;
  v68 = v31;
  v31(v29, 1, 1, v19);
  v91 = a2;
  result = sub_258428910();
  if (a4 < 0)
  {
    goto LABEL_36;
  }

  if (!a4)
  {
LABEL_32:
    swift_unknownObjectRelease();
    return (*(v70 + 32))(v67, v75, v83);
  }

  v33 = result;
  v92 = v19;
  v34 = 0;
  v89 = *(v12 + 24);
  v88 = (v20 + 48);
  v81 = (v20 + 32);
  v97 = v12 + 32;
  v94 = (v96 + 16);
  v35 = (v96 + 8);
  v73 = (v20 + 16);
  v82 = (v70 + 8);
  v90 = v12 + 24;
  v72 = v12 + 40;
  v77 = (v20 + 8);
  v36 = INFINITY;
  v78 = a4;
  while (1)
  {
    swift_beginAccess();
    swift_beginAccess();
    v37 = v99;
    sub_2583DA6DC(v91, v86, (v8 + 32));
    swift_endAccess();
    swift_endAccess();

    v93 = v34;
    v39 = v37;
    v40 = v85;
    v89(v38, v34, v39, v12);

    v41 = v92;
    v87 = *v88;
    if (v87(v40, 1, v92) == 1)
    {
      (*v82)(v40, v83);
      goto LABEL_6;
    }

    v80 = *v81;
    v80(v98, v40, v41);
    swift_beginAccess();
    v96 = sub_258428980();
    sub_258428970();
    result = swift_endAccess();
    if (v33 < 0)
    {
      break;
    }

    if (v33)
    {
      v42 = 0;
      do
      {
        v43 = v42++;
        v44 = *(v8 + 32);
        v45 = *(v44 + 16);
        v46 = (v44 + 32);
        while (v45)
        {
          v47 = *v46++;
          --v45;
          if (v47 == v43)
          {
            goto LABEL_12;
          }
        }

        sub_2584289B0();
        if ((*(v12 + 32))(v98, v18, v99, v12) <= a7)
        {
          (*v94)(v95, v18, AssociatedTypeWitness);
          swift_beginAccess();
          sub_258428930();
          swift_endAccess();
        }

        (*v35)(v18, AssociatedTypeWitness);
LABEL_12:
        ;
      }

      while (v42 != v33);
    }

    v48 = sub_258428910();

    v49 = sub_258428910();

    if (__OFADD__(v48, v49))
    {
      goto LABEL_35;
    }

    if (v48 + v49 < v79)
    {
      (*v77)(v98, v92);
LABEL_30:
      a4 = v78;
      goto LABEL_6;
    }

    v101 = *(v8 + 24);
    swift_beginAccess();

    WitnessTable = swift_getWitnessTable();
    sub_258428920();
    swift_endAccess();

    v51 = v74;
    v89(v50, v93, v99, v12);

    v52 = v92;
    v53 = v87;
    if (v87(v51, 1, v92) == 1)
    {
      (*v73)(v84, v98, v52);
      v54 = v53(v51, 1, v52);
      v55 = v75;
      if (v54 != 1)
      {
        (*v82)(v51, v83);
      }
    }

    else
    {
      v80(v84, v51, v52);
      v55 = v75;
    }

    v56 = *(v8 + 40);
    v57 = *(v12 + 40);

    v58 = v57(v84, v56, v99, v12);

    if (v58 >= v36)
    {
      v64 = *v77;
      v65 = v92;
      (*v77)(v84, v92);
      v64(v98, v65);
      goto LABEL_30;
    }

    (*v82)(v55, v83);
    v59 = v55;
    v60 = v84;
    v61 = v55;
    v62 = v92;
    (*v73)(v59, v84, v92);
    v68(v61, 0, 1, v62);
    sub_258428970();
    v102 = *(v8 + 40);

    sub_258428920();
    v63 = *v77;
    (*v77)(v60, v62);
    v63(v98, v62);
    a4 = v78;
    if (v58 == 0.0)
    {
      goto LABEL_32;
    }

    v36 = v58;
LABEL_6:
    v34 = v93 + 1;
    if (v93 + 1 == a4)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t Ransac.deinit()
{
  MEMORY[0x259C7FC20](v0 + 16);

  return v0;
}

uint64_t Ransac.__deallocating_deinit()
{
  Ransac.deinit();

  return swift_deallocClassInstance();
}

void *sub_2583DA628()
{
  swift_unknownObjectWeakInit();
  swift_getAssociatedTypeWitness();
  v1 = sub_2584288D0();
  v2 = MEMORY[0x277D84F90];
  v0[3] = v1;
  v0[4] = v2;
  v0[5] = sub_2584288D0();
  swift_unknownObjectWeakAssign();
  return v0;
}

void sub_2583DA6DC(uint64_t a1, uint64_t a2, char **a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a3;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_25838716C(0, *(v6 + 2));
  }

  else
  {
    v7 = sub_25838C574(0, *(v6 + 3) >> 1);

    *a3 = v7;
  }

  sub_258428980();
  sub_258428970();
  v8 = *a3;
  if (*(*a3 + 2) < a2)
  {
    v9 = sub_258428910();
    if (!__OFSUB__(v9, 1))
    {
      v10 = (v9 - 1);
      while (1)
      {
        v12 = round(drand48() * v10);
        if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v12 <= -9.22337204e18)
        {
          goto LABEL_22;
        }

        if (v12 >= 9.22337204e18)
        {
          goto LABEL_23;
        }

        v13 = 0;
        v14 = v12;
        v11 = *(v8 + 2);
        while (v11 != v13)
        {
          v15 = &v8[8 * v13++];
          if (*(v15 + 4) == v14)
          {
            goto LABEL_8;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25839CFE4(0, v11 + 1, 1, v8);
        }

        v17 = *(v8 + 2);
        v16 = *(v8 + 3);
        if (v17 >= v16 >> 1)
        {
          v8 = sub_25839CFE4((v16 > 1), v17 + 1, 1, v8);
        }

        *(v8 + 2) = v17 + 1;
        *&v8[8 * v17 + 32] = v14;
        *a3 = v8;
        sub_2584289B0();
        sub_258428930();
        v11 = *(v8 + 2);
LABEL_8:
        if (v11 >= a2)
        {
          return;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t RingBuffer.init(capacity:)(uint64_t a1)
{
  sub_2584284D0();
  sub_258428980();
  sub_2584288A0();
  return a1;
}

uint64_t RingBuffer.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(a3, result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3 + result != 0x8000000000000000 || a2 != -1)
  {
    return sub_2584289B0();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t RingBuffer.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3[1];
  v5 = __OFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v3;
  v8 = *v3;
  if (!*v3)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v6 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_14;
  }

  v10 = result;
  v11 = *(a3 + 16);
  v12 = v6 % v8;
  sub_258428980();
  sub_2584288C0();
  v13 = v3[2];
  sub_2583DB88C(v12, v7[2]);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v15 = v13 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v15 = v13;
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 40);
  v18 = v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12;

  return v17(v18, v10, v11);
}

void (*RingBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v8[3] = v10;
  v11 = *(v10 - 8);
  v8[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v8[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  RingBuffer.subscript.getter(a2, *v3, v3[1]);
  return sub_2583DAC8C;
}