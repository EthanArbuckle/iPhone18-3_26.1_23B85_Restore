unint64_t sub_25838AB14()
{
  result = qword_27F927F98;
  if (!qword_27F927F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F927F98);
  }

  return result;
}

uint64_t *MetalBundle.library.unsafeMutableAddressor()
{
  if (qword_27F9279C0 != -1)
  {
    swift_once();
  }

  return &static MetalBundle.library;
}

id sub_25838ABB0()
{
  type metadata accessor for MetalBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27F928170 = result;
  return result;
}

id sub_25838AC04()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    static MetalBundle.device = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *MetalBundle.device.unsafeMutableAddressor()
{
  if (qword_27F9279B8 != -1)
  {
    swift_once();
  }

  return &static MetalBundle.device;
}

id sub_25838ACA0()
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (qword_27F9279B8 != -1)
  {
    swift_once();
  }

  v0 = static MetalBundle.device;
  v1 = qword_27F9279B0;
  swift_unknownObjectRetain();
  if (v1 != -1)
  {
    swift_once();
  }

  v7[0] = 0;
  v2 = qword_27F928170;
  v3 = [v0 newDefaultLibraryWithBundle:v2 error:v7];
  swift_unknownObjectRelease();

  v4 = v7[0];
  if (v3)
  {
    static MetalBundle.library = v3;

    return v4;
  }

  else
  {
    v6 = v7[0];
    sub_2584282A0();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_25838AE2C(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

id sub_25838AEC8(uint64_t a1)
{
  *(v1 + 88) = a1;
  *(v1 + 96) = 0;
  v3 = *(a1 + 32);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = sub_25838B524(Strong, v5);

  swift_unknownObjectRelease();
  *(v1 + 48) = v6;
  result = [v3 newBufferWithLength:9216 options:0];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v1 + 40) = result;
  result = [v3 newBufferWithLength:18432 options:0];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v1 + 56) = result;
  v8 = result;
  v9 = [swift_unknownObjectRetain() contents];
  v10 = v8;
  *(v1 + 64) = v9;
  result = [v3 newBufferWithLength:4608 options:0];
  if (result)
  {
    *(v1 + 72) = result;
    v11 = result;
    v12 = [swift_unknownObjectRetain() contents];
    result = v11;
    *(v1 + 80) = v12;
    v13 = MEMORY[0x277D84F90];
    *(v1 + 32) = 257;
    *(v1 + 34) = 1;
    v14 = qword_27F927FE8;
    *(v1 + 16) = qword_27F927FE8;
    *(v1 + 24) = v13;
    if (v14 != -1)
    {
      qword_27F927FE8 = v14 + 1;
      swift_unknownObjectRelease();

      return v1;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DebugLocalNode.didUpdate(frame:)(ARFrame frame)
{
  v2 = [(objc_class *)frame.super.isa capturedPointCloudData];
  if (!v2)
  {
    return;
  }

  v15 = v2;
  v3 = [v2 depthPointCloud];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 cameraPixels];

    if (v5)
    {
      v6 = [v15 depthPointCloud];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 confidences];

        if (v8)
        {
          v9 = v1;
          v10 = *(sub_258428C30() + 16);

          *(v9 + 96) = v10;
          sub_25838B48C(v5, v10, *(v9 + 40));
          v11 = *(v9 + 64);
          v12 = sub_258428C30();
          v13 = *(v9 + 96);
          if ((v13 - 0x800000000000000) >> 60 == 15)
          {
            memcpy(v11, (v12 + 32), 16 * v13);

            v14 = *(v9 + 96);
            if ((v14 - 0x2000000000000000) >> 62 == 3)
            {
              memcpy(*(v9 + 80), v8, 4 * v14);
              goto LABEL_9;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return;
        }
      }
    }
  }

LABEL_9:
}

void DebugLocalNode.draw(commandBuffer:)(void *a1)
{
  v2 = v1[6];
  if (v2)
  {
    v3 = v1;
    v5 = v1[11];
    swift_unknownObjectRetain();
    v6 = MetalScene.makeDefaultRenderPassDescriptor()();
    if (v6)
    {
      v9 = v6;
      v7 = [a1 renderCommandEncoderWithDescriptor_];
      if (v7)
      {
        v8 = v7;
        [v7 setRenderPipelineState_];
        swift_beginAccess();
        [v8 setVertexBuffer:*(v5 + 192) offset:0 atIndex:0];
        [v8 setVertexBuffer:v3[5] offset:0 atIndex:1];
        [v8 setVertexBuffer:v3[7] offset:0 atIndex:2];
        [v8 setVertexBuffer:v3[9] offset:0 atIndex:3];
        [v8 drawPrimitives:0 vertexStart:0 vertexCount:v3[12]];
        [v8 endEncoding];
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

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_25838B37C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t DebugLocalNode.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t DebugLocalNode.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_25838B48C(float64x2_t *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v6 = [a3 contents];
  result = a3;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    for (; a2; --a2)
    {
      v8 = *a1++;
      *v6++ = vcvt_f32_f64(v8);
    }
  }

  return result;
}

id sub_25838B524(void *a1, void *a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v4 setAlphaToCoverageEnabled_];
  v5 = sub_258428630();
  v6 = [a2 newFunctionWithName_];

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  [v4 setVertexFunction_];
  swift_unknownObjectRelease();
  v7 = sub_258428630();
  v8 = [a2 newFunctionWithName_];

  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v4 setFragmentFunction_];
  swift_unknownObjectRelease();
  [v4 setDepthAttachmentPixelFormat_];
  v9 = [v4 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript_];

  if (!v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v10 setPixelFormat_];

  v11 = [v4 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript_];

  if (!v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v12 setBlendingEnabled_];

  v13 = [v4 colorAttachments];
  v14 = [v13 objectAtIndexedSubscript_];

  if (!v14)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  [v14 setDestinationRGBBlendFactor_];

  v15 = [v4 colorAttachments];
  v16 = [v15 objectAtIndexedSubscript_];

  if (!v16)
  {
    goto LABEL_19;
  }

  [v16 setDestinationAlphaBlendFactor_];

  [v4 setDepthAttachmentPixelFormat_];
  v17 = [a1 device];
  if (!v17)
  {

    return 0;
  }

  v23[0] = 0;
  v18 = [v17 newRenderPipelineStateWithDescriptor:v4 error:v23];
  swift_unknownObjectRelease();
  v19 = v23[0];
  if (!v18)
  {
    v20 = v19;
    v21 = sub_2584282A0();

    swift_willThrow();
    return 0;
  }

  return v18;
}

uint64_t static CVUtil.makeWeights(srcBuffer:dstBuffer:tempBuffer:kernel:kernelWidth:kernelHeight:)@<X0>(void *a1@<X0>, int64_t a2@<X1>, vImagePixelCount a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v34 = *MEMORY[0x277D85DE8];
  v16 = *a5;
  v17 = *(a5 + 8);
  v18 = *(a5 + 16);
  v19 = *(a5 + 24);
  if (a11)
  {
    v20 = a8;
  }

  else
  {
    v20 = a10;
  }

  src.data = a1;
  src.height = a2;
  src.width = a3;
  src.rowBytes = a4;
  v21 = *(a5 + 32);
  if (v21)
  {
    v22 = a2;
    if (a2 < 0)
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v23 = a4;
    if ((a2 * a4) >> 64 != (a2 * a4) >> 63)
    {
      goto LABEL_25;
    }

    v24 = a3;
    v16 = malloc(a2 * a4);
  }

  else
  {
    v22 = v17;
    v24 = v18;
    v23 = v19;
  }

  dest.data = v16;
  dest.height = v22;
  dest.width = v24;
  dest.rowBytes = v23;
  if (v20 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v20 | a8) < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (a8 > 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  divisor = *(a7 + 16);
  if (divisor >> 31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = vImageConvolve_Planar8(&src, &dest, a6, 0, 0, (a7 + 32), v20, a8, divisor, 0, 4u);
  v27 = result;
  if (!result)
  {
    v30 = *&dest.data;
    v31 = *&dest.width;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_25842CCB0;
  sub_258428FC0();

  v29 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v29);

  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 32) = 0xD00000000000001ELL;
  *(v28 + 40) = 0x80000002584343F0;
  sub_2584293A0();

  v30 = 0uLL;
  if ((v21 & 1) == 0)
  {
    v31 = 0uLL;
    goto LABEL_19;
  }

  result = dest.data;
  if (dest.data)
  {
    result = MEMORY[0x259C7FB80](dest.data, -1, -1);
    v31 = 0uLL;
    v30 = 0uLL;
LABEL_19:
    *a9 = v30;
    *(a9 + 16) = v31;
    *(a9 + 32) = v27 != 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static CVUtil.emboss(srcBuffer:dstBuffer:tempBuffer:flags:)@<X0>(void *a1@<X0>, int64_t a2@<X1>, vImagePixelCount a3@<X2>, int64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = *MEMORY[0x277D85DE8];
  src.data = a1;
  src.height = a2;
  src.width = a3;
  src.rowBytes = a4;
  v11 = *(a5 + 32);
  if (v11)
  {
    v12 = a2;
    if (a2 < 0)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
    }

    v13 = a4;
    if ((a2 * a4) >> 64 != (a2 * a4) >> 63)
    {
      goto LABEL_18;
    }

    v14 = a3;
    v15 = malloc(a2 * a4);
  }

  else
  {
    v15 = *a5;
    v12 = *(a5 + 8);
    v14 = *(a5 + 16);
    v13 = *(a5 + 24);
  }

  dest.data = v15;
  dest.height = v12;
  dest.width = v14;
  dest.rowBytes = v13;
  if ((a7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(a7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = vImageConvolve_Planar8(&src, &dest, a6, 0, 0, word_28697E3D8, 3u, 3u, 1, 0, a7);
  v17 = result;
  if (!result)
  {
    v20 = *&dest.data;
    v21 = *&dest.width;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25842CCB0;
  sub_258428FC0();

  v19 = sub_2584292B0();
  MEMORY[0x259C7DFF0](v19);

  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 32) = 0xD00000000000001ELL;
  *(v18 + 40) = 0x80000002584343F0;
  sub_2584293A0();

  v20 = 0uLL;
  if ((v11 & 1) == 0)
  {
    v21 = 0uLL;
    goto LABEL_14;
  }

  result = dest.data;
  if (dest.data)
  {
    result = MEMORY[0x259C7FB80](dest.data, -1, -1);
    v21 = 0uLL;
    v20 = 0uLL;
LABEL_14:
    *a8 = v20;
    *(a8 + 16) = v21;
    *(a8 + 32) = v17 != 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t static CVUtil.getImageWeight(image:in:)(uint64_t result, uint64_t a2, uint64_t a3, double a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *a9;
  v10 = *(a9 + 8);
  v12 = *(a9 + 16);
  v11 = *(a9 + 24);
  if (*(a7 + 32) & 1) != 0 || (*(a9 + 32))
  {
    if ((a3 | a2) < 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if ((a3 * a2) >> 64 != (a3 * a2) >> 63)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v13 = a3 - 1;
    v14 = a2 - 1;
    if (*(a9 + 32))
    {
      if (*(a8 + 32))
      {
        v15 = 0;
        v16 = 0;
LABEL_25:
        if (v13 < v15 || v14 < v16)
        {
          goto LABEL_46;
        }

        v24 = 0.0;
        while (1)
        {
          v25 = v16 * a3;
          if ((v16 * a3) >> 64 != (v16 * a3) >> 63)
          {
            break;
          }

          if (__OFADD__(v25, v15))
          {
            goto LABEL_42;
          }

          LOBYTE(a5) = *(result + v25 + v15);
          a5 = LODWORD(a5);
          v24 = v24 + a5;
          if (v13 != v15)
          {
            if (v13 <= v15)
            {
              goto LABEL_43;
            }

            v26 = v15 + 1;
            v27 = v13 - v15;
            while (!__OFADD__(v25, v26))
            {
              LOBYTE(a5) = *(result + v25 + v26);
              a5 = LODWORD(a5);
              v24 = v24 + a5;
              ++v26;
              if (!--v27)
              {
                goto LABEL_35;
              }
            }

            __break(1u);
            break;
          }

LABEL_35:
          if (v16 == v14)
          {
            return result;
          }

          v20 = __OFADD__(v16++, 1);
          if (v20)
          {
            __break(1u);
            return result;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v9 = *a8;
      v10 = *(a8 + 8);
      v12 = *(a8 + 16);
      v11 = *(a8 + 24);
    }

    v19 = v9 + v12;
    if (__OFADD__(v9, v12))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v20 = __OFSUB__(v19, 1);
    v21 = v19 - 1;
    if (v20)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    if (v21 < v13)
    {
      v13 = v21;
    }

    v22 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      goto LABEL_49;
    }

    v20 = __OFSUB__(v22, 1);
    v23 = v22 - 1;
    if (v20)
    {
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v23 < v14)
    {
      v14 = v23;
    }

    if ((v12 * v11) >> 64 != (v12 * v11) >> 63)
    {
      goto LABEL_51;
    }

    v16 = v10 & ~(v10 >> 63);
    v15 = v9 & ~(v9 >> 63);
    goto LABEL_25;
  }

  if (__OFADD__(v9, v12 / 2))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v17 = v10 + v11 / 2;
  if (__OFADD__(v10, v11 / 2))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v18 = *(a7 + 16);
  if (v18 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v17 * v18) >> 64 != (v17 * v18) >> 63)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (__OFADD__(v17 * v18, v9 + v12 / 2))
  {
LABEL_56:
    __break(1u);
  }

  return result;
}

void static CVUtil.matchTemplate(image:template:templateWeight:along:linePoints:minMatchingThreshold:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, float a12@<S4>, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18)
{
  v100 = *a16;
  v101 = *(a16 + 8);
  v26 = *(a16 + 16);
  v27 = *(a16 + 24);
  sub_2583A9780(v102, a8, a9, a10, a11);
  if ((v105 & 1) == 0 && (*(a16 + 32) & 1) == 0)
  {
    if (((a3 | a2) & 0x8000000000000000) == 0)
    {
      v98 = v102[0];
      v99 = v102[1];
      v34 = (v26 * v27) >> 64;
      v35 = v103;
      v36 = v104;
      if ((a17 & 0x100000000) == 0)
      {
        v95 = v104;
        v96 = v103;
        v97 = a4;
        v37 = *&a17;
LABEL_33:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = *a18;
        if (isUniquelyReferenced_nonNull_native)
        {
          sub_258386F98(0, *(v51 + 16));
        }

        else
        {
          v52 = sub_25838C610(0, *(v51 + 24) >> 1, &qword_27F928200);

          *a18 = v52;
          v34 = (v26 * v27) >> 64;
        }

        sub_2583A9984(v98, v99, v96, v95, a18);
        v29 = *(*a18 + 16);
        if (v29)
        {
          v32 = 0;
          v57 = 0;
          v58 = v26 / 2;
          v59 = v27 / 2;
          v60 = -1.0;
          v61 = v101;
          while (1)
          {
            v62 = (*a18 + 32 + 16 * v57);
            v63 = *v62;
            if ((*v62 & 0x8000000000000000) == 0)
            {
              v64 = v63 + v26;
              if (__OFADD__(v63, v26))
              {
                goto LABEL_128;
              }

              if (v64 < a3)
              {
                v65 = v62[1];
                if ((v65 & 0x8000000000000000) == 0)
                {
                  v66 = v65 + v27;
                  if (__OFADD__(v65, v27))
                  {
                    goto LABEL_129;
                  }

                  if (v66 < a2)
                  {
                    if (a13 < 0)
                    {
                      goto LABEL_130;
                    }

                    if (*(v97 + 32))
                    {
                      v39 = __OFSUB__(v64, 1);
                      v67 = v64 - 1;
                      if (v39)
                      {
                        goto LABEL_134;
                      }

                      if (v67 >= a3 - 1)
                      {
                        v67 = a3 - 1;
                      }

                      v39 = __OFSUB__(v66, 1);
                      v68 = v66 - 1;
                      if (v39)
                      {
                        goto LABEL_136;
                      }

                      if (v68 >= a2 - 1)
                      {
                        v68 = a2 - 1;
                      }

                      if (v34 != (v26 * v27) >> 63)
                      {
                        goto LABEL_139;
                      }

                      if (v67 < v63 || v68 < v65)
                      {
                        goto LABEL_140;
                      }

                      v69 = 0.0;
                      v70 = v65;
                      while (1)
                      {
                        v71 = v70 * a3;
                        if ((v70 * a3) >> 64 != (v70 * a3) >> 63)
                        {
                          break;
                        }

                        if (__OFADD__(v71, v63))
                        {
                          goto LABEL_116;
                        }

                        LOBYTE(v54) = *(a1 + v71 + v63);
                        v54 = LODWORD(v54);
                        v69 = v69 + v54;
                        if (v67 != v63)
                        {
                          v72 = v63 + 1;
                          v73 = v67 - v63;
                          if (v67 <= v63)
                          {
                            goto LABEL_126;
                          }

                          while (!__OFADD__(v71, v72))
                          {
                            LOBYTE(v54) = *(a1 + v71 + v72);
                            v54 = LODWORD(v54);
                            v69 = v69 + v54;
                            ++v72;
                            if (!--v73)
                            {
                              goto LABEL_63;
                            }
                          }

LABEL_113:
                          __break(1u);
                          goto LABEL_114;
                        }

LABEL_63:
                        if (v70 == v68)
                        {
                          v79 = v69 / (v26 * v27);
                          v61 = v101;
                          if (v27 < 0)
                          {
                            goto LABEL_132;
                          }

                          goto LABEL_75;
                        }

                        v39 = __OFADD__(v70++, 1);
                        if (v39)
                        {
                          goto LABEL_119;
                        }
                      }

LABEL_115:
                      __break(1u);
LABEL_116:
                      __break(1u);
LABEL_117:
                      __break(1u);
                      goto LABEL_118;
                    }

                    v74 = v63 + v58;
                    if (__OFADD__(v63, v58))
                    {
                      goto LABEL_135;
                    }

                    v75 = v65 + v59;
                    if (__OFADD__(v65, v59))
                    {
                      goto LABEL_137;
                    }

                    v76 = *(v97 + 16);
                    if (v76 < 0)
                    {
                      goto LABEL_138;
                    }

                    v77 = v75 * v76;
                    if ((v75 * v76) >> 64 != (v75 * v76) >> 63)
                    {
                      goto LABEL_141;
                    }

                    v39 = __OFADD__(v77, v74);
                    v78 = v77 + v74;
                    if (v39)
                    {
                      goto LABEL_142;
                    }

                    LOBYTE(v53) = *(*v97 + v78);
                    v79 = LODWORD(v53);
                    if (v27 < 0)
                    {
                      goto LABEL_132;
                    }

LABEL_75:
                    if (v27)
                    {
                      if (v26 < 0)
                      {
                        goto LABEL_133;
                      }

                      v80 = 0;
                      v54 = 0.0;
                      v81 = 0.0;
                      v82 = 0.0;
                      while (1)
                      {
                        v83 = v61 + v80;
                        if (__OFADD__(v61, v80))
                        {
                          goto LABEL_120;
                        }

                        v84 = v83 * a13;
                        if ((v83 * a13) >> 64 != (v83 * a13) >> 63)
                        {
                          goto LABEL_121;
                        }

                        v39 = __OFADD__(v84, v100);
                        v85 = v84 + v100;
                        if (v39)
                        {
                          goto LABEL_122;
                        }

                        v86 = v65 + v80;
                        if (__OFADD__(v65, v80))
                        {
                          goto LABEL_123;
                        }

                        v87 = v86 * a3;
                        if ((v86 * a3) >> 64 != (v86 * a3) >> 63)
                        {
                          goto LABEL_124;
                        }

                        if (v26)
                        {
                          v39 = __OFADD__(v87, v63);
                          v88 = v87 + v63;
                          if (v39)
                          {
                            goto LABEL_125;
                          }

                          v89 = 0;
                          while (1)
                          {
                            v90 = v85 + v89;
                            if (__OFADD__(v85, v89))
                            {
                              break;
                            }

                            v91 = v88 + v89;
                            if (__OFADD__(v88, v89))
                            {
                              goto LABEL_112;
                            }

                            ++v89;
                            LOBYTE(v55) = *(a5 + v90);
                            v92 = LODWORD(v55) - v37;
                            LOBYTE(v56) = *(a1 + v91);
                            v56 = LODWORD(v56) - v79;
                            v82 = v82 + (v92 * v56);
                            v81 = v81 + (v92 * v92);
                            v55 = v56 * v56;
                            v54 = v54 + (v56 * v56);
                            if (v26 == v89)
                            {
                              goto LABEL_78;
                            }
                          }

                          __break(1u);
LABEL_112:
                          __break(1u);
                          goto LABEL_113;
                        }

LABEL_78:
                        if (++v80 == v27)
                        {
                          v53 = 0.0;
                          if (v82 > 0.0 && v81 != 0.0 && v54 != 0.0)
                          {
                            v53 = v82 / sqrtf(v54 * v81);
                          }

                          goto LABEL_96;
                        }
                      }
                    }

                    v53 = 0.0;
LABEL_96:
                    v93 = v99;
                    if (v60 < v53)
                    {
                      v93 = v65;
                    }

                    v94 = v98;
                    if (v60 < v53)
                    {
                      v94 = v63;
                    }

                    v98 = v94;
                    v99 = v93;
                    if (v60 < v53)
                    {
                      v60 = v53;
                    }

                    if (v53 >= a12)
                    {
                      v39 = __OFADD__(v32++, 1);
                      if (v39)
                      {
                        __break(1u);
LABEL_106:
                        v29 = v98;
                        v30 = v99;
                        if (v60 <= 0.0)
                        {
                          v29 = 0;
                        }

                        v31 = LODWORD(v60);
                        if (v60 > 0.0)
                        {
                          v33 = 0;
                        }

                        else
                        {
                          v30 = 0;
                          v31 = 0;
                          v32 = 0;
                          v33 = 1;
                        }

                        goto LABEL_5;
                      }
                    }
                  }
                }
              }
            }

            if (++v57 == v29)
            {
              goto LABEL_106;
            }
          }
        }

        goto LABEL_4;
      }

      if ((a13 | a6) < 0)
      {
        goto LABEL_143;
      }

      v38 = v100 + v26;
      if (__OFADD__(v100, v26))
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v39 = __OFSUB__(v38, 1);
      v40 = v38 - 1;
      if (v39)
      {
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (v40 >= a13 - 1)
      {
        v40 = a13 - 1;
      }

      v41 = v101 + v27;
      if (__OFADD__(v101, v27))
      {
        goto LABEL_146;
      }

      v39 = __OFSUB__(v41, 1);
      v42 = v41 - 1;
      if (v39)
      {
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        return;
      }

      v43 = a6 - 1;
      if (v42 < a6 - 1)
      {
        v43 = v42;
      }

      if (v34 != (v26 * v27) >> 63)
      {
        goto LABEL_148;
      }

      v44 = v100 & ~(v100 >> 63);
      if (v40 < v44)
      {
        goto LABEL_149;
      }

      v45 = v101 & ~(v101 >> 63);
      if (v43 < v45)
      {
        goto LABEL_149;
      }

      v46 = 0.0;
      while (1)
      {
        v47 = v45 * a13;
        if ((v45 * a13) >> 64 != (v45 * a13) >> 63)
        {
          goto LABEL_117;
        }

        if (__OFADD__(v47, v44))
        {
          break;
        }

        LOBYTE(v28) = *(a5 + v47 + v44);
        v28 = LODWORD(v28);
        v46 = v46 + v28;
        if (v40 != v44)
        {
          v48 = v44 + 1;
          v49 = v40 - v44;
          if (v40 <= v44)
          {
            goto LABEL_127;
          }

          do
          {
            if (__OFADD__(v47, v48))
            {
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            LOBYTE(v28) = *(a5 + v47 + v48);
            v28 = LODWORD(v28);
            v46 = v46 + v28;
            ++v48;
            --v49;
          }

          while (v49);
        }

        if (v45 == v43)
        {
          goto LABEL_32;
        }

        v39 = __OFADD__(v45++, 1);
        if (v39)
        {
          __break(1u);
LABEL_32:
          v95 = v36;
          v96 = v35;
          v97 = a4;
          v37 = v46 / (v26 * v27);
          goto LABEL_33;
        }
      }

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
LABEL_130:
      __break(1u);
    }

    __break(1u);
LABEL_132:
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
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v29 = 0;
LABEL_4:
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 1;
LABEL_5:
  *a7 = v29;
  *(a7 + 8) = v30;
  *(a7 + 16) = v31;
  *(a7 + 24) = v32;
  *(a7 + 32) = v33;
}

void *sub_25838C574(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_25838C610(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  result = v5;
  v9 = v6 - 32;
  v8 = v6 < 32;
  v10 = v6 - 17;
  if (!v8)
  {
    v10 = v9;
  }

  v5[2] = a1;
  v5[3] = 2 * (v10 >> 4);
  return result;
}

void *sub_25838C698(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_25838C71C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928860);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t _s17MeasureFoundation6CVUtilC14signedDistance5point7contour12CoreGraphics7CGFloatVSo7CGPointV_SayAKGtFZ_0(uint64_t result, double a2, double a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = 0;
  v5 = result + 16 * v3;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = (result + 40);
  v9 = 1.0;
  v10 = INFINITY;
  while (1)
  {
    v14 = v6;
    v15 = v7;
    v6 = *(v8 - 1);
    v7 = *v8;
    v16 = v6 - v14;
    v17 = *v8 - v15;
    v18 = a2 - v14;
    v19 = a3 - v15;
    if ((a2 - v14) * (v6 - v14) + (a3 - v15) * v17 <= 0.0)
    {
      v20 = v19 * v19 + v18 * v18;
LABEL_13:
      v21 = 1.0;
      goto LABEL_14;
    }

    if ((a2 - v6) * v16 + (a3 - v7) * v17 >= 0.0)
    {
      v20 = (a2 - v6) * (a2 - v6) + (a3 - v7) * (a3 - v7);
      goto LABEL_13;
    }

    v20 = (v19 * v16 - v18 * v17) * (v19 * v16 - v18 * v17);
    v21 = v16 * v16 + v17 * v17;
LABEL_14:
    if (v9 * v20 < v10 * v21)
    {
      v9 = v21;
      v10 = v20;
      if (v20 == 0.0)
      {
        return result;
      }
    }

    if ((v15 > a3 || v7 > a3) && (v15 <= a3 || v7 <= a3) && (v14 >= a2 || v6 >= a2))
    {
      v11 = v17 >= 0.0 ? v19 * v16 - v18 * v17 : -(v19 * v16 - v18 * v17);
      v12 = v11 > 0.0;
      v13 = __OFADD__(v4, v12);
      v4 += v12;
      if (v13)
      {
        break;
      }
    }

    v8 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id _s17MeasureFoundation8ViewportC8portView33_7C22ACC4716B0FDE2A507783D80F08CBLLSo6UIViewCvpfi_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [v0 layer];
  v2 = [objc_opt_self() whiteColor];
  v3 = [v2 CGColor];

  [v1 setBorderColor_];
  v4 = [v0 layer];
  [v4 setBorderWidth_];

  v5 = [v0 layer];
  [v5 setCornerRadius_];

  [v0 setAlpha_];
  return v0;
}

void sub_25838CA5C()
{
  [v0 setUserInteractionEnabled_];
  v1 = *&v0[OBJC_IVAR____TtC17MeasureFoundation8Viewport_portView];
  [v0 addSubview_];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F928860);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25842CF50;
  v4 = [v1 widthAnchor];
  v5 = &v0[OBJC_IVAR____TtC17MeasureFoundation8Viewport_portSize];
  v6 = [v4 constraintEqualToConstant_];

  *(v3 + 32) = v6;
  v7 = [v1 heightAnchor];
  v8 = [v7 constraintEqualToConstant_];

  *(v3 + 40) = v8;
  v9 = [v1 centerXAnchor];
  v10 = [v0 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v3 + 48) = v11;
  v12 = [v1 centerYAnchor];
  v13 = [v0 centerYAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:0.0];

  *(v3 + 56) = v14;
  sub_25838CE58();
  v15 = sub_258428850();

  [v2 activateConstraints_];
}

id Viewport.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id Viewport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25838CE58()
{
  result = qword_27F928218;
  if (!qword_27F928218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F928218);
  }

  return result;
}

uint64_t static RecordReplayOption.default.setter(char a1)
{
  result = swift_beginAccess();
  static RecordReplayOption.default = a1;
  return result;
}

uint64_t sub_25838CF94()
{
  v0 = sub_258428330();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static RecordReplayOption.defaultSessionFile);
  __swift_project_value_buffer(v0, static RecordReplayOption.defaultSessionFile);
  if (qword_27F9279A0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F92F150);
  (*(v1 + 16))(v4, v5, v0);
  sub_258428310();
  return (*(v1 + 8))(v4, v0);
}

uint64_t RecordReplayOption.defaultSessionFile.unsafeMutableAddressor()
{
  if (qword_27F9279C8 != -1)
  {
    swift_once();
  }

  v0 = sub_258428330();

  return __swift_project_value_buffer(v0, static RecordReplayOption.defaultSessionFile);
}

uint64_t static RecordReplayOption.defaultSessionFile.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F9279C8 != -1)
  {
    swift_once();
  }

  v2 = sub_258428330();
  v3 = __swift_project_value_buffer(v2, static RecordReplayOption.defaultSessionFile);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RecordReplayOption.recordFile.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_258428270();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_258428630();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    v9 = sub_258428660();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v19[0] = v9;
  v19[1] = v11;
  sub_258428260();
  sub_25838E4C0();
  v12 = sub_258428DD0();
  v14 = v13;
  (*(v3 + 8))(v5, v2);

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_2584282E0();
  }

  else
  {

    if (qword_27F9279C8 != -1)
    {
      swift_once();
    }

    v17 = sub_258428330();
    v18 = __swift_project_value_buffer(v17, static RecordReplayOption.defaultSessionFile);
    return (*(*(v17 - 8) + 16))(a1, v18, v17);
  }
}

uint64_t RecordReplayOption.replayFile.getter@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v94[6] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928238);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v74 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928240);
  MEMORY[0x28223BE20](v7 - 8);
  v84 = &v74 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928248);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v74 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250);
  v85 = *(v13 - 8);
  v86 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v92 = &v74 - v17;
  v18 = sub_258428330();
  v87 = *(v18 - 1);
  v19 = MEMORY[0x28223BE20](v18);
  v91 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v90 = &v74 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - v23;
  if (v3 == 3)
  {
    v74 = v16;
    v75 = v6;
    v76 = a2;
    v25 = [objc_opt_self() defaultManager];
    if (qword_27F9279A0 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      __swift_project_value_buffer(v18, qword_27F92F150);
      v26 = sub_258428300();
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928258);
      v27 = swift_allocObject();
      v80 = xmmword_25842CCB0;
      *(v27 + 16) = xmmword_25842CCB0;
      v28 = *MEMORY[0x277CBE7B0];
      *(v27 + 32) = *MEMORY[0x277CBE7B0];
      type metadata accessor for URLResourceKey(0);
      v79 = v28;
      v29 = sub_258428850();

      v94[0] = 0;
      v30 = [v25 contentsOfDirectoryAtURL:v26 includingPropertiesForKeys:v29 options:4 error:v94];

      v31 = v94[0];
      if (!v30)
      {
        v44 = v94[0];
        v45 = sub_2584282A0();

        swift_willThrow();
        goto LABEL_39;
      }

      v78 = v18;
      v25 = sub_258428860();
      v32 = v31;

      v89 = v25[2];
      if (!v89)
      {
        break;
      }

      v33 = 0;
      v88 = (v87 + 16);
      v77 = (v87 + 8);
      v18 = (v87 + 32);
      v82 = MEMORY[0x277D84F90];
      v34 = v78;
      while (v33 < v25[2])
      {
        v35 = (*(v87 + 80) + 32) & ~*(v87 + 80);
        v36 = *(v87 + 72);
        (*(v87 + 16))(v24, v25 + v35 + v36 * v33, v34);
        sub_2584282F0();
        sub_2584286A0();

        v37 = sub_258428740();

        if (v37)
        {
          v38 = *v18;
          (*v18)(v90, v24, v34);
          v39 = v82;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94[0] = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_258392114(0, v39[2] + 1, 1);
            v39 = v94[0];
          }

          v42 = v39[2];
          v41 = v39[3];
          if (v42 >= v41 >> 1)
          {
            sub_258392114(v41 > 1, v42 + 1, 1);
            v39 = v94[0];
          }

          v39[2] = v42 + 1;
          v82 = v39;
          v43 = v39 + v35 + v42 * v36;
          v34 = v78;
          (v38)(v43, v90, v78);
        }

        else
        {
          (*v77)(v24, v34);
        }

        if (v89 == ++v33)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_42:
      swift_once();
    }

    v82 = MEMORY[0x277D84F90];
    v34 = v78;
LABEL_17:

    v46 = v82[2];
    if (v46)
    {
      v94[0] = MEMORY[0x277D84F90];
      v47 = v82;
      sub_2583920F4(0, v46, 0);
      v48 = 0;
      v49 = v94[0];
      v89 = *(v87 + 16);
      v50 = v47 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
      v78 = (v87 + 8);
      v90 = (v87 + 16);
      v77 = *(v87 + 72);
      while (1)
      {
        v89(v91, v50, v34);
        inited = swift_initStackObject();
        *(inited + 16) = v80;
        v52 = v79;
        *(inited + 32) = v79;
        v53 = v52;
        sub_25839756C(inited);
        swift_setDeallocating();
        sub_258397760(inited + 32);
        sub_2584282C0();
        if (v48)
        {

          v88 = 0;
          v54 = 1;
        }

        else
        {
          v88 = 0;
          v54 = 0;
        }

        v55 = sub_258428290();
        v56 = *(v55 - 8);
        v57 = v93;
        (*(v56 + 56))(v93, v54, 1, v55);
        v58 = *(v86 + 48);
        v89(v92, v91, v34);
        v59 = v83;
        sub_258389808(v57, v83, &qword_27F928248);
        if ((*(v56 + 48))(v59, 1, v55) == 1)
        {
          break;
        }

        v61 = v84;
        sub_258428280();
        (*(v56 + 8))(v59, v55);
        v60 = sub_2584283A0();
        v62 = *(v60 - 8);
        if ((*(v62 + 48))(v61, 1, v60) == 1)
        {
          goto LABEL_25;
        }

        sub_258385E40(v93, &qword_27F928248);
        (*v78)(v91, v34);
        (*(v62 + 32))(&v92[v58], v61, v60);
LABEL_28:
        v94[0] = v49;
        v64 = v49[2];
        v63 = v49[3];
        v48 = v88;
        if (v64 >= v63 >> 1)
        {
          sub_2583920F4(v63 > 1, v64 + 1, 1);
          v49 = v94[0];
        }

        v49[2] = v64 + 1;
        sub_2583977BC(v92, v49 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v64);
        v50 += v77;
        if (!--v46)
        {

          goto LABEL_33;
        }
      }

      sub_258385E40(v59, &qword_27F928248);
      v60 = sub_2584283A0();
      v61 = v84;
      (*(*(v60 - 8) + 56))(v84, 1, 1, v60);
LABEL_25:
      _s17MeasureFoundation16MeasurementEventV4time0B04DateVvpfi_0();
      sub_258385E40(v93, &qword_27F928248);
      (*v78)(v91, v34);
      sub_2584283A0();
      if ((*(*(v60 - 8) + 48))(v61, 1, v60) != 1)
      {
        sub_258385E40(v61, &qword_27F928240);
      }

      goto LABEL_28;
    }

    v48 = 0;
    v49 = MEMORY[0x277D84F90];
LABEL_33:
    v94[0] = v49;

    sub_258390BD8(v94);
    if (v48)
    {
      goto LABEL_44;
    }

    if (v94[0][2])
    {
      v65 = v74;
      sub_258389808(v94[0] + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v74, &qword_27F928250);

      v66 = v87;
      v67 = *(v86 + 48);
      v68 = *(v87 + 32);
      v69 = v75;
      v68(v75, v65, v34);
      (*(v66 + 56))(v69, 0, 1, v34);
      v70 = sub_2584283A0();
      (*(*(v70 - 8) + 8))(v65 + v67, v70);
      if ((*(v66 + 48))(v69, 1, v34) != 1)
      {
        return (v68)(v76, v69, v34);
      }
    }

    else
    {

      v69 = v75;
      (*(v87 + 56))(v75, 1, 1, v34);
    }

    sub_258385E40(v69, &qword_27F928238);
  }

LABEL_39:
  v72 = [objc_opt_self() standardUserDefaults];
  v48 = sub_258428630();
  v73 = [v72 stringForKey_];

  if (v73)
  {
    sub_258428660();

    sub_2584282E0();
  }

  __break(1u);
LABEL_44:

  __break(1u);
  return result;
}

uint64_t static RecordReplayOption.insertTimestamp(to:)()
{
  v0 = sub_2584283A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v5 = sub_258428630();
  [v4 setDateFormat_];

  _s17MeasureFoundation16MeasurementEventV4time0B04DateVvpfi_0();
  v6 = sub_258428350();
  (*(v1 + 8))(v3, v0);
  v7 = [v4 stringFromDate_];

  v8 = sub_258428660();
  v10 = v9;

  v13[4] = sub_258428320();
  v13[5] = v11;
  v13[2] = 2104718459;
  v13[3] = 0xE400000000000000;
  v13[0] = v8;
  v13[1] = v10;
  sub_25838E4C0();
  sub_258428DE0();

  sub_2584282E0();
}

uint64_t sub_25838E3D0()
{
  v1 = *v0;
  sub_2584293C0();
  MEMORY[0x259C7ECE0](v1);
  return sub_2584293F0();
}

uint64_t sub_25838E444()
{
  v1 = *v0;
  sub_2584293C0();
  MEMORY[0x259C7ECE0](v1);
  return sub_2584293F0();
}

unint64_t sub_25838E488@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s17MeasureFoundation18RecordReplayOptionO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_25838E4C0()
{
  result = qword_27F928870;
  if (!qword_27F928870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928870);
  }

  return result;
}

unint64_t sub_25838E514()
{
  result = sub_25838E534();
  qword_27F928220 = result;
  return result;
}

unint64_t sub_25838E534()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25842CF70;
  strcpy((inited + 32), "kADDemoEnabled");
  *(inited + 47) = -18;
  v1 = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000258433960;
  *(inited + 96) = 0;
  *(inited + 120) = v1;
  strcpy((inited + 128), "kADVGAEnabled");
  *(inited + 142) = -4864;
  *(inited + 144) = 0;
  *(inited + 168) = v1;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x8000000258433980;
  *(inited + 192) = 0;
  *(inited + 216) = v1;
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x80000002584339A0;
  *(inited + 240) = 0;
  *(inited + 264) = v1;
  strcpy((inited + 272), "kADShowDepth");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  *(inited + 288) = 0;
  *(inited + 312) = v1;
  *(inited + 320) = 0xD000000000000011;
  *(inited + 328) = 0x80000002584339C0;
  *(inited + 336) = 0;
  *(inited + 360) = v1;
  strcpy((inited + 368), "kADShowNormal");
  *(inited + 382) = -4864;
  *(inited + 384) = 0;
  *(inited + 408) = v1;
  strcpy((inited + 416), "kADShowWindow");
  *(inited + 430) = -4864;
  *(inited + 432) = 0;
  *(inited + 456) = v1;
  strcpy((inited + 464), "kADBlackMode");
  *(inited + 477) = 0;
  *(inited + 478) = -5120;
  *(inited + 480) = 0;
  *(inited + 504) = v1;
  *(inited + 512) = 0xD000000000000016;
  *(inited + 520) = 0x80000002584339E0;
  *(inited + 552) = v1;
  *(inited + 528) = 0;
  *(inited + 560) = 0xD00000000000001DLL;
  *(inited + 568) = 0x8000000258434920;
  *(inited + 600) = v1;
  *(inited + 576) = 0;
  *(inited + 608) = 0xD000000000000011;
  *(inited + 616) = 0x8000000258434940;
  *(inited + 648) = v1;
  *(inited + 624) = 1;
  *(inited + 656) = 0xD000000000000017;
  *(inited + 664) = 0x80000002584347B0;
  *(inited + 696) = v1;
  *(inited + 672) = 0;
  strcpy((inited + 704), "kPEADTestMode");
  v2 = MEMORY[0x277D83B88];
  *(inited + 718) = -4864;
  *(inited + 744) = v2;
  *(inited + 720) = 1;
  *(inited + 752) = 0xD000000000000012;
  *(inited + 760) = 0x8000000258434890;
  *(inited + 792) = v1;
  *(inited + 768) = 0;
  *(inited + 800) = 0xD00000000000001BLL;
  *(inited + 808) = 0x8000000258434960;
  *(inited + 840) = v1;
  *(inited + 816) = 0;
  *(inited + 848) = 0xD000000000000023;
  *(inited + 856) = 0x8000000258434980;
  *(inited + 888) = v1;
  *(inited + 864) = 0;
  v3 = sub_258389248(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928078);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_25838E95C()
{
  v0 = sub_258428330();
  v28 = *(v0 - 8);
  v29 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25842CF80;
  *(v5 + 32) = 0xD000000000000010;
  v31 = v5 + 32;
  *(v5 + 40) = 0x8000000258433B20;
  v6 = MEMORY[0x277D839B0];
  *(v5 + 48) = 0;
  *(v5 + 72) = v6;
  *(v5 + 80) = 0x617453776F68536BLL;
  *(v5 + 88) = 0xEF73636974736974;
  *(v5 + 96) = 0;
  *(v5 + 120) = v6;
  *(v5 + 128) = 0xD000000000000012;
  *(v5 + 136) = 0x8000000258434530;
  *(v5 + 144) = 0;
  *(v5 + 168) = v6;
  *(v5 + 176) = 0xD000000000000019;
  *(v5 + 184) = 0x8000000258434570;
  *(v5 + 192) = 0;
  *(v5 + 216) = v6;
  *(v5 + 224) = 0xD000000000000017;
  *(v5 + 232) = 0x8000000258434590;
  *(v5 + 240) = 0;
  *(v5 + 264) = v6;
  *(v5 + 272) = 0x706154656469486BLL;
  *(v5 + 280) = 0xEF72616461526F54;
  *(v5 + 288) = 0;
  *(v5 + 312) = v6;
  *(v5 + 320) = 0xD00000000000001CLL;
  *(v5 + 328) = 0x80000002584345F0;
  *(v5 + 336) = 0;
  *(v5 + 360) = v6;
  *(v5 + 368) = 0xD000000000000019;
  *(v5 + 376) = 0x8000000258434640;
  *(v5 + 384) = 1;
  *(v5 + 408) = v6;
  *(v5 + 416) = 0xD000000000000020;
  *(v5 + 424) = 0x8000000258434610;
  *(v5 + 432) = 0;
  v7 = MEMORY[0x277D839F8];
  *(v5 + 456) = v6;
  *(v5 + 464) = 0xD000000000000016;
  *(v5 + 472) = 0x8000000258434660;
  *(v5 + 480) = 0x3FE0000000000000;
  *(v5 + 504) = v7;
  *(v5 + 512) = 0xD000000000000012;
  *(v5 + 520) = 0x8000000258434680;
  *(v5 + 552) = v7;
  *(v5 + 528) = 0x4010000000000000;
  *(v5 + 560) = 0xD000000000000010;
  *(v5 + 568) = 0x80000002584346A0;
  *(v5 + 600) = v7;
  *(v5 + 576) = 0;
  *(v5 + 608) = 0xD000000000000019;
  *(v5 + 616) = 0x80000002584345B0;
  *(v5 + 648) = v6;
  *(v5 + 624) = 1;
  *(v5 + 656) = 0xD000000000000019;
  *(v5 + 664) = 0x80000002584345D0;
  *(v5 + 696) = v6;
  *(v5 + 672) = 0;
  strcpy((v5 + 704), "kRecordARKit");
  *(v5 + 717) = 0;
  *(v5 + 718) = -5120;
  swift_beginAccess();
  v8 = static RecordReplayOption.default;
  *(v5 + 744) = MEMORY[0x277D83E88];
  *(v5 + 720) = v8;
  *(v5 + 752) = 0xD000000000000013;
  *(v5 + 760) = 0x8000000258434700;
  *(v5 + 792) = v6;
  *(v5 + 768) = 1;
  *(v5 + 800) = 0xD000000000000015;
  *(v5 + 808) = 0x8000000258434720;
  *(v5 + 840) = v6;
  *(v5 + 816) = 1;
  *(v5 + 848) = 0xD000000000000019;
  *(v5 + 856) = 0x8000000258434740;
  *(v5 + 888) = MEMORY[0x277D83B88];
  *(v5 + 864) = 50;
  *(v5 + 896) = 0xD000000000000021;
  *(v5 + 904) = 0x8000000258434760;
  *(v5 + 936) = v6;
  *(v5 + 912) = 0;
  *(v5 + 944) = 0xD00000000000001CLL;
  *(v5 + 952) = 0x8000000258434790;
  *(v5 + 984) = v6;
  *(v5 + 960) = 0;
  *(v5 + 992) = 0xD000000000000012;
  *(v5 + 1000) = 0x80000002584347D0;
  *(v5 + 1032) = v6;
  *(v5 + 1008) = 0;
  *(v5 + 1040) = 0x676445776F68536BLL;
  *(v5 + 1048) = 0xEA00000000007365;
  *(v5 + 1080) = v6;
  *(v5 + 1056) = 0;
  *(v5 + 1088) = 0x6E694C776F68536BLL;
  *(v5 + 1096) = 0xEA00000000007365;
  *(v5 + 1128) = v6;
  *(v5 + 1104) = 0;
  *(v5 + 1136) = 0xD000000000000012;
  *(v5 + 1144) = 0x80000002584347F0;
  *(v5 + 1176) = v6;
  *(v5 + 1152) = 0;
  v30 = 0xD000000000000010;
  *(v5 + 1184) = 0xD000000000000010;
  *(v5 + 1192) = 0x8000000258434810;
  *(v5 + 1224) = v6;
  *(v5 + 1200) = 0;
  *(v5 + 1232) = 0xD000000000000017;
  *(v5 + 1240) = 0x8000000258434830;
  *(v5 + 1272) = v6;
  *(v5 + 1248) = 0;
  *(v5 + 1280) = 0xD000000000000012;
  *(v5 + 1288) = 0x8000000258434850;
  *(v5 + 1320) = v6;
  *(v5 + 1296) = 0;
  v26 = 0xD000000000000011;
  *(v5 + 1328) = 0xD000000000000011;
  *(v5 + 1336) = 0x80000002584346C0;
  if (qword_27F9279C8 != -1)
  {
    swift_once();
  }

  v9 = v29;
  v10 = __swift_project_value_buffer(v29, static RecordReplayOption.defaultSessionFile);
  v11 = v28;
  v12 = *(v28 + 16);
  v12(v4, v10, v9);
  v13 = sub_258428320();
  v15 = v14;
  v16 = *(v11 + 8);
  v16(v4, v9);
  *(v5 + 1368) = MEMORY[0x277D837D0];
  *(v5 + 1344) = v13;
  *(v5 + 1352) = v15;
  v17 = v27;
  *(v5 + 1376) = v26;
  *(v5 + 1384) = 0x80000002584346E0;
  v12(v17, v10, v9);
  v18 = sub_258428320();
  v20 = v19;
  v16(v17, v9);
  *(v5 + 1416) = MEMORY[0x277D837D0];
  *(v5 + 1392) = v18;
  *(v5 + 1400) = v20;
  strcpy((v5 + 1424), "kLPShowPlane");
  *(v5 + 1437) = 0;
  *(v5 + 1438) = -5120;
  v21 = MEMORY[0x277D839B0];
  *(v5 + 1464) = MEMORY[0x277D839B0];
  *(v5 + 1440) = 0;
  strcpy((v5 + 1472), "kLPShowPoints");
  *(v5 + 1486) = -4864;
  *(v5 + 1512) = v21;
  *(v5 + 1488) = 0;
  *(v5 + 1520) = 0xD000000000000017;
  *(v5 + 1528) = 0x8000000258433A40;
  *(v5 + 1560) = v21;
  *(v5 + 1536) = 0;
  *(v5 + 1568) = 0xD000000000000014;
  *(v5 + 1576) = 0x8000000258433A20;
  *(v5 + 1608) = v21;
  *(v5 + 1584) = 0;
  *(v5 + 1616) = 0xD00000000000001ALL;
  *(v5 + 1624) = 0x8000000258433A60;
  *(v5 + 1656) = v21;
  *(v5 + 1632) = 0;
  *(v5 + 1664) = 0xD000000000000018;
  *(v5 + 1672) = 0x8000000258433A80;
  *(v5 + 1704) = v21;
  *(v5 + 1680) = 0;
  strcpy((v5 + 1712), "kPTShowPoints");
  *(v5 + 1726) = -4864;
  *(v5 + 1752) = v21;
  *(v5 + 1728) = 0;
  strcpy((v5 + 1760), "kPTPaintMode");
  *(v5 + 1773) = 0;
  *(v5 + 1774) = -5120;
  *(v5 + 1800) = v21;
  *(v5 + 1776) = 0;
  strcpy((v5 + 1808), "kPTDrawPatches");
  *(v5 + 1823) = -18;
  *(v5 + 1848) = v21;
  *(v5 + 1824) = 0;
  *(v5 + 1856) = v30;
  *(v5 + 1864) = 0x8000000258433A00;
  *(v5 + 1896) = v21;
  *(v5 + 1872) = 0;
  strcpy((v5 + 1904), "kPEShowHitRay");
  *(v5 + 1918) = -4864;
  *(v5 + 1944) = v21;
  *(v5 + 1920) = 0;
  *(v5 + 1952) = 0xD000000000000014;
  *(v5 + 1960) = 0x8000000258433B00;
  v22 = MEMORY[0x277D83B88];
  *(v5 + 1992) = MEMORY[0x277D83B88];
  *(v5 + 1968) = 2;
  *(v5 + 2000) = 0xD00000000000001DLL;
  *(v5 + 2008) = 0x8000000258434870;
  *(v5 + 2040) = v21;
  *(v5 + 2016) = 0;
  *(v5 + 2048) = 0xD000000000000018;
  *(v5 + 2056) = 0x80000002584348B0;
  *(v5 + 2088) = v22;
  *(v5 + 2064) = 3;
  strcpy((v5 + 2096), "kHapticEnabled");
  *(v5 + 2111) = -18;
  *(v5 + 2136) = v21;
  *(v5 + 2112) = 1;
  *(v5 + 2144) = 0xD000000000000018;
  *(v5 + 2152) = 0x80000002584348D0;
  *(v5 + 2184) = v21;
  *(v5 + 2160) = 0;
  *(v5 + 2192) = 0xD000000000000022;
  *(v5 + 2200) = 0x80000002584348F0;
  *(v5 + 2232) = v21;
  *(v5 + 2208) = 1;
  v23 = sub_258389248(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928078);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27F928228 = v23;
  return result;
}

void *sub_25838F494()
{
  if (qword_27F9279D8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F928228;
  v1 = qword_27F9279D0;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = qword_27F928220;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v0;
  sub_258397ACC(v2, sub_25839308C, 0, isUniquelyReferenced_nonNull_native, &v9);

  v4 = v9;
  v5 = [objc_opt_self() getDefaultValues];
  v6 = sub_258428510();

  v7 = swift_isUniquelyReferenced_nonNull_native();
  v9 = v4;
  sub_258397ACC(v6, sub_25839308C, 0, v7, &v9);

  result = v9;
  off_27F928230 = v9;
  return result;
}

uint64_t static DefaultsManager.registerDefaults()()
{
  v52 = objc_opt_self();
  v0 = [v52 standardUserDefaults];
  v1 = [v0 dictionaryRepresentation];

  v2 = sub_258428510();
  if (qword_27F9279E0 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = off_27F928230 + 64;
    v4 = 1 << *(off_27F928230 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(off_27F928230 + 8);
    v7 = (v4 + 63) >> 6;
    v54 = off_27F928230;

    v8 = 0;
    v9 = MEMORY[0x277D84F98];
    v53 = v2;
    if (v6)
    {
      break;
    }

LABEL_9:
    if (v7 <= v8 + 1)
    {
      v13 = v8 + 1;
    }

    else
    {
      v13 = v7;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v7)
      {
        v6 = 0;
        v58 = 0u;
        v59 = 0u;
        v57 = 0u;
        goto LABEL_17;
      }

      v6 = *&v3[8 * v12];
      ++v8;
      if (v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }

  while (1)
  {
    v12 = v8;
LABEL_16:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (v54[6] + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    sub_25839783C(v54[7] + 32 * v16, v56);
    *&v57 = v18;
    *(&v57 + 1) = v19;
    sub_2583897F8(v56, &v58);

    v14 = v12;
LABEL_17:
    v60 = v57;
    v61[0] = v58;
    v61[1] = v59;
    v20 = *(&v57 + 1);
    if (!*(&v57 + 1))
    {
      break;
    }

    v21 = v60;
    sub_2583897F8(v61, &v57);
    if (v2[2] && (sub_258384364(v21, v20), (v22 & 1) != 0))
    {

      __swift_destroy_boxed_opaque_existential_0(&v57);
      v8 = v14;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_25839783C(&v57, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v9;
      v2 = v9;
      v24 = sub_258384364(v21, v20);
      v26 = v9[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_47;
      }

      v30 = v25;
      if (v9[3] < v29)
      {
        sub_25839337C(v29, isUniquelyReferenced_nonNull_native);
        v2 = v55;
        v24 = sub_258384364(v21, v20);
        if ((v30 & 1) != (v31 & 1))
        {
          result = sub_258429390();
          __break(1u);
          return result;
        }

LABEL_27:
        if (v30)
        {
          goto LABEL_6;
        }

        goto LABEL_28;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v2 = &v55;
      v35 = v24;
      sub_2583956B8();
      v24 = v35;
      if (v30)
      {
LABEL_6:
        v10 = v24;

        v9 = v55;
        v11 = (v55[7] + 32 * v10);
        __swift_destroy_boxed_opaque_existential_0(v11);
        sub_2583897F8(v56, v11);
        __swift_destroy_boxed_opaque_existential_0(&v57);
        goto LABEL_7;
      }

LABEL_28:
      v9 = v55;
      v55[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v9[6] + 16 * v24);
      *v32 = v21;
      v32[1] = v20;
      sub_2583897F8(v56, (v9[7] + 32 * v24));
      __swift_destroy_boxed_opaque_existential_0(&v57);
      v33 = v9[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_48;
      }

      v9[2] = v34;
LABEL_7:
      v8 = v14;
      v2 = v53;
      if (!v6)
      {
        goto LABEL_9;
      }
    }
  }

  if (v9[2])
  {
    v36 = [v52 standardUserDefaults];
    v37 = sub_258428500();
    [v36 setValuesForKeysWithDictionary_];
  }

  v38 = [v52 standardUserDefaults];
  v39 = MEMORY[0x277D837D0];
  v40 = sub_258428500();
  [v38 registerDefaults_];

  *&v57 = 0;
  *(&v57 + 1) = 0xE000000000000000;
  sub_25838FD48(v54, &v57);

  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_258428FC0();

  *&v60 = 0xD00000000000002BLL;
  *(&v60 + 1) = 0x80000002584349D0;
  MEMORY[0x259C7DFF0](v57, *(&v57 + 1));
  v41 = v60;
  sub_258428C50();
  if (qword_27F927A30 != -1)
  {
    swift_once();
  }

  v42 = qword_27F928848;
  os_unfair_lock_lock(qword_27F928848);
  if (qword_27F927A38 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v43 = off_27F928850;
  if (*(off_27F928850 + 2) && (v44 = sub_258384364(0xD000000000000010, 0x80000002584349B0), (v45 & 1) != 0))
  {
    v46 = *(v43[7] + 8 * v44);
    swift_endAccess();
    v47 = v46;
  }

  else
  {
    swift_endAccess();
    sub_25838AB14();
    if (qword_27F927A28 != -1)
    {
      swift_once();
    }

    v48 = sub_258428D90();
    swift_beginAccess();
    v47 = v48;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    *&v56[0] = off_27F928850;
    off_27F928850 = 0x8000000000000000;
    sub_258384C94(v47, 0xD000000000000010, 0x80000002584349B0, v49);
    off_27F928850 = *&v56[0];
    swift_endAccess();
    v39 = MEMORY[0x277D837D0];
  }

  os_unfair_lock_unlock(v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F927F90);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_25842CCB0;
  *(v50 + 56) = v39;
  *(v50 + 64) = sub_258385D08();
  *(v50 + 32) = v41;

  sub_258428440();
}

uint64_t sub_25838FD48(uint64_t a1, uint64_t a2)
{
  v17[5] = a2;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_258385E40(v16, &qword_27F9282C8))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_25839783C(*(a1 + 56) + 32 * v12, v17);
    v16[0] = v14;
    v16[1] = v15;

    MEMORY[0x259C7DFF0](34, 0xE100000000000000);
    MEMORY[0x259C7DFF0](v14, v15);
    MEMORY[0x259C7DFF0](0x22203A2022, 0xE500000000000000);
    sub_2584290D0();
    MEMORY[0x259C7DFF0](2594, 0xE200000000000000);
    MEMORY[0x259C7DFF0](0, 0xE000000000000000);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void static DefaultsManager.reset()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_27F9279E0 != -1)
  {
    swift_once();
  }

  v1 = sub_258428500();
  [v0 setValuesForKeysWithDictionary_];
}

void static DefaultsManager.resetForKeys(_:)(uint64_t a1)
{
  v2 = sub_258389248(MEMORY[0x277D84F90]);
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_28:
    v37 = [objc_opt_self() standardUserDefaults];
    v38 = sub_258428500();

    [v37 setValuesForKeysWithDictionary_];

    return;
  }

  v4 = (a1 + 40);
  v5 = 0x27F927000uLL;
  v6 = &unk_27F928000;
  v7 = &unk_25842D130;
  while (1)
  {
    v9 = *(v4 - 1);
    v8 = *v4;
    v10 = *(v5 + 2528);

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = v6[70];
    if (*(v11 + 16))
    {
      v12 = sub_258384364(v9, v8);
      if (v13)
      {
        break;
      }
    }

    v41 = 0u;
    v42 = 0u;

LABEL_4:
    sub_258385E40(&v41, &unk_27F9285F0);
LABEL_5:
    v4 += 2;
    if (!--v3)
    {
      goto LABEL_28;
    }
  }

  sub_25839783C(*(v11 + 56) + 32 * v12, &v41);
  sub_258385E40(&v41, &unk_27F9285F0);
  if (!*(v11 + 16) || (v14 = sub_258384364(v9, v8), (v15 & 1) == 0))
  {
    v27 = sub_258384364(v9, v8);
    v29 = v28;

    if (v29)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40[0] = v2;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_2583956B8();
        v2 = *&v40[0];
      }

      sub_2583897F8((v2[7] + 32 * v27), &v41);
      sub_258396AD4(v27, v2);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
    }

    goto LABEL_4;
  }

  v16 = v7;
  v17 = v5;
  sub_25839783C(*(v11 + 56) + 32 * v14, &v41);
  sub_2583897F8(&v41, v40);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v39 = v2;
  v19 = sub_258384364(v9, v8);
  v21 = v2[2];
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (!v23)
  {
    v25 = v20;
    if (v2[3] >= v24)
    {
      if (v18)
      {
        goto LABEL_22;
      }

      v33 = v19;
      sub_2583956B8();
      v19 = v33;
      v7 = v16;
      if ((v25 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_23:
      v31 = v19;

      v2 = v39;
      v32 = (v39[7] + 32 * v31);
      __swift_destroy_boxed_opaque_existential_0(v32);
      sub_2583897F8(v40, v32);
    }

    else
    {
      sub_25839337C(v24, v18);
      v19 = sub_258384364(v9, v8);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_31;
      }

LABEL_22:
      v7 = v16;
      if (v25)
      {
        goto LABEL_23;
      }

LABEL_25:
      v2 = v39;
      v39[(v19 >> 6) + 8] |= 1 << v19;
      v34 = (v39[6] + 16 * v19);
      *v34 = v9;
      v34[1] = v8;
      sub_2583897F8(v40, (v39[7] + 32 * v19));
      v35 = v39[2];
      v23 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v23)
      {
        goto LABEL_30;
      }

      v39[2] = v36;
    }

    v5 = v17;
    v6 = &unk_27F928000;
    goto LABEL_5;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_258429390();
  __break(1u);
}

uint64_t sub_258390BD8(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2583973F8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_258390C8C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_258390C8C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2584292A0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250);
        v6 = sub_2584288E0();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_258391020(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_258390DD0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258390DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v21;
    v29 = v20;
    while (1)
    {
      sub_258389808(v21, v16, &qword_27F928250);
      sub_258389808(v19, v12, &qword_27F928250);
      v22 = sub_258428360();
      sub_258385E40(v12, &qword_27F928250);
      result = sub_258385E40(v16, &qword_27F928250);
      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v20 = v29 - 1;
        v21 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v23 = v34;
      sub_2583977BC(v21, v34);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2583977BC(v23, v19);
      v19 += v32;
      v21 += v32;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258391020(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v104 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v108 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v116 = &v100 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v118 = &v100 - v13;
  result = MEMORY[0x28223BE20](v12);
  v117 = &v100 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_99:
    a4 = *v104;
    if (!*v104)
    {
      goto LABEL_139;
    }

    v6 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = v105;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v6;
LABEL_102:
      v120 = result;
      v6 = *(result + 16);
      if (v6 >= 2)
      {
        v96 = v7;
        while (*a3)
        {
          v97 = *(result + 16 * v6);
          v98 = result;
          v7 = *(result + 16 * (v6 - 1) + 40);
          sub_258391948(*a3 + *(v96 + 72) * v97, *a3 + *(v96 + 72) * *(result + 16 * (v6 - 1) + 32), *a3 + *(v96 + 72) * v7, a4);
          if (v30)
          {
          }

          if (v7 < v97)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = sub_258391EEC(v98);
          }

          if (v6 - 2 >= *(v98 + 2))
          {
            goto LABEL_127;
          }

          v99 = &v98[16 * v6];
          *v99 = v97;
          *(v99 + 1) = v7;
          v120 = v98;
          sub_258391E60(v6 - 1);
          result = v120;
          v6 = *(v120 + 16);
          if (v6 <= 1)
          {
          }
        }

        goto LABEL_137;
      }
    }

LABEL_133:
    result = sub_258391EEC(v6);
    goto LABEL_102;
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v103 = a4;
  v119 = v6;
  v106 = a3;
  v101 = v7;
  while (1)
  {
    v19 = v17 + 1;
    v109 = v18;
    if (v17 + 1 >= v16)
    {
      v29 = v17 + 1;
      v30 = v105;
    }

    else
    {
      v20 = v17;
      v6 = *a3;
      v21 = *(v7 + 72);
      v22 = *a3 + v21 * v19;
      v23 = v117;
      sub_258389808(v22, v117, &qword_27F928250);
      v24 = v118;
      sub_258389808(v6 + v21 * v20, v118, &qword_27F928250);
      LODWORD(v114) = sub_258428360();
      sub_258385E40(v24, &qword_27F928250);
      result = sub_258385E40(v23, &qword_27F928250);
      v102 = v20;
      v25 = v20 + 2;
      v115 = v21;
      v26 = v6 + v21 * (v20 + 2);
      while (v16 != v25)
      {
        v27 = v117;
        sub_258389808(v26, v117, &qword_27F928250);
        v28 = v118;
        sub_258389808(v22, v118, &qword_27F928250);
        v6 = sub_258428360() & 1;
        sub_258385E40(v28, &qword_27F928250);
        result = sub_258385E40(v27, &qword_27F928250);
        ++v25;
        v26 += v115;
        v22 += v115;
        if ((v114 & 1) != v6)
        {
          v29 = v25 - 1;
          goto LABEL_12;
        }
      }

      v29 = v16;
LABEL_12:
      v17 = v102;
      a4 = v103;
      v30 = v105;
      a3 = v106;
      v7 = v101;
      if ((v114 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (v29 < v102)
      {
        goto LABEL_130;
      }

      if (v102 < v29)
      {
        v31 = v115 * (v29 - 1);
        v32 = v29 * v115;
        v114 = v29;
        v33 = v29;
        v34 = v102;
        v35 = v102 * v115;
        v6 = v119;
        do
        {
          if (v34 != --v33)
          {
            v36 = *v106;
            if (!*v106)
            {
              goto LABEL_136;
            }

            sub_2583977BC(v36 + v35, v108);
            if (v35 < v31 || v36 + v35 >= (v36 + v32))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v35 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_2583977BC(v108, v36 + v31);
            v6 = v119;
          }

          ++v34;
          v31 -= v115;
          v32 -= v115;
          v35 += v115;
        }

        while (v34 < v33);
        v30 = v105;
        a3 = v106;
        v7 = v101;
        v17 = v102;
        a4 = v103;
        v29 = v114;
      }

      else
      {
LABEL_25:
        v6 = v119;
      }
    }

    v37 = a3[1];
    if (v29 >= v37)
    {
      goto LABEL_35;
    }

    if (__OFSUB__(v29, v17))
    {
      goto LABEL_129;
    }

    if (v29 - v17 >= a4)
    {
LABEL_35:
      v38 = v29;
      if (v29 < v17)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (__OFADD__(v17, a4))
    {
      goto LABEL_131;
    }

    if ((v17 + a4) < v37)
    {
      v37 = v17 + a4;
    }

    if (v37 < v17)
    {
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v29 == v37)
    {
      goto LABEL_35;
    }

    v110 = v37;
    v105 = v30;
    v84 = *a3;
    v85 = *(v7 + 72);
    v86 = *a3 + v85 * (v29 - 1);
    v87 = -v85;
    v102 = v17;
    v88 = v17 - v29;
    v107 = v85;
    v115 = v84;
    a4 = v84 + v29 * v85;
LABEL_89:
    v113 = v86;
    v114 = v29;
    v111 = a4;
    v112 = v88;
    v89 = v86;
LABEL_90:
    v90 = v117;
    sub_258389808(a4, v117, &qword_27F928250);
    v91 = v118;
    sub_258389808(v89, v118, &qword_27F928250);
    v92 = sub_258428360();
    sub_258385E40(v91, &qword_27F928250);
    result = sub_258385E40(v90, &qword_27F928250);
    if (v92)
    {
      break;
    }

    v6 = v119;
LABEL_88:
    v29 = v114 + 1;
    v86 = v113 + v107;
    v88 = v112 - 1;
    a4 = v111 + v107;
    if (v114 + 1 != v110)
    {
      goto LABEL_89;
    }

    v30 = v105;
    a3 = v106;
    v7 = v101;
    v17 = v102;
    v38 = v110;
    if (v110 < v102)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v109;
    }

    else
    {
      result = sub_25839CDA0(0, *(v109 + 2) + 1, 1, v109);
      v18 = result;
    }

    v40 = *(v18 + 2);
    v39 = *(v18 + 3);
    a4 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25839CDA0((v39 > 1), v40 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a4;
    v41 = &v18[16 * v40];
    *(v41 + 4) = v17;
    *(v41 + 5) = v38;
    v110 = v38;
    if (!*v104)
    {
      goto LABEL_138;
    }

    if (v40)
    {
      v42 = *v104;
      v6 = v119;
      while (1)
      {
        v43 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v44 = *(v18 + 4);
          v45 = *(v18 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_56:
          if (v47)
          {
            goto LABEL_117;
          }

          v60 = &v18[16 * a4];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_120;
          }

          v66 = &v18[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_124;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v70 = &v18[16 * a4];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_70:
        if (v65)
        {
          goto LABEL_119;
        }

        v73 = &v18[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_122;
        }

        if (v76 < v64)
        {
          goto LABEL_4;
        }

LABEL_77:
        v6 = v43 - 1;
        if (v43 - 1 >= a4)
        {
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
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v81 = v18;
        a4 = *&v18[16 * v6 + 32];
        v82 = *&v18[16 * v43 + 40];
        sub_258391948(*a3 + *(v7 + 72) * a4, *a3 + *(v7 + 72) * *&v18[16 * v43 + 32], *a3 + *(v7 + 72) * v82, v42);
        if (v30)
        {
        }

        if (v82 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_258391EEC(v81);
        }

        if (v6 >= *(v81 + 2))
        {
          goto LABEL_114;
        }

        v83 = &v81[16 * v6];
        *(v83 + 4) = a4;
        *(v83 + 5) = v82;
        v120 = v81;
        result = sub_258391E60(v43);
        v18 = v120;
        a4 = *(v120 + 16);
        v6 = v119;
        if (a4 <= 1)
        {
          goto LABEL_4;
        }
      }

      v48 = &v18[16 * a4 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_115;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_116;
      }

      v55 = &v18[16 * a4];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_118;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_121;
      }

      if (v59 >= v51)
      {
        v77 = &v18[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v80)
        {
          v43 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    v6 = v119;
LABEL_4:
    v105 = v30;
    v16 = a3[1];
    v17 = v110;
    a4 = v103;
    if (v110 >= v16)
    {
      goto LABEL_99;
    }
  }

  if (v115)
  {
    v93 = v116;
    sub_2583977BC(a4, v116);
    v6 = v119;
    swift_arrayInitWithTakeFrontToBack();
    sub_2583977BC(v93, v89);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_88;
    }

    goto LABEL_90;
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_258391948(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = a3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250);
  v7 = MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = v45 - a2;
  if (v45 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = a4 + v17;
      v40 = a4;
      v41 = -v13;
      v39 = a1;
      do
      {
        v37 = v25;
        v26 = a2;
        v27 = a2 + v23;
        v42 = v26;
        while (1)
        {
          v29 = v45;
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v37;
            goto LABEL_60;
          }

          v38 = v25;
          v45 += v23;
          v30 = v24 + v23;
          sub_258389808(v30, v11, &qword_27F928250);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v43;
          sub_258389808(v32, v43, &qword_27F928250);
          v35 = sub_258428360();
          v36 = v34;
          v11 = v33;
          sub_258385E40(v36, &qword_27F928250);
          sub_258385E40(v33, &qword_27F928250);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v45 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
            a1 = v39;
          }

          else
          {
            v27 = v31;
            a1 = v39;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v41;
          v26 = v42;
          if (!v28)
          {
            a2 = v42;
            goto LABEL_59;
          }
        }

        if (v29 < v42 || v45 >= v42)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          a1 = v39;
          v23 = v41;
        }

        else
        {
          v25 = v38;
          a1 = v39;
          a2 = v31;
          v23 = v41;
          if (v29 != v42)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_59:
    v48 = a2;
    v46 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < v45)
    {
      v41 = v13;
      do
      {
        sub_258389808(a2, v11, &qword_27F928250);
        v19 = v43;
        sub_258389808(a4, v43, &qword_27F928250);
        v20 = sub_258428360();
        sub_258385E40(v19, &qword_27F928250);
        sub_258385E40(v11, &qword_27F928250);
        if (v20)
        {
          v21 = a2 + v13;
          if (a1 < a2 || a1 >= v21)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v21;
        }

        else
        {
          v22 = a4 + v13;
          if (a1 < a4 || a1 >= v22)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = v22;
          a4 = v22;
        }

        v13 = v41;
        a1 += v41;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v45);
    }
  }

LABEL_60:
  sub_258391F00(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_258391E60(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_258391EEC(v3);
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

uint64_t sub_258391F00(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_258391FF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282D8);
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

size_t sub_2583920F4(size_t a1, int64_t a2, char a3)
{
  result = sub_258392274(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258392114(size_t a1, int64_t a2, char a3)
{
  result = sub_258392464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258392134(char *a1, int64_t a2, char a3)
{
  result = sub_25839263C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258392154(char *a1, int64_t a2, char a3)
{
  result = sub_258392748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258392174(char *a1, int64_t a2, char a3)
{
  result = sub_25839284C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258392194(char *a1, int64_t a2, char a3)
{
  result = sub_25839295C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2583921B4(char *a1, int64_t a2, char a3)
{
  result = sub_258392A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2583921D4(char *a1, int64_t a2, char a3)
{
  result = sub_258392B70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2583921F4(char *a1, int64_t a2, char a3)
{
  result = sub_258392C70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258392214(char *a1, int64_t a2, char a3)
{
  result = sub_258392D80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258392234(char *a1, int64_t a2, char a3)
{
  result = sub_258392E84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258392254(char *a1, int64_t a2, char a3)
{
  result = sub_258392F88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_258392274(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282E0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250) - 8);
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

size_t sub_258392464(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282F0);
  v10 = *(sub_258428330() - 8);
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
  v15 = *(sub_258428330() - 8);
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

char *sub_25839263C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281E8);
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

char *sub_258392748(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F0);
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

char *sub_25839284C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_25839295C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F927EF0);
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

char *sub_258392A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282B0);
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
  v14 = 24 * v8;
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

char *sub_258392B70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282A8);
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
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_258392C70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928298);
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

char *sub_258392D80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F927B80);
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

char *sub_258392E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9281F8);
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

char *sub_258392F88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v8 << 6);
  }

  return v10;
}

uint64_t sub_25839308C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_25839783C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_2583930D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282F8);
  v35 = a2;
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_2584293C0();
      sub_2584286C0();
      result = sub_2584293F0();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25839337C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928070);
  v33 = a2;
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2583897F8(v24, v34);
      }

      else
      {
        sub_25839783C(v24, v34);
      }

      sub_2584293C0();
      sub_2584286C0();
      result = sub_2584293F0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2583897F8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_258393634(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928058);
  v34 = a2;
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2584293C0();
      sub_2584286C0();
      result = sub_2584293F0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2583938D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282C0);
  v34 = a2;
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2584293C0();
      sub_2584286C0();
      result = sub_2584293F0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_258393B7C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2584283F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928280);
  v40 = a2;
  result = sub_2584291B0();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_258398064();
      result = sub_258428580();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_258393F28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282A0);
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v41 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (v12)
      {
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v8 << 6);
        if (a2)
        {
LABEL_10:
          v19 = *(*(v5 + 48) + 8 * v18);
          v20 = *(v5 + 56) + 192 * v18;
          v62 = *(v20 + 128);
          v63 = *(v20 + 144);
          v64 = *(v20 + 160);
          v65 = *(v20 + 176);
          v58 = *(v20 + 64);
          v59 = *(v20 + 80);
          v60 = *(v20 + 96);
          v61 = *(v20 + 112);
          v54 = *v20;
          v55 = *(v20 + 16);
          v56 = *(v20 + 32);
          v57 = *(v20 + 48);
          goto LABEL_17;
        }
      }

      else
      {
        v21 = v8;
        do
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v8 >= v13)
          {
            if (a2)
            {
              v40 = 1 << *(v5 + 32);
              if (v40 >= 64)
              {
                bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v40;
              }

              *(v5 + 16) = 0;
            }

            v3 = v41;
            goto LABEL_33;
          }

          v22 = v9[v8];
          ++v21;
        }

        while (!v22);
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (a2)
        {
          goto LABEL_10;
        }
      }

      v19 = *(*(v5 + 48) + 8 * v18);
      v23 = *(v5 + 56) + 192 * v18;
      v25 = *(v23 + 32);
      v24 = *(v23 + 48);
      v26 = *v23;
      v43 = *(v23 + 16);
      v44 = v25;
      v42 = v26;
      v27 = *(v23 + 112);
      v29 = *(v23 + 64);
      v28 = *(v23 + 80);
      v48 = *(v23 + 96);
      v49 = v27;
      v46 = v29;
      v47 = v28;
      v31 = *(v23 + 144);
      v30 = *(v23 + 160);
      v32 = *(v23 + 128);
      v53 = *(v23 + 176);
      v51 = v31;
      v52 = v30;
      v50 = v32;
      v45 = v24;
      sub_258389808(&v42, &v54, &qword_27F927FE0);
      v62 = v50;
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v58 = v46;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v54 = v42;
      v55 = v43;
      v56 = v44;
      v57 = v45;
LABEL_17:
      result = sub_2584293B0();
      v33 = -1 << *(v7 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      v16 = *(v7 + 56) + 192 * v15;
      *(v16 + 128) = v62;
      *(v16 + 144) = v63;
      *(v16 + 160) = v64;
      *(v16 + 176) = v65;
      *(v16 + 64) = v58;
      *(v16 + 80) = v59;
      *(v16 + 96) = v60;
      *(v16 + 112) = v61;
      *v16 = v54;
      *(v16 + 16) = v55;
      *(v16 + 32) = v56;
      *(v16 + 48) = v57;
      ++*(v7 + 16);
    }
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2583942F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928270);
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      sub_2584293C0();
      sub_2584293E0();
      result = sub_2584293F0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_258394578(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928268);
  v41 = a2;
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      if (v41)
      {
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v5 + 56) + (v20 << 6);
        v23 = *v22;
        v24 = *(v22 + 24);
        v25 = *(v22 + 32);
        v42 = *(v22 + 8);
        v43 = *(v22 + 40);
        v26 = *(v22 + 56);
      }

      else
      {
        v27 = *(*(v5 + 48) + 8 * v20);
        v28 = (*(v5 + 56) + (v20 << 6));
        v29 = *v28;
        v30 = *(v28 + 44);
        v31 = v28[2];
        *&v45[16] = v28[1];
        *v46 = v31;
        *&v46[12] = v30;
        *v45 = v29;
        v25 = v31;
        v26 = HIDWORD(v30);
        v23 = v29;
        v42 = *&v45[8];
        v43 = *&v46[8];
        v24 = *&v45[24];
        v21 = v27;
        sub_258389808(v45, v44, &qword_27F927FB0);
      }

      result = sub_258428D60();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + (v15 << 6);
      *v16 = v23;
      *(v16 + 8) = v42;
      *(v16 + 24) = v24;
      *(v16 + 32) = v25;
      *(v16 + 40) = v43;
      *(v16 + 56) = v26;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v41)
    {
      v39 = 1 << *(v5 + 32);
      if (v39 >= 64)
      {
        bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v39;
      }

      *(v5 + 16) = 0;
    }

    v3 = v40;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25839488C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928028);
  v30 = a2;
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2584293C0();
      sub_2584293E0();
      result = sub_2584293F0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_258394B1C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2584283F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928038);
  v42 = a2;
  result = sub_2584291B0();
  v11 = result;
  if (*(v9 + 16))
  {
    v46 = v8;
    v38 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v39 = (v6 + 16);
    v40 = v6;
    v43 = (v6 + 32);
    v18 = result + 64;
    v41 = v9;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v45 = *(v6 + 72);
      v26 = v25 + v45 * v24;
      if (v42)
      {
        (*v43)(v46, v26, v5);
      }

      else
      {
        (*v39)(v46, v26, v5);
      }

      v27 = (*(v9 + 56) + 8 * v24);
      v28 = *(v27 + 1);
      v44 = *v27;
      sub_258398064();
      result = sub_258428580();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v43)(*(v11 + 48) + v45 * v19, v46, v5);
      v20 = *(v11 + 56) + 8 * v19;
      *v20 = v44;
      *(v20 + 4) = v28;
      ++*(v11 + 16);
      v6 = v40;
      v9 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_258394ECC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928290);
  result = sub_2584291B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (1)
    {
      if (v12)
      {
        v16 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v17 = v16 | (v8 << 6);
        if (a2)
        {
LABEL_10:
          v18 = *(*(v5 + 48) + 8 * v17);
          v19 = (*(v5 + 56) + 496 * v17);
          goto LABEL_17;
        }
      }

      else
      {
        v20 = v8;
        do
        {
          v8 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v8 >= v13)
          {
            if (a2)
            {
              v29 = 1 << *(v5 + 32);
              if (v29 >= 64)
              {
                bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v29;
              }

              *(v5 + 16) = 0;
            }

            v3 = v30;
            goto LABEL_33;
          }

          v21 = v9[v8];
          ++v20;
        }

        while (!v21);
        v12 = (v21 - 1) & v21;
        v17 = __clz(__rbit64(v21)) | (v8 << 6);
        if (a2)
        {
          goto LABEL_10;
        }
      }

      v18 = *(*(v5 + 48) + 8 * v17);
      memcpy(__dst, (*(v5 + 56) + 496 * v17), sizeof(__dst));
      sub_258389808(__dst, __src, &qword_27F927FD8);
      v19 = __dst;
LABEL_17:
      memcpy(__src, v19, 0x1F0uLL);
      result = sub_2584293B0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v18;
      result = memcpy((*(v7 + 56) + 496 * v15), __src, 0x1F0uLL);
      ++*(v7 + 16);
    }
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2583951A0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_2584283F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928020);
  v40 = a2;
  result = sub_2584291B0();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_258398064();
      result = sub_258428580();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

