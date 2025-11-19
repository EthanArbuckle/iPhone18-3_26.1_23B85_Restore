__C::CGRect __swiftcall CGRect.aspectFit(ratio:)(Swift::Double_optional ratio)
{
  v5 = v4;
  v6 = v3;
  y = v2;
  value = ratio.value;
  if ((v1 & 1) == 0)
  {
    v9 = *&ratio.is_nil;
    Width = CGRectGetWidth(*&ratio.value);
    v19.origin.x = value;
    v19.origin.y = y;
    v19.size.width = v6;
    v19.size.height = v5;
    if (Width / CGRectGetHeight(v19) <= v9)
    {
      v22.origin.x = value;
      v22.origin.y = y;
      v22.size.width = v6;
      v22.size.height = v5;
      v11 = CGRectGetWidth(v22);
      v23.origin.x = value;
      v23.origin.y = y;
      v23.size.width = v6;
      v23.size.height = v5;
      Height = CGRectGetWidth(v23) / v9;
    }

    else
    {
      v20.origin.x = value;
      v20.origin.y = y;
      v20.size.width = v6;
      v20.size.height = v5;
      v11 = CGRectGetHeight(v20) * v9;
      v21.origin.x = value;
      v21.origin.y = y;
      v21.size.width = v6;
      v21.size.height = v5;
      Height = CGRectGetHeight(v21);
    }

    v24.origin.x = value;
    v24.origin.y = y;
    v24.size.width = v6;
    v24.size.height = v5;
    v13 = (CGRectGetWidth(v24) - v11) * 0.5;
    v25.origin.x = value;
    v25.origin.y = y;
    v25.size.width = v6;
    v25.size.height = v5;
    v14 = (CGRectGetHeight(v25) - Height) * 0.5;
    v26.origin.x = value;
    v26.origin.y = y;
    v26.size.width = v6;
    v26.size.height = v5;
    v27 = CGRectInset(v26, v13, v14);
    value = v27.origin.x;
    y = v27.origin.y;
    v6 = v27.size.width;
    v5 = v27.size.height;
  }

  v15 = value;
  v16 = y;
  v17 = v6;
  v18 = v5;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

CGColorSpaceRef sub_1B15E309C(char a1)
{
  if (a1)
  {
    image = v1;
    if (CGImageGetBitsPerComponent(v1) == 16 && (CGImageGetBitmapInfo(v1) & 0xF00) == 0x100)
    {
      Width = CGImageGetWidth(v1);
      Height = CGImageGetHeight(v1);
      result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v5 = result;
      AlphaInfo = CGImageGetAlphaInfo(image);
      v7 = CGBitmapContextCreate(0, Width, Height, 0x10uLL, 0, v5, AlphaInfo);

      if (v7)
      {
        CGImageGetWidth(image);
        CGImageGetHeight(image);
        sub_1B161A068();
        v8 = CGBitmapContextCreateImage(v7);
        if (v8)
        {
          v9 = v8;

          return v9;
        }

        if (qword_1EB7525A8 != -1)
        {
          swift_once();
        }

        v13 = sub_1B1619D18();
        __swift_project_value_buffer(v13, qword_1EB752AE0);
        v14 = sub_1B1619CF8();
        v15 = sub_1B161A088();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 0;
          _os_log_impl(&dword_1B15BF000, v14, v15, "could not render image converted to int to work around 160598136", v16, 2u);
          MEMORY[0x1B2730CA0](v16, -1, -1);
        }
      }

      else
      {
        if (qword_1EB7525A8 != -1)
        {
          swift_once();
        }

        v10 = sub_1B1619D18();
        __swift_project_value_buffer(v10, qword_1EB752AE0);
        v7 = sub_1B1619CF8();
        v11 = sub_1B161A088();
        if (os_log_type_enabled(v7, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_1B15BF000, v7, v11, "could not make CGContext to work around 160598136", v12, 2u);
          MEMORY[0x1B2730CA0](v12, -1, -1);
        }
      }
    }

    return image;
  }

  else
  {

    return v1;
  }
}

uint64_t sub_1B15E3374()
{
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](0);
  return sub_1B161A4F8();
}

uint64_t sub_1B15E33B8()
{
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](0);
  return sub_1B161A4F8();
}

__n128 FinalizedIcon.ScaledSize.pixels.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 FinalizedIcon.ScaledSize.pixels.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t FinalizedIcon.ScaledSize.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1B272FFF0](*v0);
  MEMORY[0x1B272FFF0](v1);
  return MEMORY[0x1B272FFF0](v2);
}

uint64_t FinalizedIcon.ScaledSize.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  MEMORY[0x1B272FFF0](v2);
  MEMORY[0x1B272FFF0](v3);
  return sub_1B161A4F8();
}

uint64_t sub_1B15E35BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  MEMORY[0x1B272FFF0](v2);
  MEMORY[0x1B272FFF0](v3);
  return sub_1B161A4F8();
}

uint64_t sub_1B15E3628()
{
  v1 = v0[1];
  v2 = v0[2];
  MEMORY[0x1B272FFF0](*v0);
  MEMORY[0x1B272FFF0](v1);
  return MEMORY[0x1B272FFF0](v2);
}

uint64_t sub_1B15E3670()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  MEMORY[0x1B272FFF0](v2);
  MEMORY[0x1B272FFF0](v3);
  return sub_1B161A4F8();
}

uint64_t FinalizedIcon.Size.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1B272FFF0](*v0);
  return MEMORY[0x1B272FFF0](v1);
}

uint64_t FinalizedIcon.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  MEMORY[0x1B272FFF0](v2);
  return sub_1B161A4F8();
}

uint64_t sub_1B15E3800()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  MEMORY[0x1B272FFF0](v2);
  return sub_1B161A4F8();
}

uint64_t sub_1B15E385C()
{
  v1 = v0[1];
  MEMORY[0x1B272FFF0](*v0);
  return MEMORY[0x1B272FFF0](v1);
}

uint64_t sub_1B15E3898()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  MEMORY[0x1B272FFF0](v2);
  return sub_1B161A4F8();
}

void sub_1B15E391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1EEE9AC00]();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v9;
  v20 = v19;
  v21 = *(v12 + 128);
  v22 = *(v12 + 136);
  [v9 scaleByX:v23 / v21 Y:v24 / v22];
  if (v22 >= v21)
  {
    v29 = v21;
  }

  else
  {
    v29 = v22;
  }

  if (v20 == 3)
  {
    LODWORD(v25) = *MEMORY[0x1E69C7128];
    LODWORD(v26) = *(MEMORY[0x1E69C7128] + 4);
    LODWORD(v27) = *(MEMORY[0x1E69C7128] + 8);
    LODWORD(v28) = *(MEMORY[0x1E69C7128] + 12);
    [v18 addAlphaMultiplyFilterWithColor_];
  }

  v30 = v29 * 0.0009765625;
  memcpy(__dst, (v13 + 208), 0x653uLL);
  memcpy(v77, (v13 + 208), 0x653uLL);
  if (sub_1B15C3B5C(v77) == 1)
  {
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    memcpy(&v74, &unk_1EDB2FC00, 0x653uLL);
    sub_1B15C51D0(&v74, v75);
    v31 = &v74;
  }

  else
  {
    v31 = __dst;
  }

  memcpy(v75, v31, 0x653uLL);
  sub_1B15C37C0(__dst, &v74, &qword_1EB752A78);
  sub_1B15C5664(v75);
  [v18 addBlurFilterWithRadius_];
  v71 = *(a9 + 8);
  v32 = *(v11 + 64);
  v33 = *(v11 + 72);
  v34 = *(v11 + 80);
  v35 = *(v11 + 88);
  v36 = *(v11 + 56);
  v78.origin.x = v32;
  v78.origin.y = v33;
  v78.size.width = v34;
  v78.size.height = v35;
  MinX = CGRectGetMinX(v78);
  v38 = *(a9 + 16);
  MinY = CGRectGetMinY(*(v11 + 64));
  Width = CGRectGetWidth(*(v11 + 64));
  Height = CGRectGetHeight(*(v11 + 64));
  if (qword_1EDB30310 != -1)
  {
    v64 = Height;
    swift_once();
    Height = v64;
  }

  v42 = v22 * Height;
  v43 = v21 * Width;
  v44 = v30 * v38 + v22 * MinY;
  v45 = v30 * v71 + v21 * MinX;
  v70 = *(&xmmword_1EDB30318 + 1);
  *&v72 = xmmword_1EDB30318;
  v46 = *&qword_1EDB30328;
  v68 = unk_1EDB30330;
  v79.origin.x = v45;
  v79.origin.y = v44;
  v79.size.width = v43;
  v79.size.height = v42;
  v47 = CGRectGetMinX(v79);
  v80.origin.x = v45;
  v80.origin.y = v44;
  v80.size.width = v43;
  v80.size.height = v42;
  v48 = CGRectGetMinY(v80);
  v74.a = 1.0;
  v74.b = 0.0;
  v74.c = 0.0;
  v74.d = 1.0;
  v74.tx = 0.0;
  v74.ty = 0.0;
  CGAffineTransformTranslate(&v73, &v74, v47, v48);
  tx = v73.tx;
  ty = v73.ty;
  v65 = *&v73.c;
  v66 = *&v73.a;
  v81.origin.x = v45;
  v81.origin.y = v44;
  v81.size.width = v43;
  v81.size.height = v42;
  v51 = CGRectGetWidth(v81);
  v82.origin.x = v45;
  v82.origin.y = v44;
  v82.size.width = v43;
  v82.size.height = v42;
  v52 = CGRectGetHeight(v82);
  *&v74.a = v66;
  *&v74.c = v65;
  v74.tx = tx;
  v74.ty = ty;
  CGAffineTransformScale(&v73, &v74, v51, v52);
  v53 = v73.tx;
  v54 = v73.ty;
  v55 = v72;
  *&v72 = v55;
  v56 = v70;
  *&v70 = v56;
  *&ty = v46;
  *&v46 = v68;
  v67 = *&v73.c;
  v69 = *&v73.a;
  CGImage = RBImageMakeCGImage();
  v59 = v58;
  [v15 setRect_];
  *&v74.a = v69;
  *&v74.c = v67;
  v74.tx = v53;
  v74.ty = v54;
  LODWORD(v60) = LODWORD(v70);
  LODWORD(v61) = LODWORD(ty);
  LODWORD(v62) = LODWORD(v46);
  [v17 setRBImage:CGImage transform:v59 interpolation:&v74 tintColor:1 colorSpace:3 flags:{0, COERCE_DOUBLE(__PAIR64__(DWORD1(v69), LODWORD(v72))), v60, v61, v62}];
  LODWORD(v63) = 1.0;
  [v18 drawShape:v15 fill:v17 alpha:0 blendMode:v63];
  [v15 setRenderingMode_];
}

uint64_t sub_1B15E3D68(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B1619D18();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B1619D08();
}

void sub_1B15E3DEC(uint64_t *a1, uint64_t a2, void *a3)
{
  v84 = a2;
  v7 = sub_1B1619BF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = sub_1B1619BE8();
  if (__OFADD__(v11, 2))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v12, 2))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
LABEL_8:
    v96[0] = v3;
    v96[1] = v10;
    v20 = v10;
    v97 = xmmword_1B161D4C0;
    v98 = v7;
    v99 = 4;
    v100 = 3;
    v101 = a3;
    v102 = 0;
    v103 = v8;
    v104 = 7;
    v21 = sub_1B1616D24(v96);
    if (v21)
    {
      v22 = v21;
      v23 = objc_allocWithZone(MEMORY[0x1E69C70C8]);
      v77 = v8;
      v24 = [v23 initWithDevice_];
      [v24 setSize_];
      [v24 setPixelFormat_];
      v25 = *(v22 + 16);
      v26 = *(v22 + 104);
      if (v26 < 0)
      {
      }

      else
      {
        v27 = *(v22 + 96);
        v28 = *(v22 + 72);
        v29 = *(v22 + 24);
        v30 = *(v22 + 40);
        v31 = *(v22 + 56);
        v91 = *(v22 + 80);
        v32 = v91;
        v86 = v25;
        v87 = v29;
        v88 = v30;
        v89 = v31;
        v90 = v28;
        v92 = v27;
        v93 = v26;
        sub_1B15C37C0(&v86, v85, &qword_1EB752B80);
      }

      v53 = *(v27 + 88);
      swift_unknownObjectRetain();

      [v24 setTexture_];
      swift_unknownObjectRelease();
      [v24 setBackgroundGPUPriority_];
      v54 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
      [v54 setProfile_];
      v55 = objc_allocWithZone(MEMORY[0x1E69C70D8]);
      v56 = v54;
      v57 = [v55 init];
      v58 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
      sub_1B15E5524(v56, v57, v58, v84, v83, v11, v12, v3, v4, v20);

      v59 = swift_allocObject();
      *(v59 + 16) = v24;
      type metadata accessor for HardwareTexture.Tracker();
      v60 = swift_allocObject();
      v61 = v24;
      swift_defaultActor_initialize();
      v62 = MEMORY[0x1E69E7CC0];
      *(v60 + 112) = 0;
      *(v60 + 120) = v62;
      *(v60 + 128) = sub_1B15E7018;
      *(v60 + 136) = v59;
      v63 = swift_allocObject();
      swift_weakInit();
      *(&v88 + 1) = sub_1B15E7004;
      *&v89 = v63;
      v86 = MEMORY[0x1E69E9820];
      *&v87 = 1107296256;
      *(&v87 + 1) = sub_1B15E703C;
      *&v88 = &block_descriptor_94;
      v64 = _Block_copy(&v86);

      [v61 setCompletedHandler_];
      _Block_release(v64);
      v65 = *(v22 + 16);
      v66 = *(v22 + 104);
      if (v66 < 0)
      {
      }

      else
      {
        v67 = *(v22 + 96);
        v68 = *(v22 + 72);
        v69 = *(v22 + 24);
        v70 = *(v22 + 40);
        v71 = *(v22 + 56);
        v91 = *(v22 + 80);
        v72 = v91;
        v86 = v65;
        v87 = v69;
        v88 = v70;
        v89 = v71;
        v90 = v68;
        v92 = v67;
        v93 = v66;
        sub_1B15C37C0(&v86, v85, &qword_1EB752B80);
      }

      *(v67 + 104) = v60;

      v73 = v56;
      [v61 renderDisplayList:v73 flags:2];

      v74 = v77;

      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v78 = v10;
  v79 = v8;
  v80 = v7;
  v81 = &v76;
  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v4 = v14 * 0.2;
  v95 = 1;
  v94 = 1;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v76 - 10;
  v10 = v15;
  *(&v76 - 8) = v84;
  *(&v76 - 7) = a3;
  *(&v76 - 6) = v11;
  *(&v76 - 5) = v12;
  *(&v76 - 4) = v4;
  *(&v76 - 3) = v11 + 2;
  v75 = v15;
  v16 = objc_opt_self();
  v17 = a3;
  v82 = v11 + 2;

  v18 = [v16 currentEnvironment];
  sub_1B15FAE80();

  v83 = a3;
  if (a3)
  {
    v3 = v82;
    LOBYTE(v7) = v95;
    LOBYTE(a3) = v94;
    v19 = qword_1EDB2FAA8;
    v8 = v17;
    if (v19 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

  v33 = RBColorModeMake();
  v34 = [v16 currentEnvironment];
  sub_1B15FAE80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B58);
  v35 = swift_allocObject();
  v36 = *MEMORY[0x1E69C7198];
  *(v35 + 32) = *MEMORY[0x1E69C7198];
  v37 = MEMORY[0x1E69E72F0];
  *(v35 + 16) = xmmword_1B161D4A0;
  *(v35 + 40) = v33;
  v38 = *MEMORY[0x1E69C71A0];
  *(v35 + 64) = v37;
  *(v35 + 72) = v38;
  *(v35 + 80) = 0;
  v39 = *MEMORY[0x1E69C7190];
  *(v35 + 104) = v37;
  *(v35 + 112) = v39;
  *(v35 + 144) = MEMORY[0x1E69E6530];
  *(v35 + 120) = 2;
  v40 = v36;
  v41 = v38;
  v42 = v39;
  v43 = sub_1B15C28A4(v35);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B60);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v44 = *MEMORY[0x1E69C71B0];
  *&v88 = MEMORY[0x1E69E6370];
  LOBYTE(v86) = 1;
  sub_1B15C2260(&v86, v85);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v96[0] = v43;
  sub_1B15E4D0C(v85, v44, isUniquelyReferenced_nonNull_native);
  v46 = [objc_opt_self() sharedDevice];
  v47 = v82;
  type metadata accessor for RBImageRendererProperty(0);
  sub_1B15E6778();
  v48 = sub_1B1619D28();

  v8 = swift_allocObject();
  v49 = v77;
  v8[2] = sub_1B15E6D18;
  v8[3] = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1B15E7034;
  *(v50 + 24) = v8;
  *(&v88 + 1) = sub_1B15E7038;
  *&v89 = v50;
  v86 = MEMORY[0x1E69E9820];
  *&v87 = 1107296256;
  *(&v87 + 1) = sub_1B15C5990;
  *&v88 = &block_descriptor_85;
  v51 = _Block_copy(&v86);

  v52 = [v46 renderImageInRect:v48 options:v51 renderer:{0.0, 0.0, v47, v10}];

  _Block_release(v51);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
LABEL_24:

    goto LABEL_25;
  }

  if (v52)
  {
LABEL_19:
    (v79[1])(v78, v80);
    return;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_1B15E4764(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B15E4830(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B15C10F0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B15E4830(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B15E493C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B161A1F8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B15E493C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B15E4988(a1, a2);
  sub_1B15E4AB8(&unk_1F2859020);
  return v3;
}

uint64_t sub_1B15E4988(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B15E4BA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B161A1F8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B1619E18();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B15E4BA4(v10, 0);
        result = sub_1B161A178();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B15E4AB8(uint64_t result)
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

  result = sub_1B15E4C18(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1B15E4BA4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752BA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B15E4C18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752BA0);
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

_OWORD *sub_1B15E4D0C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B15C29CC(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1B15FD6C0();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B15FD0E8(v13, a3 & 1);
    v8 = sub_1B15C29CC(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for RBImageRendererProperty(0);
      result = sub_1B161A468();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_1B15C2260(a1, v19);
  }

  else
  {
    sub_1B15FD658(v8, a2, a1, v18);

    return a2;
  }
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

BOOL _s13IconRendering09FinalizedA0V13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v5 = *v3;
  v6 = *(v3 + 1);
  v7 = *(v3 + 15);
  v9 = v3[16];
  v8 = v3[17];
  v10 = *(v3 + 144);
  v30 = *(v3 + 202);
  memcpy(v39, v3 + 26, 0x653uLL);
  v11 = *v2;
  v12 = v2[1];
  v13 = v2[15];
  v15 = *(v2 + 16);
  v14 = *(v2 + 17);
  v16 = *(v2 + 144);
  v29 = *(v2 + 202);
  memcpy(v40, v2 + 26, 0x653uLL);
  if ((*&v5 != *&v11 || v6 != v12) && (sub_1B161A448() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v4 + 6);
  v37[4] = *(v4 + 5);
  v37[5] = v17;
  LOBYTE(v37[6]) = *(v4 + 112);
  v18 = *(v4 + 2);
  v37[0] = *(v4 + 1);
  v37[1] = v18;
  v19 = *(v4 + 3);
  v37[3] = *(v4 + 4);
  v37[2] = v19;
  v20 = *(v2 + 6);
  v35[4] = *(v2 + 5);
  v35[5] = v20;
  LOBYTE(v35[6]) = *(v2 + 112);
  v21 = *(v2 + 2);
  v35[0] = *(v2 + 1);
  v35[1] = v21;
  v22 = *(v2 + 3);
  v35[3] = *(v2 + 4);
  v35[2] = v22;
  if ((_s13IconRendering0A0V4FillV8ContentsO2eeoiySbAG_AGtFZ_0(v37, v35) & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13)
    {
      return 0;
    }

    v23 = sub_1B15F3B7C(v7, v13);

    result = 0;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v13)
    {
      return result;
    }
  }

  if (v9 == v15 && v8 == v14 && ((v10 ^ v16) & 1) == 0)
  {
    v25 = *(v4 + 21);
    v37[0] = *(v4 + 19);
    v37[1] = v25;
    v37[2] = *(v4 + 23);
    LOWORD(v37[3]) = *(v4 + 100);
    v26 = *(v2 + 21);
    v35[0] = *(v2 + 19);
    v35[1] = v26;
    v35[2] = *(v2 + 23);
    LOWORD(v35[3]) = *(v2 + 100);
    v27 = _s13IconRendering12ICRIconStyleV2eeoiySbAC_ACtFZ_0(v37, v35);
    result = 0;
    if ((v27 & 1) != 0 && ((v30 ^ v29) & 1) == 0)
    {
      memcpy(v37, v39, 0x653uLL);
      memcpy(&v37[101] + 8, v40, 0x653uLL);
      memcpy(v38, v39, 0x653uLL);
      if (sub_1B15C3B5C(v38) == 1)
      {
        memcpy(v35, &v37[101] + 8, 0x653uLL);
        if (sub_1B15C3B5C(v35) == 1)
        {
          memcpy(v36, v37, 0x653uLL);
          sub_1B15C37C0(v39, v34, &qword_1EB752A78);
          sub_1B15C37C0(v40, v34, &qword_1EB752A78);
          sub_1B15C1750(v36, &qword_1EB752A78);
          return 1;
        }

        sub_1B15C37C0(v39, v36, &qword_1EB752A78);
        sub_1B15C37C0(v40, v36, &qword_1EB752A78);
      }

      else
      {
        memcpy(v36, v37, 0x653uLL);
        memcpy(v34, v37, 0x653uLL);
        memcpy(v35, &v37[101] + 8, 0x653uLL);
        if (sub_1B15C3B5C(v35) != 1)
        {
          memcpy(__dst, &v37[101] + 8, 0x653uLL);
          v28 = _s13IconRendering22ICRRenderingParametersV2eeoiySbAC_ACtFZ_0(v34);
          memcpy(v31, __dst, 0x653uLL);
          sub_1B15C37C0(v39, v32, &qword_1EB752A78);
          sub_1B15C37C0(v40, v32, &qword_1EB752A78);
          sub_1B15C37C0(v36, v32, &qword_1EB752A78);
          sub_1B15C5664(v31);
          memcpy(v32, v34, 0x653uLL);
          sub_1B15C5664(v32);
          memcpy(__dst, v37, 0x653uLL);
          sub_1B15C1750(__dst, &qword_1EB752A78);
          return (v28 & 1) != 0;
        }

        memcpy(__dst, v37, 0x653uLL);
        sub_1B15C37C0(v39, v32, &qword_1EB752A78);
        sub_1B15C37C0(v40, v32, &qword_1EB752A78);
        sub_1B15C37C0(v36, v32, &qword_1EB752A78);
        sub_1B15C5664(__dst);
      }

      memcpy(v35, v37, 0xCABuLL);
      sub_1B15C1750(v35, &qword_1EB752AD0);
      return 0;
    }
  }

  return result;
}

id sub_1B15E5424(uint64_t a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6979450]) init];
  [v4 setPadding_];
  [v4 setMaximumDistance_];
  [v4 setGradientSmoothing_];
  [v4 setZeroValueDistance_];
  [v4 setOneValueDistance_];
  [v4 setOutputBitDepth_];
  v5 = [objc_allocWithZone(MEMORY[0x1E6979448]) init];
  v6 = [v5 generateSDFWithRequest:v4 forImage:a1];

  return v6;
}

id sub_1B15E5524(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v97 = a9;
  v119 = a5;
  v127 = *MEMORY[0x1E69E9840];
  sub_1B15D08AC(&unk_1F2859048, sub_1B15D0A44, 0, v126, 20);
  [a1 addColorMatrixFilterWithArray:v126 flags:0];
  LODWORD(v17) = 1.0;
  LODWORD(v18) = -1.0;
  LODWORD(v19) = 1.0;
  LODWORD(v20) = 1.0;
  [a1 addColorMultiplyFilterWithColor_];
  [a1 beginLayerWithFlags_];
  v21 = *(a4 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v92 = a2;
    v93 = a3;
    v94 = a1;
    v123 = MEMORY[0x1E69E7CC0];
    sub_1B15CB4A4(0, v21, 0);
    v120 = v123;
    v107 = objc_opt_self();
    p_c = &v125[0].c;
    v23 = (a4 + 56);
    v104 = a7;
    v105 = a6;
    v103 = *MEMORY[0x1E69C7198];
    v102 = *MEMORY[0x1E69C71A0];
    v95 = a10;
    v96 = a8;
    v101 = xmmword_1B161D4A0;
    v100 = 1107296256;
    v24 = *MEMORY[0x1E69C7190];
    v98 = *MEMORY[0x1E69C71B0];
    v99 = v24;
    do
    {
      v118 = v21;
      v25 = *(v23 - 3);
      v26 = *(v23 - 2);
      v27 = *(v23 - 1);
      v28 = *v23;
      v29 = objc_allocWithZone(MEMORY[0x1E69C70A8]);
      v121 = v25;
      v30 = v26;
      v31 = v27;
      v32 = v119;
      v33 = v119;
      v34 = [v29 init];
      v35 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
      v36 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
      v37 = v36;
      if (v32)
      {
        v36 = [v34 setProfile_];
      }

      *&v112 = &v91;
      MEMORY[0x1EEE9AC00](v36);
      *(&v91 - 4) = v121;
      *(&v91 - 3) = v30;
      v116 = v31;
      v117 = v30;
      *(&v91 - 2) = v31;
      *(&v91 - 8) = v28;
      v115 = v34;
      v114 = v35;
      v113 = v37;
      v38 = [v107 currentEnvironment];
      sub_1B15FAE80();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B58);
      inited = swift_initStackObject();
      *(inited + 16) = v101;
      v41 = v102;
      v40 = v103;
      *(inited + 32) = v103;
      *(inited + 40) = 14;
      v42 = MEMORY[0x1E69E72F0];
      *(inited + 64) = MEMORY[0x1E69E72F0];
      *(inited + 72) = v41;
      *(inited + 80) = 1;
      v43 = v99;
      *(inited + 104) = v42;
      *(inited + 112) = v43;
      *(inited + 144) = MEMORY[0x1E69E6530];
      *(inited + 120) = 2;
      v44 = v40;
      v45 = v41;
      v46 = v43;
      v47 = sub_1B15C28A4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B60);
      swift_arrayDestroy();
      *&v125[0].d = MEMORY[0x1E69E6370];
      LOBYTE(v125[0].a) = 1;
      sub_1B15C2260(v125, &v124);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v47;
      sub_1B15E4D0C(&v124, v98, isUniquelyReferenced_nonNull_native);
      if (!v119)
      {
        v33 = [objc_opt_self() sharedDevice];
      }

      type metadata accessor for RBImageRendererProperty(0);
      sub_1B15E6778();
      v49 = sub_1B1619D28();

      v50 = swift_allocObject();
      *(v50 + 16) = sub_1B15E6D4C;
      *(v50 + 24) = &v91 - 6;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1B15E7034;
      *(v51 + 24) = v50;
      *&v125[0].tx = sub_1B15E7038;
      *&v125[0].ty = v51;
      *&v125[0].a = MEMORY[0x1E69E9820];
      *&v125[0].b = v100;
      *&v125[0].c = sub_1B15C5990;
      *&v125[0].d = &block_descriptor_106;
      v52 = _Block_copy(v125);

      v53 = [v33 renderImageInRect:v49 options:v52 renderer:{0.0, 0.0, v105, v104}];
      swift_unknownObjectRelease();

      _Block_release(v52);
      LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

      v54 = v118;
      if (v52)
      {
        __break(1u);
      }

      v111 = v23;
      if (v53)
      {
        v55 = sub_1B15E5424(v53, v97);
        v56 = v116;
        if (qword_1EDB30310 != -1)
        {
          swift_once();
        }

        v57 = xmmword_1EDB30318;
        v58 = *&qword_1EDB30328;
        *&v112 = unk_1EDB30330;
        v128.origin.x = 0.0;
        v128.origin.y = 0.0;
        v59 = v95;
        v60 = v96;
        v128.size.width = v96;
        v128.size.height = v95;
        MinX = CGRectGetMinX(v128);
        v129.origin.x = 0.0;
        v129.origin.y = 0.0;
        v129.size.width = v60;
        v129.size.height = v59;
        MinY = CGRectGetMinY(v129);
        v125[0].b = 0.0;
        v125[0].c = 0.0;
        v125[0].a = 1.0;
        v125[0].d = 1.0;
        v125[0].tx = 0.0;
        v125[0].ty = 0.0;
        CGAffineTransformTranslate(&v124, v125, MinX, MinY);
        tx = v124.tx;
        ty = v124.ty;
        v108 = *&v124.c;
        v109 = *&v124.a;
        v130.origin.x = 0.0;
        v130.origin.y = 0.0;
        v130.size.width = v60;
        v130.size.height = v59;
        Width = CGRectGetWidth(v130);
        v131.origin.x = 0.0;
        v131.origin.y = 0.0;
        v131.size.width = v60;
        v131.size.height = v59;
        Height = CGRectGetHeight(v131);
        *&v125[0].c = v108;
        *&v125[0].a = v109;
        v125[0].tx = tx;
        v125[0].ty = ty;
        CGAffineTransformScale(&v124, v125, Width, Height);
        v67 = v124.tx;
        v68 = v124.ty;
        *&Width = *&v57;
        v70 = *&v112;
        v112 = *&v124.a;
        v109 = *&v124.c;
        CGImage = RBImageMakeCGImage();
        v72 = v113;
        [v113 setRect_];
        *&v125[0].c = v109;
        *&v125[0].a = v112;
        v125[0].tx = v67;
        v125[0].ty = v68;
        v73 = v114;
        v110 = v110 & 0xFFFFFFFF00000000 | CGImage;
        v69 = *(&v57 + 1);
        *&v74 = v69;
        *&v58 = v58;
        LODWORD(v75) = LODWORD(v58);
        *&v76 = v70;
        [v114 setRBImage:COERCE_DOUBLE(__PAIR64__(DWORD1(v112) transform:LODWORD(Width))) interpolation:v74 tintColor:v75 colorSpace:v76 flags:?];
        LODWORD(v77) = 1.0;
        v78 = v115;
        [v115 drawShape:v72 fill:v73 alpha:0 blendMode:v77];
        [v72 setRenderingMode_];

        v79 = v56;
        v80 = v117;
        v81 = v121;
      }

      else
      {
        v80 = v116;
        v81 = v117;
        if (qword_1EB7525C0 != -1)
        {
          swift_once();
        }

        v82 = sub_1B1619D18();
        __swift_project_value_buffer(v82, qword_1EB752B10);
        v79 = sub_1B1619CF8();
        v83 = sub_1B161A088();
        if (os_log_type_enabled(v79, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_1B15BF000, v79, v83, "could not rasterize layer for SDF generation", v84, 2u);
          MEMORY[0x1B2730CA0](v84, -1, -1);
        }

        v53 = v121;
        v73 = v114;
        v78 = v115;
        v72 = v113;
      }

      v85 = v120;
      v123 = v120;
      v87 = v120[2];
      v86 = v120[3];
      if (v87 >= v86 >> 1)
      {
        sub_1B15CB4A4((v86 > 1), v87 + 1, 1);
        v85 = v123;
      }

      v85[2] = v87 + 1;
      v120 = v85;
      v88 = &v85[3 * v87];
      v88[4] = v78;
      v88[5] = v73;
      v88[6] = v72;
      v23 = v111 + 32;
      v21 = v54 - 1;
    }

    while (v21);
    a3 = v93;
    a1 = v94;
    a2 = v92;
    v22 = v120;
  }

  sub_1B15DD690(v22, a1, a2, a3, v97);

  LODWORD(v89) = 1.0;
  return [a1 drawLayerWithAlpha:0 blendMode:v89];
}

id sub_1B15E5E9C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v15 = a1;
  v77 = *MEMORY[0x1E69E9840];
  [a1 translateByX:1.0 Y:1.0];
  [v15 beginLayerWithFlags_];
  v16 = *(a4 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v57 = a2;
    v58 = a3;
    v59 = v15;
    v76 = MEMORY[0x1E69E7CC0];
    sub_1B15CB4A4(0, v16, 0);
    v18 = (a4 + 56);
    rect = a6;
    v61 = a6 * a9;
    v62 = a7;
    dy = a7 * a9;
    v17 = v76;
    do
    {
      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = *v18;
      v23 = objc_allocWithZone(MEMORY[0x1E69C70A8]);
      v24 = v19;
      v70 = v20;
      v69 = v21;
      v25 = [v23 init];
      v26 = [objc_allocWithZone(MEMORY[0x1E69C70D8]) init];
      v27 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
      if (a5)
      {
        [v25 setProfile_];
      }

      v28 = v25;
      v29 = v26;
      v30 = v27;
      [v24 boundingRect];
      v79 = CGRectInset(v78, -2.0, -2.0);
      x = v79.origin.x;
      y = v79.origin.y;
      width = v79.size.width;
      height = v79.size.height;
      v35 = floor(CGRectGetMinX(v79));
      v80.origin.x = x;
      v80.origin.y = y;
      v80.size.width = width;
      v80.size.height = height;
      v36 = floor(CGRectGetMinY(v80));
      v81.origin.x = x;
      v81.origin.y = y;
      v81.size.width = width;
      v81.size.height = height;
      v37 = ceil(CGRectGetMaxX(v81)) - v35;
      v82.origin.x = x;
      v82.origin.y = y;
      v82.size.width = width;
      v82.size.height = height;
      [v30 setRect_];
      LODWORD(v38) = 1.0;
      [v28 clipShape:v30 alpha:0 mode:v38];
      if (v22)
      {
        v39 = 610;
      }

      else
      {
        v39 = 1634;
      }

      [v28 addDistanceFilterWithMaxDistance:v39 scale:a8 flags:1.0];
      v83.origin.x = 0.0;
      v83.origin.y = 0.0;
      v83.size.width = rect;
      v83.size.height = v62;
      v84 = CGRectInset(v83, v61, dy);
      v40 = v84.origin.x;
      v41 = v84.origin.y;
      v42 = v84.size.width;
      v43 = v84.size.height;
      if (qword_1EDB302F8 != -1)
      {
        swift_once();
      }

      v44 = qword_1EDB30300;
      v45 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
      v46 = sub_1B1619D68();
      v47 = [v45 initWithLibrary:v44 function:v46];

      v85.origin.x = v40;
      v85.origin.y = v41;
      v85.size.width = v42;
      v85.size.height = v43;
      MinX = CGRectGetMinX(v85);
      v86.origin.x = v40;
      v86.origin.y = v41;
      v86.size.width = v42;
      v86.size.height = v43;
      MinY = CGRectGetMinY(v86);
      v87.origin.x = v40;
      v87.origin.y = v41;
      v87.size.width = v42;
      v87.size.height = v43;
      v66 = CGRectGetWidth(v87);
      v88.origin.x = v40;
      v88.origin.y = v41;
      v88.size.width = v42;
      v88.size.height = v43;
      v48 = CGRectGetHeight(v88);
      v49.f64[0] = v66;
      v49.f64[1] = v48;
      v50.f64[0] = MinX;
      v50.f64[1] = MinY;
      aBlock = vcvt_hight_f32_f64(vcvt_f32_f64(v50), v49);
      [v47 setArgumentBytes:&aBlock atIndex:0 type:4 count:1 flags:0];
      v74 = sub_1B15DDF08;
      v75 = 0;
      aBlock.i64[0] = MEMORY[0x1E69E9820];
      aBlock.i64[1] = 1107296256;
      v72 = sub_1B15F7FB4;
      v73 = &block_descriptor_109;
      v51 = _Block_copy(&aBlock);

      [v47 setCIFilterProvider_];
      _Block_release(v51);
      [v28 addFilterWithShader:v47 border:0 bounds:0 flags:{INFINITY, INFINITY}];
      [v28 drawDisplayList_];

      v76 = v17;
      v53 = v17[2];
      v52 = v17[3];
      if (v53 >= v52 >> 1)
      {
        sub_1B15CB4A4((v52 > 1), v53 + 1, 1);
        v17 = v76;
      }

      v17[2] = v53 + 1;
      v54 = &v17[3 * v53];
      v54[4] = v28;
      v54[5] = v29;
      v54[6] = v30;
      v18 += 32;
      --v16;
    }

    while (v16);
    a3 = v58;
    v15 = v59;
    a2 = v57;
  }

  sub_1B15DD690(v17, v15, a2, a3, a8);

  LODWORD(v55) = 1.0;
  return [v15 drawLayerWithAlpha:0 blendMode:v55];
}

unint64_t sub_1B15E6444(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B88);
    v3 = sub_1B161A308();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B15C37C0(v4, v13, &qword_1EB752B90);
      result = sub_1B160AA50(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1B15C2260(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_1B15E6580(unint64_t result, _BYTE *a2, uint64_t *a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a3;
  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 176 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(v7, v5);
  v12 = v7 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 176 * v7;
  a2 = (v9 + 32 + 176 * v8);
  if (result != a2 || result >= &a2[176 * v14])
  {
    result = memmove(result, a2, 176 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0xB0uLL);
  a3 = &qword_1EB752BA8;
  a2 = v18;
  result = a4;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1B15C37C0(result, a2, a3);
    __break(1u);
    return result;
  }

  return sub_1B15C37C0(a4, v18, &qword_1EB752BA8);
}

unint64_t sub_1B15E66A4(unint64_t result, _BYTE *a2, const void *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_1B15C26BC(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1B15E6580(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_1B15E6778()
{
  result = qword_1EDB2FB88;
  if (!qword_1EDB2FB88)
  {
    type metadata accessor for RBImageRendererProperty(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2FB88);
  }

  return result;
}

unint64_t sub_1B15E67D4()
{
  result = qword_1EB752B68;
  if (!qword_1EB752B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752B68);
  }

  return result;
}

unint64_t sub_1B15E682C()
{
  result = qword_1EB752B70;
  if (!qword_1EB752B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752B70);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B15E68A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1827))
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

uint64_t sub_1B15E68F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1816) = 0;
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
    *(result + 1826) = 0;
    *(result + 1824) = 0;
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
      *(result + 1827) = 1;
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

    *(result + 1827) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1B15E6B80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B15E6BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B15E6CB0()
{
  result = qword_1EDB2F758;
  if (!qword_1EDB2F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F758);
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

uint64_t sub_1B15E6D70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B15E6DB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinalizedIcon.FinalizationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FinalizedIcon.FinalizationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B15E6EEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
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

uint64_t sub_1B15E6F34(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B15E6F8C()
{
  result = qword_1EB752BB0;
  if (!qword_1EB752BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752BB0);
  }

  return result;
}

uint64_t sub_1B15E703C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1B15E7080()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EDB2F600);
  __swift_project_value_buffer(v0, qword_1EDB2F600);
  return sub_1B1619D08();
}

uint64_t sub_1B15E7108()
{
  v0 = sub_1B1619D18();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00]();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B1619C98();
  __swift_allocate_value_buffer(v4, qword_1EDB2F648);
  __swift_project_value_buffer(v4, qword_1EDB2F648);
  if (qword_1EDB2F5F8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDB2F600);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1B1619C78();
}

void *FinalizedIcon.serializeV2Sync()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1B1619C68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  if (qword_1EDB2F640 != -1)
  {
    swift_once();
  }

  v11 = sub_1B1619C98();
  __swift_project_value_buffer(v11, qword_1EDB2F648);
  sub_1B1619C88();
  sub_1B1619C38();
  sub_1B15C283C(v0, v32);
  v12 = sub_1B1619C88();
  v31 = sub_1B161A0A8();
  if (sub_1B161A0F8())
  {
    v13 = swift_slowAlloc();
    v30 = v0;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = v1;
    v16 = v15;
    v33 = v15;
    *v14 = 136315138;
    v28 = v5;
    v17 = v7;
    v18 = v4;
    v19 = v32[4];
    v20 = v32[5];

    sub_1B15C2874(v32);
    v21 = sub_1B15E4764(v19, v20, &v33);
    v4 = v18;
    v7 = v17;
    v5 = v28;

    *(v14 + 4) = v21;
    v22 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v12, v31, v22, "Serializing (sync)", "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v23 = v16;
    v2 = v29;
    MEMORY[0x1B2730CA0](v23, -1, -1);
    v24 = v14;
    v3 = v30;
    MEMORY[0x1B2730CA0](v24, -1, -1);
  }

  else
  {

    sub_1B15C2874(v32);
  }

  (*(v5 + 16))(v7, v10, v4);
  sub_1B1619CD8();
  swift_allocObject();
  v25 = sub_1B1619CC8();
  (*(v5 + 8))(v10, v4);
  v26 = sub_1B15E7598();
  if (!v2)
  {
    v2 = sub_1B15E7980(v26);
  }

  sub_1B15E8368(v25, v3, "Serializing (sync)");

  return v2;
}