id sub_25839554C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282F8);
  v2 = *v0;
  v3 = sub_2584291A0();
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

        result = v20;
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

void *sub_2583956B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928070);
  v2 = *v0;
  v3 = sub_2584291A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25839783C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2583897F8(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25839585C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928058);
  v2 = *v0;
  v3 = sub_2584291A0();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_2583959C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282C0);
  v2 = *v0;
  v3 = sub_2584291A0();
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

char *sub_258395B34()
{
  v1 = v0;
  v33 = sub_2584283F0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928280);
  v3 = *v0;
  v4 = sub_2584291A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_258395DB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282A0);
  v2 = *v0;
  v3 = sub_2584291A0();
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 192 * v17;
        v20 = *(v19 + 112);
        v22 = *(v19 + 64);
        v21 = *(v19 + 80);
        v46 = *(v19 + 96);
        v47 = v20;
        v44 = v22;
        v45 = v21;
        v24 = *(v19 + 144);
        v23 = *(v19 + 160);
        v25 = *(v19 + 128);
        v51 = *(v19 + 176);
        v49 = v24;
        v50 = v23;
        v48 = v25;
        v27 = *v19;
        v26 = *(v19 + 16);
        v28 = *(v19 + 48);
        v42 = *(v19 + 32);
        v43 = v28;
        v40 = v27;
        v41 = v26;
        *(*(v4 + 48) + 8 * v17) = v18;
        v29 = *(v4 + 56) + 192 * v17;
        v30 = v40;
        v31 = v41;
        v32 = v43;
        *(v29 + 32) = v42;
        *(v29 + 48) = v32;
        *v29 = v30;
        *(v29 + 16) = v31;
        v33 = v44;
        v34 = v45;
        v35 = v47;
        *(v29 + 96) = v46;
        *(v29 + 112) = v35;
        *(v29 + 64) = v33;
        *(v29 + 80) = v34;
        v36 = v48;
        v37 = v49;
        v38 = v50;
        *(v29 + 176) = v51;
        *(v29 + 144) = v37;
        *(v29 + 160) = v38;
        *(v29 + 128) = v36;
        result = sub_258389808(&v40, &v39, &qword_27F927FE0);
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