void *sub_1B15E7598()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v79 = MEMORY[0x1E69E7CC0];
    result = sub_1B15D54C8(0, v2, 0);
    if (!*(v1 + 16))
    {
LABEL_22:
      __break(1u);
      return result;
    }

    v4 = 0;
    result = v79;
    v5 = (v1 + 32);
    v6 = v2 - 1;
    v47 = v2 - 1;
    v48 = v1;
    while (1)
    {
      v49 = result;
      v7 = *v5;
      v8 = v5[2];
      v76[1] = v5[1];
      v76[2] = v8;
      v76[0] = v7;
      v9 = v5[3];
      v10 = v5[4];
      v11 = v5[6];
      v76[5] = v5[5];
      v76[6] = v11;
      v76[3] = v9;
      v76[4] = v10;
      v12 = v5[7];
      v13 = v5[8];
      v14 = v5[10];
      v77 = v5[9];
      v78 = v14;
      v76[7] = v12;
      v76[8] = v13;
      v15 = *(&v13 + 1);
      v16 = v77;
      v17 = v5[9];
      v73 = v5[8];
      v74 = v17;
      v75 = v5[10];
      v18 = v5[5];
      v69 = v5[4];
      v70 = v18;
      v19 = v5[7];
      v71 = v5[6];
      v72 = v19;
      v20 = v5[1];
      v65 = *v5;
      v66 = v20;
      v21 = v5[3];
      v67 = v5[2];
      v68 = v21;
      if (v77 == 0xFF)
      {
        sub_1B15CE470(v76, &v54);
        v22 = 0;
      }

      else
      {
        if (v77)
        {
          sub_1B15F1E78();
          swift_allocError();
          *v46 = 1;
          *(v46 + 8) = 5;
          swift_willThrow();
          v62 = v73;
          v63 = v74;
          v64 = v75;
          v58 = v69;
          v59 = v70;
          v60 = v71;
          v61 = v72;
          v54 = v65;
          v55 = v66;
          v56 = v67;
          v57 = v68;
          sub_1B15CE470(v76, v51);
          sub_1B15CE4CC(&v54);
        }

        v23 = v15[4];
        v24 = v15[5];
        v25 = v15[6];
        v51[2] = v15[3];
        v51[3] = v23;
        v52 = v24;
        v53 = v25;
        v26 = v15[2];
        v51[0] = v15[1];
        v51[1] = v26;
        if ((*(&v25 + 1) & 0x8000000000000000) != 0)
        {
          v27 = *&v51[0];
          sub_1B15CE470(v76, &v54);
          sub_1B15CE470(v76, &v54);
          sub_1B15CA72C(v15, v16);
          sub_1B15DE844(v51, &v54);
        }

        else
        {
          v27 = v53;
          v28 = v52;
          sub_1B15CE470(v76, &v54);
          sub_1B15CE470(v76, &v54);
          sub_1B15CA72C(v15, v16);
          sub_1B15DE844(v51, &v54);
        }

        v29 = *(v27 + 104);
        if (v29)
        {
          v30 = sub_1B15F1F50;
        }

        else
        {
          v30 = 0;
        }

        v31 = _s13TXRDataSourceCMa();
        v32 = objc_allocWithZone(v31);
        *&v32[OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_texture] = v27;
        v33 = &v32[OBJC_IVAR____TtCC13IconRendering15HardwareTextureP33_087535AF78BBB9411A15E8D8E24641C313TXRDataSource_ensureFinished];
        *v33 = v30;
        v33[1] = v29;
        v50.receiver = v32;
        v50.super_class = v31;

        v34 = objc_msgSendSuper2(&v50, sel_init);
        v22 = [objc_allocWithZone(MEMORY[0x1E69DA0E0]) initWithDataSourceProvider_];

        sub_1B15C26A4(v15, v16);
        sub_1B15CE4CC(v76);
        v6 = v47;
        v1 = v48;
      }

      v58 = v69;
      v59 = v70;
      v55 = v66;
      v56 = v67;
      v57 = v68;
      v63 = v74;
      v64 = v75;
      v61 = v72;
      v62 = v73;
      v60 = v71;
      result = v49;
      v36 = v49[2];
      v35 = v49[3];
      v54 = v65;
      v79 = v49;
      if (v36 >= v35 >> 1)
      {
        sub_1B15D54C8((v35 > 1), v36 + 1, 1);
        result = v79;
      }

      result[2] = v36 + 1;
      v37 = &result[23 * v36];
      v38 = v54;
      v39 = v56;
      *(v37 + 3) = v55;
      *(v37 + 4) = v39;
      *(v37 + 2) = v38;
      v40 = v57;
      v41 = v58;
      v42 = v60;
      *(v37 + 7) = v59;
      *(v37 + 8) = v42;
      *(v37 + 5) = v40;
      *(v37 + 6) = v41;
      v43 = v61;
      v44 = v62;
      v45 = v64;
      *(v37 + 11) = v63;
      *(v37 + 12) = v45;
      *(v37 + 9) = v43;
      *(v37 + 10) = v44;
      v37[26] = v22;
      if (v6 == v4)
      {
        return result;
      }

      v5 += 11;
      if (++v4 >= *(v1 + 16))
      {
        goto LABEL_22;
      }
    }
  }

  return result;
}

void *sub_1B15E7980(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1B1619C68();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  if (qword_1EDB2F640 != -1)
  {
    swift_once();
  }

  v12 = sub_1B1619C98();
  __swift_project_value_buffer(v12, qword_1EDB2F648);
  sub_1B1619C88();
  sub_1B1619C38();
  sub_1B15C283C(v1, v36);
  v13 = sub_1B1619C88();
  v34 = sub_1B161A0A8();
  if (sub_1B161A0F8())
  {
    v14 = swift_slowAlloc();
    v32 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v33 = v2;
    v17 = v16;
    v37 = v16;
    *v15 = 136315138;
    v31 = v7;
    v18 = a1;
    v19 = v1;
    v20 = v36[4];
    v21 = v36[5];

    sub_1B15C2874(v36);
    v22 = sub_1B15E4764(v20, v21, &v37);
    v4 = v19;
    a1 = v18;
    v7 = v31;

    *(v15 + 4) = v22;
    v23 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v13, v34, v23, "Serializing (prepared)", "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v24 = v17;
    v3 = v33;
    MEMORY[0x1B2730CA0](v24, -1, -1);
    v25 = v15;
    v6 = v32;
    MEMORY[0x1B2730CA0](v25, -1, -1);
  }

  else
  {

    sub_1B15C2874(v36);
  }

  (*(v7 + 16))(v35, v11, v6);
  sub_1B1619CD8();
  swift_allocObject();
  v26 = sub_1B1619CC8();
  v27 = (*(v7 + 8))(v11, v6);
  v28 = MEMORY[0x1B2730550](v27);
  sub_1B15E86B8(v4, a1, &v37, v36);
  objc_autoreleasePoolPop(v28);
  if (!v3)
  {
    v28 = v36[0];
  }

  sub_1B15E8368(v26, v4, "Serializing (prepared)");

  return v28;
}

uint64_t FinalizedIcon.serializeV2()()
{
  v1[241] = v0;
  v2 = sub_1B1619C68();
  v1[242] = v2;
  v1[243] = *(v2 - 8);
  v1[244] = swift_task_alloc();
  v1[245] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B15E7DA8, 0, 0);
}

uint64_t sub_1B15E7DA8()
{
  v19 = v0;
  if (qword_1EDB2F640 != -1)
  {
    swift_once();
  }

  v1 = v0[241];
  v2 = sub_1B1619C98();
  __swift_project_value_buffer(v2, qword_1EDB2F648);
  sub_1B1619C88();
  sub_1B1619C38();
  sub_1B15C283C(v1, (v0 + 2));
  v3 = sub_1B1619C88();
  v4 = sub_1B161A0A8();
  if (sub_1B161A0F8())
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    v7 = v0[6];
    v8 = v0[7];

    sub_1B15C2874((v0 + 2));
    v9 = sub_1B15E4764(v7, v8, &v18);

    *(v5 + 4) = v9;
    v10 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v3, v4, v10, "Serializing (async)", "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2730CA0](v6, -1, -1);
    MEMORY[0x1B2730CA0](v5, -1, -1);
  }

  else
  {

    sub_1B15C2874((v0 + 2));
  }

  v11 = v0[245];
  v12 = v0[243];
  v13 = v0[242];
  v14 = v0[241];
  (*(v12 + 16))(v0[244], v11, v13);
  sub_1B1619CD8();
  swift_allocObject();
  v0[246] = sub_1B1619CC8();
  (*(v12 + 8))(v11, v13);
  v15 = *(v14 + 24);
  v16 = swift_task_alloc();
  v0[247] = v16;
  *v16 = v0;
  v16[1] = sub_1B15E8054;

  return sub_1B15E9258(&unk_1B161DAA8, 0, v15);
}

uint64_t sub_1B15E8054(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1984) = a1;
  *(v3 + 1992) = v1;

  if (v1)
  {
    v4 = sub_1B15E82CC;
  }

  else
  {
    v4 = sub_1B15E816C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B15E816C()
{
  v1 = v0[249];
  v2 = sub_1B15E7980(v0[248]);
  if (v1)
  {

    sub_1B15E8368(v0[246], v0[241], "Serializing (async)");

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[246];
    v7 = v0[241];
    v8 = v2;
    v9 = v3;

    sub_1B15E8368(v6, v7, "Serializing (async)");

    v10 = v0[1];

    return v10(v8, v9);
  }
}

uint64_t sub_1B15E82CC()
{
  sub_1B15E8368(v0[246], v0[241], "Serializing (async)");

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B15E8368(uint64_t a1, uint64_t a2, const char *a3)
{
  v26 = a3;
  v4 = sub_1B1619CA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1B1619C68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB2F640 != -1)
  {
    swift_once();
  }

  v12 = sub_1B1619C98();
  __swift_project_value_buffer(v12, qword_1EDB2F648);
  sub_1B15C283C(a2, v28);
  v13 = sub_1B1619C88();
  sub_1B1619CB8();
  v25 = sub_1B161A098();
  if (sub_1B161A0F8())
  {

    sub_1B1619CE8();

    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E69E93E8])
    {
      v14 = 0;
      v15 = 0;
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v16 = "%s";
      v15 = 2;
      v14 = 1;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = v15;
    *(v18 + 1) = v14;
    *(v18 + 2) = 2080;
    v20 = v28[4];
    v21 = v28[5];

    sub_1B15C2874(v28);
    v22 = sub_1B15E4764(v20, v21, &v27);

    *(v18 + 4) = v22;
    v23 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v13, v25, v23, v26, v16, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B2730CA0](v19, -1, -1);
    MEMORY[0x1B2730CA0](v18, -1, -1);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    return sub_1B15C2874(v28);
  }
}

void sub_1B15E86B8(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = a3;
  v72 = a4;
  v97 = *MEMORY[0x1E69E9840];
  v6 = sub_1B1619DC8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E69993D0]);
  v9 = sub_1B1619D68();
  v10 = [v8 initWithName_];

  if (!v10)
  {
    __break(1u);
  }

  *&v11 = a1[1].i64[0];
  v76 = v11;
  v12 = vdivq_f64(vcvtq_f64_s64(*a1), vdupq_lane_s64(v11, 0));
  v13 = v12.f64[1];
  v78 = v12;
  [v10 setSize_];
  [v10 setScale_];
  *&v76 = a1;
  v75 = sub_1B15CA8A0();
  [v10 addLayer_];
  v14 = *(a2 + 16);
  v79 = v10;
  if (v14)
  {
    v15 = (a2 + 32);
    do
    {
      v17 = v15[9];
      v93 = v15[8];
      v94 = v17;
      v95 = v15[10];
      v96 = *(v15 + 22);
      v18 = v15[5];
      v89 = v15[4];
      v90 = v18;
      v19 = v15[7];
      v91 = v15[6];
      v92 = v19;
      v20 = v15[1];
      v85 = *v15;
      v86 = v20;
      v21 = v15[3];
      v87 = v15[2];
      v88 = v21;
      v22 = v96;
      v23 = *(&v21 + 1);
      v24 = *(&v87 + 1);
      v25 = v87;
      v26 = objc_allocWithZone(MEMORY[0x1E69993E0]);
      sub_1B15C37C0(&v85, v84, &qword_1EB7526D0);
      v27 = [v26 init];
      [v27 setImage_];
      [v27 setSdfTexture_];
      [v27 setHasLightingEffects_];
      [v27 setFrame_];
      v28 = [objc_allocWithZone(MEMORY[0x1E69993C0]) init];
      [v28 addLayer_];
      [v28 setOpacity_];
      v29 = dword_1B161E030[v25];
      v31 = *(&v85 + 1);
      v30 = v85;
      v32 = *(&v86 + 1);
      v33 = *&v86;
      [v28 setBlendMode_];
      if (v30 == 2)
      {
        if (qword_1EB7525D8 != -1)
        {
          swift_once();
        }

        LOBYTE(v30) = word_1EB757AD0;
        LOBYTE(v16) = HIBYTE(word_1EB757AD0);
        v31 = *&qword_1EB757AD8;
        v33 = *&qword_1EB757AE0;
        v32 = *&qword_1EB757AE8;
      }

      else
      {
        v16 = v30 >> 8;
      }

      [v28 setHasSpecular_];
      [v28 setShadowStyle_];
      [v28 setShadowOpacity_];
      [v28 setTranslucency_];
      [v28 setBlurStrength_];
      v10 = v79;
      [v79 addLayer_];

      sub_1B15CE4CC(&v85);
      v15 = (v15 + 184);
      --v14;
    }

    while (v14);
  }

  v34 = *(v76 + 200);
  v80 = *(v76 + 184);
  v81 = v34;
  v82 = *(v76 + 216);
  v83 = *(v76 + 232);
  v35 = *(v76 + 24);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    *&v85 = MEMORY[0x1E69E7CC0];
    sub_1B15D54E8(0, v36, 0);
    v37 = v85;
    v38 = *(v85 + 16);
    v39 = 72 * v38 + 97;
    v40 = (v35 + 160);
    do
    {
      v41 = LOBYTE(v40[-5].f64[0]);
      v42 = v40[-4];
      v43 = v40[-3];
      v44 = v40[-2];
      v45 = v40[-1];
      v46 = LOBYTE(v40->f64[0]);
      *&v85 = v37;
      v47 = *(v37 + 24);
      v48 = v38 + 1;
      if (v38 >= v47 >> 1)
      {
        v78 = v42;
        v76 = v43;
        v70 = v45;
        v71 = v44;
        sub_1B15D54E8((v47 > 1), v38 + 1, 1);
        v45 = v70;
        v44 = v71;
        v43 = v76;
        v42 = v78;
        v37 = v85;
      }

      LOBYTE(v84[0]) = v46;
      *(v37 + 16) = v48;
      v49 = (v37 + v39);
      *(v49 - 65) = v42;
      *(v49 - 49) = v43;
      *(v49 - 33) = v44;
      *(v49 - 17) = v45;
      v39 += 72;
      *(v49 - 1) = v46;
      v40 += 11;
      v38 = v48;
      *v49 = v41;
      --v36;
    }

    while (v36);
    v10 = v79;
  }

  v85 = v80;
  v86 = v81;
  v87 = v82;
  LOWORD(v88) = v83;
  *(&v88 + 1) = v37;
  sub_1B1619A68();
  swift_allocObject();
  sub_1B1619A58();
  v84[0] = v85;
  v84[1] = v86;
  v84[2] = v87;
  v84[3] = v88;
  sub_1B15F1ECC();
  v50 = v77;
  v51 = sub_1B1619A48();
  v53 = v50;
  if (v50)
  {

    sub_1B15F1F20(&v85);
LABEL_18:
    *v74 = v53;
    return;
  }

  v54 = v51;
  v55 = v52;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B161BDD0;
  *&v84[0] = 1852797802;
  *(&v84[0] + 1) = 0xE400000000000000;
  v57 = MEMORY[0x1E69E6158];
  sub_1B161A168();
  sub_1B1619DB8();
  v58 = sub_1B1619DA8();
  if (v59)
  {
    v60 = v58;
    v61 = v59;
    sub_1B15F1F20(&v85);
    *(inited + 96) = v57;
    *(inited + 72) = v60;
    *(inited + 80) = v61;
    sub_1B15E6444(inited);
    swift_setDeallocating();
    sub_1B15C1750(inited + 32, &qword_1EB752B90);
    v62 = sub_1B1619D28();

    [v10 setRenderingProperties_];

    *&v84[0] = 0;
    v63 = [v10 dataRepresentationWithError_];
    v64 = *&v84[0];
    if (!v63)
    {
      v69 = v64;
      v53 = sub_1B1619B38();

      swift_willThrow();
      sub_1B15C27E4(v54, v55);

      goto LABEL_18;
    }

    v65 = sub_1B1619BD8();
    v67 = v66;

    sub_1B15C27E4(v54, v55);
    v68 = v72;
    *v72 = v65;
    v68[1] = v67;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B15E8E10(uint64_t a1, _OWORD *a2)
{
  *(v2 + 1016) = a2;
  *(v2 + 1008) = a1;
  v3 = a2[9];
  *(v2 + 144) = a2[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a2[10];
  v4 = a2[5];
  *(v2 + 80) = a2[4];
  *(v2 + 96) = v4;
  v5 = a2[7];
  *(v2 + 112) = a2[6];
  *(v2 + 128) = v5;
  v6 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v6;
  v7 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B15E8E64, 0, 0);
}

uint64_t sub_1B15E8E64()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v3 = v1[6];
  v5 = v1[3];
  v4 = v1[4];
  *(v2 + 80) = v1[5];
  *(v2 + 96) = v3;
  *(v2 + 48) = v5;
  *(v2 + 64) = v4;
  v6 = v1[10];
  v8 = v1[7];
  v7 = v1[8];
  *(v2 + 144) = v1[9];
  *(v2 + 160) = v6;
  *(v2 + 112) = v8;
  *(v2 + 128) = v7;
  v9 = *v1;
  v10 = v1[2];
  *(v2 + 16) = v1[1];
  *(v2 + 32) = v10;
  *v2 = v9;
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  *(v0 + 1024) = v11;
  *(v0 + 1032) = v12;
  *(v0 + 1040) = *(v0 + 168);
  if (v12 == 0xFF)
  {
    *(v2 + 176) = 0;
    sub_1B15CE470(v0 + 16, v0 + 192);
    v13 = *(v0 + 8);
LABEL_5:

    return v13();
  }

  sub_1B15CE470(v0 + 16, v0 + 368);
  if (v12)
  {
    v14 = *(v0 + 1008);
    sub_1B15F1E78();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 5;
    swift_willThrow();
    v16 = *v14;
    v17 = v14[2];
    *(v0 + 560) = v14[1];
    *(v0 + 576) = v17;
    *(v0 + 544) = v16;
    v18 = v14[3];
    v19 = v14[4];
    v20 = v14[6];
    *(v0 + 624) = v14[5];
    *(v0 + 640) = v20;
    *(v0 + 592) = v18;
    *(v0 + 608) = v19;
    v21 = v14[7];
    v22 = v14[8];
    v23 = v14[10];
    *(v0 + 688) = v14[9];
    *(v0 + 704) = v23;
    *(v0 + 656) = v21;
    *(v0 + 672) = v22;
    sub_1B15CE4CC(v0 + 544);
    v13 = *(v0 + 8);
    goto LABEL_5;
  }

  v25 = v11[3];
  v26 = v11[4];
  v27 = v11[5];
  *(v0 + 800) = v11[6];
  v28 = v11[2];
  *(v0 + 720) = v11[1];
  *(v0 + 736) = v28;
  *(v0 + 768) = v26;
  *(v0 + 784) = v27;
  *(v0 + 752) = v25;
  if ((*(v0 + 808) & 0x8000000000000000) != 0)
  {
    v29 = *(v0 + 720);
    sub_1B15CA72C(v11, v12);
    sub_1B15DE844(v0 + 720, v0 + 816);
  }

  else
  {
    v29 = *(v0 + 800);
    v30 = *(v0 + 784);
    sub_1B15CA72C(v11, v12);
    sub_1B15DE844(v0 + 720, v0 + 912);
  }

  *(v0 + 1048) = v29;
  v31 = swift_task_alloc();
  *(v0 + 1056) = v31;
  *v31 = v0;
  v31[1] = sub_1B15E90C0;

  return sub_1B1614ED4();
}

uint64_t sub_1B15E90C0(uint64_t a1)
{
  *(*v1 + 1064) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B15E91E0, 0, 0);
}

uint64_t sub_1B15E91E0()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1008);
  sub_1B15C26A4(*(v0 + 1024), *(v0 + 1032));
  *(v2 + 176) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B15E9258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[51] = a2;
  v3[52] = a3;
  v3[50] = a1;
  v3[48] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B15E9280, 0, 0);
}

uint64_t sub_1B15E9280()
{
  v1 = *(v0 + 416);
  v10 = *(v0 + 400);
  sub_1B15D2784(v0 + 16);
  v2 = *(v0 + 160);
  *(v0 + 328) = *(v0 + 144);
  *(v0 + 344) = v2;
  *(v0 + 360) = *(v0 + 176);
  v3 = *(v0 + 96);
  *(v0 + 264) = *(v0 + 80);
  *(v0 + 280) = v3;
  v4 = *(v0 + 128);
  *(v0 + 296) = *(v0 + 112);
  *(v0 + 312) = v4;
  v5 = *(v0 + 32);
  *(v0 + 200) = *(v0 + 16);
  *(v0 + 216) = v5;
  v6 = *(v0 + 64);
  *(v0 + 232) = *(v0 + 48);
  *(v0 + 376) = *(v0 + 192);
  *(v0 + 248) = v6;
  *(v0 + 392) = sub_1B15F132C(v0 + 200, *(v1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C00);
  v7 = swift_task_alloc();
  *(v0 + 424) = v7;
  *(v7 + 16) = v0 + 384;
  *(v7 + 24) = v10;
  *(v7 + 40) = v0 + 392;
  v8 = swift_task_alloc();
  *(v0 + 432) = v8;
  *v8 = v0;
  v8[1] = sub_1B15E9404;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1B15E9404()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1B15E9598;
  }

  else
  {

    v2 = sub_1B15E9520;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B15E9520()
{
  v1 = sub_1B15F0658(*(v0 + 392));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B15E9598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Sequence.concurrentMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_1B161A108();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B15E96D0, 0, 0);
}

uint64_t sub_1B15E96D0()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v13 = *(v0 + 24);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v8 = sub_1B1619E78();
  v9 = sub_1B15F147C(v1, v8, v4);
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v9;
  swift_getTupleTypeMetadata2();
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v13;
  *(v10 + 64) = v0 + 16;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_1B15E9890;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1B15E9890()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B15E9A40;
  }

  else
  {

    v2 = sub_1B15E99AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B15E99AC()
{
  v1 = sub_1B161A268();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1B15E9A40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinalizedIcon.init(serialized:device:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  return sub_1B15C114C(a1, a2, a3, a4);
}

{
  return sub_1B15C114C(a1, a2, a3, a4);
}

uint64_t sub_1B15E9AE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1619CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B1619C68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00]();
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB2F640 != -1)
  {
    swift_once();
  }

  v11 = sub_1B1619C98();
  __swift_project_value_buffer(v11, qword_1EDB2F648);

  v12 = sub_1B1619C88();
  sub_1B1619CB8();
  v25 = sub_1B161A098();

  if (sub_1B161A0F8())
  {

    sub_1B1619CE8();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = 0;
      v14 = 0;
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v15 = "%s";
      v14 = 2;
      v13 = 1;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = v14;
    *(v16 + 1) = v13;
    *(v16 + 2) = 2080;
    swift_beginAccess();
    v18 = *(a2 + 24);
    if (v18)
    {
      v19 = *(a2 + 16);
      v20 = v18;
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_1B15E4764(v19, v20, &v26);

    *(v16 + 4) = v21;
    v22 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v12, v25, v22, "Deserializing", v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B2730CA0](v17, -1, -1);
    MEMORY[0x1B2730CA0](v16, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1B15E9E2C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v87 = v2;
  v88 = v3;
  v86 = v4;
  v5 = v1;
  v7 = v6;
  v89 = sub_1B1619B48();
  v82 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v83 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752BC8);
  MEMORY[0x1EEE9AC00](v81);
  v90 = &v78 - v9;
  v85 = sub_1B15C0D84(v137);
  v10 = (v85 - 1);
  if (v85 != 1)
  {
    if (qword_1EDB2F5F8 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1619D18();
    __swift_project_value_buffer(v11, qword_1EDB2F600);
    v12 = sub_1B1619CF8();
    v13 = sub_1B161A088();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v85;
      _os_log_impl(&dword_1B15BF000, v12, v13, "finalized icons should always serialize their chiclet fill! unexpectedly found %ld chiclet layers", v14, 0xCu);
      MEMORY[0x1B2730CA0](v14, -1, -1);
    }
  }

  v135 = 0u;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v15 = [v5 renderingProperties];
  v84 = v5;
  v80 = v7;
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = sub_1B1619D38();

  v127[0] = 1852797802;
  v127[1] = 0xE400000000000000;
  sub_1B161A168();
  if (!*(v17 + 16) || (v18 = sub_1B160AA50(v136), (v19 & 1) == 0))
  {

    sub_1B15F174C(v136);
LABEL_14:
    memset(v121, 0, 32);
    goto LABEL_15;
  }

  sub_1B15C10F0(*(v17 + 56) + 32 * v18, v121);
  sub_1B15F174C(v136);

  if (!*(&v121[1] + 1))
  {
LABEL_15:
    sub_1B15C1750(v121, &qword_1EB752A88);
LABEL_16:
    if (qword_1EDB2F5F8 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = *v136;
  v21 = *&v136[8];
  sub_1B1619A38();
  swift_allocObject();
  sub_1B1619A28();
  v22 = sub_1B15EACE0(v20, v21);
  v24 = v23;
  sub_1B15F17A0();
  sub_1B1619A18();
  sub_1B15C27E4(v22, v24);

  v132 = *v136;
  v133 = *&v136[16];
  v134 = *&v136[32];
  v135 = *&v136[48];
  memset(v121, 0, 64);
  sub_1B15C1750(v121, &qword_1EB752BD0);
  while (1)
  {
    v31 = v86;
    v36 = v87;
    if (!v87)
    {
      v37 = [v5 name];
      if (v37)
      {
        v38 = v37;
        v31 = sub_1B1619D98();
        v36 = v39;
      }

      else
      {
        v31 = 0;
        v36 = 0;
      }
    }

    [v5 size];
    v41 = v40;
    v43 = v42;
    [v5 scale];
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v44 <= -9.22337204e18)
    {
      goto LABEL_60;
    }

    if (v44 >= 9.22337204e18)
    {
      goto LABEL_61;
    }

    v78 = 0;
    v139 = FinalizedIcon.ScaledSize.init(points:scale:)(__PAIR128__(v43, v41), v44);
    v30 = *&v136[8];
    v86 = *&v136[16];
    v87 = *v136;
    [v5 size];
    v46 = v45;
    v48 = v47;
    if (*(&v135 + 1))
    {
      v128 = v132;
      v129 = v133;
      v130 = v134;
      v49 = v135;
    }

    else
    {
      if (qword_1EB752610 != -1)
      {
        swift_once();
      }

      v128 = xmmword_1EB757AF0;
      v129 = xmmword_1EB757B00;
      v130 = xmmword_1EB757B10;
      v49 = word_1EB757B20;
    }

    v131 = v49;
    sub_1B15C0D28(v127);
    memcpy(v121 + 5, v127, 0x653uLL);
    v50 = 7104878;
    if (v36)
    {
      v50 = v31;
    }

    v51 = 0xE300000000000000;
    if (v36)
    {
      v51 = v36;
    }

    *&v136[64] = v137[3];
    *&v136[80] = v137[4];
    *&v136[96] = v137[5];
    v136[112] = v138;
    *&v136[16] = v137[0];
    *&v136[32] = v137[1];
    *&v136[48] = v137[2];
    *(v113 + 7) = v128;
    *(&v113[1] + 7) = v129;
    *(&v113[2] + 7) = v130;
    *(&v113[3] + 7) = v131;
    *v136 = v50;
    *&v136[8] = v51;
    *&v136[120] = 0;
    *&v136[128] = v46;
    *&v136[136] = v48;
    v136[144] = 1;
    *&v136[145] = v113[0];
    *&v136[161] = v113[1];
    *&v136[177] = v113[2];
    *&v136[186] = *(&v113[2] + 9);
    v136[202] = 0;
    memcpy(&v136[203], v121, 0x658uLL);
    v52 = [v5 layers];
    if (!v52)
    {
      __break(1u);
LABEL_65:
      __break(1u);

      __break(1u);
      return;
    }

    v53 = v52;

    v5 = v83;
    v54 = v85;
    if ((v85 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    swift_once();
LABEL_17:
    v25 = sub_1B1619D18();
    __swift_project_value_buffer(v25, qword_1EDB2F600);
    v26 = v5;
    v27 = sub_1B1619CF8();
    v28 = sub_1B161A088();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v136 = v30;
      *v29 = 136315138;
      v31 = [v26 name];

      if (!v31)
      {
        goto LABEL_65;
      }

      v32 = sub_1B1619D98();
      v34 = v33;

      v35 = sub_1B15E4764(v32, v34, v136);

      *(v29 + 4) = v35;
      _os_log_impl(&dword_1B15BF000, v27, v28, "missing serialized rendering properties json in stack %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x1B2730CA0](v30, -1, -1);
      MEMORY[0x1B2730CA0](v29, -1, -1);

      v5 = v84;
    }

    else
    {
    }
  }

  v55 = v53;
  sub_1B161A0C8();
  v79 = v55;

  if (v54)
  {
    sub_1B15F2768(&unk_1EDB2F528, MEMORY[0x1E6968EB0]);
    do
    {
      v56 = v10;
      sub_1B161A118();
      v57 = *(&v121[1] + 1);
      sub_1B15C1750(v121, &qword_1EB752A88);
      if (!v57)
      {
        break;
      }

      --v10;
    }

    while (v56);
  }

  v58 = v90;
  (*(v82 + 32))(v90, v5, v89);
  v59 = *(v81 + 36);
  *&v58[v59] = 0;
  sub_1B15F2768(&unk_1EDB2F528, MEMORY[0x1E6968EB0]);
  sub_1B161A118();
  if (v123)
  {
    v5 = 0;
    v10 = &v91;
    v85 = MEMORY[0x1E69E7CC0];
    v60 = v90;
    do
    {
      v61 = v5;
      while (1)
      {
        sub_1B15C2260(&v122, v124);
        v125 = v61;
        sub_1B15C2260(v124, &v126);
        v5 = (v61 + 1);
        if (__OFADD__(v61, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        *(v60 + v59) = v5;
        sub_1B15EB200(v61);
        sub_1B15C1750(&v125, &qword_1EB752BD8);
        v121[8] = v118;
        v121[9] = v119;
        v121[10] = v120;
        v121[4] = v114;
        v121[5] = v115;
        v121[6] = v116;
        v121[7] = v117;
        v121[0] = v113[0];
        v121[1] = v113[1];
        v121[2] = v113[2];
        v121[3] = v113[3];
        if (sub_1B15F1734(v121) != 1)
        {
          break;
        }

        v110 = v118;
        v111 = v119;
        v112 = v120;
        v106 = v114;
        v107 = v115;
        v108 = v116;
        v109 = v117;
        v102 = v113[0];
        v103 = v113[1];
        v104 = v113[2];
        v105 = v113[3];
        sub_1B15C1750(&v102, &qword_1EB752BE0);
        sub_1B161A118();
        v60 = v90;
        ++v61;
        if (!v123)
        {
          goto LABEL_57;
        }
      }

      v110 = v118;
      v111 = v119;
      v112 = v120;
      v106 = v114;
      v107 = v115;
      v108 = v116;
      v109 = v117;
      v102 = v113[0];
      v103 = v113[1];
      v104 = v113[2];
      v105 = v113[3];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = sub_1B15C26BC(0, *(v85 + 16) + 1, 1, v85);
      }

      v63 = *(v85 + 16);
      v62 = *(v85 + 24);
      if (v63 >= v62 >> 1)
      {
        v85 = sub_1B15C26BC((v62 > 1), v63 + 1, 1, v85);
      }

      v95 = v106;
      v96 = v107;
      v93 = v104;
      v94 = v105;
      v100 = v111;
      v101 = v112;
      v99 = v110;
      v97 = v108;
      v98 = v109;
      v91 = v102;
      v92 = v103;
      v64 = v85;
      *(v85 + 16) = v63 + 1;
      v65 = (v64 + 176 * v63);
      v66 = v91;
      v67 = v93;
      v65[3] = v92;
      v65[4] = v67;
      v65[2] = v66;
      v68 = v94;
      v69 = v95;
      v70 = v97;
      v65[7] = v96;
      v65[8] = v70;
      v65[5] = v68;
      v65[6] = v69;
      v71 = v98;
      v72 = v99;
      v73 = v101;
      v65[11] = v100;
      v65[12] = v73;
      v65[9] = v71;
      v65[10] = v72;
      v60 = v90;
      sub_1B161A118();
    }

    while (v123);
  }

  else
  {
    v85 = MEMORY[0x1E69E7CC0];
    v60 = v90;
  }

LABEL_57:

  sub_1B15C1750(v60, &qword_1EB752BC8);
  sub_1B15C1750(&v122, &qword_1EB752A88);
  v74 = v80;
  *(v80 + 1880) = 0u;
  *(v74 + 1896) = 0u;
  v75 = v86;
  *v74 = v87;
  *(v74 + 8) = v30;
  v76 = v85;
  *(v74 + 16) = v75;
  *(v74 + 24) = v76;
  memcpy((v74 + 32), v136, 0x723uLL);
  v114 = *&v136[80];
  v115 = *&v136[96];
  LOBYTE(v116) = v136[112];
  v113[0] = *&v136[16];
  v113[1] = *&v136[32];
  v113[2] = *&v136[48];
  v113[3] = *&v136[64];
  sub_1B15C3828(v136, v121);
  v77 = sub_1B15E10C0();

  sub_1B15C5328(v136);
  *(v74 + 1864) = v77;
  *(v74 + 1872) = v88;
  v121[0] = v132;
  v121[1] = v133;
  v121[2] = v134;
  v121[3] = v135;
  sub_1B15C1750(v121, &qword_1EB752BD0);
}

uint64_t sub_1B15EACE0(uint64_t a1, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  *&v40 = a1;
  *(&v40 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752BE8);
  if (swift_dynamicCast())
  {
    sub_1B15F19C8(__src, &v41);
    __swift_project_boxed_opaque_existential_0(&v41, v42);
    sub_1B1619B18();
    __src[0] = v40;
    __swift_destroy_boxed_opaque_existential_0(&v41);
    goto LABEL_63;
  }

  v39 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1B15C1750(__src, &qword_1EB752BF0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1B161A1F8();
  }

  sub_1B15F08D4(v4, v5, &v41);
  v6 = *(&v41 + 1);
  v7 = v41;
  if (*(&v41 + 1) >> 60 != 15)
  {
    __src[0] = v41;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1B15F18AC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00]();
  v10 = sub_1B15F099C(sub_1B15F194C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1B1619BA8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v35 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v40 + 7) = 0;
  *&v40 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v34 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v36 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v37 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1B15F1260(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1B1619E18();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B1619E48();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v41 = v14;
      *(&v41 + 1) = v37;
      v31 = *(&v41 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v36;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1B161A1F8();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1B15F1260(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1B1619E28();
LABEL_52:
    *(&v40 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v41 = v40;
      *(&v41 + 6) = *(&v40 + 6);
      sub_1B1619BB8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v34;
  if (v24)
  {
    *&v41 = v40;
    *(&v41 + 6) = *(&v40 + 6);
    sub_1B1619BB8();
    sub_1B15F19B4(v35, v34);
    goto LABEL_62;
  }

LABEL_57:

  sub_1B15F19B4(v35, v6);
LABEL_63:
  v32 = __src[0];
  sub_1B15C0D30(*&__src[0], *(&__src[0] + 1));

  sub_1B15C27E4(v32, *(&v32 + 1));
  return v32;
}

void sub_1B15EB200(uint64_t a1)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v5;
  v252 = v7;
  v253 = v8;
  v254 = v10;
  v255 = v9;
  v12 = v11;
  *&v256 = v4;
  v14 = v13;
  v15 = sub_1B1619C68();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v234[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v234[-v21];
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v234[-v23];
  sub_1B15C10F0(v12, v259);
  sub_1B15C17B0(0, &qword_1EDB2F4A8);
  if (!swift_dynamicCast())
  {
    if (qword_1EDB2F5F8 != -1)
    {
      swift_once();
    }

    v44 = sub_1B1619D18();
    __swift_project_value_buffer(v44, qword_1EDB2F600);
    sub_1B15C10F0(v12, v263);
    v45 = sub_1B1619CF8();
    v46 = sub_1B161A088();
    if (!os_log_type_enabled(v45, v46))
    {

      __swift_destroy_boxed_opaque_existential_0(v263);
      goto LABEL_27;
    }

    v47 = swift_slowAlloc();
    v48 = COERCE_DOUBLE(swift_slowAlloc());
    v259[0].origin.x = v48;
    *v47 = 134218242;
    *(v47 + 4) = v256;
    *(v47 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v263, *&v263[0].size.height);
    swift_getDynamicType();
    v49 = sub_1B161A558();
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_0(v263);
    v52 = sub_1B15E4764(v49, v51, v259);

    *(v47 + 14) = v52;
    _os_log_impl(&dword_1B15BF000, v45, v46, "Invalid layer object found at index %ld: %s", v47, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(*&v48);
    MEMORY[0x1B2730CA0](*&v48, -1, -1);
    MEMORY[0x1B2730CA0](v47, -1, -1);
    goto LABEL_15;
  }

  v250 = v15;
  v251 = v19;
  v249 = v16;
  x = v263[0].origin.x;
  v26 = [*&v263[0].origin.x layers];
  v27 = sub_1B1619EF8();

  v28 = *(v27 + 16);

  if (v28 != 1)
  {
    if (qword_1EDB2F5F8 == -1)
    {
LABEL_17:
      v53 = sub_1B1619D18();
      __swift_project_value_buffer(v53, qword_1EDB2F600);
      v54 = *&x;
      v45 = sub_1B1619CF8();
      v55 = sub_1B161A088();
      if (!os_log_type_enabled(v45, v55))
      {

        goto LABEL_27;
      }

      v56 = swift_slowAlloc();
      *v56 = 134218240;
      *(v56 + 4) = v256;
      *(v56 + 12) = 2048;
      v57 = [v54 layers];
      v58 = sub_1B1619EF8();

      v59 = *(v58 + 16);

      *(v56 + 14) = v59;

      _os_log_impl(&dword_1B15BF000, v45, v55, "Expected 1 child for layer group at index %ld, found %ld", v56, 0x16u);
      goto LABEL_26;
    }

LABEL_98:
    swift_once();
    goto LABEL_17;
  }

  v29 = [*&x layers];
  v30 = sub_1B1619EF8();

  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_98;
  }

  sub_1B15C10F0(v30 + 32, v259);

  sub_1B15C17B0(0, &unk_1EDB2F4B0);
  if (!swift_dynamicCast())
  {
    if (qword_1EDB2F5F8 != -1)
    {
      swift_once();
    }

    v60 = sub_1B1619D18();
    __swift_project_value_buffer(v60, qword_1EDB2F600);
    v54 = *&x;
    v45 = sub_1B1619CF8();
    v61 = sub_1B161A088();

    if (os_log_type_enabled(v45, v61))
    {
      v56 = swift_slowAlloc();
      x = COERCE_DOUBLE(swift_slowAlloc());
      v263[0].origin.x = x;
      *v56 = 134218242;
      *(v56 + 4) = v256;
      *(v56 + 12) = 2080;
      v31 = COERCE_DOUBLE([v54 layers]);
      v62 = sub_1B1619EF8();

      if (!*(v62 + 16))
      {
        __break(1u);
        goto LABEL_100;
      }

      sub_1B15C10F0(v62 + 32, v259);

      __swift_project_boxed_opaque_existential_0(v259, *&v259[0].size.height);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(v259);
      v63 = sub_1B161A558();
      v65 = sub_1B15E4764(v63, v64, v263);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_1B15BF000, v45, v61, "Expected image as only child of layer group at index %ld, found %s", v56, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(*&x);
      MEMORY[0x1B2730CA0](*&x, -1, -1);
LABEL_26:
      MEMORY[0x1B2730CA0](v56, -1, -1);

      goto LABEL_27;
    }

LABEL_15:
LABEL_27:
    sub_1B15F1B00(v259);
    size = v259[4].size;
    *(v14 + 128) = v259[4].origin;
    *(v14 + 144) = size;
    *(v14 + 160) = v259[5].origin;
    v67 = v259[2].size;
    *(v14 + 64) = v259[2].origin;
    *(v14 + 80) = v67;
    v68 = v259[3].size;
    *(v14 + 96) = v259[3].origin;
    *(v14 + 112) = v68;
    v69 = v259[0].size;
    *v14 = v259[0].origin;
    *(v14 + 16) = v69;
    v70 = v259[1].size;
    *(v14 + 32) = v259[1].origin;
    *(v14 + 48) = v70;
    return;
  }

  v31 = v263[0].origin.x;
  v32 = [*&v263[0].origin.x image];
  if (!v32)
  {
    if (qword_1EDB2F5F8 == -1)
    {
LABEL_30:
      v71 = sub_1B1619D18();
      __swift_project_value_buffer(v71, qword_1EDB2F600);
      v45 = sub_1B1619CF8();
      v72 = sub_1B161A088();
      if (os_log_type_enabled(v45, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 134217984;
        *(v73 + 4) = v256;
        _os_log_impl(&dword_1B15BF000, v45, v72, "Missing rasterized image for layer at index %ld", v73, 0xCu);
        MEMORY[0x1B2730CA0](v73, -1, -1);
      }

      goto LABEL_15;
    }

LABEL_100:
    swift_once();
    goto LABEL_30;
  }

  v245 = v32;
  v33 = [*&v31 hasLightingEffects];
  v247 = v31;
  if (v33)
  {
    if (qword_1EDB2F640 != -1)
    {
      swift_once();
    }

    v34 = sub_1B1619C98();
    __swift_project_value_buffer(v34, qword_1EDB2F648);
    sub_1B1619C88();
    sub_1B1619C38();
    v35 = v255;
    sub_1B15C3828(v255, v259);
    v36 = sub_1B1619C88();
    v37 = sub_1B161A0A8();
    sub_1B15C5328(v35);
    if (sub_1B161A0F8())
    {
      v38 = swift_slowAlloc();
      DWORD2(v248) = v37;
      v39 = v38;
      v40 = swift_slowAlloc();
      v242 = x;
      v41 = v40;
      *&v259[0].origin.x = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_1B15E4764(*v35, *(v35 + 1), v259);
      v42 = sub_1B1619C48();
      _os_signpost_emit_with_name_impl(&dword_1B15BF000, v36, BYTE8(v248), v42, "Load SDF Texture", "%s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v43 = v41;
      x = v242;
      MEMORY[0x1B2730CA0](v43, -1, -1);
      MEMORY[0x1B2730CA0](v39, -1, -1);
    }

    v75 = v249;
    v74 = v250;
    (*(v249 + 16))(v22, v24, v250);
    sub_1B1619CD8();
    swift_allocObject();
    v76 = sub_1B1619CC8();
    (*(v75 + 8))(v24, v74);
    sub_1B16146EC(v254);
    v79 = v253;
    if (*&v253 >= *&v252)
    {
      v79 = v252;
    }

    *&v248 = v78 & 0xFFFFFFFF00000001;
    *(&v248 + 1) = *&v79 * 0.2;
    v246 = *&v77;
    sub_1B15CB4C4(v77, v78 & 1);
    sub_1B15ED1F8(v76, v255);
  }

  else
  {
    v246 = 0.0;
    v248 = 0xFFuLL;
  }

  v80 = v251;
  v81 = *(v6 + 56);
  v82 = v256;
  if (v81)
  {
    if ((v256 & 0x8000000000000000) == 0 && *(v81 + 16) > v256)
    {
      v83 = v81 + 72 * v256;
      v84 = *(v83 + 32);
      v85 = *(v83 + 40);
      v86 = *(v83 + 48);
      v87 = *(v83 + 56);
      v88 = *(v83 + 64);
      v244 = *(v83 + 80);
      v256 = v88;
      v89 = *(v83 + 97);
      v90 = *(v83 + 96);
      goto LABEL_47;
    }

    v91 = qword_1EDB2F5F8;

    if (v91 != -1)
    {
      swift_once();
    }

    v92 = sub_1B1619D18();
    __swift_project_value_buffer(v92, qword_1EDB2F600);
    v93 = sub_1B1619CF8();
    v94 = sub_1B161A088();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v259[0].origin.x = v96;
      *v95 = 136315650;
      v97 = sub_1B161A1A8();
      v99 = sub_1B15E4764(v97, v98, v259);
      v242 = x;
      v100 = v99;

      *(v95 + 4) = v100;
      *(v95 + 12) = 2048;
      *(v95 + 14) = 187;
      *(v95 + 22) = 2080;
      *&v263[0].origin.x = v256;
      v101 = sub_1B1619DD8();
      v103 = sub_1B15E4764(v101, v102, v259);

      *(v95 + 24) = v103;
      x = v242;
      _os_log_impl(&dword_1B15BF000, v93, v94, "%s:%lu: index %s out of bounds", v95, 0x20u);
      swift_arrayDestroy();
      v80 = v251;
      MEMORY[0x1B2730CA0](v96, -1, -1);
      v104 = v95;
      v82 = v256;
      MEMORY[0x1B2730CA0](v104, -1, -1);
    }
  }

  v84 = sub_1B15ED500(v82);
  v85 = v105;
  v86 = v106;
  v87 = v107;
  v256 = 0u;
  v90 = 1;
  v244 = 0;
  v89 = 2;
LABEL_47:
  sub_1B15C22A0(v259);
  sub_1B15C2584([*&x blendMode], v263);
  x_low = LOBYTE(v263[0].origin.x);
  [*&x opacity];
  v267 = v259[0];
  LOBYTE(v268.origin.x) = x_low;
  v268.origin.y = v109;
  LOBYTE(v268.size.width) = (v89 == 2) | v89 & 1;
  v110 = v246;
  *&v268.size.height = v245;
  v269.origin.x = v84;
  v269.origin.y = v85;
  v269.size.width = v86;
  v269.size.height = v87;
  v270.size = v244;
  v270.origin = v256;
  LOBYTE(v271.origin.x) = v90 & 1;
  v271.origin.y = v246;
  v271.size = v248;
  v272 = xmmword_1B161D4B0;
  v111 = qword_1EDB2F640;
  *&v256 = v245;
  v112 = v255;
  if (v111 != -1)
  {
    swift_once();
  }

  v113 = sub_1B1619C98();
  __swift_project_value_buffer(v113, qword_1EDB2F648);
  sub_1B1619C88();
  sub_1B1619C38();
  v114 = swift_slowAlloc();
  v245 = swift_slowAlloc();
  v266 = v245;
  *v114 = 136315138;
  *(v114 + 4) = sub_1B15E4764(*v112, *(v112 + 1), &v266);
  v115 = sub_1B1619C88();
  v116 = sub_1B161A0A8();
  v117 = sub_1B1619C48();
  v243 = v114;
  *&v244.width = v115;
  _os_signpost_emit_with_name_impl(&dword_1B15BF000, v115, v116, v117, "Bake Shadows", "%s", v114, 0xCu);
  v118 = v247;
  if (LOBYTE(v267.origin.x) == 2)
  {
    goto LABEL_96;
  }

  if ((v112[25] & 1) == 0 || *(v112 + 22) | *(v112 + 21) | *(v112 + 20) | *(v112 + 23) | *(v112 + 24))
  {
    if ((LOWORD(v267.origin.x) & 0xFF00) == 0x100)
    {
      goto LABEL_96;
    }

    goto LABEL_53;
  }

  v120 = BYTE1(v267.origin.x);
  if (BYTE1(v267.origin.x) <= 1u)
  {
    if (BYTE1(v267.origin.x))
    {
      goto LABEL_96;
    }

    goto LABEL_76;
  }

  if (BYTE1(v267.origin.x) == 2)
  {
LABEL_76:
    v119 = 0;
    LODWORD(v238) = 0;
    LODWORD(v240) = 1;
    LOBYTE(v259[0].origin.x) = 1;
    LOBYTE(v263[0].origin.x) = 0;
    v264 = 0;
    LODWORD(v239) = 3;
    v235 = 3;
    v236 = 4;
    *&v237 = 0;
    v121 = 80;
    goto LABEL_54;
  }

LABEL_53:
  v235 = 0;
  LODWORD(v240) = 0;
  LODWORD(v239) = 0;
  LOBYTE(v259[0].origin.x) = 0;
  v119 = 1;
  LOBYTE(v263[0].origin.x) = 1;
  v120 = 3;
  v264 = 1;
  v121 = 10;
  LODWORD(v238) = 1;
  *&v237 = 1;
  v236 = 1;
LABEL_54:
  memcpy(v262, v255 + 26, 0x653uLL);
  memcpy(v263, v255 + 26, 0x653uLL);
  v122 = sub_1B15C3B5C(v263);
  v124 = *&v252;
  v123 = v253;
  v242 = x;
  if (v122 == 1)
  {
    if (qword_1EDB2FBF8 != -1)
    {
      swift_once();
    }

    memcpy(v259, &unk_1EDB2FC00, 0x653uLL);
    sub_1B15C51D0(v259, v260);
    v125 = v259;
  }

  else
  {
    v125 = v262;
  }

  memcpy(v261, v125, 0x653uLL);
  sub_1B15C37C0(v262, v259, &qword_1EB752A78);
  v126 = sub_1B15C5664(v261);
  v241 = v234;
  v283[0] = *&v261[165];
  v283[1] = *&v261[167];
  v284[0] = *&v261[169];
  *(v284 + 9) = *(&v261[170] + 1);
  MEMORY[0x1EEE9AC00](v126);
  v127 = v255;
  *&v234[-48] = v255;
  *&v234[-40] = v124;
  *&v234[-32] = v123;
  v234[-24] = v120;
  *&v234[-16] = &v267;
  *&v234[-8] = v283;
  v128 = objc_opt_self();
  sub_1B15C3828(v127, v259);
  v129 = [v128 currentEnvironment];
  sub_1B15FAE80();

  if (v254)
  {
    v235 = v120;
    v130 = qword_1EDB2FAA8;
    v131 = v254;
    if (v130 != -1)
    {
      swift_once();
    }

    *v275 = *v265;
    *&v275[3] = *&v265[3];
    v273[0] = v124;
    v132 = v124;
    v133 = *&v253;
    *&v273[1] = v253;
    v273[2] = v121;
    v273[3] = v237;
    v274 = LOBYTE(v240);
    v276 = v236;
    v277 = 2;
    v278 = v239;
    v279 = v238;
    v280 = v119;
    v281 = v131;
    v282 = 7;
    v134 = sub_1B1616D24(v273);
    x = v242;
    v135 = v131;
    v80 = v251;
    v118 = v247;
    if (v134)
    {
      isEscapingClosureAtFileLocation = v134;
      v137 = objc_allocWithZone(MEMORY[0x1E69C70C8]);
      v254 = v135;
      v138 = [v137 initWithDevice_];
      v139 = v132;
      v140 = v133;
      [v138 setSize_];
      [v138 setPixelFormat_];
      v141 = *(isEscapingClosureAtFileLocation + 16);
      v142 = *(isEscapingClosureAtFileLocation + 104);
      if ((*&v142 & 0x8000000000000000) != 0)
      {
      }

      else
      {
        v143 = *(isEscapingClosureAtFileLocation + 96);
        v144 = *(isEscapingClosureAtFileLocation + 72);
        v145 = *(isEscapingClosureAtFileLocation + 24);
        v146 = *(isEscapingClosureAtFileLocation + 40);
        v147 = *(isEscapingClosureAtFileLocation + 56);
        v259[2].origin = *(isEscapingClosureAtFileLocation + 80);
        v148 = v259[2].origin.x;
        *&v259[0].origin.y = v145;
        *&v259[0].size.height = v146;
        *&v259[1].origin.y = v147;
        v259[0].origin.x = v141;
        v259[1].size.height = v144;
        *&v259[2].size.width = v143;
        v259[2].size.height = v142;
        sub_1B15C37C0(v259, v260, &qword_1EB752B80);
      }

      v170 = *(v143 + 88);
      swift_unknownObjectRetain();

      [v138 setTexture_];
      swift_unknownObjectRelease();
      [v138 setBackgroundGPUPriority_];
      v171 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
      [v171 setProfile_];
      v172 = objc_allocWithZone(MEMORY[0x1E69C70D8]);
      v165 = v171;
      v253 = COERCE_DOUBLE([v172 init]);
      v167 = [objc_allocWithZone(MEMORY[0x1E69C7100]) init];
      v2 = v255[16];
      v1 = v255[17];
      [v165 scaleByX:v139 / v2 Y:v140 / v1];
      if (v1 >= v2)
      {
        v177 = v2;
      }

      else
      {
        v177 = v1;
      }

      if (v235 == 3)
      {
        LODWORD(v173) = *MEMORY[0x1E69C7128];
        LODWORD(v174) = *(MEMORY[0x1E69C7128] + 4);
        LODWORD(v175) = *(MEMORY[0x1E69C7128] + 8);
        LODWORD(v176) = *(MEMORY[0x1E69C7128] + 12);
        [v165 addAlphaMultiplyFilterWithColor_];
      }

      v3 = v177 * 0.0009765625;
      memcpy(v259, v262, 0x653uLL);
      if (sub_1B15C3B5C(v259) != 1)
      {
        v178 = v262;
        goto LABEL_87;
      }

      if (qword_1EDB2FBF8 == -1)
      {
LABEL_85:
        memcpy(v258, &unk_1EDB2FC00, sizeof(v258));
        sub_1B15C51D0(v258, v260);
        v178 = v258;
LABEL_87:
        memcpy(v260, v178, sizeof(v260));
        sub_1B15C37C0(v262, v258, &qword_1EB752A78);
        sub_1B15C5664(v260);
        [v165 addBlurFilterWithRadius_];
        v179 = v3 * *&v261[166];
        origin = v269.origin;
        v181 = v269.size;
        v182 = *&v268.size.height;
        v285.origin = origin;
        v285.size = v181;
        v183 = v179 + v2 * CGRectGetMinX(v285);
        v184 = v3 * *&v261[167];
        v185 = v184 + v1 * CGRectGetMinY(v269);
        v186 = v2 * CGRectGetWidth(v269);
        v187 = v1 * CGRectGetHeight(v269);
        if (qword_1EDB30310 != -1)
        {
          swift_once();
        }

        v240 = *(&xmmword_1EDB30318 + 1);
        *&v252 = xmmword_1EDB30318;
        v188 = *&qword_1EDB30328;
        *&v239 = unk_1EDB30330;
        v286.origin.x = v183;
        v286.origin.y = v185;
        v286.size.width = v186;
        v286.size.height = v187;
        MinX = CGRectGetMinX(v286);
        v287.origin.x = v183;
        v287.origin.y = v185;
        v287.size.width = v186;
        v287.size.height = v187;
        MinY = CGRectGetMinY(v287);
        *v258 = 0x3FF0000000000000;
        *&v258[8] = 0;
        *&v258[16] = 0;
        *&v258[24] = 0x3FF0000000000000;
        *&v258[32] = 0;
        *&v258[40] = 0;
        CGAffineTransformTranslate(v257, v258, MinX, MinY);
        tx = v257[0].tx;
        ty = v257[0].ty;
        v237 = *&v257[0].c;
        v238 = *&v257[0].a;
        v288.origin.x = v183;
        v288.origin.y = v185;
        v288.size.width = v186;
        v288.size.height = v187;
        Width = CGRectGetWidth(v288);
        v289.origin.x = v183;
        v289.origin.y = v185;
        v289.size.width = v186;
        v289.size.height = v187;
        Height = CGRectGetHeight(v289);
        *&v258[16] = v237;
        *v258 = v238;
        *&v258[32] = tx;
        *&v258[40] = ty;
        CGAffineTransformScale(v257, v258, Width, Height);
        v195 = v257[0].tx;
        v196 = v257[0].ty;
        v197 = v252;
        *&v252 = v197;
        v198 = v240;
        *&v240 = v198;
        *&ty = v188;
        *&v188 = *&v239;
        v238 = *&v257[0].c;
        v239 = *&v257[0].a;
        CGImage = RBImageMakeCGImage();
        v201 = v200;
        [v167 setRect_];
        v202 = CGImage;
        *&v258[16] = v238;
        *v258 = v239;
        *&v258[32] = v195;
        *&v258[40] = v196;
        v203 = v253;
        LODWORD(v204) = LODWORD(v240);
        LODWORD(v205) = LODWORD(ty);
        LODWORD(v206) = LODWORD(v188);
        [*&v253 setRBImage:v202 transform:v201 interpolation:v258 tintColor:1 colorSpace:3 flags:{0, COERCE_DOUBLE(__PAIR64__(DWORD1(v239), LODWORD(v252))), v204, v205, v206}];
        LODWORD(v207) = 1.0;
        [v165 drawShape:v167 fill:*&v203 alpha:0 blendMode:v207];
        [v167 setRenderingMode_];

        if (v264)
        {
          v208 = 130;
        }

        else
        {
          v208 = 2;
        }

        v209 = swift_allocObject();
        *(v209 + 16) = v138;
        type metadata accessor for HardwareTexture.Tracker();
        v210 = swift_allocObject();
        v211 = v138;
        swift_defaultActor_initialize();
        v212 = MEMORY[0x1E69E7CC0];
        *(v210 + 112) = 0;
        *(v210 + 120) = v212;
        *(v210 + 128) = sub_1B15E6C68;
        *(v210 + 136) = v209;
        v213 = swift_allocObject();
        swift_weakInit();
        *&v258[32] = sub_1B15E6C70;
        *&v258[40] = v213;
        *v258 = MEMORY[0x1E69E9820];
        *&v258[8] = 1107296256;
        *&v258[16] = sub_1B15E703C;
        *&v258[24] = &block_descriptor_20;
        v214 = _Block_copy(v258);

        [v211 setCompletedHandler_];
        _Block_release(v214);
        v215 = *(isEscapingClosureAtFileLocation + 16);
        v216 = *(isEscapingClosureAtFileLocation + 104);
        if (v216 < 0)
        {
        }

        else
        {
          v217 = *(isEscapingClosureAtFileLocation + 96);
          v218 = *(isEscapingClosureAtFileLocation + 72);
          v219 = *(isEscapingClosureAtFileLocation + 24);
          v220 = *(isEscapingClosureAtFileLocation + 40);
          v221 = *(isEscapingClosureAtFileLocation + 56);
          *&v258[64] = *(isEscapingClosureAtFileLocation + 80);
          v222 = *&v258[64];
          *v258 = v215;
          *&v258[8] = v219;
          *&v258[24] = v220;
          *&v258[40] = v221;
          *&v258[56] = v218;
          *&v258[80] = v217;
          *&v258[88] = v216;
          sub_1B15C37C0(v258, v257, &qword_1EB752B80);
        }

        x = v242;
        *(v217 + 104) = v210;

        v223 = v165;
        [v211 renderDisplayList:v223 flags:v208];

        sub_1B15C5328(v255);
        sub_1B15C26A4(*&v272.x, SLOBYTE(v272.y));
        v272 = isEscapingClosureAtFileLocation;
        v80 = v251;
        v110 = v246;
        v118 = v247;
        goto LABEL_96;
      }

LABEL_102:
      swift_once();
      goto LABEL_85;
    }

    sub_1B15C5328(v255);
    v138 = 0;
    v169 = 255;
  }

  else
  {
    v149 = v124;
    v150 = RBColorModeMake();
    v151 = [v128 currentEnvironment];
    sub_1B15FAE80();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B58);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_1B161D4A0;
    v153 = *MEMORY[0x1E69C7198];
    *(v152 + 32) = *MEMORY[0x1E69C7198];
    v154 = MEMORY[0x1E69E72F0];
    *(v152 + 40) = v150;
    v155 = *MEMORY[0x1E69C71A0];
    *(v152 + 64) = v154;
    *(v152 + 72) = v155;
    *(v152 + 80) = 0;
    v156 = *MEMORY[0x1E69C7190];
    *(v152 + 104) = v154;
    *(v152 + 112) = v156;
    *(v152 + 144) = MEMORY[0x1E69E6530];
    *(v152 + 120) = 2;
    v157 = v153;
    v158 = v155;
    v159 = v156;
    v160 = sub_1B15C28A4(v152);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752B60);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v161 = *MEMORY[0x1E69C71B0];
    *&v259[0].size.height = MEMORY[0x1E69E6370];
    LOBYTE(v259[0].origin.x) = 1;
    sub_1B15C2260(v259, v260);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v258 = v160;
    sub_1B15E4D0C(v260, v161, isUniquelyReferenced_nonNull_native);
    v163 = [objc_opt_self() sharedDevice];
    v164 = *&v253;
    type metadata accessor for RBImageRendererProperty(0);
    sub_1B15F2768(&qword_1EDB2FB88, type metadata accessor for RBImageRendererProperty);
    v165 = sub_1B1619D28();

    v166 = swift_allocObject();
    *(v166 + 16) = sub_1B15E6C34;
    *(v166 + 24) = &v234[-64];
    v167 = swift_allocObject();
    v167[2] = sub_1B15C5988;
    v167[3] = v166;
    *&v259[1].origin.x = sub_1B15C5A04;
    *&v259[1].origin.y = v167;
    *&v259[0].origin.x = MEMORY[0x1E69E9820];
    *&v259[0].origin.y = 1107296256;
    *&v259[0].size.width = sub_1B15C5990;
    *&v259[0].size.height = &block_descriptor_3;
    v168 = _Block_copy(v259);

    v138 = [v163 renderImageInRect:v165 options:v168 renderer:{0.0, 0.0, v149, v164}];

    _Block_release(v168);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_102;
    }

    sub_1B15C5328(v255);
    if (v138)
    {
      v169 = 1;
    }

    else
    {
      v169 = 255;
    }

    x = v242;
    v80 = v251;
    v118 = v247;
  }

  sub_1B15C26A4(*&v272.x, SLOBYTE(v272.y));
  *&v272.x = v138;
  *&v272.y = v169;
  v110 = v246;
LABEL_96:
  v224 = sub_1B161A098();
  v225 = sub_1B1619C48();
  v227 = v243;
  v226 = v244.width;
  _os_signpost_emit_with_name_impl(&dword_1B15BF000, *&v244.width, v224, v225, "Bake Shadows", "%s", v243, 0xCu);

  v228 = v245;
  __swift_destroy_boxed_opaque_existential_0(v245);
  MEMORY[0x1B2730CA0](v228, -1, -1);
  MEMORY[0x1B2730CA0](v227, -1, -1);
  sub_1B15C26A4(*&v110, v248);

  (*(v249 + 8))(v80, v250);
  v262[4] = v271;
  v262[5].origin = v272;
  v262[2] = v269;
  v262[3] = v270;
  v262[0] = v267;
  v262[1] = v268;
  v263[4] = v271;
  v263[5].origin = v272;
  v263[2] = v269;
  v263[3] = v270;
  v263[0] = v267;
  v263[1] = v268;
  nullsub_1(v263);
  v229 = v263[4].size;
  *(v14 + 128) = v263[4].origin;
  *(v14 + 144) = v229;
  *(v14 + 160) = v263[5].origin;
  v230 = v263[2].size;
  *(v14 + 64) = v263[2].origin;
  *(v14 + 80) = v230;
  v231 = v263[3].size;
  *(v14 + 96) = v263[3].origin;
  *(v14 + 112) = v231;
  v232 = v263[0].size;
  *v14 = v263[0].origin;
  *(v14 + 16) = v232;
  v233 = v263[1].size;
  *(v14 + 32) = v263[1].origin;
  *(v14 + 48) = v233;
  v259[4] = v271;
  v259[5].origin = v272;
  v259[2] = v269;
  v259[3] = v270;
  v259[0] = v267;
  v259[1] = v268;
  sub_1B15CE470(v262, v261);
  sub_1B15CE4CC(v259);
}

uint64_t sub_1B15ED1F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B1619CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00]();
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1B1619C68();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB2F640 != -1)
  {
    swift_once();
  }

  v10 = sub_1B1619C98();
  __swift_project_value_buffer(v10, qword_1EDB2F648);
  sub_1B15C3828(a2, v22);
  v11 = sub_1B1619C88();
  sub_1B1619CB8();
  v20 = sub_1B161A098();
  sub_1B15C5328(a2);
  if (sub_1B161A0F8())
  {

    sub_1B1619CE8();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v12 = 0;
      v13 = 0;
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "%s";
      v13 = 2;
      v12 = 1;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = v13;
    *(v15 + 1) = v12;
    *(v15 + 2) = 2080;
    *(v15 + 4) = sub_1B15E4764(*a2, *(a2 + 8), v22);
    v17 = sub_1B1619C48();
    _os_signpost_emit_with_name_impl(&dword_1B15BF000, v11, v20, v17, "Load SDF Texture", v14, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1B2730CA0](v16, -1, -1);
    MEMORY[0x1B2730CA0](v15, -1, -1);
  }

  return (*(v7 + 8))(v9, v21);
}

double sub_1B15ED500(uint64_t a1)
{
  if (qword_1EDB2F5F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1619D18();
  __swift_project_value_buffer(v2, qword_1EDB2F600);
  v3 = sub_1B1619CF8();
  v4 = sub_1B161A088();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_1B15BF000, v3, v4, "Missing content frame for layer at index %ld", v5, 0xCu);
    MEMORY[0x1B2730CA0](v5, -1, -1);
  }

  return 0.0;
}

uint64_t _s13IconRendering0A0V13GlassMaterialV11ShadowStyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  return sub_1B161A4F8();
}

uint64_t sub_1B15ED65C()
{
  v1 = *v0;
  sub_1B161A4B8();
  MEMORY[0x1B272FFF0](v1);
  return sub_1B161A4F8();
}

uint64_t sub_1B15ED6A0()
{
  v1 = 0x4673746365666665;
  if (*v0 != 1)
  {
    v1 = 0x754F736B636F6E6BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x46746E65746E6F63;
  }
}

uint64_t sub_1B15ED70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B15F237C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B15ED74C(uint64_t a1)
{
  v2 = sub_1B15F2714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15ED788(uint64_t a1)
{
  v2 = sub_1B15F2714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B15ED7C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F2714();
  sub_1B161A518();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v15 = 0;
  type metadata accessor for CGRect(0);
  sub_1B15F2768(&qword_1EDB2F360, type metadata accessor for CGRect);
  sub_1B161A3F8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = v3[3];
  v12 = v3[2];
  v13 = v10;
  v14 = *(v3 + 64);
  v15 = 1;
  sub_1B161A3C8();
  LOBYTE(v12) = 2;
  sub_1B161A3D8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B15ED9D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *(v3 + 56);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F2160();
  sub_1B161A518();
  v10 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v10;
  v12[2] = *(v3 + 32);
  v13 = *(v3 + 48);
  v14 = 0;
  sub_1B15F225C();
  sub_1B161A3F8();
  if (!v2)
  {
    *&v12[0] = v9;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C48);
    sub_1B15F22B0(&qword_1EDB2F370, sub_1B15F2328);
    sub_1B161A3F8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B15EDBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F2160();
  sub_1B161A508();
  if (!v2)
  {
    v22 = 0;
    sub_1B15F21B4();
    sub_1B161A398();
    v17 = v13;
    v18 = v14;
    v19 = v15;
    LOWORD(v20) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C48);
    v21 = 1;
    sub_1B15F22B0(&qword_1EDB2F4C8, sub_1B15F2208);
    sub_1B161A398();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    v10 = v18;
    *a2 = v17;
    *(a2 + 16) = v10;
    *(a2 + 32) = v19;
    *(a2 + 48) = v20;
    *(a2 + 56) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 sub_1B15EDE04@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B15F24A8(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1B15EDE70()
{
  if (*v0)
  {
    return 0x73726579616CLL;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t sub_1B15EDEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1B161A448() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726579616CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B161A448();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B15EDF84(uint64_t a1)
{
  v2 = sub_1B15F2160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B15EDFC0(uint64_t a1)
{
  v2 = sub_1B15F2160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B15EE02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[313] = a6;
  v6[312] = a5;
  v6[311] = a4;
  v6[310] = a3;
  v6[309] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C08);
  v6[314] = v7;
  v6[315] = *(v7 - 8);
  v6[316] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  v6[317] = swift_task_alloc();
  v6[318] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B15EE14C, 0, 0);
}

uint64_t sub_1B15EE14C()
{
  v2 = 0;
  v3 = (v1 + 1880);
  v4 = (v1 + 2056);
  v59 = (v1 + 1696);
  v5 = *(v1 + 2480);
  v6 = *(v5 + 16);
  v57 = (v1 + 592);
  v58 = v5 + 32;
  v56 = (v1 + 600);
  v61 = (v1 + 776);
  v60 = v6;
  while (1)
  {
    if (v2 == v6)
    {
      sub_1B15D2784(v59);
      v7 = *v59;
      v8 = *(v1 + 1848);
      *(v1 + 2008) = *(v1 + 1832);
      *(v1 + 2024) = v8;
      *(v1 + 2040) = *(v1 + 1864);
      v9 = *(v1 + 1784);
      *(v1 + 1944) = *(v1 + 1768);
      *(v1 + 1960) = v9;
      v10 = *(v1 + 1816);
      *(v1 + 1976) = *(v1 + 1800);
      *(v1 + 1992) = v10;
      v11 = *(v1 + 1720);
      *v3 = *(v1 + 1704);
      *(v1 + 1896) = v11;
      v13 = *(v1 + 1736);
      v12 = *(v1 + 1752);
      v0 = v6;
    }

    else
    {
      if (v2 >= v6)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v14 = (v58 + 176 * v2);
      v15 = *v14;
      v16 = v14[2];
      v4[1] = v14[1];
      v4[2] = v16;
      *v4 = v15;
      v17 = v14[3];
      v18 = v14[4];
      v19 = v14[6];
      v4[5] = v14[5];
      v4[6] = v19;
      v4[3] = v17;
      v4[4] = v18;
      v20 = v14[7];
      v21 = v14[8];
      v22 = v14[10];
      v4[9] = v14[9];
      v4[10] = v22;
      v4[7] = v20;
      v4[8] = v21;
      v0 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        goto LABEL_21;
      }

      v23 = *v14;
      v24 = v14[2];
      *(v1 + 616) = v14[1];
      *(v1 + 632) = v24;
      *v56 = v23;
      v25 = v14[3];
      v26 = v14[4];
      v27 = v14[6];
      *(v1 + 680) = v14[5];
      *(v1 + 696) = v27;
      *(v1 + 648) = v25;
      *(v1 + 664) = v26;
      v28 = v14[7];
      v29 = v14[8];
      v30 = v14[10];
      *(v1 + 744) = v14[9];
      *(v1 + 760) = v30;
      *(v1 + 712) = v28;
      *(v1 + 728) = v29;
      *v57 = v2;
      nullsub_1(v57);
      sub_1B15CE470(v4, v1 + 2232);
      v7 = *v57;
      v31 = *(v1 + 744);
      *(v1 + 2008) = *(v1 + 728);
      *(v1 + 2024) = v31;
      *(v1 + 2040) = *(v1 + 760);
      v32 = *(v1 + 680);
      *(v1 + 1944) = *(v1 + 664);
      *(v1 + 1960) = v32;
      v33 = *(v1 + 712);
      *(v1 + 1976) = *(v1 + 696);
      *(v1 + 1992) = v33;
      v34 = *(v1 + 616);
      *v3 = *v56;
      *(v1 + 1896) = v34;
      v13 = *(v1 + 632);
      v12 = *(v1 + 648);
    }

    *(v1 + 1912) = v13;
    *(v1 + 1928) = v12;
    v35 = *(v1 + 1992);
    v73 = *(v1 + 2008);
    v74 = *(v1 + 2024);
    v75 = *(v1 + 2040);
    v36 = *(v1 + 1928);
    v69 = *(v1 + 1944);
    v70 = *(v1 + 1960);
    v71 = *(v1 + 1976);
    v72 = v35;
    v65 = *v3;
    v66 = *(v1 + 1896);
    v37 = *v3;
    v67 = *(v1 + 1912);
    v68 = v36;
    *(v1 + 912) = v73;
    *(v1 + 928) = v74;
    *(v1 + 944) = *(v1 + 2040);
    *(v1 + 848) = v69;
    *(v1 + 864) = v70;
    *(v1 + 880) = v71;
    *(v1 + 896) = v35;
    *(v1 + 784) = v37;
    *(v1 + 800) = v66;
    *(v1 + 816) = v67;
    *(v1 + 832) = v36;
    *v61 = v7;
    if (sub_1B15D27A8(v61) == 1)
    {
      break;
    }

    v63 = v7;
    v64 = v0;
    v38 = *(v1 + 2544);
    v39 = *(v1 + 2536);
    v40 = *(v1 + 2496);
    v62 = *(v1 + 2488);
    v41 = sub_1B1619FC8();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v38, 1, 1, v41);
    v43 = swift_allocObject();
    *(v43 + 168) = v72;
    *(v43 + 184) = v73;
    *(v43 + 200) = v74;
    *(v43 + 216) = v75;
    *(v43 + 104) = v68;
    *(v43 + 120) = v69;
    *(v43 + 136) = v70;
    *(v43 + 152) = v71;
    *(v43 + 56) = v65;
    *(v43 + 16) = 0;
    v44 = (v43 + 16);
    *(v43 + 72) = v66;
    *(v43 + 24) = 0;
    *(v43 + 32) = v63;
    *(v43 + 40) = v62;
    *(v43 + 48) = v40;
    *(v43 + 88) = v67;
    sub_1B15C37C0(v38, v39, &unk_1EB753190);
    LODWORD(v39) = (*(v42 + 48))(v39, 1, v41);

    v45 = *(v1 + 2536);
    if (v39 == 1)
    {
      sub_1B15C1750(*(v1 + 2536), &unk_1EB753190);
      if (*v44)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B1619FB8();
      (*(v42 + 8))(v45, v41);
      if (*v44)
      {
LABEL_11:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v46 = sub_1B1619F98();
        v48 = v47;
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    v46 = 0;
    v48 = 0;
LABEL_14:
    v6 = v60;
    v2 = v64;
    v49 = **(v1 + 2472);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C00);
    v50 = v48 | v46;
    if (v48 | v46)
    {
      v50 = v1 + 2408;
      *(v1 + 2408) = 0;
      *(v1 + 2416) = 0;
      *(v1 + 2424) = v46;
      *(v1 + 2432) = v48;
    }

    v4 = (v1 + 2056);
    v0 = *(v1 + 2544);
    *(v1 + 2440) = 1;
    *(v1 + 2448) = v50;
    *(v1 + 2456) = v49;
    swift_task_create();

    sub_1B15C1750(v0, &unk_1EB753190);
  }

  v51 = *(v1 + 2504);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752BF8);
  sub_1B1619FD8();
  v0 = *v51;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v51 = v0;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_17;
  }

LABEL_22:
  v0 = sub_1B15E4E4C(v0);
LABEL_17:
  **(v1 + 2504) = v0;
  v53 = swift_task_alloc();
  *(v1 + 2552) = v53;
  *v53 = v1;
  v53[1] = sub_1B15EE700;
  v54 = *(v1 + 2512);

  return MEMORY[0x1EEE6DAD8](v1 + 208, 0, 0, v54, v1 + 2464);
}

uint64_t sub_1B15EE700()
{

  if (v0)
  {
    v1 = sub_1B15EEB7C;
  }

  else
  {
    v1 = sub_1B15EE810;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B15EE810()
{
  v1 = *(v0 + 352);
  *(v0 + 528) = *(v0 + 336);
  *(v0 + 544) = v1;
  v2 = *(v0 + 384);
  *(v0 + 560) = *(v0 + 368);
  *(v0 + 576) = v2;
  v3 = *(v0 + 288);
  *(v0 + 464) = *(v0 + 272);
  *(v0 + 480) = v3;
  v4 = *(v0 + 320);
  *(v0 + 496) = *(v0 + 304);
  *(v0 + 512) = v4;
  v5 = *(v0 + 224);
  *(v0 + 400) = *(v0 + 208);
  *(v0 + 416) = v5;
  v6 = *(v0 + 256);
  *(v0 + 432) = *(v0 + 240);
  *(v0 + 448) = v6;
  if (sub_1B15D27A8(v0 + 400) != 1)
  {
    v9 = *(v0 + 296);
    v10 = *(v0 + 328);
    v11 = *(v0 + 344);
    *(v0 + 1056) = *(v0 + 312);
    *(v0 + 1072) = v10;
    v12 = *(v0 + 264);
    *(v0 + 1024) = *(v0 + 280);
    *(v0 + 1040) = v9;
    v13 = *(v0 + 376);
    *(v0 + 1104) = *(v0 + 360);
    *(v0 + 1120) = v13;
    v14 = *(v0 + 2504);
    v15 = *(v0 + 208);
    *(v0 + 1136) = *(v0 + 392);
    *(v0 + 1088) = v11;
    v16 = *(v0 + 232);
    *(v0 + 960) = *(v0 + 216);
    *(v0 + 976) = v16;
    *(v0 + 992) = *(v0 + 248);
    *(v0 + 1008) = v12;
    v17 = *v14;
    v18 = *(*v14 + 16);
    v19 = v15 - v18;
    if (v15 >= v18)
    {
      sub_1B15D2784(v0 + 1144);
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (v25 < 0)
      {
LABEL_19:
        __break(1u);
        return MEMORY[0x1EEE6DAD8](v20, v21, v22, v23, v24);
      }

      v26 = *(v0 + 1288);
      *(v0 + 152) = *(v0 + 1272);
      *(v0 + 168) = v26;
      *(v0 + 184) = *(v0 + 1304);
      v27 = *(v0 + 1224);
      *(v0 + 88) = *(v0 + 1208);
      *(v0 + 104) = v27;
      v28 = *(v0 + 1256);
      *(v0 + 120) = *(v0 + 1240);
      *(v0 + 136) = v28;
      v29 = *(v0 + 1160);
      *(v0 + 24) = *(v0 + 1144);
      *(v0 + 40) = v29;
      v30 = *(v0 + 1192);
      *(v0 + 56) = *(v0 + 1176);
      v31 = *(v0 + 2504);
      *(v0 + 200) = *(v0 + 1320);
      *(v0 + 72) = v30;
      *(v0 + 16) = v25;
      sub_1B15EFE00(v0 + 16);
      v17 = *v31;
      v14 = *(v0 + 2504);
    }

    v32 = (v0 + 1512);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = *(v0 + 2504);
      v17 = sub_1B15E4E4C(v17);
      *v59 = v17;
    }

    v34 = *(v0 + 1104);
    *(v0 + 1640) = *(v0 + 1088);
    *(v0 + 1656) = v34;
    *(v0 + 1672) = *(v0 + 1120);
    *(v0 + 1688) = *(v0 + 1136);
    v35 = *(v0 + 1040);
    *(v0 + 1576) = *(v0 + 1024);
    *(v0 + 1592) = v35;
    v36 = *(v0 + 1072);
    *(v0 + 1608) = *(v0 + 1056);
    *(v0 + 1624) = v36;
    v37 = *(v0 + 976);
    *v32 = *(v0 + 960);
    *(v0 + 1528) = v37;
    v38 = *(v0 + 1008);
    *(v0 + 1544) = *(v0 + 992);
    *(v0 + 1560) = v38;
    v20 = nullsub_1(v0 + 1512);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < v17[2])
    {
      v39 = &v17[23 * v15];
      v40 = *(v39 + 2);
      v41 = *(v39 + 3);
      v42 = *(v39 + 5);
      *(v0 + 1360) = *(v39 + 4);
      *(v0 + 1376) = v42;
      *(v0 + 1328) = v40;
      *(v0 + 1344) = v41;
      v43 = *(v39 + 6);
      v44 = *(v39 + 7);
      v45 = *(v39 + 9);
      *(v0 + 1424) = *(v39 + 8);
      *(v0 + 1440) = v45;
      *(v0 + 1392) = v43;
      *(v0 + 1408) = v44;
      v46 = *(v39 + 10);
      v47 = *(v39 + 11);
      v48 = *(v39 + 12);
      *(v0 + 1504) = v39[26];
      *(v0 + 1472) = v47;
      *(v0 + 1488) = v48;
      *(v0 + 1456) = v46;
      v49 = *v32;
      v50 = *(v0 + 1528);
      v51 = *(v0 + 1560);
      *(v39 + 4) = *(v0 + 1544);
      *(v39 + 5) = v51;
      *(v39 + 2) = v49;
      *(v39 + 3) = v50;
      v52 = *(v0 + 1576);
      v53 = *(v0 + 1592);
      v54 = *(v0 + 1624);
      *(v39 + 8) = *(v0 + 1608);
      *(v39 + 9) = v54;
      *(v39 + 6) = v52;
      *(v39 + 7) = v53;
      v55 = *(v0 + 1640);
      v56 = *(v0 + 1656);
      v57 = *(v0 + 1672);
      v39[26] = *(v0 + 1688);
      *(v39 + 11) = v56;
      *(v39 + 12) = v57;
      *(v39 + 10) = v55;
      sub_1B15C1750(v0 + 1328, &qword_1EB7530F0);
      v58 = swift_task_alloc();
      *(v0 + 2552) = v58;
      *v58 = v0;
      v58[1] = sub_1B15EE700;
      v23 = *(v0 + 2512);
      v20 = v0 + 208;
      v24 = v0 + 2464;
      v21 = 0;
      v22 = 0;

      return MEMORY[0x1EEE6DAD8](v20, v21, v22, v23, v24);
    }

    __break(1u);
    goto LABEL_18;
  }

  (*(*(v0 + 2520) + 8))(*(v0 + 2528), *(v0 + 2512));

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B15EEB7C()
{
  (*(v0[315] + 8))(v0[316], v0[314]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B15EEC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v18;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v10 = sub_1B161A108();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = sub_1B161A528();
  v8[15] = swift_task_alloc();
  v8[16] = *(a8 - 8);
  v8[17] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[18] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v8[19] = v12;
  v8[20] = *(v12 + 64);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  v8[22] = swift_task_alloc();
  v8[23] = swift_getTupleTypeMetadata2();
  sub_1B161A108();
  v8[24] = swift_task_alloc();
  v8[25] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB752BF8);
  v13 = sub_1B1619FF8();
  v8[26] = v13;
  v8[27] = *(v13 - 8);
  v8[28] = swift_task_alloc();
  v8[29] = swift_getTupleTypeMetadata2();
  v14 = sub_1B161A108();
  v8[30] = v14;
  v8[31] = *(v14 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = sub_1B161A2C8();
  v8[35] = swift_task_alloc();
  v15 = sub_1B161A2B8();
  v8[36] = v15;
  v8[37] = *(v15 - 8);
  v8[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B15EF05C, 0, 0);
}

uint64_t sub_1B15EF05C()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[19];
  MEMORY[0x1B272F9B0](v0[8], v0[10]);
  sub_1B161A298();
  v22 = v3;
  v23 = v2;
  v24 = v2 - 8;
  while (1)
  {
    v5 = v0[32];
    v4 = v0[33];
    v7 = v0[29];
    v6 = v0[30];
    sub_1B161A2A8();
    (*(v1 + 32))(v4, v5, v6);
    if ((*(*v24 + 48))(v4, 1, v7) == 1)
    {
      break;
    }

    v8 = v0[33];
    v9 = v0[22];
    v10 = v0[21];
    v11 = v0[18];
    v28 = v0[10];
    v12 = v0[6];
    v27 = v0[5];
    v26 = *v8;
    v13 = *(v23 + 48);
    v14 = sub_1B1619FC8();
    v25 = *(v0 + 4);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = *(v22 + 32);
    v15(v10, &v8[v13], v11);
    v16 = (*(v22 + 80) + 80) & ~*(v22 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v25;
    *(v17 + 48) = v28;
    *(v17 + 56) = v26;
    *(v17 + 64) = v27;
    *(v17 + 72) = v12;
    v15((v17 + v16), v10, v11);
    sub_1B161A008();

    sub_1B15EFC0C(v9, &unk_1B161DB50, v17);
    sub_1B15C1750(v9, &unk_1EB753190);
  }

  (*(v0[37] + 8))(v0[38], v0[36]);
  sub_1B1619FD8();
  v0[39] = sub_1B1619F88();
  sub_1B1619F28();
  sub_1B1619F28();
  v18 = swift_task_alloc();
  v0[40] = v18;
  *v18 = v0;
  v18[1] = sub_1B15EF3C8;
  v19 = v0[26];
  v20 = v0[24];

  return MEMORY[0x1EEE6DAD8](v20, 0, 0, v19, v0 + 2);
}

uint64_t sub_1B15EF3C8()
{

  if (v0)
  {
    v1 = sub_1B15EF8A0;
  }

  else
  {
    v1 = sub_1B15EF4D8;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B15EF4D8()
{
  v2 = v0[23];
  v1 = v0[24];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    v5 = *v1;
    (*(v0[16] + 32))(v0[17], v1 + *(v2 + 48), v0[9]);

    v6 = sub_1B1619F68();

    if (v5 < v6)
    {
      goto LABEL_9;
    }

    (*(v0[16] + 56))(v0[13], 1, 1, v0[9]);

    v7 = sub_1B1619F68();

    v13 = v5 - v7;
    if (__OFSUB__(v5, v7))
    {
      __break(1u);
    }

    else
    {
      v9 = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        v15 = v0[12];
        v14 = v0[13];
        v16 = v0[11];
        sub_1B161A208();
        (*(v15 + 8))(v14, v16);
        swift_getWitnessTable();
        sub_1B1619F78();
LABEL_9:
        v18 = v0[16];
        v17 = v0[17];
        v20 = v0[12];
        v19 = v0[13];
        v21 = v0[11];
        v22 = v0[9];
        v23 = v0[7];
        (*(v18 + 16))(v19, v17, v22);
        (*(v18 + 56))(v19, 0, 1, v22);
        sub_1B1619F28();
        sub_1B15F0880(v5, *v23);
        v24 = *v23;
        (*(v18 + 8))(v17, v22);
        (*(v20 + 40))(v24 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v5, v19, v21);
        v25 = swift_task_alloc();
        v0[40] = v25;
        *v25 = v0;
        v25[1] = sub_1B15EF3C8;
        v11 = v0[26];
        v8 = v0[24];
        v12 = v0 + 2;
        v9 = 0;
        v10 = 0;

        return MEMORY[0x1EEE6DAD8](v8, v9, v10, v11, v12);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DAD8](v8, v9, v10, v11, v12);
  }

  (*(v0[27] + 8))(v0[28], v0[26]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B15EF8A0()
{
  (*(v0[27] + 8))(v0[28], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B15EF9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B15EF9F0, 0, 0);
}

uint64_t sub_1B15EF9F0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1B15EFB18;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_1B15EFB18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B15EFC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1B15C37C0(a1, v18 - v8, &unk_1EB753190);
  v10 = sub_1B1619FC8();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B15C1750(v9, &unk_1EB753190);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1B1619F98();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B1619FB8();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_1B15EFE00(uint64_t result)
{
  v4 = *result;
  v5 = *v1;
  v6 = *(*v1 + 16);
  v7 = v6 + *result;
  if (__OFADD__(v6, *result))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v5[3] >> 1, v9 < v7))
  {
    if (v6 <= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    v5 = sub_1B1618144(isUniquelyReferenced_nonNull_native, v10, 1, v5);
    v9 = v5[3] >> 1;
  }

  v11 = v5[2];
  v12 = v9 - v11;
  result = sub_1B160F4B8(v113, &v5[23 * v11 + 4], v9 - v11);
  if (result < v4)
  {
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v13 = v5[2];
    v14 = __OFADD__(v13, result);
    v15 = v13 + result;
    if (v14)
    {
      __break(1u);
      goto LABEL_19;
    }

    v5[2] = v15;
  }

  v2 = v98;
  if (result != v12)
  {
LABEL_13:
    v16 = *&v113[128];
    v2[81] = *&v113[144];
    v17 = *&v113[176];
    v2[82] = *&v113[160];
    v2[83] = v17;
    v18 = *&v113[64];
    v2[77] = *&v113[80];
    v19 = *&v113[112];
    v2[78] = *&v113[96];
    v2[79] = v19;
    v2[80] = v16;
    v20 = *v113;
    v2[73] = *&v113[16];
    v21 = *&v113[48];
    v2[74] = *&v113[32];
    v2[75] = v21;
    v2[76] = v18;
    v112 = v114;
    v2[72] = v20;
    result = sub_1B15C1750(v110, &qword_1EB752C10);
    *v1 = v5;
    return result;
  }

LABEL_16:
  v3 = v5[2];
  v7 = *v113;
  v15 = v114;
  if (v114 == *v113)
  {
    sub_1B15F1E4C(v108);
    v22 = v7;
    goto LABEL_22;
  }

LABEL_19:
  v2[80] = *&v113[136];
  v2[81] = *&v113[152];
  v2[82] = *&v113[168];
  v111 = *&v113[184];
  v2[76] = *&v113[72];
  v2[77] = *&v113[88];
  v2[78] = *&v113[104];
  v2[79] = *&v113[120];
  v2[72] = *&v113[8];
  v2[73] = *&v113[24];
  v2[74] = *&v113[40];
  v2[75] = *&v113[56];
  if (v15 < 0 || v15 >= v7)
  {
    goto LABEL_43;
  }

  v2[68] = *&v113[136];
  v2[69] = *&v113[152];
  v2[70] = *&v113[168];
  v109 = *&v113[184];
  v23 = *&v113[72];
  v2[65] = *&v113[88];
  v2[66] = *&v113[104];
  v2[67] = *&v113[120];
  v24 = *&v113[24];
  v2[60] = *&v113[8];
  v2[61] = v24;
  v25 = *&v113[56];
  v2[62] = *&v113[40];
  v2[63] = v25;
  v2[64] = v23;
  v22 = v15 + 1;
  v114 = v15 + 1;
  nullsub_1(v108);
  sub_1B15C37C0(v110, v106, &qword_1EB7530F0);
LABEL_22:
  v26 = v2[69];
  v2[56] = v2[68];
  v2[57] = v26;
  v2[58] = v2[70];
  v107 = v109;
  v27 = v2[65];
  v2[52] = v2[64];
  v2[53] = v27;
  v28 = v2[67];
  v2[54] = v2[66];
  v2[55] = v28;
  v29 = v2[61];
  v2[48] = v2[60];
  v2[49] = v29;
  v30 = v2[63];
  v2[50] = v2[62];
  v2[51] = v30;
  if (sub_1B15F1E28(v106) == 1)
  {
LABEL_23:
    v31 = v2[69];
    v2[44] = v2[68];
    v2[45] = v31;
    v2[46] = v2[70];
    v105 = v109;
    v32 = v2[65];
    v2[40] = v2[64];
    v2[41] = v32;
    v33 = v2[67];
    v2[42] = v2[66];
    v2[43] = v33;
    v34 = v2[61];
    v2[36] = v2[60];
    v2[37] = v34;
    v35 = v2[63];
    v2[38] = v2[62];
    v2[39] = v35;
    sub_1B15C1750(v104, &qword_1EB752C18);
    goto LABEL_13;
  }

  while (1)
  {
    v41 = v5[3];
    v42 = v41 >> 1;
    if ((v41 >> 1) < v3 + 1)
    {
      v5 = sub_1B1618144((v41 > 1), v3 + 1, 1, v5);
      v42 = v5[3] >> 1;
    }

    v43 = v2[69];
    v2[32] = v2[68];
    v2[33] = v43;
    v2[34] = v2[70];
    v44 = v2[65];
    v45 = v2[63];
    v2[28] = v2[64];
    v2[29] = v44;
    v46 = v2[67];
    v2[30] = v2[66];
    v2[31] = v46;
    v47 = v2[61];
    v2[24] = v2[60];
    v2[25] = v47;
    v48 = v2[63];
    v50 = v2[60];
    v49 = v2[61];
    v51 = v2[62];
    v2[26] = v51;
    v2[27] = v48;
    v2[80] = v2[68];
    v2[81] = v2[69];
    v2[82] = v2[70];
    v2[76] = v2[64];
    v2[77] = v2[65];
    v2[78] = v2[66];
    v2[79] = v2[67];
    v2[72] = v50;
    v2[73] = v49;
    v2[74] = v51;
    v103 = v109;
    v111 = v109;
    v2[75] = v45;
    if (sub_1B15F1E28(v110) != 1 && v3 < v42)
    {
      break;
    }

LABEL_26:
    v5[2] = v3;
    v36 = v2[69];
    v2[56] = v2[68];
    v2[57] = v36;
    v2[58] = v2[70];
    v107 = v109;
    v37 = v2[65];
    v2[52] = v2[64];
    v2[53] = v37;
    v38 = v2[67];
    v2[54] = v2[66];
    v2[55] = v38;
    v39 = v2[61];
    v2[48] = v2[60];
    v2[49] = v39;
    v40 = v2[63];
    v2[50] = v2[62];
    v2[51] = v40;
    if (sub_1B15F1E28(v106) == 1)
    {
      goto LABEL_23;
    }
  }

  v52 = v5 + 4;
  v96 = v22;
  while (1)
  {
    v53 = &v52[23 * v3];
    v54 = v3 + 1;
    while (1)
    {
      v3 = v54;
      v55 = v2[69];
      v2[20] = v2[68];
      v2[21] = v55;
      v2[22] = v2[70];
      v101 = v109;
      v56 = v2[65];
      v2[16] = v2[64];
      v2[17] = v56;
      v57 = v2[67];
      v2[18] = v2[66];
      v2[19] = v57;
      v58 = v2[61];
      v2[12] = v2[60];
      v2[13] = v58;
      v59 = v2[63];
      v2[14] = v2[62];
      v2[15] = v59;
      v60 = v2[33];
      v2[44] = v2[32];
      v2[45] = v60;
      v2[46] = v2[34];
      v105 = v103;
      v61 = v2[29];
      v2[40] = v2[28];
      v2[41] = v61;
      v62 = v2[31];
      v2[42] = v2[30];
      v2[43] = v62;
      v63 = v2[25];
      v2[36] = v2[24];
      v2[37] = v63;
      v64 = v2[27];
      v2[38] = v2[26];
      v2[39] = v64;
      sub_1B15C37C0(v104, v98, &qword_1EB7530F0);
      sub_1B15C1750(v100, &qword_1EB752C18);
      result = memmove(v53, __src, 0xB8uLL);
      if (v22 != v7)
      {
        break;
      }

      sub_1B15F1E4C(v98);
      v65 = v2[9];
      v2[68] = v2[8];
      v2[69] = v65;
      v2[70] = v2[10];
      v66 = v2[4];
      v2[65] = v2[5];
      v67 = v2[7];
      v2[66] = v2[6];
      v2[67] = v67;
      v68 = v2[1];
      v2[60] = *v2;
      v2[61] = v68;
      v69 = v2[3];
      v2[62] = v2[2];
      v2[63] = v69;
      v2[64] = v66;
      v70 = v2[69];
      v2[32] = v2[68];
      v2[33] = v70;
      v2[34] = v2[70];
      v71 = v2[65];
      v72 = v2[63];
      v2[28] = v2[64];
      v2[29] = v71;
      v73 = v2[67];
      v2[30] = v2[66];
      v2[31] = v73;
      v74 = v2[61];
      v2[24] = v2[60];
      v2[25] = v74;
      v75 = v2[63];
      v77 = v2[60];
      v76 = v2[61];
      v78 = v2[62];
      v2[26] = v78;
      v2[27] = v75;
      v2[80] = v2[68];
      v2[81] = v2[69];
      v2[82] = v2[70];
      v2[76] = v2[64];
      v2[77] = v2[65];
      v2[78] = v2[66];
      v2[79] = v2[67];
      v2[72] = v77;
      v2[73] = v76;
      v2[74] = v78;
      v109 = v99;
      v103 = v99;
      v111 = v99;
      v2[75] = v72;
      if (sub_1B15F1E28(v110) != 1)
      {
        v53 += 184;
        v54 = v3 + 1;
        if (v3 < v42)
        {
          continue;
        }
      }

      v22 = v7;
      goto LABEL_26;
    }

    v79 = *&v113[152];
    v2[8] = *&v113[136];
    v2[9] = v79;
    v2[10] = *&v113[168];
    v99 = *&v113[184];
    v80 = *&v113[88];
    v2[4] = *&v113[72];
    v2[5] = v80;
    v81 = *&v113[120];
    v2[6] = *&v113[104];
    v2[7] = v81;
    v82 = *&v113[24];
    *v2 = *&v113[8];
    v2[1] = v82;
    v83 = *&v113[56];
    v2[2] = *&v113[40];
    v2[3] = v83;
    if (v96 < 0 || v22 >= v7)
    {
      break;
    }

    v2[68] = *&v113[136];
    v2[69] = *&v113[152];
    v2[70] = *&v113[168];
    v109 = *&v113[184];
    v84 = *&v113[72];
    v2[65] = *&v113[88];
    v2[66] = *&v113[104];
    v2[67] = *&v113[120];
    v85 = *&v113[24];
    v2[60] = *&v113[8];
    v2[61] = v85;
    v86 = *&v113[56];
    v2[62] = *&v113[40];
    v2[63] = v86;
    v2[64] = v84;
    v114 = ++v22;
    nullsub_1(v108);
    sub_1B15C37C0(v98, v97, &qword_1EB7530F0);
    v87 = v2[69];
    v2[32] = v2[68];
    v2[33] = v87;
    v2[34] = v2[70];
    v88 = v2[65];
    v89 = v2[63];
    v2[28] = v2[64];
    v2[29] = v88;
    v90 = v2[67];
    v2[30] = v2[66];
    v2[31] = v90;
    v91 = v2[61];
    v2[24] = v2[60];
    v2[25] = v91;
    v92 = v2[63];
    v94 = v2[60];
    v93 = v2[61];
    v95 = v2[62];
    v2[26] = v95;
    v2[27] = v92;
    v2[80] = v2[68];
    v2[81] = v2[69];
    v2[82] = v2[70];
    v2[76] = v2[64];
    v2[77] = v2[65];
    v2[78] = v2[66];
    v2[79] = v2[67];
    v2[72] = v94;
    v2[73] = v93;
    v2[74] = v95;
    v103 = v109;
    v111 = v109;
    v2[75] = v89;
    if (sub_1B15F1E28(v110) != 1)
    {
      v52 = v5 + 4;
      if (v3 < v42)
      {
        continue;
      }
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_1B15F0658(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v54 = MEMORY[0x1E69E7CC0];
    sub_1B15D54C8(0, v1, 0);
    v2 = v54;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[9];
      v6 = v4[7];
      v38 = v4[8];
      v39 = v5;
      v7 = v4[9];
      v40 = v4[10];
      v8 = v4[5];
      v9 = v4[3];
      v34 = v4[4];
      v35 = v8;
      v10 = v4[5];
      v11 = v4[7];
      v36 = v4[6];
      v37 = v11;
      v12 = v4[1];
      v31[0] = *v4;
      v31[1] = v12;
      v13 = v4[3];
      v15 = *v4;
      v14 = v4[1];
      v32 = v4[2];
      v33 = v13;
      v50 = v38;
      v51 = v7;
      v52 = v4[10];
      v46 = v34;
      v47 = v10;
      v48 = v36;
      v49 = v6;
      v42 = v15;
      v43 = v14;
      v41 = *(v4 + 22);
      v53 = *(v4 + 22);
      v44 = v32;
      v45 = v9;
      sub_1B15C37C0(v31, v29, &qword_1EB7530F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7530F0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7526D0);
      swift_dynamicCast();
      v44 = v29[2];
      v45 = v29[3];
      v42 = v29[0];
      v43 = v29[1];
      v48 = v29[6];
      v49 = v29[7];
      v46 = v29[4];
      v47 = v29[5];
      v51 = v29[9];
      v52 = v29[10];
      v50 = v29[8];
      v53 = v30;
      v17 = *(v2 + 16);
      v16 = *(v2 + 24);
      v54 = v2;
      if (v17 >= v16 >> 1)
      {
        sub_1B15D54C8((v16 > 1), v17 + 1, 1);
        v2 = v54;
      }

      *(v2 + 16) = v17 + 1;
      v18 = v2 + 184 * v17;
      v19 = v42;
      v20 = v43;
      v21 = v45;
      *(v18 + 64) = v44;
      *(v18 + 80) = v21;
      *(v18 + 32) = v19;
      *(v18 + 48) = v20;
      v22 = v46;
      v23 = v47;
      v24 = v49;
      *(v18 + 128) = v48;
      *(v18 + 144) = v24;
      *(v18 + 96) = v22;
      *(v18 + 112) = v23;
      v25 = v50;
      v26 = v51;
      v27 = v52;
      *(v18 + 208) = v53;
      *(v18 + 176) = v26;
      *(v18 + 192) = v27;
      *(v18 + 160) = v25;
      v4 = (v4 + 184);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B15F0880(unint64_t a1, uint64_t a2)
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

uint64_t sub_1B15F08D4@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1B15F17F4(__src, &__src[a2]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B1619AD8();
      swift_allocObject();
      v8 = sub_1B1619A88();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B1619B98();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

char *sub_1B15F099C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v18[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1B15C27E4(v6, v5);
      v18[0] = v6;
      LOWORD(v18[1]) = v5;
      BYTE2(v18[1]) = BYTE2(v5);
      BYTE3(v18[1]) = BYTE3(v5);
      BYTE4(v18[1]) = BYTE4(v5);
      BYTE5(v18[1]) = BYTE5(v5);
      BYTE6(v18[1]) = BYTE6(v5);
      result = a1(&v16, v18, v18 + BYTE6(v5));
      if (!v2)
      {
        result = v16;
      }

      v9 = LODWORD(v18[1]) | ((WORD2(v18[1]) | (BYTE6(v18[1]) << 16)) << 32);
      *v3 = v18[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B15C27E4(v6, v5);
    *v3 = xmmword_1B161DA90;
    sub_1B15C27E4(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_1B1619A98() && __OFSUB__(v6, sub_1B1619AC8()))
      {
LABEL_26:
        __break(1u);
      }

      sub_1B1619AD8();
      swift_allocObject();
      v13 = sub_1B1619A78();

      v11 = v13;
    }

    if (v12 >= v6)
    {

      v14 = sub_1B15F0E40(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        return v14;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_1B15C27E4(v6, v5);
    v16 = v6;
    v17 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B161DA90;
    sub_1B15C27E4(0, 0xC000000000000000);
    sub_1B1619B88();
    result = sub_1B15F0E40(*(v16 + 2), *(v16 + 3), a1);
    v10 = v17 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v16;
      v3[1] = v10;
      return result;
    }

    *v3 = v16;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v18, 0, 15);
  result = a1(&v16, v18, v18);
  if (!v2)
  {
    return v16;
  }

  return result;
}

_BYTE *sub_1B15F0D40@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B15F17F4(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B15F19E0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B15F1A5C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1B15F0DD4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1B15F0E40(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B1619A98();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B1619AC8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B1619AB8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1B15F0EF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a3;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B15DEE14;

  return sub_1B15EE02C(a1, a2, v12, a4, a5, a6);
}

uint64_t sub_1B15F0FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  *(v7 + 208) = a5;
  *(v7 + 216) = a6;
  *(v7 + 192) = a1;
  *(v7 + 200) = a4;
  v8 = a7[9];
  *(v7 + 144) = a7[8];
  *(v7 + 160) = v8;
  *(v7 + 176) = a7[10];
  v9 = a7[5];
  *(v7 + 80) = a7[4];
  *(v7 + 96) = v9;
  v10 = a7[7];
  *(v7 + 112) = a7[6];
  *(v7 + 128) = v10;
  v11 = a7[1];
  *(v7 + 16) = *a7;
  *(v7 + 32) = v11;
  v12 = a7[3];
  *(v7 + 48) = a7[2];
  *(v7 + 64) = v12;
  return MEMORY[0x1EEE6DFA0](sub_1B15F1018, 0, 0);
}

uint64_t sub_1B15F1018()
{
  v1 = v0[26];
  v2 = v0[24];
  *v2 = v0[25];
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1B15F111C;

  return (v5)(v2 + 1, v0 + 2);
}

uint64_t sub_1B15F111C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1B15F1248;
  }

  else
  {
    v2 = sub_1B15F1230;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B15F1260(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B1619E58();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B272F960](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1B15F12DC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    result = sub_1B161A198();
    if ((v3 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0xE000000000000000;
      a2[2] = 15;
      a2[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B15F132C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7530F0);
    v4 = sub_1B1619F48();
    v5 = v4;
    *(v4 + 16) = a2;
    v6 = *(v3 + 48);
    v8 = *v3;
    v7 = *(v3 + 16);
    *(v4 + 64) = *(v3 + 32);
    *(v4 + 80) = v6;
    *(v4 + 32) = v8;
    *(v4 + 48) = v7;
    v9 = *(v3 + 112);
    v11 = *(v3 + 64);
    v10 = *(v3 + 80);
    *(v4 + 128) = *(v3 + 96);
    *(v4 + 144) = v9;
    *(v4 + 96) = v11;
    *(v4 + 112) = v10;
    v13 = *(v3 + 144);
    v12 = *(v3 + 160);
    v14 = *(v3 + 128);
    *(v4 + 208) = *(v3 + 176);
    *(v4 + 176) = v13;
    *(v4 + 192) = v12;
    *(v4 + 160) = v14;
    v15 = a2 - 1;
    if (a2 != 1)
    {
      v16 = v4 + 216;
      do
      {
        sub_1B15C37C0(v3, v26, &qword_1EB7530F0);
        v17 = *v3;
        v18 = *(v3 + 16);
        v19 = *(v3 + 48);
        *(v16 + 32) = *(v3 + 32);
        *(v16 + 48) = v19;
        *v16 = v17;
        *(v16 + 16) = v18;
        v20 = *(v3 + 64);
        v21 = *(v3 + 80);
        v22 = *(v3 + 112);
        *(v16 + 96) = *(v3 + 96);
        *(v16 + 112) = v22;
        *(v16 + 64) = v20;
        *(v16 + 80) = v21;
        v23 = *(v3 + 128);
        v24 = *(v3 + 144);
        v25 = *(v3 + 160);
        *(v16 + 176) = *(v3 + 176);
        *(v16 + 144) = v24;
        *(v16 + 160) = v25;
        *(v16 + 128) = v23;
        v16 += 184;
        --v15;
      }

      while (v15);
    }

    sub_1B15C37C0(v3, v26, &qword_1EB7530F0);
    return v5;
  }

  return result;
}

uint64_t sub_1B15F147C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1619F38();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1B1619F88();
    return v8;
  }

  return result;
}

uint64_t sub_1B15F1580(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = v2[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B15DFB94;

  return sub_1B15EEC20(a1, a2, v8, v9, v10, v11, v6, v7);
}

unint64_t sub_1B15F1670()
{
  result = qword_1EB752BB8;
  if (!qword_1EB752BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752BB8);
  }

  return result;
}

uint64_t sub_1B15F16C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752A88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B15F1734(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1B15F17A0()
{
  result = qword_1EDB2F518;
  if (!qword_1EDB2F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F518);
  }

  return result;
}

uint64_t sub_1B15F17F4(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1B15F18AC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1B1619AD8();
      swift_allocObject();
      sub_1B1619AA8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B1619B98();
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

void *sub_1B15F194C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1B15F0DD4(sub_1B15F1AE0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1B15F19B4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B15C27E4(a1, a2);
  }

  return a1;
}

uint64_t sub_1B15F19C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B15F19E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B1619AD8();
  swift_allocObject();
  result = sub_1B1619A88();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B1619B98();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B15F1A5C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1B1619AD8();
  swift_allocObject();
  result = sub_1B1619A88();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

double sub_1B15F1B00(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1B15F1B20(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 80) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B15DFB94;

  return sub_1B15EF9C0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1B15F1C6C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1B15DEE14;

  return sub_1B15F0EF4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1B15F1D48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B15DFB94;

  return sub_1B15F0FC4(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

uint64_t sub_1B15F1E28(uint64_t a1)
{
  v1 = *(a1 + 56);
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

double sub_1B15F1E4C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

unint64_t sub_1B15F1E78()
{
  result = qword_1EB753360;
  if (!qword_1EB753360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB753360);
  }

  return result;
}

unint64_t sub_1B15F1ECC()
{
  result = qword_1EDB2F460;
  if (!qword_1EDB2F460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F460);
  }

  return result;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B15F1F7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 66))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B15F1FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 65) = a2 + 1;
    }
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

uint64_t sub_1B15F204C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B15F2094(uint64_t result, int a2, int a3)
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
      *(result + 56) = (a2 - 1);
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

unint64_t sub_1B15F210C()
{
  result = qword_1EB752C38;
  if (!qword_1EB752C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752C38);
  }

  return result;
}

unint64_t sub_1B15F2160()
{
  result = qword_1EDB2F738;
  if (!qword_1EDB2F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F738);
  }

  return result;
}

unint64_t sub_1B15F21B4()
{
  result = qword_1EDB2F4E0;
  if (!qword_1EDB2F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F4E0);
  }

  return result;
}

unint64_t sub_1B15F2208()
{
  result = qword_1EDB2F520;
  if (!qword_1EDB2F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F520);
  }

  return result;
}

unint64_t sub_1B15F225C()
{
  result = qword_1EDB2F3C8;
  if (!qword_1EDB2F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F3C8);
  }

  return result;
}

uint64_t sub_1B15F22B0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB752C48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B15F2328()
{
  result = qword_1EDB2F468;
  if (!qword_1EDB2F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F468);
  }

  return result;
}

uint64_t sub_1B15F237C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x46746E65746E6F63 && a2 == 0xEC000000656D6172;
  if (v4 || (sub_1B161A448() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4673746365666665 && a2 == 0xEC000000656D6172 || (sub_1B161A448() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x754F736B636F6E6BLL && a2 == 0xEF726564726F4274)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B161A448();

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

uint64_t sub_1B15F24A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB752C58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B15F2714();
  sub_1B161A508();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  type metadata accessor for CGRect(0);
  v22 = 0;
  sub_1B15F2768(&qword_1EDB2F4A0, type metadata accessor for CGRect);
  sub_1B161A398();
  v16 = v19;
  v17 = v18;
  v22 = 1;
  sub_1B161A368();
  v14 = v19;
  v15 = v18;
  v21 = v20;
  LOBYTE(v18) = 2;
  v9 = sub_1B161A378();
  (*(v6 + 8))(v8, v5);
  v10 = v21;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v12 = v16;
  *a2 = v17;
  *(a2 + 16) = v12;
  v13 = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v13;
  *(a2 + 64) = v10;
  *(a2 + 65) = v9 & 1;
  return result;
}

unint64_t sub_1B15F2714()
{
  result = qword_1EDB2F750;
  if (!qword_1EDB2F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F750);
  }

  return result;
}

uint64_t sub_1B15F2768(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ICRIconPlatform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICRIconPlatform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICRRenderingParameters.SDFMethod(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICRRenderingParameters.SDFMethod(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B15F2A60()
{
  result = qword_1EB752C68;
  if (!qword_1EB752C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752C68);
  }

  return result;
}

unint64_t sub_1B15F2AB8()
{
  result = qword_1EB752C70;
  if (!qword_1EB752C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752C70);
  }

  return result;
}

unint64_t sub_1B15F2B10()
{
  result = qword_1EDB2F740;
  if (!qword_1EDB2F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F740);
  }

  return result;
}

unint64_t sub_1B15F2B68()
{
  result = qword_1EDB2F748;
  if (!qword_1EDB2F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F748);
  }

  return result;
}

unint64_t sub_1B15F2BC0()
{
  result = qword_1EDB2F728;
  if (!qword_1EDB2F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F728);
  }

  return result;
}