void *sub_258395FB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928270);
  v2 = *v0;
  v3 = sub_2584291A0();
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

void *sub_258396104()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928268);
  v2 = *v0;
  v3 = sub_2584291A0();
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + (v17 << 6));
        v21 = v19[1];
        v20 = v19[2];
        v22 = *v19;
        *&v31[12] = *(v19 + 44);
        v30 = v21;
        *v31 = v20;
        v29 = v22;
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + (v17 << 6));
        v24 = v29;
        v25 = v30;
        v26 = *v31;
        *(v23 + 44) = *&v31[12];
        v23[1] = v25;
        v23[2] = v26;
        *v23 = v24;
        v27 = v18;
        result = sub_258389808(&v29, &v28, &qword_27F927FB0);
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

void *sub_2583962C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928028);
  v2 = *v0;
  v3 = sub_2584291A0();
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

char *sub_258396424()
{
  v1 = v0;
  v34 = sub_2584283F0();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928038);
  v3 = *v0;
  v4 = sub_2584291A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v36;
        v20 = *(v36 + 72) * v18;
        v22 = v33;
        v21 = v34;
        (*(v36 + 16))(v33, *(v3 + 48) + v20, v34);
        v18 *= 8;
        v23 = *(v3 + 56) + v18;
        v24 = *v23;
        v25 = *(v23 + 4);
        v26 = v35;
        result = (*(v19 + 32))(*(v35 + 48) + v20, v22, v21);
        v27 = *(v26 + 56) + v18;
        *v27 = v24;
        *(v27 + 4) = v25;
        v13 = v37;
      }

      while (v37);
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

        v1 = v29;
        v5 = v35;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
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