unint64_t sub_1B15F2C18()
{
  result = qword_1EDB2F730;
  if (!qword_1EDB2F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB2F730);
  }

  return result;
}

uint64_t sub_1B15F2C74@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B15F2CCC()
{
  v0 = sub_1B1619D18();
  __swift_allocate_value_buffer(v0, qword_1EB752C78);
  __swift_project_value_buffer(v0, qword_1EB752C78);
  return sub_1B1619D08();
}

void GlobalConfiguration.lightDirection.setter(double a1, double a2, double a3)
{
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
}

double GlobalConfiguration.lightAngle.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v0 + 24) != 0.0)
  {
    if (qword_1EB7525C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B1619D18();
    __swift_project_value_buffer(v3, qword_1EB752C78);
    v4 = sub_1B1619CF8();
    v5 = sub_1B161A088();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1B15BF000, v4, v5, "lightAngle only returns longitude, but non-zero latitude found", v6, 2u);
      MEMORY[0x1B2730CA0](v6, -1, -1);
    }
  }

  return atan2(v1, v2);
}

double GlobalConfiguration.lightAngles.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = asin(v0[3]);
  atan2(v1, v2);
  return v3;
}

void GlobalConfiguration.lightAngles.setter(double a1, double a2)
{
  v4 = __sincos_stret(a2);
  v5 = __sincos_stret(a1);
  v2[1] = v5.__cosval * v4.__sinval;
  v2[2] = v5.__cosval * v4.__cosval;
  v2[3] = v5.__sinval;
}

void (*GlobalConfiguration.lightAngle.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = GlobalConfiguration.lightAngle.getter();
  return sub_1B15F3078;
}

void sub_1B15F3078(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 8) = __sincos_stret(*a1);
  *(v1 + 24) = 0;
}

void (*GlobalConfiguration.lightAngles.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = asin(v1[3]);
  v6 = atan2(v3, v4);
  *a1 = v5;
  *(a1 + 8) = v6;
  return sub_1B15F3118;
}

void sub_1B15F3118(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *a1;
  v3 = __sincos_stret(*(a1 + 8));
  v4 = __sincos_stret(v2);
  v1[1] = v4.__cosval * v3.__sinval;
  v1[2] = v4.__cosval * v3.__cosval;
  v1[3] = v4.__sinval;
}

uint64_t GlobalConfiguration.relativeIconInset.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

double GlobalConfiguration.init(appearance:renderingMode:lightAngle:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = __sincos_stret(a2);
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 34) = 0;
  *&result = 1503;
  *(a1 + 40) = xmmword_1B161E0A0;
  *(a1 + 56) = 513;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

double GlobalConfiguration.init(lightAngle:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = __sincos_stret(a2);
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 34) = 0;
  *&result = 1503;
  *(a1 + 40) = xmmword_1B161E0A0;
  *(a1 + 56) = 513;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return result;
}