void *sub_2583966B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928290);
  v2 = *v0;
  v3 = sub_2584291A0();
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
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        memcpy(__dst, (*(v2 + 56) + 496 * v17), 0x1F0uLL);
        *(*(v4 + 48) + 8 * v17) = v18;
        memcpy((*(v4 + 56) + 496 * v17), __dst, 0x1F0uLL);
        result = sub_258389808(__dst, &v19, &qword_27F927FD8);
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

char *sub_258396860()
{
  v1 = v0;
  v31 = sub_2584283F0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928020);
  v3 = *v0;
  v4 = sub_2584291A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
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

uint64_t sub_258396AD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258428E90() + 1) & ~v5;
    do
    {
      sub_2584293C0();

      sub_2584286C0();
      v10 = sub_2584293F0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_258396C84(int64_t a1, uint64_t a2)
{
  v4 = sub_2584283F0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_258428E90();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_258398064();
      v21 = sub_258428580();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_258396F3C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258428E90() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2584293B0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          result = v15 + 192 * v3;
          v16 = (v15 + 192 * v6);
          if (192 * v3 < (192 * v6) || result >= v16 + 192 || v3 != v6)
          {
            result = memmove(result, v16, 0xC0uLL);
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

void sub_2583970C4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258428E90() + 1) & ~v5;
    do
    {
      v12 = *(*(a2 + 48) + 8 * v6);
      v13 = sub_258428D60();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = *(a2 + 48);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + (v3 << 6));
          v22 = (v20 + (v6 << 6));
          if (v3 << 6 != v6 << 6 || (v3 = v6, v21 >= v22 + 4))
          {
            v9 = *v22;
            v10 = v22[1];
            v11 = v22[3];
            v21[2] = v22[2];
            v21[3] = v11;
            *v21 = v9;
            v21[1] = v10;
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

uint64_t sub_258397264(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_258428E90() + 1) & ~v5;
    do
    {
      sub_2584293C0();
      sub_2584293E0();
      result = sub_2584293F0();
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

uint64_t sub_25839740C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_25839783C(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_2583897F8(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_258385E40(v21, &qword_27F9282C8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25839756C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9282E8);
    v3 = sub_258428FB0();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_258428660();
      sub_2584293C0();
      v27 = v7;
      sub_2584286C0();
      v8 = sub_2584293F0();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_258428660();
        v18 = v17;
        if (v16 == sub_258428660() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_258429310();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_258397760(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2583977BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t _s17MeasureFoundation18RecordReplayOptionO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_25839783C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_2583978E8()
{
  result = qword_27F928260;
  if (!qword_27F928260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F928260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordReplayOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecordReplayOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_258397ACC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v48 = a1;
  v49 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v50 = v8;
  v51 = 0;
  v52 = v11 & v9;
  v53 = a2;
  v54 = a3;

  sub_25839740C(&v46);
  v12 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    goto LABEL_25;
  }

  v13 = v46;
  sub_2583897F8(v47, v45);
  v14 = *a5;
  result = sub_258384364(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_25839337C(v20, a4 & 1);
    result = sub_258384364(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_258429390();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_2583956B8();
    result = v26;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v23 = *a5;
    v24 = 32 * result;
    sub_25839783C(*(*a5 + 56) + 32 * result, v44);
    __swift_destroy_boxed_opaque_existential_0(v45);

    v25 = *(v23 + 56);
    __swift_destroy_boxed_opaque_existential_0(v25 + v24);
    sub_2583897F8(v44, (v25 + v24));
    goto LABEL_15;
  }

LABEL_13:
  v27 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v28 = (v27[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_2583897F8(v45, (v27[7] + 32 * result));
  v29 = v27[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v27[2] = v30;
LABEL_15:
    sub_25839740C(&v46);
    v12 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v46;
        sub_2583897F8(v47, v45);
        v34 = *a5;
        result = sub_258384364(v13, v12);
        v36 = *(v34 + 16);
        v37 = (v35 & 1) == 0;
        v19 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v35;
        if (*(v34 + 24) < v38)
        {
          sub_25839337C(v38, 1);
          result = sub_258384364(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v31 = *a5;
          v32 = 32 * result;
          sub_25839783C(*(*a5 + 56) + 32 * result, v44);
          __swift_destroy_boxed_opaque_existential_0(v45);

          v33 = *(v31 + 56);
          __swift_destroy_boxed_opaque_existential_0(v33 + v32);
          sub_2583897F8(v44, (v33 + v32));
        }

        else
        {
          v40 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_2583897F8(v45, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_25839740C(&v46);
        v12 = *(&v46 + 1);
      }

      while (*(&v46 + 1));
    }

LABEL_25:
    sub_2583980BC();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_258397E08(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_258428F10();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928278);
      result = sub_258428FB0();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_258428F10();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = v3 + 56;
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x259C7E900](v5, v19);
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    sub_2584293C0();
    sub_2584283F0();
    sub_258398064();
    sub_258428590();
    result = sub_2584293F0();
    v9 = -1 << *(v3 + 32);
    v10 = result & ~v9;
    v11 = v10 >> 6;
    v12 = *(v6 + 8 * (v10 >> 6));
    v13 = 1 << v10;
    if (((1 << v10) & v12) != 0)
    {
      v14 = ~v9;
      while (1)
      {

        v15 = sub_2584283C0();

        if (v15)
        {
          break;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v6 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      v16 = *(v3 + 16);
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      *(v3 + 16) = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_258398064()
{
  result = qword_27F927FC8;
  if (!qword_27F927FC8)
  {
    sub_2584283F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F927FC8);
  }

  return result;
}

void static NSThread.prettyPrintCallStack(toDepth:)(unint64_t a1, char a2)
{
  v4 = [objc_opt_self() callStackSymbols];
  v5 = sub_258428860();

  if (a2)
  {
    v6 = &qword_27F928300;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928300);
    v7 = &unk_27F928308;
LABEL_6:
    sub_258398260(v7, v6);
    sub_2584285B0();

    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v5 + 16) >= a1)
  {
    v6 = &qword_27F928310;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F928310);
    v7 = &unk_27F928318;
    goto LABEL_6;
  }

  __break(1u);
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

uint64_t sub_258398260(unint64_t *a1, uint64_t *a2)
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

float64_t SIMD2<>.init(_:)(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  *&a1.f64[0] = vcvt_f32_f64(a1);
  return a1.f64[0];
}

float32x2_t sub_2583983D4(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    v5 = 0;
    v6 = *(a1 + 16);
    do
    {
      v7 = *v4++;
      HIDWORD(a3) = v7.i32[1];
      v5 = vadd_f32(v5, v7);
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  *&a3 = v3;
  return vdiv_f32(v5, vdup_lane_s32(*&a3, 0));
}

__int128 *SIMD3<>.forward.unsafeMutableAddressor()
{
  if (qword_27F9279F8 != -1)
  {
    swift_once();
  }

  return &static SIMD3<>.forward;
}

double sub_258398494()
{
  result = 0.00781250185;
  static SIMD3<>.one = xmmword_25842D340;
  return result;
}

__int128 *SIMD3<>.one.unsafeMutableAddressor()
{
  if (qword_27F9279E8 != -1)
  {
    swift_once();
  }

  return &static SIMD3<>.one;
}

__int128 *SIMD3<>.zero.unsafeMutableAddressor()
{
  if (qword_27F9279F0 != -1)
  {
    swift_once();
  }

  return &static SIMD3<>.zero;
}

double sub_2583985A0()
{
  result = 0.0;
  static SIMD3<>.forward = xmmword_25842CBC0;
  return result;
}

double sub_2583985D8()
{
  result = 0.0078125;
  static SIMD3<>.up = xmmword_25842D350;
  return result;
}

__int128 *SIMD3<>.up.unsafeMutableAddressor()
{
  if (qword_27F927A00 != -1)
  {
    swift_once();
  }

  return &static SIMD3<>.up;
}

double sub_258398660()
{
  *&result = 1065353216;
  static SIMD3<>.right = xmmword_25842D360;
  return result;
}

__int128 *SIMD3<>.right.unsafeMutableAddressor()
{
  if (qword_27F927A08 != -1)
  {
    swift_once();
  }

  return &static SIMD3<>.right;
}

__n128 sub_2583986E8(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  else
  {
    swift_once();
    return *a2;
  }
}

float32_t SIMD3<>.lerp(to:t:)(float32x4_t a1, float a2)
{
  v3 = vsubq_f32(a1, *v2);
  v4.i64[0] = vaddq_f32(*v2, vmulq_n_f32(v3, a2)).u64[0];
  result = COERCE_FLOAT(v2->i64[1]) + vmuls_lane_f32(a2, v3, 2);
  v4.f32[2] = result;
  v4.i32[3] = HIDWORD(*v2);
  *v2 = v4;
  return result;
}

float32x4_t static SIMD3<>.*= infix(_:_:)(float32x4_t *a1, float32x4_t a2)
{
  result = vmulq_f32(*a1, a2);
  result.i32[3] = 0;
  *a1 = result;
  return result;
}

double static SIMD3<>./ infix(_:_:)(uint64_t a1, float32x4_t a2, double a3)
{
  *&a3 = a1;
  *&result = vdivq_f32(a2, vdupq_lane_s32(*&a3, 0)).u64[0];
  return result;
}

float32_t static SIMD3<>./= infix(_:_:)(float32x4_t *a1, double a2)
{
  *&v2 = COERCE_FLOAT(a1->i64[1]) / *&a2;
  v3.i64[0] = vdivq_f32(*a1, vdupq_lane_s32(*&a2, 0)).u64[0];
  v3.i64[1] = v2;
  *a1 = v3;
  return v3.f32[0];
}

double static SIMD3<>.rotateAboutY(_:center:sin:cos:)(float32x4_t a1, float32x4_t a2, float a3, float a4)
{
  v4 = vsubq_f32(a1, a2);
  *&v5 = a2.f32[0] + ((a4 * v4.f32[0]) - vmuls_lane_f32(a3, v4, 2));
  HIDWORD(v5) = a1.i32[1];
  return v5;
}

__n64 static SIMD3<>.rotateAboutY(_:center:angle:)(float32x4_t a1, float32x4_t a2, float a3)
{
  v6 = a2.f32[0];
  v7 = a1.u32[1];
  v5 = vsubq_f32(a1, a2);
  v3 = __sincosf_stret(a3);
  result.n64_f32[0] = v6 + ((v3.__cosval * v5.f32[0]) - vmuls_lane_f32(v3.__sinval, v5, 2));
  result.n64_u32[1] = v7;
  return result;
}

float32x2_t static SIMD3<>.crossXZ(_:_:)(int8x16_t a1, int8x16_t a2)
{
  v2.i32[0] = vextq_s8(a2, a2, 8uLL).u32[0];
  v2.i32[1] = a2.i32[0];
  v3 = vmul_f32(vzip1_s32(*a1.i8, *&vextq_s8(a1, a1, 8uLL)), v2);
  return vsub_f32(v3, vdup_lane_s32(v3, 1));
}

float static SIMD3<>.distanceXZ(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, a1);
  v3 = vmulq_f32(v2, v2);
  return sqrtf(vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL)).f32[0]);
}

float32x2_t static SIMD3<>.distanceXZSquared(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vsubq_f32(a2, a1);
  v3 = vmulq_f32(v2, v2);
  return vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
}

float static SIMD3<>.cosXZ(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  v3 = vzip1_s32(*a1.f32, *a2.f32);
  v4 = vzip1_s32(*&vextq_s8(a1, a1, 8uLL), *&vextq_s8(a2, a2, 8uLL));
  v5 = vsqrt_f32(vadd_f32(vmul_f32(v3, v3), vmul_f32(v4, v4)));
  return (v2.f32[0] + v2.f32[2]) / vmul_lane_f32(v5, v5, 1).f32[0];
}

uint64_t static SIMD3<>.== infix(_:_:)(float32x4_t a1, float32x4_t a2)
{
  v2 = vmovn_s32(vceqq_f32(a1, a2));
  if (v2.i16[0] & v2.i16[1])
  {
    return v2.i8[4] & 1;
  }

  else
  {
    return 0;
  }
}

BOOL SIMD3<>.isAlmostVertical(withinDegrees:)(float a1, float32x4_t a2)
{
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  v5 = vmulq_f32(vmulq_n_f32(a2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]), xmmword_25842D350);
  return (acosf(fminf(fmaxf(fabsf(v5.f32[2] + vaddv_f32(*v5.f32)), 0.0), 1.0)) * 57.296) <= a1;
}

BOOL SIMD3<>.isAlmostHorizontal(withinDegrees:)(float a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v4 = vmulq_f32(vmulq_n_f32(a2, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]), xmmword_25842D350);
  return fabsf(v4.f32[2] + vaddv_f32(*v4.f32)) <= cosf((90.0 - a1) * 0.017453);
}

double _ss5SIMD3V17MeasureFoundationSfRszrlE7averageyABySfGSayAEGFZ_0(float32x4_t *a1, double a2, double a3)
{
  v3 = a1[1].u64[0];
  if (v3)
  {
    v4 = a1 + 2;
    v5 = 0uLL;
    v6 = a1[1].i64[0];
    do
    {
      v7 = *v4++;
      HIDWORD(a3) = v7.i32[1];
      v5 = vaddq_f32(v5, v7);
      v5.i32[3] = 0;
      --v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0uLL;
  }

  *&a3 = v3;
  *&result = vdivq_f32(v5, vdupq_lane_s32(*&a3, 0)).u64[0];
  return result;
}

uint64_t Double.toUInt8.getter(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 256.0)
  {
    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_258398BC8@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double sub_258398BDC@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double sub_258398BF0@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

double sub_258398C04@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

double sub_258398C18@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_258398C24()
{
  v1 = *v0;
  if ((*v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 256.0)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Float.toUInt8.getter(float a1)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 256.0)
  {
    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

float sub_258398CC8@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

float sub_258398CDC@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

float sub_258398CF0@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

float sub_258398D04@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  result = *a1 / *a2;
  *a3 = result;
  return result;
}

float sub_258398D18@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_258398D24()
{
  v1 = *v0;
  if ((*v0 & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 256.0)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}