void GlobalConfiguration.init(lightIntensity:lightDirection:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *(a1 + 32) = 1;
  *(a1 + 34) = 0;
  *(a1 + 40) = xmmword_1B161E0A0;
  *(a1 + 56) = 513;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
}

double GlobalConfiguration.init(lightAngle:drawMitigatedVersion:)@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = __sincos_stret(a3);
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = v5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  *(a2 + 33) = a1;
  *(a2 + 34) = 0;
  *&result = 1503;
  *(a2 + 40) = xmmword_1B161E0A0;
  *(a2 + 56) = 513;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t GlobalConfiguration.init(lightIntensity:lightDirection:drawMitigatedVersion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *(a2 + 32) = 1;
  *(a2 + 34) = 0;
  *(a2 + 40) = xmmword_1B161E0A0;
  *(a2 + 56) = 513;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 33) = result;
  return result;
}

double GlobalConfiguration.init(lightIntensity:lightDirection:drawMitigatedVersion:forceEnableEnhancedGlass:)@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 24) = a6;
  *(a2 + 32) = 1;
  *(a2 + 33) = a1;
  *(a2 + 34) = 0;
  *&result = 1503;
  *(a2 + 40) = xmmword_1B161E0A0;
  *(a2 + 56) = 513;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return result;
}

uint64_t GlobalConfiguration.forLayer(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  v16 = v2[3];
  v17 = v4;
  v5 = *v2;
  v14[1] = v2[1];
  v15 = v3;
  v14[0] = v5;
  v6 = BYTE9(v16);
  v7 = *&v16;
  if (a1)
  {
    if (BYTE8(v16))
    {
      v7 = 0.0;
    }

    v13 = 0;
  }

  else
  {
    v8 = *&v16;
    if (BYTE8(v16))
    {
      v8 = 0.0;
    }

    v7 = v8;
    v13 = 0;
    if (BYTE9(v16) == 2)
    {
      if (v8 <= 0.0)
      {
        v6 = 0;
      }

      else
      {
        v6 = BYTE1(v15);
      }
    }
  }

  v9 = v13;
  v10 = v2[1];
  *a2 = *v2;
  *(a2 + 16) = v10;
  *(a2 + 32) = v2[2];
  *(a2 + 48) = v7;
  *(a2 + 56) = v9;
  *(a2 + 57) = v6 & 1;
  *(a2 + 58) = *(v2 + 58);
  *(a2 + 72) = *(v2 + 9);
  return sub_1B15F354C(v14, v12);
}

unint64_t sub_1B15F3588()
{
  result = qword_1EB752C90;
  if (!qword_1EB752C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752C90);
  }

  return result;
}

unint64_t sub_1B15F35E0()
{
  result = qword_1EB752C98;
  if (!qword_1EB752C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752C98);
  }

  return result;
}

unint64_t sub_1B15F3638()
{
  result = qword_1EB752CA0;
  if (!qword_1EB752CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752CA0);
  }

  return result;
}

unint64_t sub_1B15F3690()
{
  result = qword_1EB752CA8;
  if (!qword_1EB752CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB752CA8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B15F3700(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B15F375C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlobalConfiguration.RenderingSteps(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlobalConfiguration.RenderingSteps(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B15F382C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B15F3864(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t Icon.init(name:chiclet:layers:canvasSize:appearance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v8 = *(a3 + 32);
  *(a6 + 72) = *(a3 + 48);
  v9 = *(a3 + 80);
  *(a6 + 88) = *(a3 + 64);
  *(a6 + 104) = v9;
  v10 = *(a3 + 16);
  *(a6 + 24) = *a3;
  *(a6 + 40) = v10;
  *(a6 + 16) = 1;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 120) = *(a3 + 96);
  *(a6 + 56) = v8;
  *(a6 + 128) = a4;
  *(a6 + 136) = a7;
  *(a6 + 144) = a8;
  *(a6 + 152) = a5;
  return result;
}

__n128 Icon.Layer.init(elements:opacity:blendMode:material:performsLightingByElement:appearance:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *(a6 + 8) = a7;
  result = *a3;
  v8 = *(a3 + 16);
  *(a6 + 24) = *a3;
  v9 = *a2;
  *a6 = a1;
  *(a6 + 16) = v9;
  *(a6 + 40) = v8;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  return result;
}

__n128 static Icon.Fill.solid(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 96) = 0;
  return result;
}

__n128 static Icon.Fill.automaticGradient(of:placement:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 32);
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 32) = *a2;
  *(a3 + 48) = v6;
  *(a3 + 64) = v3;
  *(a3 + 96) = 64;
  return result;
}

__n128 static Icon.Fill.gradient(start:end:placement:)@<Q0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 32) | 0x80;
  v5 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v5;
  v6 = a2[1];
  *(a4 + 32) = *a2;
  *(a4 + 48) = v6;
  result = *a3;
  v8 = *(a3 + 16);
  *(a4 + 64) = *a3;
  *(a4 + 80) = v8;
  *(a4 + 96) = v4;
  return result;
}

IconRendering::Icon::GlassMaterial __swiftcall Icon.GlassMaterial.init(hasSpecular:shadowStyle:shadowOpacity:translucency:blurStrength:)(Swift::Bool hasSpecular, IconRendering::Icon::GlassMaterial::ShadowStyle shadowStyle, Swift::Double shadowOpacity, Swift::Double translucency, Swift::Double blurStrength)
{
  v6 = *shadowStyle;
  *v5 = hasSpecular;
  *(v5 + 1) = v6;
  *(v5 + 8) = shadowOpacity;
  *(v5 + 16) = translucency;
  *(v5 + 24) = blurStrength;
  result.blurStrength = blurStrength;
  result.translucency = translucency;
  result.shadowOpacity = shadowOpacity;
  result.hasSpecular = hasSpecular;
  return result;
}

IconRendering::Icon::GradientPlacement __swiftcall Icon.GradientPlacement.init(start:end:)(CGPoint start, CGPoint end)
{
  *v2 = start.x;
  v2[1] = start.y;
  v2[2] = end.x;
  v2[3] = end.y;
  result.end.y = end.y;
  result.end.x = end.x;
  result.start.y = start.y;
  result.start.x = start.x;
  return result;
}

id static Icon.Element.Contents.image(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  return a1;
}

uint64_t Icon.Element.init(contents:bounds:fill:opacity:blendMode:participatesInGlass:appearance:layoutDirection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v9 = *(result + 8);
  v10 = *a4;
  v11 = *a7;
  *(a8 + 16) = *result;
  *(a8 + 24) = v9;
  v12 = *(a2 + 16);
  *(a8 + 40) = *a2;
  *(a8 + 56) = v12;
  *(a8 + 72) = *(a2 + 32);
  v13 = *(a3 + 80);
  *(a8 + 144) = *(a3 + 64);
  *(a8 + 160) = v13;
  *(a8 + 176) = *(a3 + 96);
  v14 = *(a3 + 16);
  *(a8 + 80) = *a3;
  *(a8 + 96) = v14;
  v15 = *(a3 + 48);
  *(a8 + 112) = *(a3 + 32);
  *(a8 + 128) = v15;
  *a8 = a9;
  *(a8 + 8) = v10;
  *(a8 + 25) = a5;
  *(a8 + 32) = a6;
  *(a8 + 177) = v11;
  return result;
}

id static Icon.Element.Contents.svg(_:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 2;
  return a1;
}

uint64_t static Icon.Fill.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v10 = *(a2 + 96);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  return _s13IconRendering0A0V4FillV8ContentsO2eeoiySbAG_AGtFZ_0(v11, v9) & 1;
}

uint64_t sub_1B15F3AF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 64);
  v4 = (a2 + 64);
  while (v2)
  {
    result = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v3 - 4), *(v4 - 4)), vceqq_f64(*(v3 - 2), *(v4 - 2))))) & (*v3 == *v4);
    v5 = result != 1 || v2-- == 1;
    v3 += 5;
    v4 += 5;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B15F3B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v4 = a1 + 32;
    v5 = a2 + 32;
    v57 = a2 + 32;
    for (i = a1 + 32; ; v4 = i)
    {
      v6 = (v4 + 72 * v3);
      v7 = *v6;
      v93 = v6[1];
      v8 = v6[3];
      v94 = v6[2];
      v95 = v8;
      v92 = v7;
      v9 = (v5 + 72 * v3);
      v10 = v9[2];
      v100 = v9[3];
      v99 = v10;
      v11 = *v9;
      v98 = v9[1];
      v96 = *(v6 + 8);
      v101 = *(v9 + 8);
      v97 = v11;
      v12 = v92;
      v13 = v11;
      v14 = *(v92 + 16);
      if (v14 != *(v11 + 16))
      {
        break;
      }

      if (v14 && v92 != v11)
      {
        sub_1B15C7FBC(&v92, v90);
        result = sub_1B15C7FBC(&v97, v90);
        if (*(v12 + 16))
        {
          v16 = 0;
          v17 = (v12 + 32);
          v18 = (v13 + 32);
          v19 = v14 - 1;
          while (1)
          {
            v20 = *v17;
            v21 = v17[1];
            v22 = v17[3];
            v84[2] = v17[2];
            v84[3] = v22;
            v84[0] = v20;
            v84[1] = v21;
            v23 = v17[4];
            v24 = v17[5];
            v25 = v17[7];
            v84[6] = v17[6];
            v84[7] = v25;
            v84[4] = v23;
            v84[5] = v24;
            v26 = v17[8];
            v27 = v17[9];
            v28 = v17[10];
            v85 = *(v17 + 88);
            v84[9] = v27;
            v84[10] = v28;
            v84[8] = v26;
            v29 = v17[9];
            v80 = v17[8];
            v81 = v29;
            v82 = v17[10];
            v83 = *(v17 + 88);
            v30 = v17[5];
            v76 = v17[4];
            v77 = v30;
            v31 = v17[7];
            v78 = v17[6];
            v79 = v31;
            v32 = v17[1];
            v72 = *v17;
            v73 = v32;
            v33 = v17[3];
            v74 = v17[2];
            v75 = v33;
            if (v16 >= *(v13 + 16))
            {
              break;
            }

            v34 = *v18;
            v35 = v18[1];
            v36 = v18[3];
            v86[2] = v18[2];
            v86[3] = v36;
            v86[0] = v34;
            v86[1] = v35;
            v37 = v18[4];
            v38 = v18[5];
            v39 = v18[7];
            v86[6] = v18[6];
            v86[7] = v39;
            v86[4] = v37;
            v86[5] = v38;
            v40 = v18[8];
            v41 = v18[9];
            v42 = v18[10];
            v87 = *(v18 + 88);
            v86[9] = v41;
            v86[10] = v42;
            v86[8] = v40;
            v43 = v18[9];
            v68 = v18[8];
            v69 = v43;
            v70 = v18[10];
            v71 = *(v18 + 88);
            v44 = v18[5];
            v64 = v18[4];
            v65 = v44;
            v45 = v18[7];
            v66 = v18[6];
            v67 = v45;
            v46 = v18[1];
            v60 = *v18;
            v61 = v46;
            v47 = v18[3];
            v62 = v18[2];
            v63 = v47;
            sub_1B15C9418(v84, v59);
            sub_1B15C9418(v86, v59);
            v48 = _s13IconRendering0A0V7ElementV2eeoiySbAE_AEtFZ_0(&v72, &v60);
            v88[8] = v68;
            v88[9] = v69;
            v88[10] = v70;
            v89 = v71;
            v88[4] = v64;
            v88[5] = v65;
            v88[6] = v66;
            v88[7] = v67;
            v88[0] = v60;
            v88[1] = v61;
            v88[2] = v62;
            v88[3] = v63;
            sub_1B15CB1E8(v88);
            v90[8] = v80;
            v90[9] = v81;
            v90[10] = v82;
            v91 = v83;
            v90[5] = v77;
            v90[6] = v78;
            v90[7] = v79;
            v90[0] = v72;
            v90[1] = v73;
            v90[2] = v74;
            v90[3] = v75;
            v90[4] = v76;
            result = sub_1B15CB1E8(v90);
            if (!v48)
            {
              goto LABEL_32;
            }

            if (v19 == v16)
            {
              goto LABEL_16;
            }

            v18 = (v18 + 184);
            v17 = (v17 + 184);
            if (++v16 >= *(v12 + 16))
            {
              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          __break(1u);
        }

        __break(1u);
        return result;
      }

      sub_1B15C7FBC(&v92, v90);
      sub_1B15C7FBC(&v97, v90);
LABEL_16:
      if (*(&v92 + 1) != *(&v97 + 1) || v93 != v98)
      {
LABEL_32:
        sub_1B15CA744(&v97);
        sub_1B15CA744(&v92);
        return 0;
      }

      v49 = BYTE9(v93);
      v50 = BYTE8(v98);
      if (BYTE8(v93) == 2)
      {
        sub_1B15CA744(&v97);
        sub_1B15CA744(&v92);
        if (v50 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (BYTE8(v98) == 2)
        {
          goto LABEL_32;
        }

        v51 = v94;
        v52 = *&v95;
        v53 = BYTE9(v98);
        v54 = v99;
        v55 = BYTE8(v93) & 1;
        v56 = *&v100;
        sub_1B15CA744(&v97);
        sub_1B15CA744(&v92);
        if (v55 != (v50 & 1) || v53 != v49 || *&v51 != *&v54 || *(&v51 + 1) != *(&v54 + 1) || v52 != v56)
        {
          return 0;
        }
      }

      if (BYTE8(v95) != BYTE8(v100) || v96 != v101)
      {
        return 0;
      }

      if (++v3 == v2)
      {
        return 1;
      }

      v5 = v57;
    }
  }

  return 0;
}

uint64_t Icon.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Icon.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 Icon.chiclet.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 72);
  v3 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 120);
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = result;
  return result;
}

__n128 Icon.chiclet.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v1 + 72) = *(a1 + 48);
  v3 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v3;
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v5;
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 56) = v2;
  return result;
}

uint64_t Icon.layers.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t Icon.init(chiclet:layers:canvasSize:appearance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = *(result + 32);
  *(a4 + 72) = *(result + 48);
  v7 = *(result + 80);
  *(a4 + 88) = *(result + 64);
  *(a4 + 104) = v7;
  v8 = *(result + 16);
  *(a4 + 24) = *result;
  *(a4 + 40) = v8;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 120) = *(result + 96);
  *(a4 + 56) = v6;
  *(a4 + 128) = a2;
  *(a4 + 136) = a5;
  *(a4 + 144) = a6;
  *(a4 + 152) = a3;
  return result;
}

uint64_t Icon.Layer.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

__n128 Icon.Layer.material.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 Icon.Layer.material.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

id Icon.Element.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

void Icon.Element.contents.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

__n128 Icon.Element.bounds.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 Icon.Element.bounds.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

__n128 Icon.Element.fill.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  *(a1 + 64) = *(v1 + 144);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 176);
  v3 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = v3;
  result = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = result;
  return result;
}

__n128 Icon.Element.fill.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 144) = *(a1 + 64);
  *(v1 + 160) = v2;
  *(v1 + 176) = *(a1 + 96);
  v3 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v3;
  result = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = result;
  return result;
}