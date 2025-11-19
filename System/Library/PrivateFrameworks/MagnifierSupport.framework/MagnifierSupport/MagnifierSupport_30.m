uint64_t sub_257E98CA4(uint64_t a1, void *a2)
{
  v4 = sub_257ECDA30();
  *&v102 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetectedTextBlock();
  v8 = *(v7 - 8);
  v105 = v7;
  v106 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB730);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v98 - v15;
  v104 = type metadata accessor for SpatialTextBlock();
  v103 = *(v104 - 1);
  MEMORY[0x28223BE20](v104);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5250);
  MEMORY[0x28223BE20](a1);
  v21 = &v98 - v20;
  v22 = *(a1 + 16);
  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
    return v23;
  }

  v100 = v13;
  v101 = v19;
  v24 = a2;
  v25 = sub_257E98538(v19, a2);
  if (!v25)
  {
LABEL_15:
    sub_257ECD490();
    v50 = sub_257ECDA20();
    v51 = sub_257ECFBE0();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_257BAC000, v50, v51, "Cannot group and sort 3D text groups. Sorting 2D text blocks instead", v52, 2u);
      MEMORY[0x259C74820](v52, -1, -1);
    }

    (*(v102 + 8))(v6, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5958);
    v23 = swift_allocObject();
    *(v23 + 1) = xmmword_257ED6D30;
    v111 = v101;

    sub_257E94C14(&v111);
    v23[4] = v111;
    return v23;
  }

  v26 = v4;
  v115[0] = v25;

  v28 = sub_257EA991C(v27, 0.15);

  if (!v28)
  {

    v4 = v26;
    goto LABEL_15;
  }

  v114 = v23;
  v29 = [v24 camera];
  [v29 transform];
  v102 = v30;

  v31 = v102;
  v31.i32[3] = 0;
  sub_257E95474(v28, &v108, v31, 0.25);
  *&v102 = v10;
  if (AssociatedTypeWitness)
  {
    sub_257BE40E4(&v108, &v111);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5958);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    v33 = v112;
    v34 = v113;
    v35 = __swift_project_boxed_opaque_existential_1(&v111, v112);
    MEMORY[0x28223BE20](v35);
    *(&v98 - 2) = v115;
    *&v108 = sub_257E93C58(sub_257E999F8, (&v98 - 4), v33, v105, MEMORY[0x277D84A98], v34, MEMORY[0x277D84AC0], v36);

    sub_257E94C14(&v108);
    v99 = 0;
    v101 = v28;

    *(inited + 32) = v108;
    sub_257EB1420(inited);
    v37 = __swift_project_boxed_opaque_existential_1(&v111, v112);
    v38 = MEMORY[0x28223BE20](v37);
    (*(v40 + 16))(&v98 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v38);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v108);
    sub_257ECF730();
    v41 = (v103 + 48);
    v42 = (v106 + 56);
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(&v108, AssociatedTypeWitness);
      sub_257ED00E0();
      if ((*v41)(v21, 1, v104) == 1)
      {
        break;
      }

      sub_257BD584C(v21, v18, type metadata accessor for SpatialTextBlock);
      v44 = sub_257C0458C(v18);
      if (v45)
      {
        v46 = v44;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v115[0];
        v107 = v115[0];
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_257C096C8();
          v48 = v107;
        }

        sub_257BD57EC(*(v48 + 48) + *(v103 + 72) * v46, type metadata accessor for SpatialTextBlock);
        sub_257BD584C(*(v48 + 56) + *(v106 + 72) * v46, v16, type metadata accessor for DetectedTextBlock);
        sub_257C079B8(v46, v48);
        sub_257BD57EC(v18, type metadata accessor for SpatialTextBlock);
        v43 = 0;
        v115[0] = v48;
      }

      else
      {
        sub_257BD57EC(v18, type metadata accessor for SpatialTextBlock);
        v43 = 1;
      }

      (*v42)(v16, v43, 1, v105);
      sub_257BE4084(v16, &qword_27F8FB730);
    }

    __swift_destroy_boxed_opaque_existential_0(&v108);
    __swift_destroy_boxed_opaque_existential_0(&v111);
    v28 = v101;
    v49 = v99;
  }

  else
  {
    v49 = 0;
  }

  v53 = sub_257E93B60(v28, v115);

  v54 = *(v53 + 16);
  if (v54)
  {
    v55 = 0;
    v56 = v54 - 1;
    v57 = MEMORY[0x277D84F98];
    while (2)
    {
      v58 = v55;
      while (1)
      {
        if (v58 >= *(v53 + 16))
        {
          goto LABEL_66;
        }

        v111 = *(v53 + 32 + 8 * v58);
        swift_bridgeObjectRetain_n();
        sub_257E94C14(&v111);
        if (v49)
        {
          goto LABEL_72;
        }

        if (v111[2])
        {
          break;
        }

        ++v58;

        if (v54 == v58)
        {
          goto LABEL_40;
        }
      }

      v103 = v56;
      v59 = *(v106 + 80);
      v104 = v111;
      v60 = v100;
      sub_257C31F70(v111 + ((v59 + 32) & ~v59), v100, type metadata accessor for DetectedTextBlock);
      v61 = v60;
      v62 = v102;
      sub_257C31F70(v61, v102, type metadata accessor for DetectedTextBlock);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v111 = v57;
      v64 = sub_257C0422C(v62);
      v66 = v57[2];
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        goto LABEL_70;
      }

      v70 = v65;
      if (v57[3] >= v69)
      {
        if ((v63 & 1) == 0)
        {
          v72 = v64;
          sub_257C099BC();
          v64 = v72;
          v57 = v111;
          if (v70)
          {
            goto LABEL_33;
          }

          goto LABEL_35;
        }
      }

      else
      {
        sub_257EC66D0(v69, v63);
        v64 = sub_257C0422C(v102);
        if ((v70 & 1) != (v71 & 1))
        {
          goto LABEL_73;
        }
      }

      v57 = v111;
      if (v70)
      {
LABEL_33:
        *(v57[7] + 8 * v64) = v104;

        sub_257BD57EC(v102, type metadata accessor for DetectedTextBlock);
        sub_257BD57EC(v100, type metadata accessor for DetectedTextBlock);
        goto LABEL_37;
      }

LABEL_35:
      v57[(v64 >> 6) + 8] |= 1 << v64;
      v73 = v64;
      v74 = v102;
      sub_257C31F70(v102, v57[6] + *(v106 + 72) * v64, type metadata accessor for DetectedTextBlock);
      *(v57[7] + 8 * v73) = v104;
      sub_257BD57EC(v74, type metadata accessor for DetectedTextBlock);
      sub_257BD57EC(v100, type metadata accessor for DetectedTextBlock);
      v75 = v57[2];
      v68 = __OFADD__(v75, 1);
      v76 = v75 + 1;
      if (v68)
      {
        goto LABEL_71;
      }

      v57[2] = v76;
LABEL_37:
      v56 = v103;
      v55 = v58 + 1;
      if (v103 != v58)
      {
        continue;
      }

      goto LABEL_40;
    }
  }

  v57 = MEMORY[0x277D84F98];
LABEL_40:

  v77 = v57[2];
  v78 = MEMORY[0x277D84F90];
  if (v77)
  {
    v79 = sub_257C63E90(v57[2], 0);
    sub_257C67D30(&v111, v79 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v77, v57);
    v81 = v80;

    sub_257C02520();
    if (v81 != v77)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v78 = MEMORY[0x277D84F90];
  }

  else
  {
    v79 = MEMORY[0x277D84F90];
  }

  v111 = v79;
  sub_257ECC3F0();
  sub_257E94C14(&v111);
  if (!v49)
  {
    v105 = 0;

    v49 = v111;
    v82 = v111[2];
    if (v82)
    {
      v111 = v78;
      sub_257BF2A64(0, v82, 0);
      v83 = 0;
      v84 = v111;
      v85 = (v49 + ((*(v106 + 80) + 32) & ~*(v106 + 80)));
      while (v57[2])
      {
        v86 = sub_257C0422C(&v85[*(v106 + 72) * v83]);
        if ((v87 & 1) == 0)
        {
          goto LABEL_68;
        }

        v88 = *(v57[7] + 8 * v86);
        v111 = v84;
        v90 = v84[2];
        v89 = v84[3];

        if (v90 >= v89 >> 1)
        {
          sub_257BF2A64((v89 > 1), v90 + 1, 1);
          v84 = v111;
        }

        ++v83;
        v84[2] = v90 + 1;
        v84[v90 + 4] = v88;
        if (v82 == v83)
        {

          goto LABEL_54;
        }
      }
    }

    else
    {

      v84 = MEMORY[0x277D84F90];
LABEL_54:
      sub_257EB1420(v84);
      v91 = 0;
      v92 = v114;
      v93 = v114[2];
      v23 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v93 == v91)
        {

          return v23;
        }

        if (v91 >= v92[2])
        {
          break;
        }

        v94 = v92[v91++ + 4];
        if (*(v94 + 16))
        {

          v95 = swift_isUniquelyReferenced_nonNull_native();
          v111 = v23;
          if ((v95 & 1) == 0)
          {
            sub_257BF2A64(0, v23[2] + 1, 1);
            v23 = v111;
          }

          v49 = v23[2];
          v96 = v23[3];
          if (v49 >= v96 >> 1)
          {
            sub_257BF2A64((v96 > 1), v49 + 1, 1);
            v23 = v111;
          }

          v23[2] = v49 + 1;
          v23[v49 + 4] = v94;
        }
      }

      __break(1u);
LABEL_66:
      __break(1u);
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_72:

  __break(1u);
LABEL_73:
  sub_257ED06C0();
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_257E99A18()
{
  result = qword_27F8FB738;
  if (!qword_27F8FB738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F69A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB738);
  }

  return result;
}

uint64_t sub_257E99A7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257BE3DE0;

  return sub_257E960D4(a1, v4, v5, v6, v7);
}

void static MAGImageUtils.convertToJPEGData(_:scale:orientation:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:a1 scale:a2 orientation:a3];
  v4 = UIImageJPEGRepresentation(v3, 1.0);
  if (v4)
  {
    v5 = v4;
    sub_257ECCBA0();
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v6 = 0xD000000000000038;
    *(v6 + 8) = 0x8000000257EF91B0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 2;
    swift_willThrow();
  }
}

uint64_t static MAGImageUtils.convertToJPEGData(_:quality:maxDimensionSize:)(uint64_t a1, uint64_t a2, char a3, CGFloat a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
  if ((a3 & 1) == 0)
  {
    [v7 extent];
    Width = CGRectGetWidth(v26);
    [v7 extent];
    Height = CGRectGetHeight(v27);
    v11 = Height / Width * *&a2;
    v12 = *&a2 / Width;
    v13 = Width / Height * *&a2;
    if (Width >= Height)
    {
      v13 = *&a2;
    }

    else
    {
      v11 = *&a2;
    }

    if (Width < Height)
    {
      v12 = *&a2 / Height;
    }

    v14 = Width <= *&a2 || Height <= *&a2;
    if (v14)
    {
      v15 = Height;
    }

    else
    {
      v15 = v11;
    }

    if (!v14)
    {
      Width = v13;
    }

    v16 = Height / Height;
    if (!v14)
    {
      v16 = v12;
    }

    CGAffineTransformMakeScale(&v25, v16, v16);
    v17 = [v7 imageByApplyingTransform_];
    v18 = [v17 imageByCroppingToRect_];

    v19 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
    v8 = v19;
  }

  v20 = UIImageJPEGRepresentation(v8, a4);
  if (v20)
  {
    v21 = v20;
    v22 = sub_257ECCBA0();
  }

  else
  {
    v22 = 0x8000000257EF91B0;
    sub_257BEBEF0();
    swift_allocError();
    *v23 = 0xD000000000000038;
    *(v23 + 8) = 0x8000000257EF91B0;
    *(v23 + 16) = 0;
    *(v23 + 24) = 2;
    swift_willThrow();
  }

  return v22;
}

uint64_t MAGCVPixelBufferWrapper.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id static MAGImageUtils.convertToImage2(_:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v2 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];

  return v2;
}

uint64_t static MAGImageUtils.convertToJPEGData(_:quality:)(UIImage *a1, CGFloat a2)
{
  v2 = UIImageJPEGRepresentation(a1, a2);
  if (v2)
  {
    v3 = v2;
    v4 = sub_257ECCBA0();

    return v4;
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v6 = 0xD000000000000038;
    *(v6 + 8) = 0x8000000257EF91B0;
    *(v6 + 16) = 0;
    *(v6 + 24) = 2;
    return swift_willThrow();
  }
}

uint64_t static MAGImageUtils.convertToPNGData(_:)(UIImage *a1)
{
  v1 = UIImagePNGRepresentation(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_257ECCBA0();

    return v3;
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v5 = 0xD000000000000036;
    *(v5 + 8) = 0x8000000257F09DC0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 2;
    return swift_willThrow();
  }
}

void sub_257E9A0D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id static MAGImageUtils.convertToImage(_:scale:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v5 = sub_257ECCB90();
    v6 = [v4 initWithData_];
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v5 = sub_257ECCB90();
    v6 = [v8 initWithData:v5 scale:*&a3];
  }

  v9 = v6;

  if (!v9)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v10 = 0xD000000000000029;
    *(v10 + 8) = 0x8000000257F09E00;
    *(v10 + 16) = 0;
    *(v10 + 24) = 2;
    swift_willThrow();
  }

  return v9;
}

id static MAGImageUtils.convertToImage(_:scale:orientation:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);

  return [v6 initWithCGImage:a1 scale:a2 orientation:a3];
}

id static MAGImageUtils.convertToCGImage(_:)(void *a1)
{
  result = [a1 CGImage];
  if (!result)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v2 = 0xD00000000000002BLL;
    *(v2 + 8) = 0x8000000257F09E30;
    *(v2 + 16) = 0;
    *(v2 + 24) = 2;
    swift_willThrow();
    return 0;
  }

  return result;
}

void static MAGImageUtils.convertToPNGData(_:)(__CVBuffer *a1)
{
  v2 = sub_257E9C938(a1);
  if (!v1)
  {
    v3 = v2;
    v4 = UIImagePNGRepresentation(v2);
    if (v4)
    {
      v5 = v4;
      sub_257ECCBA0();
    }

    else
    {
      sub_257BEBEF0();
      swift_allocError();
      *v6 = 0xD00000000000003DLL;
      *(v6 + 8) = 0x8000000257F09E60;
      *(v6 + 16) = 0;
      *(v6 + 24) = 2;
      swift_willThrow();
    }
  }
}

uint64_t static MAGImageUtils.resizeImageData(_:maxDimension:format:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v12 = *(a4 + 8);
  v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v14 = sub_257ECCB90();
  v15 = [v13 initWithData_];

  if (!v15)
  {
    sub_257BEBEF0();
    swift_allocError();
    *v38 = 0xD000000000000035;
    *(v38 + 8) = 0x8000000257F09EA0;
    *(v38 + 16) = 0;
    *(v38 + 24) = 2;
    swift_willThrow();
    return v4;
  }

  [v15 size];
  v17 = v16;
  v19 = v18;
  v20 = v16 / v18;
  v21 = v18 < v16;
  v22 = v16 / v18 * a1;
  if (v21)
  {
    v23 = a1;
  }

  else
  {
    v23 = v22;
  }

  if (v21)
  {
    a1 = a1 / v20;
  }

  sub_257ECD340();
  v24 = sub_257ECDA20();
  v25 = sub_257ECFC00();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134219008;
    *(v26 + 4) = v17;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v19;
    *(v26 + 22) = 2048;
    *(v26 + 24) = v20;
    *(v26 + 32) = 2048;
    *(v26 + 34) = v23;
    *(v26 + 42) = 2048;
    *(v26 + 44) = a1;
    _os_log_impl(&dword_257BAC000, v24, v25, "Will resize image. originalSize=[%f x %f] aspectRatio=%f targetSize=[%f x %f]", v26, 0x34u);
    MEMORY[0x259C74820](v26, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v27 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  [v27 setScale_];
  v28 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v27 format:{v23, a1}];
  v29 = swift_allocObject();
  *(v29 + 16) = v15;
  *(v29 + 24) = v23;
  *(v29 + 32) = a1;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_257E9D288;
  *(v30 + 24) = v29;
  aBlock[4] = sub_257E9D2A4;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257E9A0D4;
  aBlock[3] = &block_descriptor_65;
  v31 = _Block_copy(aBlock);
  sub_257ECC3F0();
  v32 = v15;

  v33 = [v28 imageWithActions_];
  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {
    if (v12)
    {
      v35 = UIImagePNGRepresentation(v33);
      if (!v35)
      {
        v4 = 0x8000000257F09F20;
        sub_257BEBEF0();
        swift_allocError();
        v37 = 0xD000000000000030;
LABEL_18:
        *v36 = v37;
        *(v36 + 8) = v4;
        *(v36 + 16) = 0;
        *(v36 + 24) = 2;
        swift_willThrow();

        return v4;
      }
    }

    else
    {
      v35 = UIImageJPEGRepresentation(v33, v11);
      if (!v35)
      {
        v4 = 0x8000000257F09EE0;
        sub_257BEBEF0();
        swift_allocError();
        v37 = 0xD000000000000031;
        goto LABEL_18;
      }
    }

    v39 = v35;
    v4 = sub_257ECCBA0();

    return v4;
  }

  __break(1u);
  return result;
}

CVPixelBufferRef static MAGImageUtils.convertToPixelBuffer(_:)(void *a1)
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 CGImage];
  if (!v2)
  {
    v17 = 0x8000000257F09F60;
    sub_257BEBEF0();
    swift_allocError();
    *v19 = 0xD00000000000003DLL;
    *(v19 + 8) = 0x8000000257F09F60;
    *(v19 + 16) = 0;
    *(v19 + 24) = 2;
    swift_willThrow();
    return v17;
  }

  v3 = v2;
  pixelBufferOut[0] = 0;
  [a1 size];
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v9 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v10 = v9;
  v11 = sub_257ECF8A0();
  v12 = *MEMORY[0x277CC4D68];
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  v13 = v12;
  *(inited + 56) = sub_257ECF8A0();
  sub_257BEA7AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB748);
  swift_arrayDestroy();
  if (v5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  if (v7 >= 9.22337204e18)
  {
    goto LABEL_24;
  }

  v14 = *MEMORY[0x277CBECE8];
  sub_257BD2C2C(0, &qword_281543DA0);
  sub_257E9D2E4();
  v15 = sub_257ECF3C0();
  v16 = CVPixelBufferCreate(v14, v5, v7, 0x20u, v15, pixelBufferOut);

  if (v16)
  {

    v17 = v16;
    sub_257BEBEF0();
    swift_allocError();
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    *v18 = v16;
    *(v18 + 24) = 1;
    swift_willThrow();

    return v17;
  }

  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
    __break(1u);
    goto LABEL_26;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut[0], 0);
  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut[0]);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  result = pixelBufferOut[0];
  if (!pixelBufferOut[0])
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut[0]);
  result = __CGBitmapContextCreate_1(BaseAddress, v5, v7, 8uLL, BytesPerRow, DeviceRGB, 6u);
  v24 = result;
  if (result)
  {
    result = sub_257ECFB70();
  }

  if (!pixelBufferOut[0])
  {
    goto LABEL_28;
  }

  v17 = pixelBufferOut[0];

  result = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    CVPixelBufferUnlockBaseAddress(pixelBufferOut[0], 0);

    return v17;
  }

LABEL_29:
  __break(1u);
  return result;
}

CVPixelBufferRef static MAGImageUtils.sharpenCVPixelBuffer(_:)(uint64_t a1)
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v2 = sub_257ECF4C0();
  v3 = [objc_opt_self() filterWithName_];

  if (!v3)
  {
    goto LABEL_12;
  }

  [v3 setValue:v1 forKey:*MEMORY[0x277CBFAF0]];
  v4 = sub_257ECCF50();
  v5 = sub_257ECF4C0();
  [v3 setValue:v4 forKey:v5];

  v6 = sub_257ECCF50();
  v7 = sub_257ECF4C0();
  [v3 setValue:v6 forKey:v7];

  v8 = [v3 outputImage];
  if (!v8)
  {

LABEL_12:
    return 0;
  }

  v9 = v8;
  pixelBufferOut[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v11 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v12 = *MEMORY[0x277CBED28];
  v13 = *MEMORY[0x277CC4D68];
  *(inited + 40) = *MEMORY[0x277CBED28];
  *(inited + 48) = v13;
  *(inited + 56) = v12;
  v14 = v12;
  v15 = v11;
  v16 = v13;
  sub_257BE95E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F95B0);
  sub_257E9D350(&qword_27F8F4C08, type metadata accessor for CFString);
  v17 = sub_257ECF3C0();

  [v9 extent];
  Width = CGRectGetWidth(v24);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v9 extent];
  Height = CGRectGetHeight(v25);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  if (Height >= 9.22337204e18)
  {
    goto LABEL_20;
  }

  CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x42475241u, v17, pixelBufferOut);
  v20 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v21 = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    [v20 render:v9 toCVPixelBuffer:pixelBufferOut[0]];

    return v21;
  }

  return 0;
}

CVPixelBufferRef static MAGImageUtils.createCVPixelBuffer(from:)()
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  v0 = sub_257ECCB90();
  v1 = CGDataProviderCreateWithCFData(v0);

  if (v1)
  {
    v2 = CGImageCreateWithJPEGDataProvider(v1, 0, 1, kCGRenderingIntentDefault);
    if (v2 || (v2 = CGImageCreateWithPNGDataProvider(v1, 0, 1, kCGRenderingIntentDefault)) != 0)
    {
      v3 = v2;
      Width = CGImageGetWidth(v2);
      Height = CGImageGetHeight(v3);
      pixelBufferOut[0] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_257ED9BD0;
      v7 = *MEMORY[0x277CC4D70];
      *(inited + 32) = *MEMORY[0x277CC4D70];
      v8 = *MEMORY[0x277CBED28];
      v9 = *MEMORY[0x277CC4D68];
      *(inited + 40) = *MEMORY[0x277CBED28];
      *(inited + 48) = v9;
      *(inited + 56) = v8;
      v10 = v8;
      v11 = v7;
      v12 = v9;
      sub_257BE95E4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A8);
      swift_arrayDestroy();
      type metadata accessor for CFString(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F95B0);
      sub_257E9D350(&qword_27F8F4C08, type metadata accessor for CFString);
      v13 = sub_257ECF3C0();

      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x20u, v13, pixelBufferOut) || !pixelBufferOut[0])
      {
      }

      else
      {
        v14 = pixelBufferOut[0];
        v15 = pixelBufferOut[0];
        CVPixelBufferLockBaseAddress(v15, 0);
        BaseAddress = CVPixelBufferGetBaseAddress(v15);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v15);
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v19 = __CGBitmapContextCreate_1(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2006u);

        if (v19)
        {
          sub_257ECFB70();
          v20 = v15;

          CVPixelBufferUnlockBaseAddress(v20, 0);
          return v14;
        }

        CVPixelBufferUnlockBaseAddress(v15, 0);
      }
    }

    else
    {
    }
  }

  return 0;
}

void *UIHostingController.init(rootView:ignoreSafeArea:)(uint64_t a1, char a2)
{
  v5 = *(v2 + *MEMORY[0x277CDDF78]);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v13 - v8, a1, v5, v7);
  v9 = sub_257ECE610();
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_257E9BB64();
  }

  (*(v6 + 8))(a1, v5);
  return v10;
}

void sub_257E9B54C(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

uint64_t MAGCVPixelBufferWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257E9B640()
{
  v1 = v0;
  sub_257ECCCF0();
  sub_257E9D350(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  v2 = type metadata accessor for CapturedImage();
  v3 = *(v0 + v2[5]);
  sub_257ED07D0();
  if (v3)
  {
    v4 = v3;
    sub_257ECFF60();
  }

  v5 = *(v1 + v2[6]);
  sub_257ED07D0();
  if (v5)
  {
    v6 = v5;
    sub_257ECFF60();
  }

  if (*(v1 + v2[7]))
  {
    sub_257ED07D0();
    type metadata accessor for CGImage(0);
    sub_257E9D350(&qword_27F8FB790, type metadata accessor for CGImage);
    sub_257ECD1F0();
  }

  else
  {
    sub_257ED07D0();
  }

  v7 = v1 + v2[8];
  if (*(v7 + 16) == 1)
  {
    sub_257ED07D0();
  }

  else
  {
    v9 = *v7;
    v8 = *(v7 + 8);
    sub_257ED07D0();
    if (v9 == 0.0)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = v9;
    }

    MEMORY[0x259C73310](*&v10);
    if (v8 == 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v8;
    }

    MEMORY[0x259C73310](*&v11);
  }

  if (!*(v1 + v2[9] + 8))
  {
    return sub_257ED07D0();
  }

  sub_257ED07D0();

  return sub_257ECF5D0();
}

uint64_t sub_257E9B890()
{
  sub_257ED07B0();
  sub_257E9B640();
  return sub_257ED0800();
}

uint64_t sub_257E9B8D4()
{
  sub_257ED07B0();
  sub_257E9B640();
  return sub_257ED0800();
}

void sub_257E9B914()
{
  v1 = v0;
  v2 = [v0 view];
  Class = object_getClass(v2);

  if (Class)
  {
    class_getName(Class);
    sub_257ECF650();
    v18 = 0x5365726F6E67495FLL;
    v19 = 0xEF61657241656661;
    v24 = sub_257ECF710();
    v25 = v4;
    sub_257ECF620();
    v5 = sub_257ECF4C0();
    v6 = NSClassFromString(v5);

    if (v6)
    {

LABEL_4:
      v7 = [v1 view];
      object_setClass(v7, v6);

      return;
    }

    v8 = sub_257ECF4C0();

    v9 = [v8 UTF8String];
    v10 = v8;
    if (v9)
    {
      ClassPair = objc_allocateClassPair(Class, v9, 0);
      if (ClassPair)
      {
        v6 = ClassPair;
        sub_257BD2C2C(0, &unk_281543E00);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        InstanceMethod = class_getInstanceMethod(ObjCClassFromMetadata, sel_safeAreaInsets);
        if (InstanceMethod)
        {
          v14 = InstanceMethod;
          v22 = sub_257E9BDB4;
          v23 = 0;
          v18 = MEMORY[0x277D85DD0];
          v19 = 1107296256;
          v20 = sub_257E9BDC8;
          v21 = &block_descriptor_51_2;
          v15 = _Block_copy(&v18);
          v16 = imp_implementationWithBlock(v15);
          TypeEncoding = method_getTypeEncoding(v14);
          class_addMethod(v6, sel_safeAreaInsets, v16, TypeEncoding);
          _Block_release(v15);
        }

        objc_registerClassPair(v6);
        goto LABEL_4;
      }
    }
  }
}

void sub_257E9BB64()
{
  v1 = v0;
  v2 = [v0 view];
  Class = object_getClass(v2);

  if (Class)
  {
    class_getName(Class);
    sub_257ECF650();
    v18 = 0x5365726F6E67495FLL;
    v19 = 0xEF61657241656661;
    v24 = sub_257ECF710();
    v25 = v4;
    sub_257ECF620();
    v5 = sub_257ECF4C0();
    v6 = NSClassFromString(v5);

    if (v6)
    {

LABEL_4:
      v7 = [v1 view];
      object_setClass(v7, v6);

      return;
    }

    v8 = sub_257ECF4C0();

    v9 = [v8 UTF8String];
    v10 = v8;
    if (v9)
    {
      ClassPair = objc_allocateClassPair(Class, v9, 0);
      if (ClassPair)
      {
        v6 = ClassPair;
        sub_257BD2C2C(0, &unk_281543E00);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        InstanceMethod = class_getInstanceMethod(ObjCClassFromMetadata, sel_safeAreaInsets);
        if (InstanceMethod)
        {
          v14 = InstanceMethod;
          v22 = sub_257E9BDB4;
          v23 = 0;
          v18 = MEMORY[0x277D85DD0];
          v19 = 1107296256;
          v20 = sub_257E9BDC8;
          v21 = &block_descriptor_28_0;
          v15 = _Block_copy(&v18);
          v16 = imp_implementationWithBlock(v15);
          TypeEncoding = method_getTypeEncoding(v14);
          class_addMethod(v6, sel_safeAreaInsets, v16, TypeEncoding);
          _Block_release(v15);
        }

        objc_registerClassPair(v6);
        goto LABEL_4;
      }
    }
  }
}

double sub_257E9BDC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_257ECC3F0();
  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3;
}

BOOL sub_257E9BE4C(uint64_t a1, uint64_t a2)
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CapturedImage();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_257BD2C2C(0, &qword_281543DF0);
    v8 = v7;
    v9 = v6;
    v10 = sub_257ECFF50();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = v4[6];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    sub_257BD2C2C(0, &qword_281543DF0);
    v14 = v13;
    v15 = v12;
    v16 = sub_257ECFF50();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v17 = v4[7];
  v18 = *(a2 + v17);
  if (*(a1 + v17))
  {
    if (!v18)
    {
      return 0;
    }

    type metadata accessor for CGImage(0);
    sub_257E9D350(&qword_27F8FB790, type metadata accessor for CGImage);
    v19 = v18;
    v20 = sub_257ECD1E0();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v21 = v4[8];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 16);
  v24 = a2 + v21;
  if (v23)
  {
    if ((*(v24 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(v24 + 16))
    {
      return 0;
    }

    if (*v22 != *v24 || v22[1] != *(v24 + 8))
    {
      return 0;
    }
  }

  v26 = v4[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    return v30 && (*v27 == *v29 && v28 == v30 || (sub_257ED0640() & 1) != 0);
  }

  return !v30;
}

void *sub_257E9C070()
{
  v0 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v1 = sub_257ECCB90();
  v2 = [v0 initWithData_];

  if (v2)
  {
    v3 = [v2 CGImage];
    if (v3)
    {
      v1 = v3;
    }

    else
    {
      v1 = 0x8000000257F09E30;
      sub_257BEBEF0();
      swift_allocError();
      *v5 = 0xD00000000000002BLL;
      *(v5 + 8) = 0x8000000257F09E30;
      *(v5 + 16) = 0;
      *(v5 + 24) = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v4 = 0xD000000000000029;
    *(v4 + 8) = 0x8000000257F09E00;
    *(v4 + 16) = 0;
    *(v4 + 24) = 2;
    swift_willThrow();
  }

  return v1;
}

CVPixelBufferRef _s16MagnifierSupport13MAGImageUtilsO20convertToPixelBuffer8imageURLSo11CVBufferRefaSg10Foundation0J0V_tFZ_0()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v0 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v1 = sub_257ECCAE0();
  v2 = [v0 initWithContentsOfURL_];

  if (!v2)
  {
    return 0;
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CBF740]) init];
  v10[0] = 0;
  [v2 extent];
  v5 = v4;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v2 extent];
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v6 >= 9.22337204e18)
  {
    goto LABEL_18;
  }

  result = CVPixelBufferCreate(0, v5, v6, 0x42475241u, 0, v10);
  if (v10[0])
  {
    result = [v3 render:v2 toCVPixelBuffer:?];
    v8 = v10[0];
    if (v10[0])
    {
      v9 = v10[0];

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

CGContextRef _s16MagnifierSupport13MAGImageUtilsO15cropPixelBuffer_0E4RectSo11CVBufferRefaSgAG_So6CGRectVtFZ_0(__CVBuffer *a1, double a2, double a3, double a4, double a5)
{
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v10 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];
  v11 = [v10 imageByCroppingToRect_];

  pixelBufferOut[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_257ED9BD0;
  v13 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v14 = *MEMORY[0x277CBED28];
  v15 = *MEMORY[0x277CC4D68];
  *(inited + 40) = *MEMORY[0x277CBED28];
  *(inited + 48) = v15;
  *(inited + 56) = v14;
  v16 = v14;
  v17 = v13;
  v18 = v15;
  sub_257BE95E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F95A8);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F95B0);
  sub_257E9D350(&qword_27F8F4C08, type metadata accessor for CFString);
  v19 = sub_257ECF3C0();

  [v11 extent];
  Width = CGRectGetWidth(v43);
  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v11 extent];
  Height = CGRectGetHeight(v44);
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x42475241u, v19, pixelBufferOut);
  v22 = pixelBufferOut[0];
  if (pixelBufferOut[0])
  {
    v23 = objc_allocWithZone(MEMORY[0x277CBF740]);
    v24 = v22;
    v25 = [v23 init];
    [v11 extent];
    v26 = [v25 createCGImage:v11 fromRect:?];

    if (!v26)
    {
LABEL_25:

      goto LABEL_26;
    }

    CVPixelBufferLockBaseAddress(v24, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v24);
    DeviceRGB = CGImageGetColorSpace(v26);
    if (!DeviceRGB)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
    }

    [v11 extent];
    v29 = CGRectGetWidth(v45);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v29 > -9.22337204e18)
      {
        if (v29 < 9.22337204e18)
        {
          [v11 extent];
          v30 = CGRectGetHeight(v46);
          if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v30 > -9.22337204e18)
            {
              if (v30 < 9.22337204e18)
              {
                v31 = v19;
                v32 = DeviceRGB;
                v33 = v30;
                BitsPerComponent = CGImageGetBitsPerComponent(v26);
                BytesPerRow = CVPixelBufferGetBytesPerRow(v24);
                v36 = v33;
                v37 = v32;
                v38 = __CGBitmapContextCreate_1(BaseAddress, v29, v36, BitsPerComponent, BytesPerRow, v32, 0x2002u);
                if (!v38)
                {

                  goto LABEL_27;
                }

                [v11 extent];
                v39 = CGRectGetWidth(v47);
                if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  if (v39 > -9.22337204e18)
                  {
                    if (v39 < 9.22337204e18)
                    {
                      v19 = v31;
                      [v11 extent];
                      v40 = CGRectGetHeight(v48);
                      if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                      {
                        if (v40 > -9.22337204e18)
                        {
                          if (v40 < 9.22337204e18)
                          {
                            sub_257ECFB70();
                            CVPixelBufferUnlockBaseAddress(v24, 0);

                            v24 = v38;
                            goto LABEL_25;
                          }

LABEL_46:
                          __break(1u);
                        }

LABEL_45:
                        __break(1u);
                        goto LABEL_46;
                      }

LABEL_44:
                      __break(1u);
                      goto LABEL_45;
                    }

LABEL_43:
                    __break(1u);
                    goto LABEL_44;
                  }

LABEL_42:
                  __break(1u);
                  goto LABEL_43;
                }

LABEL_41:
                __break(1u);
                goto LABEL_42;
              }

LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_26:

  v38 = pixelBufferOut[0];
LABEL_27:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v38;
}

id sub_257E9C938(__CVBuffer *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v8[0] = 0;
  VTCreateCGImageFromCVPixelBuffer(a1, 0, v8);
  v3 = v8[0];
  if (v8[0])
  {
    v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v5 = v3;
    v1 = [v4 initWithCGImage:v5 scale:3 orientation:1.0];
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  }

  else
  {
    sub_257BEBEF0();
    swift_allocError();
    *v6 = 0xD000000000000050;
    *(v6 + 8) = 0x8000000257F0A040;
    *(v6 + 16) = 0;
    *(v6 + 24) = 2;
    swift_willThrow();
  }

  return v1;
}

id _s16MagnifierSupport13MAGImageUtilsO11graphicIcon8iconName20parentViewControllerSo7UIImageCSgSS_So06UIViewK0CtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v66 = a2;
  v67 = a3;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB798);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v60 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  v13 = [objc_allocWithZone(MEMORY[0x277D1B1A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470);
  v14 = swift_allocObject();
  v64 = xmmword_257ED6D30;
  *(v14 + 16) = xmmword_257ED6D30;
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v14 + 56) = sub_257BD2C2C(0, &qword_281543DC0);
  *(v14 + 32) = v15;
  v16 = sub_257ECF7F0();

  [v13 setSymbolColors_];

  v17 = swift_allocObject();
  *(v17 + 16) = v64;
  v18 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithRed:0.623529412 green:0.670588235 blue:0.776470588 alpha:1.0];
  *(v17 + 56) = sub_257BD2C2C(0, &qword_27F8FB7A0);
  *(v17 + 32) = v18;
  v19 = v12;
  v20 = sub_257ECF7F0();

  [v13 setEnclosureColors_];

  v21 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v22 = v13;
  v23 = sub_257ECF4C0();
  [v21 initWithSymbolName:v23 configuration:v22];

  sub_257ECD730();
  v24 = *(v4 + 16);
  v24(v10, v19, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB7A8);
  v24(v7, v10, v3);
  v25 = v3;
  v26 = sub_257ECE610();
  sub_257E9B914();

  v29 = *(v4 + 8);
  v28 = v4 + 8;
  v27 = v29;
  v30 = v10;
  v31 = v67;
  v29(v30, v3);
  v32 = v26;
  [v31 addChildViewController_];
  v33 = [v32 view];

  if (!v33)
  {
    v27(v19, v25);

    return 0;
  }

  v62 = v27;
  v63 = v22;
  *&v64 = v19;
  v65 = v28;
  v66 = v25;
  result = [v31 view];
  if (result)
  {
    v35 = result;
    [result addSubview_];

    [v32 didMoveToParentViewController_];
    [v33 sizeToFit];
    [v33 setNeedsLayout];
    [v33 layoutIfNeeded];
    v36 = [objc_opt_self() clearColor];
    [v33 setBackgroundColor_];

    [v33 frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v45 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v46 = swift_allocObject();
    *(v46 + 16) = v33;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_257E9D7F8;
    *(v47 + 24) = v46;
    v72 = sub_257E9D890;
    v73 = v47;
    v67 = v46;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_257E9A0D4;
    v71 = &block_descriptor_38_0;
    v48 = _Block_copy(&aBlock);
    v49 = v33;
    sub_257ECC3F0();

    v61 = v45;
    v50 = [v45 imageWithActions_];
    _Block_release(v48);
    LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

    if (v48)
    {
      __break(1u);
    }

    else
    {
      v51 = CGSizeMake(result);
      v53 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
      v54 = swift_allocObject();
      *(v54 + 2) = v50;
      *(v54 + 3) = v38;
      *(v54 + 4) = v40;
      v54[5] = v42;
      v54[6] = v44;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_257E9D800;
      *(v55 + 24) = v54;
      v72 = sub_257E9D890;
      v73 = v55;
      aBlock = MEMORY[0x277D85DD0];
      v69 = 1107296256;
      v70 = sub_257E9A0D4;
      v71 = &block_descriptor_48;
      v56 = _Block_copy(&aBlock);
      v57 = v50;
      sub_257ECC3F0();

      v58 = [v53 &selRef_pinchGestureRecognizer + 2];

      _Block_release(v56);
      LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

      if ((v56 & 1) == 0)
      {
        v59 = [v58 imageWithRenderingMode_];

        [v49 removeFromSuperview];
        [v32 willMoveToParentViewController_];
        [v32 removeFromParentViewController];

        v62(v64, v66);

        return v59;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

unint64_t sub_257E9D2E4()
{
  result = qword_27F8FB750;
  if (!qword_27F8FB750)
  {
    sub_257BD2C2C(255, &qword_281543DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB750);
  }

  return result;
}

uint64_t sub_257E9D350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MAGImageUtils.ImageFormat(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MAGImageUtils.ImageFormat(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_257E9D3F8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_257E9D414(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CapturedImage()
{
  result = qword_27F8FB758;
  if (!qword_27F8FB758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257E9D558()
{
  sub_257ECCCF0();
  if (v0 <= 0x3F)
  {
    sub_257E9D65C();
    if (v1 <= 0x3F)
    {
      sub_257E9D6C4(319, &qword_27F8FB770, type metadata accessor for CGImage);
      if (v2 <= 0x3F)
      {
        sub_257E9D6C4(319, &qword_27F8FB778, type metadata accessor for CGSize);
        if (v3 <= 0x3F)
        {
          sub_257E9D718();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_257E9D65C()
{
  if (!qword_27F8FB768)
  {
    sub_257BD2C2C(255, &qword_281543DF0);
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FB768);
    }
  }
}

void sub_257E9D6C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_257ED00C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_257E9D718()
{
  if (!qword_27F8FB780)
  {
    v0 = sub_257ED00C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8FB780);
    }
  }
}

id sub_257E9D800(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = CGSizeMake(a1);

  return [v2 drawInRect_];
}

uint64_t UInt32.string.getter(int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB7B0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_257EDC1F0;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(result + 32) = HIBYTE(a1);
  if ((a1 & 0x800000) != 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(result + 33) = BYTE2(a1);
  if ((a1 & 0x8000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(result + 34) = BYTE1(a1);
  if ((a1 & 0x80) == 0)
  {
    *(result + 35) = a1;
    *(result + 36) = 0;
    v4 = sub_257E9DC08(result, v3);
    swift_setDeallocating();
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t _ss6UInt32V16MagnifierSupportE20unicodeScalarLiteralABSS_tcfC_0(unint64_t a1, unint64_t a2)
{
  if (sub_257ECF5E0() != 4)
  {
    goto LABEL_36;
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v5 = (a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : a1 & 0xFFFFFFFFFFFFLL;
  if (v5 != 4)
  {
LABEL_36:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5470);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_257ED6D30;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_257ED02D0();
    MEMORY[0x259C72150](0xD000000000000025, 0x8000000257F0A0A0);
    MEMORY[0x259C72150](a1, a2);

    MEMORY[0x259C72150](0xD000000000000033, 0x8000000257F0A0D0);
    v16 = v19;
    v17 = v20;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    sub_257ECD290();
    v4 = 1061109567;
    goto LABEL_37;
  }

LABEL_7:
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v4 = 0;
    v7 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v7) = 1;
    }

    v8 = 4 << v7;
    v9 = 15;
    while (1)
    {
      v10 = v9 & 0xC;
      v11 = v9;
      if (v10 == v8)
      {
        v11 = sub_257C76C50(v9, a1, a2);
      }

      v12 = v11 >> 16;
      if (v11 >> 16 >= v6)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        if (sub_257ECF670() != 4)
        {
          goto LABEL_36;
        }

        goto LABEL_7;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v14 = sub_257ECF6B0();
        if (v10 != v8)
        {
          goto LABEL_26;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v19 = a1;
        v20 = a2 & 0xFFFFFFFFFFFFFFLL;
        v14 = *(&v19 + v12);
        if (v10 != v8)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v13 = sub_257ED0320();
        }

        v14 = *(v13 + v12);
        if (v10 != v8)
        {
LABEL_26:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_27;
        }
      }

      v9 = sub_257C76C50(v9, a1, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_14:
        v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_15;
      }

LABEL_27:
      if (v6 <= v9 >> 16)
      {
        goto LABEL_34;
      }

      v9 = sub_257ECF680();
LABEL_15:
      v4 = v14 | (v4 << 8);
      if (4 * v6 == v9 >> 14)
      {
        goto LABEL_37;
      }
    }
  }

  v4 = 0;
LABEL_37:

  return v4;
}

uint64_t sub_257E9DC08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

unint64_t sub_257E9DC58()
{
  result = qword_27F8FB7B8;
  if (!qword_27F8FB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB7B8);
  }

  return result;
}

unint64_t sub_257E9DCC8()
{
  result = qword_27F8FB7C0;
  if (!qword_27F8FB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB7C0);
  }

  return result;
}

uint64_t Array<A>.argmax()(uint64_t a1)
{
  v5 = a1;
  v1 = sub_257ECF870();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x259C72260](&v4, v1, WitnessTable);
  sub_257ED0430();
  swift_getWitnessTable();
  sub_257ECF760();

  return v5;
}

uint64_t sub_257E9DE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[67] = v3;
  v4[66] = a3;
  v4[65] = a2;
  v4[64] = a1;

  return MEMORY[0x2822009F8](sub_257E9DEE4, 0, 0);
}

uint64_t sub_257E9DEE4()
{
  v1 = *(v0 + 536);
  v2 = *(v1 + 16);
  if (!v2)
  {
    sub_257EA1BD8();
    v2 = *(v1 + 16);
    if (!v2)
    {
      v45 = (*(v0 + 520) + **(v0 + 520));
      v25 = swift_task_alloc();
      *(v0 + 712) = v25;
      *v25 = v0;
      v25[1] = sub_257EA0600;
      v22 = 0;
      goto LABEL_17;
    }
  }

  *(v0 + 544) = v2;
  v3 = [v2 modelDescription];
  v4 = [v3 inputDescriptionsByName];

  sub_257BD2C2C(0, &qword_27F8F8AF0);
  v5 = sub_257ECF3D0();

  v6 = sub_257DF8B9C(v5);
  v8 = v7;

  *(v0 + 552) = v8;
  if (!v8)
  {
    goto LABEL_9;
  }

  v9 = *(v0 + 512);
  *(v0 + 432) = 0;
  VTCreateCGImageFromCVPixelBuffer(*(v9 + 16), 0, (v0 + 432));
  v10 = *(v0 + 432);
  if (!v10)
  {
    v23 = *(v0 + 520);

    v45 = (v23 + *v23);
    v24 = swift_task_alloc();
    *(v0 + 696) = v24;
    *v24 = v0;
    v24[1] = sub_257EA0324;
    v22 = 2;
    goto LABEL_17;
  }

  v11 = v10;
  sub_257DEBB04(512.0, 512.0);
  v13 = v12;
  *(v0 + 560) = v12;

  if (!v13)
  {
    v26 = *(v0 + 520);

    v45 = (v26 + *v26);
    v27 = swift_task_alloc();
    *(v0 + 688) = v27;
    *v27 = v0;
    v27[1] = sub_257EA0168;
    v22 = 3;
    goto LABEL_17;
  }

  v14 = objc_opt_self();
  *(v0 + 464) = 0;
  v15 = v13;
  v16 = [v14 featureValueWithCGImage:v15 orientation:6 pixelsWide:512 pixelsHigh:512 pixelFormatType:32 options:0 error:v0 + 464];
  v17 = *(v0 + 464);
  if (!v16)
  {
    v28 = v17;
    v29 = sub_257ECC9F0();

    swift_willThrow();
    v20 = 0;
LABEL_14:
    *(v0 + 568) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6620);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED6D30;
    *(inited + 32) = v6;
    v32 = inited + 32;
    *(inited + 40) = v8;
    if (v20)
    {
      v33 = inited;

      v34 = [v14 featureValueWithPixelBuffer_];
      *(v33 + 72) = sub_257BD2C2C(0, &qword_27F8F8AF8);
      *(v33 + 48) = v34;
      sub_257BE9040(v33);
      swift_setDeallocating();
      sub_257BE4084(v32, &qword_27F8F55E8);
      v35 = objc_allocWithZone(MEMORY[0x277CBFED0]);
      v36 = sub_257D7C2E8();
      *(v0 + 576) = v36;
      if (!v36)
      {
        v37 = *(v0 + 520);

        v45 = (v37 + *v37);
        v38 = swift_task_alloc();
        *(v0 + 680) = v38;
        *v38 = v0;
        v38[1] = sub_257E9FF94;
        v22 = 4;
        goto LABEL_17;
      }

      v40 = v36;
      v41 = objc_allocWithZone(MEMORY[0x277CBFF68]);
      v42 = v40;
      v43 = [v41 init];
      *(v0 + 584) = v43;
      v44 = swift_task_alloc();
      *(v0 + 592) = v44;
      *v44 = v0;
      v44[1] = sub_257E9E69C;
      inited = v42;
      v31 = v43;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282111978](inited, v31);
  }

  v18 = v16;
  v19 = v17;

  v20 = [v18 imageBufferValue];
  if (v20)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_9:
  v45 = (*(v0 + 520) + **(v0 + 520));
  v21 = swift_task_alloc();
  *(v0 + 704) = v21;
  *v21 = v0;
  v21[1] = sub_257EA044C;
  v22 = 1;
LABEL_17:

  return (v45)(v22, 0);
}

uint64_t sub_257E9E69C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 600) = a1;

  v6 = *(v3 + 584);
  v7 = *(v3 + 576);
  if (v1)
  {
    v8 = *(v4 + 520);

    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v4 + 672) = v9;
    *v9 = v5;
    v9[1] = sub_257E9FDB8;

    return (v11)(5, 0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_257E9E928, 0, 0);
  }
}

uint64_t sub_257E9E928()
{
  v1 = [*(v0 + 600) featureNames];
  v2 = sub_257ECFA70();

  v3 = 0;
  v4 = 0;
  v69 = v0;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
LABEL_4:
  v67 = v3;
  *(v0 + 608) = v3;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v2 + 56 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
LABEL_11:
      v7 &= v7 - 1;

      if ((sub_257D7C04C() & 1) == 0)
      {

        goto LABEL_6;
      }

      v10 = *(v69 + 600);
      v11 = sub_257ECF4C0();
      v12 = [v10 featureValueForName_];

      if (v12)
      {

        v3 = [v12 multiArrayValue];

        if (v3)
        {

          v0 = v69;
          goto LABEL_4;
        }

        goto LABEL_6;
      }

LABEL_81:
      __break(1u);
    }
  }

  v13 = [objc_opt_self() shared];
  v14 = [v13 signDetectorProperties];
  *(v69 + 616) = v14;

  if (!v14)
  {
    v68 = (*(v69 + 520) + **(v69 + 520));
    v16 = swift_task_alloc();
    *(v69 + 664) = v16;
    *v16 = v69;
    v16[1] = sub_257E9FBC0;
    v17 = 6;
LABEL_33:
    v26 = 0;
LABEL_34:

    return v68(v17, v26);
  }

  *(v69 + 352) = 0xD000000000000015;
  *(v69 + 360) = 0x8000000257F0A3B0;
  v15 = [v14 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  *(v69 + 96) = v70;
  *(v69 + 112) = v71;
  if (!*(v69 + 120))
  {
    sub_257BE4084(v69 + 96, &unk_27F8F62F0);
    goto LABEL_25;
  }

  sub_257BD2C2C(0, &qword_281543DC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v68 = (*(v69 + 520) + **(v69 + 520));
    v22 = swift_task_alloc();
    *(v69 + 656) = v22;
    *v22 = v69;
    v22[1] = sub_257E9FA98;
    v17 = 7;
    goto LABEL_33;
  }

  v18 = *(v69 + 456);
  [v18 floatValue];
  v20 = v19;

  *(v69 + 368) = 0xD000000000000013;
  *(v69 + 376) = 0x8000000257EF9700;
  v21 = [v14 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  *(v69 + 160) = v70;
  *(v69 + 176) = v71;
  if (!*(v69 + 184))
  {
    sub_257BE4084(v69 + 160, &unk_27F8F62F0);
    goto LABEL_32;
  }

  sub_257BD2C2C(0, &unk_27F8F58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v68 = (*(v69 + 520) + **(v69 + 520));
    v25 = swift_task_alloc();
    *(v69 + 648) = v25;
    *v25 = v69;
    v25[1] = sub_257E9F890;
    v17 = 8;
    goto LABEL_33;
  }

  v23 = *(v69 + 448);
  *(v69 + 624) = v23;
  *(v69 + 440) = sub_257BE9170(MEMORY[0x277D84F90]);
  *(v69 + 400) = 0x6269737365636361;
  *(v69 + 408) = 0xEA0000000000656CLL;
  v24 = [v23 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v24)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  *(v69 + 224) = v70;
  *(v69 + 240) = v71;
  if (*(v69 + 248))
  {
    if (swift_dynamicCast())
    {
      v28 = *(v69 + 504);
      [v28 floatValue];
      v30 = v29;

      v31 = 0;
      v32 = v30;
      goto LABEL_43;
    }
  }

  else
  {
    sub_257BE4084(v69 + 224, &unk_27F8F62F0);
  }

  v32 = 0;
  v31 = 1;
LABEL_43:
  LOBYTE(v70) = v31;
  sub_257CBA080(v32 | (v31 << 32), 0);
  *(v69 + 416) = 0x656C616D6566;
  *(v69 + 424) = 0xE600000000000000;
  v33 = [v23 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v33)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  *(v69 + 256) = v70;
  *(v69 + 272) = v71;
  if (*(v69 + 280))
  {
    if (swift_dynamicCast())
    {
      v34 = *(v69 + 496);
      [v34 floatValue];
      v36 = v35;

      v37 = 0;
      v38 = v36;
      goto LABEL_51;
    }
  }

  else
  {
    sub_257BE4084(v69 + 256, &unk_27F8F62F0);
  }

  v38 = 0;
  v37 = 1;
LABEL_51:
  LOBYTE(v70) = v37;
  sub_257CBA080(v38 | (v37 << 32), 1);
  strcpy((v69 + 320), "gender_neutral");
  *(v69 + 335) = -18;
  v39 = [v23 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v39)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  *(v69 + 288) = v70;
  *(v69 + 304) = v71;
  if (*(v69 + 312))
  {
    if (swift_dynamicCast())
    {
      v40 = *(v69 + 488);
      [v40 floatValue];
      v42 = v41;

      v43 = 0;
      v44 = v42;
      goto LABEL_59;
    }
  }

  else
  {
    sub_257BE4084(v69 + 288, &unk_27F8F62F0);
  }

  v44 = 0;
  v43 = 1;
LABEL_59:
  LOBYTE(v70) = v43;
  sub_257CBA080(v44 | (v43 << 32), 2);
  *(v69 + 384) = 1701601645;
  *(v69 + 392) = 0xE400000000000000;
  v45 = [v23 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v45)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  *(v69 + 192) = v70;
  *(v69 + 208) = v71;
  if (*(v69 + 216))
  {
    if (swift_dynamicCast())
    {
      v46 = *(v69 + 480);
      [v46 floatValue];
      v48 = v47;

      v49 = 0;
      v50 = v48;
      goto LABEL_67;
    }
  }

  else
  {
    sub_257BE4084(v69 + 192, &unk_27F8F62F0);
  }

  v50 = 0;
  v49 = 1;
LABEL_67:
  LOBYTE(v70) = v49;
  sub_257CBA080(v50 | (v49 << 32), 3);
  *(v69 + 336) = 0x696B6F6D735F6F6ELL;
  *(v69 + 344) = 0xEA0000000000676ELL;
  v51 = [v23 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v51)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  *(v69 + 128) = v70;
  *(v69 + 144) = v71;
  if (*(v69 + 152))
  {
    if (swift_dynamicCast())
    {
      v52 = *(v69 + 472);
      [v52 floatValue];
      v54 = v53;

      v55 = 0;
      v56 = v54;
      v57 = v67;
      goto LABEL_75;
    }
  }

  else
  {
    sub_257BE4084(v69 + 128, &unk_27F8F62F0);
  }

  v57 = v67;
  v56 = 0;
  v55 = 1;
LABEL_75:
  sub_257CBA080(v56 | (v55 << 32), 4);
  if (v57)
  {
    v58 = *(v69 + 520);
    sub_257EA8A10(v57, *(v69 + 440), v20);
    v60 = v59;
    *(v69 + 632) = v59;

    v68 = (v58 + *v58);
    v61 = swift_task_alloc();
    *(v69 + 640) = v61;
    *v61 = v69;
    v61[1] = sub_257E9F664;
    v17 = 9;
    v26 = v60;
    goto LABEL_34;
  }

  v62 = *(v69 + 576);
  v63 = *(v69 + 568);
  v64 = *(v69 + 560);
  v65 = *(v69 + 544);

  swift_unknownObjectRelease();
  v66 = *(v69 + 8);

  return v66();
}

uint64_t sub_257E9F664()
{

  return MEMORY[0x2822009F8](sub_257E9F7A8, 0, 0);
}

uint64_t sub_257E9F7A8()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 544);

  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_257E9F890()
{

  return MEMORY[0x2822009F8](sub_257E9F9B8, 0, 0);
}

uint64_t sub_257E9F9B8()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 544);

  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_257E9FA98()
{

  return MEMORY[0x2822009F8](sub_257EA9828, 0, 0);
}

uint64_t sub_257E9FBC0()
{

  return MEMORY[0x2822009F8](sub_257E9FCE8, 0, 0);
}

uint64_t sub_257E9FCE8()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 544);

  swift_unknownObjectRelease();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_257E9FDB8()
{

  return MEMORY[0x2822009F8](sub_257E9FEE0, 0, 0);
}

uint64_t sub_257E9FEE0()
{
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_257E9FF94()
{

  return MEMORY[0x2822009F8](sub_257EA00BC, 0, 0);
}

uint64_t sub_257EA00BC()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_257EA0168()
{

  return MEMORY[0x2822009F8](sub_257EA0290, 0, 0);
}

uint64_t sub_257EA0290()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257EA0324()
{

  return MEMORY[0x2822009F8](sub_257EA98A0, 0, 0);
}

uint64_t sub_257EA044C()
{

  return MEMORY[0x2822009F8](sub_257EA0574, 0, 0);
}

uint64_t sub_257EA0574()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_257EA0600()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_257EA0720(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_257C69A3C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v22 = v2 + 32;
  v25[0] = v2 + 32;
  v25[1] = v4;
  v5 = sub_257ED05F0();
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v9 = -1;
      v10 = 1;
      v11 = (v2 + 32);
      do
      {
        v12 = *(v22 + 8 * v10);
        v13 = v9;
        v14 = v11;
        do
        {
          v15 = *v14;
          v16 = (v12 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
          swift_beginAccess();
          v17 = *v16;
          v18 = (v15 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
          swift_beginAccess();
          if (*v18 >= v17)
          {
            break;
          }

          v19 = *v14;
          v12 = v14[1];
          *v14 = v12;
          v14[1] = v19;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v10;
        ++v11;
        --v9;
      }

      while (v10 != v4);
    }
  }

  else
  {
    v6 = v5;
    v7 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for MindNetModelBoundingBox();
      v8 = sub_257ECF850();
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v24[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
    v24[1] = v7;
    sub_257EA5A3C(v24, v23, v25, v6);
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_257ED0340();
}

uint64_t sub_257EA08DC()
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

MagnifierSupport::DoorSignDetectorType_optional __swiftcall DoorSignDetectorType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id DoorSignDetectorResult.__allocating_init(boundingBox:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_257EA750C(a1);

  return v4;
}

id DoorSignDetectorResult.init(boundingBox:)(void *a1)
{
  v2 = sub_257EA750C(a1);

  return v2;
}

id DoorSignDetectorResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_257EA0B84()
{
  v1 = 0x6D614E6C6562616CLL;
  if (*v0 != 1)
  {
    v1 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7892834;
  }
}

uint64_t sub_257EA0BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_257EA904C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_257EA0C08(uint64_t a1)
{
  v2 = sub_257EA768C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257EA0C44(uint64_t a1)
{
  v2 = sub_257EA768C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_257EA0CAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB7C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257EA768C();
  sub_257ED0850();
  v9 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_box + 16);
  v12 = *(v3 + OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_box);
  v13 = v9;
  v11[15] = 0;
  type metadata accessor for CGRect(0);
  sub_257EA7974(&qword_27F8FB7E0, type metadata accessor for CGRect);
  sub_257ED05D0();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  sub_257ED0580();
  LOBYTE(v12) = 2;
  sub_257ED05A0();
  return (*(v6 + 8))(v8, v5);
}

id DoorSignDetectorResult.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB7F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257EA768C();
  sub_257ED0840();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for DoorSignDetectorResult();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for CGRect(0);
    v20 = 0;
    sub_257EA7974(&qword_27F8FB800, type metadata accessor for CGRect);
    sub_257ED0540();
    v9 = &v1[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_box];
    v10 = v19;
    *v9 = v18;
    *(v9 + 1) = v10;
    LOBYTE(v18) = 1;
    v11 = sub_257ED04F0();
    v13 = &v1[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_labelName];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v18) = 2;
    sub_257ED0510();
    *&v1[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_confidence] = v15;
    v16 = type metadata accessor for DoorSignDetectorResult();
    v17.receiver = v1;
    v17.super_class = v16;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

uint64_t sub_257EA11A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DoorSignDetectorResult();
  result = sub_257ED02E0();
  *a1 = result;
  return result;
}

Swift::Float __swiftcall MLMultiArray.floatValue(_:)(Swift::OpaquePointer a1)
{
  v1 = MLMultiArray.subscript.getter(a1._rawValue);
  [v1 floatValue];
  v3 = v2;

  return v3;
}

id MindNetModelBoundingBox.__allocating_init(id:timestamp:heat:angle:rect:classIndex:heatByClass:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5, float a6, double a7, double a8, double a9, double a10)
{
  v21 = objc_allocWithZone(v10);
  v22 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  sub_257ECCCE0();
  v23 = &v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat];
  *&v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat] = 0;
  v24 = &v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle];
  *&v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle] = 0;
  v25 = &v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth];
  *v25 = 0;
  v25[4] = 1;
  v26 = &v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d];
  *v26 = 0;
  *(v26 + 1) = 0;
  v26[16] = 1;
  *&v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints] = 0;
  v27 = &v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize];
  *v27 = 0;
  v27[8] = 1;
  swift_beginAccess();
  v28 = sub_257ECCCF0();
  v29 = *(v28 - 8);
  (*(v29 + 24))(&v21[v22], a1, v28);
  swift_endAccess();
  swift_beginAccess();
  *v23 = a5;
  swift_beginAccess();
  *v24 = a6;
  v30 = &v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect];
  *v30 = a7;
  v30[1] = a8;
  v30[2] = a9;
  v30[3] = a10;
  *&v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex] = a2;
  *&v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass] = a3;
  *&v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_firstSeen] = a4;
  *&v21[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_lastSeen] = a4;
  v33.receiver = v21;
  v33.super_class = v10;
  v31 = objc_msgSendSuper2(&v33, sel_init);
  (*(v29 + 8))(a1, v28);
  return v31;
}

uint64_t sub_257EA14D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v1 - 8);
  v33 = &v31 - v2;
  v3 = sub_257ECDA30();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_257ECCB70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - v10;
  v34 = v0;
  *(v0 + 16) = 0;
  v12 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v13 = [objc_opt_self() shared];
  v14 = [v13 signDetectorModelPath];

  if (v14)
  {
    sub_257ECCB20();

    v15 = sub_257ECF930();
    v16 = v33;
    (*(*(v15 - 8) + 56))(v33, 1, 1, v15);
    (*(v6 + 16))(v9, v11, v5);
    v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    *(v19 + 24) = 0;
    (*(v6 + 32))(v19 + v17, v9, v5);
    *(v19 + v18) = v12;
    v20 = v34;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v21 = v12;
    sub_257ECC3F0();
    sub_257C3FBD4(0, 0, v16, &unk_257EF12F8, v19);

    (*(v6 + 8))(v11, v5);
    return v20;
  }

  else
  {
    v23 = v12;
    v24 = v3;
    v25 = v34;
    v27 = v31;
    v26 = v32;
    sub_257ECD450();
    v28 = sub_257ECDA20();
    v29 = sub_257ECFBD0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_257BAC000, v28, v29, "Door Sign Detection Model URL is not available", v30, 2u);
      MEMORY[0x259C74820](v30, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v26, v24);
    return v25;
  }
}

uint64_t sub_257EA18E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = sub_257ECDA30();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_257ECCB70();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = sub_257BD2C2C(0, &qword_27F8F8B68);
  v11 = swift_task_alloc();
  v6[14] = v11;
  *v11 = v6;
  v11[1] = sub_257EA1ABC;

  return MEMORY[0x282111990](v9, a4);
}

uint64_t sub_257EA1ABC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_257EA989C;
  }

  else
  {
    v2 = sub_257EA9914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257EA1BD8()
{
  v0 = sub_257ECDA30();
  v29 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v28 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_257ECCB70();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  v13 = [objc_opt_self() shared];
  v14 = [v13 signDetectorModelPath];

  if (v14)
  {
    sub_257ECCB20();

    v15 = sub_257ECF930();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    (*(v6 + 16))(v9, v11, v5);
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    (*(v6 + 32))(v18 + v16, v9, v5);
    *(v18 + v17) = v12;
    *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v19 = v12;
    sub_257ECC3F0();
    sub_257C3FBD4(0, 0, v4, &unk_257EF12E0, v18);

    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    v21 = v12;
    v23 = v28;
    v22 = v29;
    sub_257ECD450();
    v24 = sub_257ECDA20();
    v25 = sub_257ECFBD0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_257BAC000, v24, v25, "Door Sign Detection Model URL is not available", v26, 2u);
      MEMORY[0x259C74820](v26, -1, -1);
    }

    else
    {
    }

    return (*(v22 + 8))(v23, v0);
  }
}

uint64_t sub_257EA1FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v8 = sub_257ECDA30();
  v6[4] = v8;
  v6[5] = *(v8 - 8);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v9 = swift_task_alloc();
  v6[8] = v9;
  v10 = sub_257ECCB70();
  v6[9] = v10;
  v6[10] = *(v10 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = sub_257BD2C2C(0, &qword_27F8F8B68);
  v11 = swift_task_alloc();
  v6[14] = v11;
  *v11 = v6;
  v11[1] = sub_257EA219C;

  return MEMORY[0x282111990](v9, a4);
}

uint64_t sub_257EA219C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {

    v2 = sub_257EA22B8;
  }

  else
  {
    v2 = sub_257EA2424;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_257EA22B8()
{
  v1 = v0[8];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  sub_257BE4084(v1, &qword_27F8F5F30);
  sub_257ECD450();
  v2 = sub_257ECDA20();
  v3 = sub_257ECFBD0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_257BAC000, v2, v3, "Door Sign Detection Model cannot be compiled", v8, 2u);
    MEMORY[0x259C74820](v8, -1, -1);
  }

  (*(v7 + 8))(v5, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_257EA2424()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[2];
  (*(v4 + 56))(v6, 0, 1, v5);
  (*(v4 + 32))(v2, v6, v5);
  (*(v4 + 16))(v3, v2, v5);
  v8 = v7;
  v9 = sub_257D7CA0C(v3, v8);

  if (v1)
  {
  }

  else if (v9)
  {
    v20 = v0[3];
    (*(v0[10] + 8))(v0[12], v0[9]);
    v21 = *(v20 + 16);
    *(v20 + 16) = v9;

    goto LABEL_8;
  }

  sub_257ECD450();
  v10 = sub_257ECDA20();
  v11 = sub_257ECFBD0();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  if (v12)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_257BAC000, v10, v11, "Door Sign Detection Model failed to initialize.", v19, 2u);
    MEMORY[0x259C74820](v19, -1, -1);
  }

  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);
LABEL_8:

  v22 = v0[1];

  return v22();
}

id MindNetModelBoundingBox.init(id:timestamp:heat:angle:rect:classIndex:heatByClass:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5, float a6, double a7, double a8, double a9, double a10)
{
  v21 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  sub_257ECCCE0();
  v22 = &v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat];
  *&v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat] = 0;
  v23 = &v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle];
  *&v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle] = 0;
  v24 = &v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth];
  *v24 = 0;
  v24[4] = 1;
  v25 = &v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d];
  *v25 = 0;
  *(v25 + 1) = 0;
  v25[16] = 1;
  *&v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints] = 0;
  v26 = &v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize];
  *v26 = 0;
  v26[8] = 1;
  swift_beginAccess();
  v27 = sub_257ECCCF0();
  v28 = *(v27 - 8);
  (*(v28 + 24))(&v10[v21], a1, v27);
  swift_endAccess();
  swift_beginAccess();
  *v22 = a5;
  swift_beginAccess();
  *v23 = a6;
  v29 = &v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect];
  *v29 = a7;
  v29[1] = a8;
  v29[2] = a9;
  v29[3] = a10;
  *&v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex] = a2;
  *&v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass] = a3;
  *&v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_firstSeen] = a4;
  *&v10[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_lastSeen] = a4;
  v32.receiver = v10;
  v32.super_class = type metadata accessor for MindNetModelBoundingBox();
  v30 = objc_msgSendSuper2(&v32, sel_init);
  (*(v28 + 8))(a1, v27);
  return v30;
}

uint64_t sub_257EA2878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_257EA2904(uint64_t a1, uint64_t *a2)
{
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_257EA2A1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  swift_beginAccess();
  v4 = sub_257ECCCF0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_257EA2AA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  swift_beginAccess();
  v4 = sub_257ECCCF0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

float sub_257EA2B94()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_257EA2BDC(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float sub_257EA2C90()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_257EA2CD8(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

void sub_257EA2D8C(void *a1@<X0>, CGFloat *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v3);
  MidY = CGRectGetMidY(*v3);
  *a2 = MidX;
  a2[1] = MidY;
}

double sub_257EA2E00()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v1);
  CGRectGetMidY(*v1);
  return MidX;
}

float64x2_t sub_257EA2E70(float64_t a1, float64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  __asm { FMOV            V1.2D, #-0.5 }

  v9.f64[0] = a1;
  v9.f64[1] = a2;
  result = vaddq_f64(v9, vmulq_f64(v3[1], _Q1));
  *v3 = result;
  return result;
}

void (*sub_257EA2ED4(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v6);
  MidY = CGRectGetMidY(*v6);
  *(v4 + 24) = MidX;
  *(v4 + 32) = MidY;
  return sub_257EA2F8C;
}

void sub_257EA2F8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(v1 + 40) + *(v1 + 48));
  __asm { FMOV            V2.2D, #-0.5 }

  *v2 = vaddq_f64(*(v1 + 24), vmulq_f64(v2[1], _Q2));
  free(v1);
}

double sub_257EA2FB4()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t sub_257EA2FFC(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
  result = swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return result;
}

void (*sub_257EA3054(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  *(v4 + 24) = *(v6 + 16);
  return sub_257EA30EC;
}

void sub_257EA30EC(uint64_t *a1)
{
  v1 = *a1;
  *(*(v1 + 40) + *(v1 + 48) + 16) = *(v1 + 24);
  free(v1);
}

double sub_257EA3104()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_257EA3150(double a1, double a2, double a3, double a4)
{
  v9 = (v4 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  result = swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return result;
}

uint64_t sub_257EA321C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257EA3260(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_257EA3310(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_257EA33C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_257EA3478()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_firstSeen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257EA34BC(double a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_firstSeen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_257EA356C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_lastSeen;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_257EA35B0(double a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_lastSeen;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

unint64_t sub_257EA3660()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_257EA36B8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_257EA376C()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_257EA37B8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t sub_257EA387C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_257EA392C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_257EA39E4()
{
  v1 = v0 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_257EA3A30(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

void sub_257EA3AF0(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  x = v3->origin.x;
  y = v3->origin.y;
  width = v3->size.width;
  height = v3->size.height;
  v8 = (a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectUnion(v18, *v8);
  v9 = v19.origin.x;
  v10 = v19.origin.y;
  v11 = v19.size.width;
  v12 = v19.size.height;
  v13 = CGRectGetHeight(v19);
  v20.origin.x = v9;
  v20.origin.y = v10;
  v20.size.width = v11;
  v20.size.height = v12;
  if (sqrt(v13 * CGRectGetWidth(v20)) != 0.0)
  {
    v21 = CGRectIntersection(*v3, *v8);
    v14 = v21.origin.x;
    v15 = v21.origin.y;
    v16 = v21.size.width;
    v17 = v21.size.height;
    CGRectGetHeight(v21);
    v22.origin.x = v14;
    v22.origin.y = v15;
    v22.size.width = v16;
    v22.size.height = v17;
    CGRectGetWidth(v22);
  }
}

uint64_t sub_257EA3C90()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex;
  result = swift_beginAccess();
  if (*(v0 + v2) > 4uLL)
  {
    __break(1u);
  }

  else
  {
    sub_257ED02D0();
    MEMORY[0x259C72150](0xD00000000000001BLL, 0x8000000257F0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_257ED6D30;
    v5 = (v1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
    swift_beginAccess();
    v6 = *v5;
    v7 = MEMORY[0x277D83B08];
    *(v4 + 56) = MEMORY[0x277D83A90];
    *(v4 + 64) = v7;
    *(v4 + 32) = v6;
    v8 = sub_257ECF530();
    v10 = v9;

    MEMORY[0x259C72150](v8, v10);

    MEMORY[0x259C72150](0x3D7373616C6320, 0xE700000000000000);
    v11 = sub_257ECF570();
    MEMORY[0x259C72150](v11);

    MEMORY[0x259C72150](0x3D72746320, 0xE500000000000000);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_257ED9BD0;
    v13 = v1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect;
    swift_beginAccess();
    MidX = CGRectGetMidX(*v13);
    CGRectGetMidY(*v13);
    v15 = MEMORY[0x277D85048];
    *(v12 + 56) = MEMORY[0x277D85048];
    v16 = sub_257E7CA58();
    *(v12 + 64) = v16;
    *(v12 + 32) = MidX;
    CGRectGetMidX(*v13);
    MidY = CGRectGetMidY(*v13);
    *(v12 + 96) = v15;
    *(v12 + 104) = v16;
    *(v12 + 72) = MidY;
    v18 = sub_257ECF530();
    v20 = v19;

    MEMORY[0x259C72150](v18, v20);

    MEMORY[0x259C72150](0x3D657A697320, 0xE600000000000000);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_257ED9BD0;
    *(v21 + 56) = v15;
    *(v21 + 64) = v16;
    v22 = *(v13 + 24);
    *(v21 + 32) = *(v13 + 16);
    *(v21 + 96) = v15;
    *(v21 + 104) = v16;
    *(v21 + 72) = v22;
    v23 = sub_257ECF530();
    v25 = v24;

    MEMORY[0x259C72150](v23, v25);

    MEMORY[0x259C72150](15904, 0xE200000000000000);
    return 0;
  }

  return result;
}

uint64_t sub_257EA403C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x64696F72746E6563;
    v7 = 0xD000000000000012;
    if (a1 != 10)
    {
      v7 = 0x6C61636973796870;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6565537473726966;
    v9 = 0x6E6565537473616CLL;
    if (a1 != 7)
    {
      v9 = 0x6874706564;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1952671090;
    v3 = 0x646E497373616C63;
    if (a1 != 4)
    {
      v3 = 0x6C43794274616568;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1952540008;
    if (a1 != 1)
    {
      v4 = 0x656C676E61;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_257EA41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_257EA9174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_257EA41F0(uint64_t a1)
{
  v2 = sub_257EA772C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_257EA422C(uint64_t a1)
{
  v2 = sub_257EA772C();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_257EA4284(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_257EA4348(void *a1)
{
  v2 = v1;
  v34 = sub_257ECCCF0();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB808);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_257EA772C();
  sub_257ED0850();
  v10 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v33 = v2;
  v12 = v2 + v10;
  v13 = v34;
  v11(v6, v12, v34);
  LOBYTE(v47) = 0;
  sub_257EA7974(&qword_27F8FB818, MEMORY[0x277CC95F0]);
  v14 = v9;
  v15 = v49;
  sub_257ED05D0();
  if (v15)
  {
    (*(v4 + 8))(v6, v13);
    return (*(v35 + 8))(v9, v7);
  }

  else
  {
    v17 = v35;
    (*(v4 + 8))(v6, v13);
    v18 = v33;
    swift_beginAccess();
    LOBYTE(v47) = 1;
    sub_257ED05B0();
    swift_beginAccess();
    LOBYTE(v47) = 2;
    sub_257ED05B0();
    v19 = (v18 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
    swift_beginAccess();
    v20 = v19[1];
    v47 = *v19;
    v48 = v20;
    v46 = 3;
    type metadata accessor for CGRect(0);
    sub_257EA7974(&qword_27F8FB7E0, type metadata accessor for CGRect);
    sub_257ED05D0();
    swift_beginAccess();
    v46 = 4;
    sub_257ED05C0();
    v21 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass;
    swift_beginAccess();
    v22 = *(v33 + v21);
    v23 = v33;
    v45 = v22;
    v44 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB820);
    sub_257EA7780(&qword_27F8FB828);
    sub_257ED05D0();
    swift_beginAccess();
    v44 = 6;
    sub_257ED05A0();
    swift_beginAccess();
    v43 = 7;
    sub_257ED05A0();
    v24 = v23 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth;
    swift_beginAccess();
    v25 = *(v24 + 4);
    v42 = 8;
    LOBYTE(v40) = v25;
    sub_257ED0560();
    v26 = (v23 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d);
    swift_beginAccess();
    v27 = *(v26 + 16);
    v40 = *v26;
    v41 = v27;
    LOBYTE(v39) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E08);
    sub_257BD2D4C(&qword_27F8FB830, &qword_27F8F6E08);
    sub_257ED0570();
    v28 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints;
    v29 = v33;
    swift_beginAccess();
    v39 = *(v29 + v28);
    LOBYTE(v37) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB838);
    sub_257EA77EC(&qword_27F8FB840, &qword_27F8FB830);
    sub_257ED0570();
    v30 = (v33 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize);
    swift_beginAccess();
    v31 = *(v30 + 8);
    v37 = *v30;
    v38 = v31;
    v36 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB848);
    sub_257BD2D4C(&qword_27F8FB850, &qword_27F8FB848);
    sub_257ED0570();
    return (*(v17 + 8))(v14, 0);
  }
}

char *MindNetModelBoundingBox.init(from:)(void *a1)
{
  v50 = sub_257ECCCF0();
  v54 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB858);
  v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v41 - v4;
  v53 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  sub_257ECCCE0();
  v44 = &v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat] = 0;
  v6 = &v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle] = 0;
  v7 = &v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth];
  *v7 = 0;
  v7[4] = 1;
  v8 = &v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v52 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints] = 0;
  v55 = v1;
  v9 = &v1[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize];
  *v9 = 0;
  v9[8] = 1;
  v10 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_257EA772C();
  v48 = v5;
  v11 = v49;
  sub_257ED0840();
  if (v11)
  {
    v12 = v50;
    v15 = v54;
    v16 = v53;
    v17 = v55;
    __swift_destroy_boxed_opaque_existential_0(v51);
    (*(v15 + 8))(&v17[v16], v12);

    type metadata accessor for MindNetModelBoundingBox();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v49 = v6;
    v43 = v7;
    v42 = v8;
    LOBYTE(v64) = 0;
    sub_257EA7974(&qword_27F8FB860, MEMORY[0x277CC95F0]);
    v13 = v45;
    v14 = v50;
    sub_257ED0540();
    v19 = v53;
    v20 = v55;
    swift_beginAccess();
    (*(v54 + 40))(&v20[v19], v13, v14);
    swift_endAccess();
    LOBYTE(v64) = 1;
    sub_257ED0520();
    v22 = v21;
    v23 = v44;
    swift_beginAccess();
    *v23 = v22;
    LOBYTE(v64) = 2;
    sub_257ED0520();
    v25 = v24;
    v26 = v49;
    swift_beginAccess();
    *v26 = v25;
    type metadata accessor for CGRect(0);
    v63 = 3;
    sub_257EA7974(&qword_27F8FB800, type metadata accessor for CGRect);
    sub_257ED0540();
    v27 = &v20[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect];
    v28 = v65;
    *v27 = v64;
    *(v27 + 1) = v28;
    LOBYTE(v64) = 4;
    *&v20[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex] = sub_257ED0530();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB820);
    v63 = 5;
    sub_257EA7780(&qword_27F8FB868);
    sub_257ED0540();
    *&v20[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass] = v64;
    LOBYTE(v64) = 6;
    sub_257ED0510();
    *&v20[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_firstSeen] = v29;
    LOBYTE(v64) = 7;
    sub_257ED0510();
    *&v20[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_lastSeen] = v30;
    LOBYTE(v64) = 8;
    v31 = sub_257ED04D0();
    v32 = v43;
    swift_beginAccess();
    *v32 = v31;
    v32[4] = BYTE4(v31) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6E08);
    v63 = 9;
    sub_257BD2D4C(&qword_27F8FB870, &qword_27F8F6E08);
    sub_257ED04E0();
    v33 = v60;
    v34 = v61;
    LOBYTE(v32) = v62;
    v35 = v42;
    swift_beginAccess();
    *v35 = v33;
    *(v35 + 1) = v34;
    v35[16] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB838);
    LOBYTE(v60) = 10;
    sub_257EA77EC(&qword_27F8FB878, &qword_27F8FB870);
    sub_257ED04E0();
    v36 = v57;
    v37 = v52;
    v38 = v55;
    swift_beginAccess();
    *&v38[v37] = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB848);
    LOBYTE(v57) = 11;
    sub_257BD2D4C(&qword_27F8FB880, &qword_27F8FB848);
    sub_257ED04E0();
    v39 = v58;
    LOBYTE(v34) = v59;
    swift_beginAccess();
    *v9 = v39;
    v9[8] = v34;
    v40 = type metadata accessor for MindNetModelBoundingBox();
    v56.receiver = v55;
    v56.super_class = v40;
    v17 = objc_msgSendSuper2(&v56, sel_init);
    (*(v46 + 8))(v48, v47);
    __swift_destroy_boxed_opaque_existential_0(v51);
  }

  return v17;
}

uint64_t sub_257EA556C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
  swift_beginAccess();
  v5 = sub_257ECCCF0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_257EA563C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  v9 = objc_allocWithZone(a3(a2));
  result = a4(a1);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

id MLMultiArray.subscript.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_257ED0360();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
      --v2;
    }

    while (v2);
  }

  sub_257BD2C2C(0, &qword_281543DC0);
  v6 = sub_257ECF7F0();

  v7 = [v1 objectForKeyedSubscript_];

  return v7;
}

uint64_t sub_257EA57E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v26 = a4;
  v27 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v26 - v9;
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v19 = *a1;
  (*(v20 + 16))(v10, a2, TupleTypeMetadata2, v16);
  v21 = *v10;
  (*(v11 + 32))(v18, &v10[*(TupleTypeMetadata2 + 48)], a3);
  sub_257ECF890();
  v22 = sub_257ECF430();
  v23 = *(v11 + 8);
  v23(v14, a3);
  result = (v23)(v18, a3);
  if (v22)
  {
    v25 = v21;
  }

  else
  {
    v25 = v19;
  }

  *v27 = v25;
  return result;
}

uint64_t sub_257EA5A3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v113 = result;
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = 8 * v6;
        v11 = (*a3 + 8 * v6);
        v13 = *v11;
        v12 = v11 + 2;
        v14 = (*(*a3 + 8 * v9) + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
        swift_beginAccess();
        v15 = *v14;
        v4 = v13 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat;
        result = swift_beginAccess();
        v16 = *v4;
        v17 = v8 + 2;
        while (v5 != v17)
        {
          v18 = *(v12 - 1);
          v19 = (*v12 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
          swift_beginAccess();
          v20 = *v19;
          v4 = v18 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat;
          result = swift_beginAccess();
          ++v17;
          ++v12;
          if (v16 < v15 == *v4 >= v20)
          {
            v5 = v17 - 1;
            break;
          }
        }

        if (v16 < v15)
        {
          if (v5 < v8)
          {
            goto LABEL_153;
          }

          if (v8 < v5)
          {
            v21 = 8 * v5 - 8;
            v22 = v5;
            v23 = v8;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_159;
                }

                v25 = *(v24 + v10);
                *(v24 + v10) = *(v24 + v21);
                *(v24 + v21) = v25;
              }

              ++v23;
              v21 -= 8;
              v10 += 8;
            }

            while (v23 < v22);
          }
        }

        v9 = v5;
      }

      v26 = a3[1];
      if (v9 < v26)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_152;
        }

        if (v9 - v8 < a4)
        {
          v27 = (v8 + a4);
          if (__OFADD__(v8, a4))
          {
            goto LABEL_154;
          }

          if (v27 >= v26)
          {
            v27 = a3[1];
          }

          if (v27 < v8)
          {
            goto LABEL_155;
          }

          if (v9 != v27)
          {
            v122 = v7;
            v28 = *a3;
            v29 = *a3 + 8 * v9 - 8;
            v30 = v8 - v9;
            __src = v27;
            do
            {
              v31 = v9;
              v32 = *(v28 + 8 * v9);
              v33 = v30;
              v7 = v29;
              do
              {
                v34 = *v7;
                v35 = (v32 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
                swift_beginAccess();
                v36 = *v35;
                v4 = v34 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat;
                swift_beginAccess();
                if (*v4 >= v36)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_156;
                }

                v37 = *v7;
                v32 = *(v7 + 1);
                *v7 = v32;
                *(v7 + 1) = v37;
                v7 -= 8;
              }

              while (!__CFADD__(v33++, 1));
              v9 = v31 + 1;
              v29 += 8;
              --v30;
            }

            while ((v31 + 1) != __src);
            v9 = __src;
            v7 = v122;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_149;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v115 = v9;
      if ((result & 1) == 0)
      {
        result = sub_257BFCB00(0, *(v7 + 2) + 1, 1, v7);
        v7 = result;
      }

      v40 = *(v7 + 2);
      v39 = *(v7 + 3);
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        result = sub_257BFCB00((v39 > 1), v40 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 2) = v41;
      v42 = &v7[16 * v40];
      *(v42 + 4) = v8;
      *(v42 + 5) = v9;
      v43 = *v113;
      if (!*v113)
      {
        goto LABEL_160;
      }

      if (v40)
      {
        break;
      }

LABEL_3:
      v5 = a3[1];
      v6 = v115;
      if (v115 >= v5)
      {
        goto LABEL_124;
      }
    }

    __srca = *v113;
    while (1)
    {
      v44 = v41 - 1;
      if (v41 >= 4)
      {
        break;
      }

      if (v41 == 3)
      {
        v45 = *(v7 + 4);
        v46 = *(v7 + 5);
        v55 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        v48 = v55;
LABEL_56:
        if (v48)
        {
          goto LABEL_140;
        }

        v61 = &v7[16 * v41];
        v63 = *v61;
        v62 = *(v61 + 1);
        v64 = __OFSUB__(v62, v63);
        v65 = v62 - v63;
        v66 = v64;
        if (v64)
        {
          goto LABEL_143;
        }

        v67 = &v7[16 * v44 + 32];
        v69 = *v67;
        v68 = *(v67 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_146;
        }

        if (__OFADD__(v65, v70))
        {
          goto LABEL_147;
        }

        if (v65 + v70 >= v47)
        {
          if (v47 < v70)
          {
            v44 = v41 - 2;
          }

          goto LABEL_77;
        }

        goto LABEL_70;
      }

      v71 = &v7[16 * v41];
      v73 = *v71;
      v72 = *(v71 + 1);
      v55 = __OFSUB__(v72, v73);
      v65 = v72 - v73;
      v66 = v55;
LABEL_70:
      if (v66)
      {
        goto LABEL_142;
      }

      v74 = &v7[16 * v44];
      v76 = *(v74 + 4);
      v75 = *(v74 + 5);
      v55 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v55)
      {
        goto LABEL_145;
      }

      if (v77 < v65)
      {
        goto LABEL_3;
      }

LABEL_77:
      if (v44 - 1 >= v41)
      {
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
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v82 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        return result;
      }

      v118 = v44 - 1;
      v119 = v44;
      v83 = *&v7[16 * v44 + 32];
      v84 = *&v7[16 * v44 + 40];
      v121 = *&v7[16 * v44 + 16];
      v123 = v7;
      v85 = (v82 + 8 * v121);
      v86 = 8 * v83;
      v7 = (v82 + 8 * v83);
      v120 = v84;
      v87 = 8 * v84;
      v88 = (v82 + 8 * v84);
      v4 = 8 * v83 - 8 * v121;
      v89 = 8 * v84 - 8 * v83;
      if (v4 >= v89)
      {
        if (v7 != v43 || v88 <= v43)
        {
          memmove(v43, (v82 + 8 * v83), 8 * v84 - 8 * v83);
        }

        v90 = &v43[v89];
        if (v89 < 1 || v86 <= 8 * v121)
        {
          v91 = __srca;
          v105 = v7;
        }

        else
        {
          do
          {
            __dst = v7;
            v97 = v7 - 8;
            v88 -= 8;
            v98 = v90;
            while (1)
            {
              v99 = v88 + 8;
              v100 = *(v98 - 1);
              v98 -= 8;
              v7 = v97;
              v101 = *v97;
              v4 = &OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls_launchedReaderFromShortcut;
              v102 = (v100 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
              swift_beginAccess();
              v103 = *v102;
              v104 = (v101 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
              swift_beginAccess();
              if (*v104 < v103)
              {
                break;
              }

              if (v99 != v90)
              {
                *v88 = *v98;
              }

              v88 -= 8;
              v90 = v98;
              v97 = v7;
              if (v98 <= __srca)
              {
                v90 = v98;
                v91 = __srca;
                v105 = __dst;
                goto LABEL_114;
              }
            }

            v105 = v7;
            if (v99 != __dst)
            {
              *v88 = *v7;
            }

            v91 = __srca;
          }

          while (v90 > __srca && v85 < v7);
        }
      }

      else
      {
        if (v85 != v43 || v7 <= v43)
        {
          memmove(v43, (v82 + 8 * v121), 8 * v83 - 8 * v121);
        }

        v90 = &v43[v4];
        if (v4 >= 1 && v87 > v86)
        {
          v91 = __srca;
          while (1)
          {
            v92 = *v91;
            v93 = (*v7 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
            swift_beginAccess();
            v94 = *v93;
            v4 = v92 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat;
            swift_beginAccess();
            if (*v4 >= v94)
            {
              break;
            }

            v95 = v7;
            v96 = v85 == v7;
            v7 += 8;
            if (!v96)
            {
              goto LABEL_91;
            }

LABEL_92:
            v85 += 8;
            if (v91 >= v90 || v7 >= v88)
            {
              goto LABEL_111;
            }
          }

          v95 = v91;
          v96 = v85 == v91;
          v91 += 8;
          if (v96)
          {
            goto LABEL_92;
          }

LABEL_91:
          *v85 = *v95;
          goto LABEL_92;
        }

        v91 = __srca;
LABEL_111:
        v105 = v85;
      }

LABEL_114:
      if (v105 != v91 || v105 >= &v91[(v90 - v91 + (v90 - v91 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v105, v91, 8 * ((v90 - v91) / 8));
      }

      v106 = v123;
      v43 = __srca;
      if (v120 < v121)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_257C66E20(v123);
      }

      if (v119 > *(v106 + 2))
      {
        goto LABEL_137;
      }

      v107 = &v106[16 * v118];
      *(v107 + 4) = v121;
      *(v107 + 5) = v120;
      result = sub_257C66D94(v119);
      v7 = v106;
      v41 = *(v106 + 2);
      if (v41 <= 1)
      {
        goto LABEL_3;
      }
    }

    v49 = &v7[16 * v41 + 32];
    v50 = *(v49 - 64);
    v51 = *(v49 - 56);
    v55 = __OFSUB__(v51, v50);
    v52 = v51 - v50;
    if (v55)
    {
      goto LABEL_138;
    }

    v54 = *(v49 - 48);
    v53 = *(v49 - 40);
    v55 = __OFSUB__(v53, v54);
    v47 = v53 - v54;
    v48 = v55;
    if (v55)
    {
      goto LABEL_139;
    }

    v56 = &v7[16 * v41];
    v58 = *v56;
    v57 = *(v56 + 1);
    v55 = __OFSUB__(v57, v58);
    v59 = v57 - v58;
    if (v55)
    {
      goto LABEL_141;
    }

    v55 = __OFADD__(v47, v59);
    v60 = v47 + v59;
    if (v55)
    {
      goto LABEL_144;
    }

    if (v60 >= v52)
    {
      v78 = &v7[16 * v44 + 32];
      v80 = *v78;
      v79 = *(v78 + 1);
      v55 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v55)
      {
        goto LABEL_148;
      }

      if (v47 < v81)
      {
        v44 = v41 - 2;
      }

      goto LABEL_77;
    }

    goto LABEL_56;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_124:
  v4 = *v113;
  if (!*v113)
  {
    goto LABEL_162;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_157:
    result = sub_257C66E20(v7);
    v7 = result;
  }

  v108 = *(v7 + 2);
  if (v108 >= 2)
  {
    while (*a3)
    {
      v109 = *&v7[16 * v108];
      v110 = *&v7[16 * v108 + 24];
      sub_257EA6308((*a3 + 8 * v109), (*a3 + 8 * *&v7[16 * v108 + 16]), (*a3 + 8 * v110), v4);
      if (v114)
      {
      }

      if (v110 < v109)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_257C66E20(v7);
      }

      if (v108 - 2 >= *(v7 + 2))
      {
        goto LABEL_151;
      }

      v111 = &v7[16 * v108];
      *v111 = v109;
      *(v111 + 1) = v110;
      result = sub_257C66D94(v108 - 1);
      v108 = *(v7 + 2);
      if (v108 <= 1)
      {
      }
    }

    goto LABEL_161;
  }
}

uint64_t sub_257EA6308(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      v22 = a3;
      memmove(a4, __src, 8 * v12);
      a3 = v22;
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v5 > v6)
    {
      v36 = v6;
LABEL_26:
      v23 = v5 - 8;
      v24 = a3 - 8;
      v25 = v14;
      do
      {
        v26 = v5;
        v27 = v24;
        v28 = v24 + 8;
        v29 = *(v25 - 1);
        v25 -= 8;
        v30 = v23;
        v31 = *v23;
        v32 = (v29 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
        swift_beginAccess();
        v33 = *v32;
        v34 = (v31 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
        swift_beginAccess();
        if (*v34 < v33)
        {
          a3 = v27;
          if (v28 != v26)
          {
            *v27 = *v30;
          }

          if (v14 <= v4 || (v5 = v30, v30 <= v36))
          {
            v5 = v30;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        v5 = v26;
        if (v28 != v14)
        {
          *v27 = *v25;
        }

        v24 = v27 - 8;
        v14 = v25;
        v23 = v30;
      }

      while (v25 > v4);
      v14 = v25;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      v13 = a3;
      memmove(a4, __dst, 8 * v9);
      a3 = v13;
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && v5 < a3)
    {
      while (1)
      {
        v15 = a3;
        v16 = *v4;
        v17 = (*v5 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
        swift_beginAccess();
        v18 = *v17;
        v19 = (v16 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
        swift_beginAccess();
        if (*v19 >= v18)
        {
          break;
        }

        v20 = v5;
        v21 = v6 == v5;
        v5 += 8;
        if (!v21)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 8;
        if (v4 < v14)
        {
          a3 = v15;
          if (v5 < v15)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v20 = v4;
      v21 = v6 == v4;
      v4 += 8;
      if (v21)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v20;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_37:
  if (v5 != v4 || v5 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v5, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t _s16MagnifierSupport23MindNetModelBoundingBoxC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(unint64_t a1, float a2)
{
  v3 = a1;
  v4 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
  }

LABEL_3:
  swift_bridgeObjectRetain_n();
  v31 = v4;
  while (1)
  {
    v5 = v3 >> 62 ? sub_257ED0210() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v5 < 1)
    {
      break;
    }

    v32 = sub_257CB3F68(v6);
    sub_257EA0720(&v32);

    v33 = v32;
    v7 = sub_257C1C9AC(0);
    MEMORY[0x259C72300]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    v3 = &v34;
    sub_257ECF860();
    v8 = v33;
    v31 = v34;
    v32 = v4;
    if (v33 >> 62)
    {
      v9 = sub_257ED0210();
    }

    else
    {
      v9 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = &v7[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect];
    swift_beginAccess();
    if (v9)
    {
      v4 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x259C72E20](v4, v8);
        }

        else
        {
          if (v4 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v12 = *(v8 + 8 * v4 + 32);
        }

        v13 = v12;
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          if (sub_257ED0210() < 1)
          {
          }

          goto LABEL_3;
        }

        v3 = &v12[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect];
        swift_beginAccess();
        v35 = CGRectUnion(*v3, *v10);
        x = v35.origin.x;
        y = v35.origin.y;
        width = v35.size.width;
        height = v35.size.height;
        v18 = CGRectGetHeight(v35);
        v36.origin.x = x;
        v36.origin.y = y;
        v36.size.width = width;
        v36.size.height = height;
        v19 = sqrt(v18 * CGRectGetWidth(v36));
        if (v19 == 0.0)
        {
          if (a2 < 0.0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v37 = CGRectIntersection(*v3, *v10);
          v20 = v37.origin.x;
          v21 = v37.origin.y;
          v22 = v37.size.width;
          v23 = v37.size.height;
          v24 = CGRectGetHeight(v37);
          v38.origin.x = v20;
          v38.origin.y = v21;
          v38.size.width = v22;
          v38.size.height = v23;
          v25 = sqrt(v24 * CGRectGetWidth(v38)) / v19;
          if (v25 > a2)
          {
LABEL_25:
            v39 = CGRectUnion(*v10, *v3);
            v26 = v39.origin.x;
            v27 = v39.origin.y;
            v28 = v39.size.width;
            v29 = v39.size.height;

            v10->origin.x = v26;
            v10->origin.y = v27;
            v10->size.width = v28;
            v10->size.height = v29;
            goto LABEL_16;
          }
        }

        sub_257ED0330();
        sub_257ED0370();
        v11 = v4 + 1;
        sub_257ED0380();
        v3 = &v32;
        sub_257ED0340();
LABEL_16:
        ++v4;
        if (v11 == v9)
        {
          v3 = v32;
          v4 = MEMORY[0x277D84F90];
          goto LABEL_5;
        }
      }
    }

    v3 = v4;
LABEL_5:

    sub_257ECC3F0();
  }

  return v31;
}

void sub_257EA69F8(float a1, uint64_t a2, char **inited)
{
  *&v3 = a1;
  v91 = sub_257ECCCF0();
  v5 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v94 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB8E0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v73 - v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB8E8);
  sub_257ECDC20();
  sub_257BD2C2C(0, &qword_27F8FB940);
  (*(v8 + 16))(v11, v13, v7);
  sub_257BD2D4C(&qword_27F8FB938, &qword_27F8FB8E0);
  v14 = &selRef_rate;
  v97 = sub_257ECFB80();
  v15 = [v97 shape];
  v96 = sub_257BD2C2C(0, &qword_281543DC0);
  v16 = sub_257ECF810();

  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_64;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 32);
    goto LABEL_4;
  }

LABEL_66:
  __break(1u);
  do
  {
    v20 = MEMORY[0x259C72E20](1, v16);
LABEL_8:
    v21 = v20;

    v78 = sub_257ECFAB0();

    v22 = [v97 v14[217]];
    v16 = sub_257ECF810();

    if ((v16 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x259C72E20](2, v16);
    }

    else
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_71;
      }

      v23 = *(v16 + 48);
    }

    v24 = v23;

    v92 = sub_257ECFAB0();

    v101 = MEMORY[0x277D84F90];
    if (v78 < 0)
    {
      goto LABEL_70;
    }

    v74 = v13;
    v75 = v8;
    v76 = v7;
    v77 = *&v3;
    v25 = MEMORY[0x277D84F90];
    if (!v78)
    {
LABEL_57:
      v90 = v25;
LABEL_58:
      _s16MagnifierSupport23MindNetModelBoundingBoxC24nonMaximalSuppressionIOU5boxes9thresholdSayACGAG_SftFZ_0(v90, v77);

      (*(v75 + 8))(v74, v76);
      return;
    }

    v26 = v92;
    if (v92 < 0)
    {
      goto LABEL_72;
    }

    v27 = 0;
    v28 = v11;
    v87 = v11 + 1;
    v29 = __OFADD__(v11, 1);
    v88 = v29;
    v83 = v92;
    v85 = v11 + 2;
    v30 = __OFADD__(v11, 2);
    v86 = v30;
    v82 = v11 + 3;
    v31 = __OFADD__(v11, 3);
    v84 = v31;
    v81 = v78;
    v79 = (v5 + 8);
    v80 = (v5 + 24);
    v95 = xmmword_257EDBBA0;
    v8 = 0x277CCA000uLL;
    v13 = &selRef_rate;
    v32 = MEMORY[0x277D84F90];
    v90 = MEMORY[0x277D84F90];
    v93 = inited;
    v14 = v28;
    while (1)
    {
      v98 = v27;
      if (v26)
      {
        break;
      }

LABEL_24:
      v27 = v98 + 1;
      if (v98 + 1 == v78)
      {
        goto LABEL_58;
      }
    }

    if (v28 < 0)
    {
      goto LABEL_63;
    }

    v5 = 0;
    v3 = v27;
    while (1)
    {
      if (v28)
      {
        v100[0] = v32;
        sub_257BF27A4(0, v28, 0);
        v33 = 0;
        v32 = v100[0];
        do
        {
          v100[31] = MEMORY[0x277D84F90];
          sub_257ED0360();
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          sub_257ED0330();
          sub_257ED0370();
          sub_257ED0380();
          sub_257ED0340();
          v34 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          [v34 initWithInteger_];
          sub_257ED0330();
          sub_257ED0370();
          sub_257ED0380();
          sub_257ED0340();
          [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          sub_257ED0330();
          sub_257ED0370();
          sub_257ED0380();
          sub_257ED0340();
          v35 = sub_257ECF7F0();

          v16 = [v97 objectForKeyedSubscript_];

          [v16 floatValue];
          v37 = v36;

          v100[0] = v32;
          v39 = *(v32 + 16);
          v38 = *(v32 + 24);
          v40 = (v39 + 1);
          if (v39 >= v38 >> 1)
          {
            v16 = v100;
            sub_257BF27A4((v38 > 1), v39 + 1, 1);
            v32 = v100[0];
          }

          v33 = (v33 + 1);
          *(v32 + 16) = v40;
          *(v32 + 4 * v39 + 32) = v37;
        }

        while (v14 != v33);
        inited = v93;
        goto LABEL_37;
      }

      v40 = *(v32 + 16);
      if (!v40)
      {
        break;
      }

LABEL_37:
      v7 = 0;
      v25 = 0;
      do
      {
        if (v7 >= v40)
        {
          __break(1u);
          goto LABEL_57;
        }

        if (*(v32 + 32 + 4 * v7) < *(v32 + 4 * v25 + 32))
        {
          v7 = v25;
        }

        ++v25;
      }

      while (v40 != v25);
      if (v7 >= v40)
      {
        goto LABEL_59;
      }

      if (v7 >= 5)
      {
        goto LABEL_73;
      }

      v41 = *(v32 + 4 * v7 + 32);
      if (inited[2] && (v16 = inited, v42 = sub_257C09E78(v7), (v43 & 1) != 0))
      {
        if (*&inited[7][4 * v42] > v41)
        {
          goto LABEL_28;
        }
      }

      else if (v41 < 0.3)
      {
LABEL_28:

        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6960);
      inited = swift_initStackObject();
      *(inited + 1) = v95;
      v44 = v98;
      inited[4] = v14;
      inited[5] = v44;
      inited[6] = v5;
      v16 = MLMultiArray.subscript.getter(inited);
      swift_setDeallocating();
      [v16 floatValue];
      v46 = v45;

      v47 = swift_initStackObject();
      *(v47 + 16) = v95;
      if (v88)
      {
        goto LABEL_60;
      }

      inited = v47;
      v48 = v98;
      *(v47 + 32) = v87;
      *(v47 + 40) = v48;
      *(v47 + 48) = v5;
      v16 = MLMultiArray.subscript.getter(v47);
      swift_setDeallocating();
      [v16 floatValue];
      v50 = v49;

      v51 = swift_initStackObject();
      *(v51 + 16) = v95;
      if (v86)
      {
        goto LABEL_61;
      }

      v52 = v98;
      *(v51 + 32) = v85;
      *(v51 + 40) = v52;
      *(v51 + 48) = v5;
      v16 = MLMultiArray.subscript.getter(v51);
      inited = &selRef__configurationWithPhysicalButton_behavior_behaviorOptions_;
      swift_setDeallocating();
      [v16 floatValue];
      v54 = v53;

      v55 = swift_initStackObject();
      *(v55 + 16) = v95;
      if (v84)
      {
        goto LABEL_62;
      }

      v56 = (v5 + v50) / v83;
      v57 = 1.0 - (v3 + v46) / v81;
      v58 = v98;
      *(v55 + 32) = v82;
      *(v55 + 40) = v58;
      *(v55 + 48) = v5;
      v59 = MLMultiArray.subscript.getter(v55);
      swift_setDeallocating();
      [v59 floatValue];
      v61 = v60;

      v62 = v61;
      sub_257ECCCE0();
      v90 = type metadata accessor for MindNetModelBoundingBox();
      v63 = objc_allocWithZone(v90);
      v64 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_id;
      sub_257ECCCE0();
      v65 = &v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat];
      *&v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat] = 0;
      v89 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle;
      *&v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_angle] = 0;
      v66 = &v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_depth];
      *v66 = 0;
      v66[4] = 1;
      v67 = &v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_centroid3d];
      *v67 = 0;
      *(v67 + 1) = 0;
      v67[16] = 1;
      *&v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_knownFeaturePoints] = 0;
      v68 = &v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_physicalSize];
      *v68 = 0;
      v68[8] = 1;
      swift_beginAccess();
      (*v80)(&v63[v64], v94, v91);
      swift_endAccess();
      swift_beginAccess();
      *v65 = v41;
      v69 = v89;
      swift_beginAccess();
      *&v63[v69] = 0;
      v70 = &v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect];
      *v70 = v56 - v62 * 0.5;
      v70[1] = v57 - v54 * 0.5;
      v70[2] = v62;
      v70[3] = v54;
      *&v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex] = v7;
      *&v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heatByClass] = v32;
      *&v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_firstSeen] = 0;
      *&v63[OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_lastSeen] = 0;
      v99.receiver = v63;
      v99.super_class = v90;
      v71 = objc_msgSendSuper2(&v99, sel_init);
      (*v79)(v94, v91);
      v72 = v71;
      v16 = &v101;
      MEMORY[0x259C72300]();
      if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      sub_257ECF860();

      v90 = v101;
      inited = v93;
LABEL_29:
      v26 = v92;
      ++v5;
      v28 = v14;
      v32 = MEMORY[0x277D84F90];
      if (v5 == v92)
      {
        goto LABEL_24;
      }
    }

    v7 = 0;
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
    v17 = MEMORY[0x259C72E20](0, v16);
LABEL_4:
    v18 = v17;

    v16 = [v18 integerValue];

    v11 = (v16 - 4);
    if (__OFSUB__(v16, 4))
    {
      __break(1u);
      goto LABEL_66;
    }

    v19 = [v97 v14[217]];
    v16 = sub_257ECF810();
  }

  while ((v16 & 0xC000000000000001) != 0);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v20 = *(v16 + 40);
    goto LABEL_8;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

id sub_257EA750C(uint64_t a1)
{
  v2 = v1;
  v4 = (a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_rect);
  swift_beginAccess();
  MinX = CGRectGetMinX(*v4);
  MinY = CGRectGetMinY(*v4);
  Width = CGRectGetWidth(*v4);
  Height = CGRectGetHeight(*v4);
  v9 = &v2[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_box];
  *v9 = MinX;
  v9[1] = MinY;
  v9[2] = Width;
  v9[3] = Height;
  v10 = (a1 + OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_heat);
  swift_beginAccess();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_confidence] = *v10;
  v11 = OBJC_IVAR____TtC16MagnifierSupport23MindNetModelBoundingBox_classIndex;
  swift_beginAccess();
  if (*(a1 + v11) >= 5uLL)
  {
    v15 = &v2[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_labelName];
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
  }

  else
  {
    v12 = sub_257EA08DC();
    v13 = &v2[OBJC_IVAR____TtC16MagnifierSupport22DoorSignDetectorResult_labelName];
    *v13 = v12;
    v13[1] = v14;
  }

  v17.receiver = v2;
  v17.super_class = type metadata accessor for DoorSignDetectorResult();
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t sub_257EA768C()
{
  result = qword_27F8FB7D0;
  if (!qword_27F8FB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB7D0);
  }

  return result;
}

uint64_t type metadata accessor for MindNetModelBoundingBox()
{
  result = qword_27F8FB8A0;
  if (!qword_27F8FB8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_257EA772C()
{
  result = qword_27F8FB810;
  if (!qword_27F8FB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB810);
  }

  return result;
}

uint64_t sub_257EA7780(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB820);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_257EA77EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB838);
    sub_257BD2D4C(a2, &qword_27F8F6E08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_257EA7888()
{
  result = qword_27F8FB888;
  if (!qword_27F8FB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB888);
  }

  return result;
}

uint64_t sub_257EA7974(unint64_t *a1, void (*a2)(uint64_t))
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

float keypath_get_3Tm@<S0>(void *a1@<X0>, void *a2@<X3>, _DWORD *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  result = *v4;
  *a3 = *v4;
  return result;
}

uint64_t keypath_set_4Tm_0(int *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = (*a2 + *a5);
  result = swift_beginAccess();
  *v6 = v5;
  return result;
}

double keypath_get_17Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_18Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_257EA7C00()
{
  result = sub_257ECCCF0();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_257EA8804()
{
  result = qword_27F8FB8B0;
  if (!qword_27F8FB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB8B0);
  }

  return result;
}

unint64_t sub_257EA885C()
{
  result = qword_27F8FB8B8;
  if (!qword_27F8FB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB8B8);
  }

  return result;
}

unint64_t sub_257EA88B4()
{
  result = qword_27F8FB8C0;
  if (!qword_27F8FB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB8C0);
  }

  return result;
}

unint64_t sub_257EA890C()
{
  result = qword_27F8FB8C8;
  if (!qword_27F8FB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB8C8);
  }

  return result;
}

unint64_t sub_257EA8964()
{
  result = qword_27F8FB8D0;
  if (!qword_27F8FB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB8D0);
  }

  return result;
}

unint64_t sub_257EA89BC()
{
  result = qword_27F8FB8D8;
  if (!qword_27F8FB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB8D8);
  }

  return result;
}

void sub_257EA8A10(void *a1, char **a2, float a3)
{
  v50 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB8E0);
  v48 = *(v5 - 8);
  v49 = v5 - 8;
  v46 = v5;
  v47 = v48;
  v6 = MEMORY[0x28223BE20](v5);
  v52 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v53 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB8E8);
  v44 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  sub_257BD2D4C(&qword_27F8FB8F0, &qword_27F8FB8E8);
  v14 = a1;
  sub_257ECDC30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB8F8);
  v15 = swift_allocObject();
  v45 = xmmword_257EDBE50;
  *(v15 + 16) = xmmword_257EDBE50;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB900);
  *(v15 + 56) = v16;
  v17 = sub_257BD2D4C(&qword_27F8FB908, &qword_27F8FB900);
  *(v15 + 64) = v17;
  *(v15 + 32) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB910);
  *(v15 + 96) = v18;
  v19 = sub_257BD2D4C(&qword_27F8FB918, &qword_27F8FB910);
  *(v15 + 72) = xmmword_257EF0CC0;
  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 104) = v19;
  *(v15 + 112) = 0;
  *(v15 + 176) = v16;
  *(v15 + 184) = v17;
  *(v15 + 152) = 0;
  sub_257ECDC40();

  v20 = swift_allocObject();
  *(v20 + 16) = v45;
  *(v20 + 56) = v16;
  *(v20 + 64) = v17;
  *(v20 + 32) = 0;
  *(v20 + 96) = v18;
  *(v20 + 104) = v19;
  *(v20 + 72) = xmmword_257EF0CD0;
  *(v20 + 136) = v16;
  *(v20 + 144) = v17;
  *(v20 + 112) = 0;
  *(v20 + 176) = v16;
  *(v20 + 184) = v17;
  v21 = v46;
  v22 = v47;
  *(v20 + 152) = 0;
  v23 = v52;
  *&v45 = v9;
  v43 = v13;
  sub_257ECDC40();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB920);
  v24 = *(v48 + 72);
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_257ED9BD0;
  v27 = v26 + v25;
  v28 = *(v22 + 16);
  v28(v27, v53, v21);
  v28(v27 + v24, v23, v21);
  v54 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FB928);
  sub_257BD2D4C(&qword_27F8FB930, &qword_27F8FB928);
  sub_257BD2D4C(&qword_27F8FB938, &qword_27F8FB8E0);
  v29 = v51;
  sub_257ECDC10();
  sub_257EA69F8(a3, v29, v50);
  v31 = v30;
  v54 = MEMORY[0x277D84F90];
  if (!(v30 >> 62))
  {
    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_13:

    v40 = v45;
    v41 = *(v44 + 8);
    v41(v51, v45);
    v42 = *(v22 + 8);
    v42(v52, v21);
    v42(v53, v21);
    v41(v43, v40);
    return;
  }

  v32 = sub_257ED0210();
  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v32 >= 1)
  {
    v33 = 0;
    do
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x259C72E20](v33, v31);
      }

      else
      {
        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      v36 = objc_allocWithZone(type metadata accessor for DoorSignDetectorResult());
      v37 = v35;
      v38 = sub_257EA750C(v37);

      v39 = v38;
      MEMORY[0x259C72300]();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      ++v33;
      sub_257ECF860();
    }

    while (v32 != v33);
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_257EA904C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7892834 && a2 == 0xE300000000000000;
  if (v3 || (sub_257ED0640() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E6C6562616CLL && a2 == 0xE900000000000065 || (sub_257ED0640() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = sub_257ED0640();

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

uint64_t sub_257EA9174(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_257ED0640() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1952540008 && a2 == 0xE400000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1952671090 && a2 == 0xE400000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646E497373616C63 && a2 == 0xEA00000000007865 || (sub_257ED0640() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C43794274616568 && a2 == 0xEB00000000737361 || (sub_257ED0640() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6565537473726966 && a2 == 0xE90000000000006ELL || (sub_257ED0640() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6565537473616CLL && a2 == 0xE800000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6874706564 && a2 == 0xE500000000000000 || (sub_257ED0640() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64696F72746E6563 && a2 == 0xEA00000000006433 || (sub_257ED0640() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000257F0A2D0 == a2 || (sub_257ED0640() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C61636973796870 && a2 == 0xEC000000657A6953)
  {

    return 11;
  }

  else
  {
    v6 = sub_257ED0640();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_257EA9550(uint64_t a1)
{
  v4 = *(sub_257ECCB70() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257BE3DE0;

  return sub_257EA1FC0(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_257EA9688(uint64_t a1)
{
  v4 = *(sub_257ECCB70() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_257C167C4;

  return sub_257EA18E0(a1, v7, v8, v1 + v5, v9, v10);
}

unint64_t sub_257EA97D4()
{
  result = qword_27F8FB948;
  if (!qword_27F8FB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB948);
  }

  return result;
}

uint64_t sub_257EA9828()
{

  return sub_257E9F9B8();
}

uint64_t sub_257EA98A0()
{

  return sub_257EA0290();
}

uint64_t sub_257EA991C(uint64_t a1, double a2)
{
  v4 = type metadata accessor for SpatialTextBlock();
  v79 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6998);
    result = swift_allocObject();
    *(result + 16) = xmmword_257ED6D30;
    if (v12)
    {
      v18 = result;
      v6 = sub_257C63FD8(1, 0);
      sub_257C67D4C(&v85, &v6[(*(v79 + 80) + 32) & ~*(v79 + 80)], 1, a1);
      v26 = v25;
      v16 = v86;
      v12 = v87;
      v17 = v88;

      sub_257C02520();
      if (v26 != 1)
      {
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      result = v18;
      *(v18 + 32) = v6;
    }

    else
    {
      *(result + 32) = MEMORY[0x277D84F90];
    }
  }

  else if (a2 <= 0.0)
  {
    v27 = v9;
    sub_257ECD490();
    v28 = sub_257ECDA20();
    v29 = sub_257ECFBE0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = a2;
      _os_log_impl(&dword_257BAC000, v28, v29, "A threshold distance to stop clustering should be >0, but received %f", v30, 0xCu);
      MEMORY[0x259C74820](v30, -1, -1);
    }

    (*(v8 + 8))(v11, v27);
    return 0;
  }

  else
  {
    v13 = sub_257C63FD8(*(a1 + 16), 0);
    v14 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v81 = v13 + v14;
    v82 = v14;
    sub_257C67D4C(&v85, v13 + v14, v12, a1);
    v16 = v15;
    v17 = v85;
    v18 = v86;

    sub_257C02520();
    if (v16 != v12)
    {
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    v18 = *(v13 + 16);
    v12 = MEMORY[0x277D84F90];
    v83 = v13;
    if (v18)
    {
      v85 = MEMORY[0x277D84F90];
      sub_257BF2A44(0, v18, 0);
      v19 = 0;
      v16 = v85;
      v80 = xmmword_257ED6D30;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6960);
        v20 = swift_allocObject();
        *(v20 + 16) = v80;
        *(v20 + 32) = v19;
        v85 = v16;
        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          v23 = v20;
          sub_257BF2A44((v21 > 1), v22 + 1, 1);
          v20 = v23;
          v16 = v85;
        }

        ++v19;
        *(v16 + 16) = v22 + 1;
        *(v16 + 8 * v22 + 32) = v20;
      }

      while (v18 != v19);
      v13 = v83;
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    sub_257EAA260(v13);
    v17 = v31;
    v32 = *(v16 + 16);
    if (v32 >= 2)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_20:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_257C7DE60(v16);
        }

        v33 = (v16 + 32);
        v34 = v17 + 4;
        v32 = *(v16 + 16);
        v75 = (v16 + 40);
        v76 = (v16 + 32);
        *&v80 = v18;
        v78 = v16;
        while (1)
        {
          if (v32)
          {
            if (v32 == 1)
            {
              v35 = 0;
              v18 = 0;
              v36 = INFINITY;
            }

            else
            {
              v18 = 0;
              v35 = 0;
              v37 = 0;
              v36 = INFINITY;
              v38 = v75;
              v39 = 1;
              while (2)
              {
                v40 = v39;
                v41 = v33[v37];
                v42 = *(v41 + 32);
                if ((v42 & 0x8000000000000000) != 0)
                {
LABEL_101:
                  __break(1u);
LABEL_102:
                  __break(1u);
LABEL_103:
                  __break(1u);
                  goto LABEL_104;
                }

                if (v42 >= v17[2])
                {
                  goto LABEL_102;
                }

                if (!*(v41 + 16))
                {
                  goto LABEL_103;
                }

                v43 = v34[v42];
                v44 = v43 + 32;
                v45 = *(v43 + 16);
                v46 = v38;
                v47 = v40;
                do
                {
                  if (!*(*v46 + 16))
                  {
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
LABEL_96:
                    __break(1u);
LABEL_97:
                    __break(1u);
LABEL_98:
                    __break(1u);
LABEL_99:
                    __break(1u);
LABEL_100:
                    __break(1u);
                    goto LABEL_101;
                  }

                  v48 = *(*v46 + 32);
                  if (v48 >= v45)
                  {
                    goto LABEL_90;
                  }

                  v49 = *(v44 + 8 * v48);
                  if (v49 < v36)
                  {
                    v18 = v47;
                  }

                  v50 = v47 + 1;
                  if (v49 < v36)
                  {
                    v35 = v37;
                    v36 = v49;
                  }

                  ++v46;
                  ++v47;
                }

                while (v32 != v50);
                v39 = v40 + 1;
                ++v38;
                v37 = v40;
                if (v40 + 1 != v32)
                {
                  continue;
                }

                break;
              }
            }

            if (v36 > a2)
            {
              goto LABEL_73;
            }
          }

          else
          {
            v18 = 0;
            v35 = 0;
            if (a2 != INFINITY)
            {
              goto LABEL_27;
            }
          }

          if (v35 >= v32)
          {
            goto LABEL_105;
          }

          v51 = &v33[v35];
          v52 = *v51;
          if (!*(*v51 + 16))
          {
            goto LABEL_106;
          }

          if (v18 >= v32)
          {
            goto LABEL_107;
          }

          v77 = &v76[v18];
          if (!*(*v77 + 16))
          {
            goto LABEL_108;
          }

          if (v80)
          {
            v53 = 0;
            v16 = *(v52 + 32);
            v12 = *(*v77 + 32);
            do
            {
              if (v16 != v53)
              {
                if (v53 >= v17[2])
                {
                  goto LABEL_94;
                }

                if ((v16 & 0x8000000000000000) != 0)
                {
                  goto LABEL_95;
                }

                v54 = v17;
                v17 = v34[v53];
                v55 = v17[2];
                if (v16 >= v55)
                {
                  goto LABEL_96;
                }

                if (v12 >= v55)
                {
                  goto LABEL_97;
                }

                if (*&v17[v12 + 4] >= *&v17[v16 + 4])
                {
                  v56 = v17[v16 + 4];
                }

                else
                {
                  v56 = v17[v12 + 4];
                }

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v34[v53] = v17;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v17 = sub_257C7DFA0(v17);
                  v34[v53] = v17;
                }

                if (v16 >= v17[2])
                {
                  goto LABEL_98;
                }

                v17[v16 + 4] = v56;
                if (v16 >= v54[2])
                {
                  goto LABEL_99;
                }

                v17 = v54;
                v58 = v34[v16];
                v59 = swift_isUniquelyReferenced_nonNull_native();
                v34[v16] = v58;
                if ((v59 & 1) == 0)
                {
                  v58 = sub_257C7DFA0(v58);
                  v34[v16] = v58;
                }

                if (v53 >= *(v58 + 2))
                {
                  goto LABEL_100;
                }

                *&v58[8 * v53 + 32] = v56;
              }

              ++v53;
            }

            while (v80 != v53);
            v16 = v78;
            v32 = v78[2];
            v12 = MEMORY[0x277D84F90];
          }

          if (v18 >= v32)
          {
            goto LABEL_109;
          }

          if (v35 >= v32)
          {
            goto LABEL_110;
          }

          sub_257EB1334(v60);
          v61 = *(v16 + 16);
          if (v18 >= v61)
          {
            goto LABEL_111;
          }

          v62 = v61 - 1;
          memmove(v77, v77 + 8, 8 * (v61 - 1 - v18));
          *(v16 + 16) = v62;

          v32 = *(v16 + 16);
          v33 = v76;
          if (v32 <= 1)
          {
            goto LABEL_71;
          }
        }
      }

LABEL_114:
      v17 = sub_257C7DFB4(v17);
      goto LABEL_20;
    }

LABEL_71:
    if (v32)
    {
      v32 = 1;
LABEL_73:
      v85 = v12;
      sub_257BF2AA4(0, v32, 0);
      v63 = 0;
      v64 = v85;
      v75 = v17;
      v76 = (v16 + 32);
      v65 = v83;
      v78 = v16;
      while (v63 < *(v16 + 16))
      {
        v66 = v76[v63];
        v17 = *(v66 + 16);
        if (v17)
        {
          v77 = v63;
          *&v80 = v64;
          v84 = v12;

          sub_257BF2AC4(0, v17, 0);
          v67 = v79;
          v12 = 0;
          v16 = v84;
          while (v12 < *(v66 + 16))
          {
            v68 = *(v66 + 8 * v12 + 32);
            if ((v68 & 0x8000000000000000) != 0)
            {
              goto LABEL_92;
            }

            if (v68 >= *(v65 + 16))
            {
              goto LABEL_93;
            }

            v18 = *(v67 + 72);
            sub_257EAA4CC(v81 + v18 * v68, v6);
            v84 = v16;
            v70 = *(v16 + 16);
            v69 = *(v16 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_257BF2AC4(v69 > 1, v70 + 1, 1);
              v67 = v79;
              v16 = v84;
            }

            ++v12;
            *(v16 + 16) = v70 + 1;
            sub_257EAA530(v6, v16 + v82 + v70 * v18);
            v65 = v83;
            if (v17 == v12)
            {

              v12 = MEMORY[0x277D84F90];
              v64 = v80;
              v63 = v77;
              goto LABEL_85;
            }
          }

          goto LABEL_91;
        }

        v16 = v12;
LABEL_85:
        v85 = v64;
        v72 = v64[2];
        v71 = v64[3];
        if (v72 >= v71 >> 1)
        {
          v18 = v63;
          sub_257BF2AA4((v71 > 1), v72 + 1, 1);
          v63 = v18;
          v64 = v85;
        }

        ++v63;
        v64[2] = v72 + 1;
        v64[v72 + 4] = v16;
        v16 = v78;
        v17 = v75;
        if (v63 == v32)
        {
          v73 = v64;

          return v73;
        }
      }

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
      goto LABEL_112;
    }

LABEL_27:

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_257EAA260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_257ECF850();
    *(v3 + 16) = v1;
    bzero((v3 + 32), 8 * v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5978);
    v4 = sub_257ECF850();
    v5 = v4;
    *(v4 + 16) = v1;
    *(v4 + 32) = v3;
    v6 = v4 + 32;
    v7 = v1 - 1;
    if (v1 != 1)
    {
      v8 = (v4 + 40);
      do
      {
        *v8++ = v3;

        --v7;
      }

      while (v7);
      v9 = v1 - 1;
      v10 = 0;
      v11 = *(type metadata accessor for SpatialTextBlock() - 8);
      v25 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v26 = v11;
      v12 = v5 + 40;
      v13 = 1;
      v24 = v1;
      while (v13 != v1)
      {
        v14 = *(v26 + 72);
        v27 = v13;
        v15 = v25 + v14 * v13;
        v16 = v10;
        do
        {
          if (v9 == v16)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v17 = sub_257E2D218(v15, 1, 0.4, 1.0, 0.02);
          if (v10 >= *(v5 + 16))
          {
            goto LABEL_23;
          }

          v18 = v17;
          v19 = *(v6 + 8 * v10);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v6 + 8 * v10) = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v19 = sub_257C7DFA0(v19);
            *(v6 + 8 * v10) = v19;
          }

          if ((v16 + 1) >= *(v19 + 2))
          {
            goto LABEL_24;
          }

          v21 = v18;
          *&v19[8 * v16 + 40] = v21;
          if ((v16 + 1) >= *(v5 + 16))
          {
            goto LABEL_25;
          }

          v22 = *(v12 + 8 * v16);
          v23 = swift_isUniquelyReferenced_nonNull_native();
          *(v12 + 8 * v16) = v22;
          if ((v23 & 1) == 0)
          {
            v22 = sub_257C7DFA0(v22);
            *(v12 + 8 * v16) = v22;
          }

          if (v10 >= *(v22 + 2))
          {
            goto LABEL_26;
          }

          *&v22[8 * v10 + 32] = v21;
          ++v16;
          v15 += v14;
        }

        while (v9 != v16);
        v13 = v27 + 1;
        ++v10;
        v1 = v24;
        if (v27 + 1 == v24)
        {
          return;
        }
      }

LABEL_27:
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_257EAA4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTextBlock();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257EAA530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTextBlock();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
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
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_257EAA5D0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_257EAA618(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static MAGOUEvent.didRecievePointerContactWithObjectGroup(objectGroup:occupants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 88) = 1;
}

uint64_t static MAGOUEvent.didRecievePointerContactWithFurnitureDetections(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 88) = 2;
}

uint64_t static MAGOUEvent.didRecievePointerContactWithObject(object:occupants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  *(a3 + 64) = v7;
  *(a3 + 80) = a2;
  *(a3 + 88) = 0;
  v8 = v3;
}

double static MAGOUEvent.didRecieveEmptyPointerContact()@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = 3;
  return result;
}

uint64_t MAGOUEvent.description.getter()
{
  v1 = 0xD00000000000001DLL;
  v2 = "rContactWithObject";
  if (*(v0 + 88) == 2)
  {
    v1 = 0xD000000000000022;
    v2 = "activity.updated";
  }

  if (*(v0 + 88) <= 1u)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = v1;
  }

  if (*(v0 + 88) <= 1u)
  {
    v4 = "activity.updated";
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x259C72150](v3, v4 | 0x8000000000000000);

  return 0x746E65766520554FLL;
}

unint64_t MAGOUEvent.MAGOUEventType.description.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*(v0 + 88) == 2)
  {
    v1 = 0xD000000000000022;
  }

  if (*(v0 + 88) <= 1u)
  {
    return 0xD000000000000022;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_257EAA858()
{
  v1 = 0xD00000000000001DLL;
  if (*(v0 + 88) == 2)
  {
    v1 = 0xD000000000000022;
  }

  if (*(v0 + 88) <= 1u)
  {
    return 0xD000000000000022;
  }

  else
  {
    return v1;
  }
}

uint64_t MAGOUEvent.eventType.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[3];
  v10 = v1[2];
  v2 = v10;
  v11 = v3;
  v12[0] = v1[4];
  v4 = v12[0];
  *(v12 + 9) = *(v1 + 73);
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  *(a1 + 73) = *(v12 + 9);
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_257EAA900(v9, &v8);
}

uint64_t get_enum_tag_for_layout_string_16MagnifierSupport10MAGOUEventV0C4TypeO(uint64_t a1)
{
  if ((*(a1 + 88) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 88) & 3;
  }
}

__n128 __swift_memcpy89_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_257EAA98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 89))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 88);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_257EAA9D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_257EAAA30(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 88) = a2;
  return result;
}

unint64_t sub_257EAAA7C()
{
  result = qword_27F8FB950;
  if (!qword_27F8FB950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB950);
  }

  return result;
}

unint64_t sub_257EAAAD4()
{
  result = qword_27F8FB958;
  if (!qword_27F8FB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB958);
  }

  return result;
}

unint64_t sub_257EAAB2C()
{
  result = qword_27F8FB960;
  if (!qword_27F8FB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB960);
  }

  return result;
}

unint64_t sub_257EAAB80()
{
  result = qword_27F8FB968;
  if (!qword_27F8FB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB968);
  }

  return result;
}

uint64_t sub_257EAABE0()
{
  v0 = sub_257ECC660();
  __swift_allocate_value_buffer(v0, qword_27F9134F0);
  __swift_project_value_buffer(v0, qword_27F9134F0);
  return sub_257ECC640();
}

unint64_t sub_257EAAC48()
{
  result = qword_27F8FB970;
  if (!qword_27F8FB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB970);
  }

  return result;
}

unint64_t sub_257EAAC9C()
{
  result = qword_27F8FB978;
  if (!qword_27F8FB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB978);
  }

  return result;
}

unint64_t sub_257EAACF4()
{
  result = qword_27F8FB980;
  if (!qword_27F8FB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB980);
  }

  return result;
}

uint64_t sub_257EAAD48@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F8F4868 != -1)
  {
    swift_once();
  }

  v2 = sub_257ECC660();
  v3 = __swift_project_value_buffer(v2, qword_27F9134F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_257EAADF4()
{
  result = qword_27F8FB988;
  if (!qword_27F8FB988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB988);
  }

  return result;
}

uint64_t sub_257EAAE58(uint64_t a1)
{
  v2 = sub_257D7E3C8();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_257EAAEA8()
{
  result = qword_27F8FB998;
  if (!qword_27F8FB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB998);
  }

  return result;
}

uint64_t sub_257EAAEFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6CA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_257ECCA30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = sub_257ECF4A0();
  MEMORY[0x28223BE20](v8 - 8);
  sub_257ECF490();
  sub_257ECF480();
  sub_257ECF470();
  sub_257ECF480();
  sub_257ECCA20();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_257ECC570();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_257ECC580();
}

uint64_t sub_257EAB150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_257C167C4;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_257EAB214(uint64_t a1)
{
  v2 = sub_257EAACF4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_257EAB260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_257EAB318;

  return (sub_257EAC010)(a2, a3);
}

uint64_t sub_257EAB318(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_257EAB42C()
{
  result = qword_27F8FB9A0;
  if (!qword_27F8FB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB9A0);
  }

  return result;
}

unint64_t sub_257EAB484()
{
  result = qword_27F8FB9A8;
  if (!qword_27F8FB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB9A8);
  }

  return result;
}

uint64_t sub_257EAB4DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_257EACA04;

  return sub_257EABA54(a1);
}

uint64_t sub_257EAB584(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_257EAC9F0;

  return sub_257EAC5A8();
}

uint64_t sub_257EAB628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_257EAB6E8;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_257EAB6E8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_257EAB7EC()
{
  result = qword_27F8FB9B0;
  if (!qword_27F8FB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB9B0);
  }

  return result;
}

unint64_t sub_257EAB844()
{
  result = qword_27F8FB9B8;
  if (!qword_27F8FB9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FB9C0);
    sub_257CF9864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FB9B8);
  }

  return result;
}

uint64_t sub_257EAB8C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_257EAAB80();
  *v5 = v2;
  v5[1] = sub_257BE3DE0;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_257EAB97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_257BE3DE0;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_257EABA74()
{
  *(v0 + 40) = sub_257ECF900();
  *(v0 + 48) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EABB0C, v2, v1);
}

uint64_t sub_257EABB0C()
{

  return MEMORY[0x2822009F8](sub_257EABB74, 0, 0);
}

uint64_t sub_257EABB74()
{
  *(v0 + 56) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EABC00, v2, v1);
}

uint64_t sub_257EABC00()
{

  return MEMORY[0x2822009F8](sub_257EABC68, 0, 0);
}

uint64_t sub_257EABC68()
{
  *(v0 + 64) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EABCF4, v2, v1);
}

uint64_t sub_257EABCF4()
{

  *(v0 + 72) = _s16MagnifierSupport16MAGActivityStoreC10activitiesSayAA0C0VGvg_0();

  return MEMORY[0x2822009F8](sub_257EABD64, 0, 0);
}

void sub_257EABD64()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = -v2;
    v6 = v1 + 40;
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v26 = v7;
    v8 = (v6 + 16 * v4++);
    while ((v4 - 1) < *(v1 + 16))
    {
      v9 = v0[4];
      v10 = *(v8 - 1);
      v11 = *v8;
      v0[2] = v10;
      v0[3] = v11;
      v12 = swift_task_alloc();
      *(v12 + 16) = v0 + 2;
      swift_bridgeObjectRetain_n();
      LOBYTE(v9) = sub_257DF8ED4(sub_257C119FC, v12, v9);

      if (v9)
      {
        v7 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_257BF2984(0, *(v26 + 16) + 1, 1);
          v7 = v26;
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_257BF2984((v13 > 1), v14 + 1, 1);
          v7 = v26;
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v11;
        v6 = v1 + 40;
        if (!(v5 + v4))
        {
          goto LABEL_13;
        }

        goto LABEL_3;
      }

      ++v4;
      v8 += 2;
      if (v5 + v4 == 1)
      {
        v7 = v26;
LABEL_13:
        v3 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_15:

    v16 = *(v7 + 16);
    if (v16)
    {
      v27 = v7;
      v28 = v3;
      sub_257BF2AE4(0, v16, 0);
      v17 = 0;
      v18 = v28;
      v19 = *(v28 + 16);
      v20 = 16 * v19;
      do
      {
        v22 = *(v27 + v17 + 32);
        v21 = *(v27 + v17 + 40);
        v23 = *(v28 + 24);

        if (v19 >= v23 >> 1)
        {
          sub_257BF2AE4((v23 > 1), v19 + 1, 1);
        }

        *(v28 + 16) = v19 + 1;
        v24 = v28 + v20 + v17;
        *(v24 + 32) = v22;
        *(v24 + 40) = v21;
        v17 += 16;
        ++v19;
        --v16;
      }

      while (v16);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    v25 = v0[1];

    v25(v18);
  }
}

uint64_t sub_257EAC010(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_257EAC030, 0, 0);
}

uint64_t sub_257EAC030()
{
  *(v0 + 64) = sub_257ECF900();
  *(v0 + 72) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EAC0C8, v2, v1);
}

uint64_t sub_257EAC0C8()
{

  return MEMORY[0x2822009F8](sub_257EAC130, 0, 0);
}

uint64_t sub_257EAC130()
{
  *(v0 + 80) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EAC1BC, v2, v1);
}

uint64_t sub_257EAC1BC()
{

  return MEMORY[0x2822009F8](sub_257EAC224, 0, 0);
}

uint64_t sub_257EAC224()
{
  *(v0 + 88) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EAC2B0, v2, v1);
}

uint64_t sub_257EAC2B0()
{

  *(v0 + 96) = _s16MagnifierSupport16MAGActivityStoreC10activitiesSayAA0C0VGvg_0();

  return MEMORY[0x2822009F8](sub_257EAC320, 0, 0);
}

void sub_257EAC320()
{
  v1 = v0[12];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = -v2;
    v6 = v1 + 40;
    do
    {
      v27 = v3;
      v7 = (v6 + 16 * v4++);
      while (1)
      {
        if ((v4 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return;
        }

        v9 = v0[6];
        v8 = v0[7];
        v11 = *(v7 - 1);
        v10 = *v7;
        v0[2] = v11;
        v0[3] = v10;
        v0[4] = v9;
        v0[5] = v8;
        sub_257BDAB08();

        if (sub_257ED0140())
        {
          break;
        }

        ++v4;
        v7 += 2;
        if (v5 + v4 == 1)
        {
          v3 = v27;
          goto LABEL_13;
        }
      }

      v12 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_257BF2984(0, *(v27 + 16) + 1, 1);
        v12 = v27;
      }

      v6 = v1 + 40;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_257BF2984((v13 > 1), v14 + 1, 1);
        v6 = v1 + 40;
        v12 = v27;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      v3 = v12;
    }

    while (v5 + v4);
  }

LABEL_13:

  v16 = *(v3 + 16);
  if (v16)
  {
    v29 = MEMORY[0x277D84F90];
    sub_257BF2AE4(0, v16, 0);
    v17 = 0;
    v18 = v29;
    v19 = *(v29 + 16);
    v28 = 16 * v19;
    do
    {
      v20 = v3;
      v21 = v3 + v17;
      v22 = *(v3 + v17 + 32);
      v23 = *(v21 + 40);
      v24 = *(v29 + 24);

      if (v19 >= v24 >> 1)
      {
        sub_257BF2AE4((v24 > 1), v19 + 1, 1);
      }

      *(v29 + 16) = v19 + 1;
      v25 = v29 + v28 + v17;
      *(v25 + 32) = v22;
      *(v25 + 40) = v23;
      v17 += 16;
      ++v19;
      --v16;
      v3 = v20;
    }

    while (v16);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v26 = v0[1];

  v26(v18);
}

uint64_t sub_257EAC5C4()
{
  *(v0 + 16) = sub_257ECF900();
  *(v0 + 24) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EAC65C, v2, v1);
}

uint64_t sub_257EAC65C()
{

  return MEMORY[0x2822009F8](sub_257EAC6C4, 0, 0);
}

uint64_t sub_257EAC6C4()
{
  *(v0 + 32) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EAC750, v2, v1);
}

uint64_t sub_257EAC750()
{

  return MEMORY[0x2822009F8](sub_257EAC7B8, 0, 0);
}

uint64_t sub_257EAC7B8()
{
  *(v0 + 40) = sub_257ECF8F0();
  v2 = sub_257ECF8B0();

  return MEMORY[0x2822009F8](sub_257EAC844, v2, v1);
}

uint64_t sub_257EAC844()
{

  *(v0 + 48) = _s16MagnifierSupport16MAGActivityStoreC10activitiesSayAA0C0VGvg_0();

  return MEMORY[0x2822009F8](sub_257EAC8B4, 0, 0);
}

uint64_t sub_257EAC8B4()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_257BF2AE4(0, v2, 0);
    v3 = v13;
    v4 = *(v13 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = *(v13 + 24);

      if (v4 >= v9 >> 1)
      {
        sub_257BF2AE4((v9 > 1), v4 + 1, 1);
      }

      *(v13 + 16) = v4 + 1;
      v10 = v13 + v5;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      v5 += 16;
      v6 += 2;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x277D84F90];
  }

  v11 = *(v0 + 8);

  return v11(v3);
}

id sub_257EACA08@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __CVBuffer *a3@<X2>, __CVBuffer *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for SpatialTextBlock();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECCCE0();
  v16 = type metadata accessor for DetectedTextBlock();
  v17 = *(a1 + *(v16 + 36));
  if (!v17)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);
    goto LABEL_30;
  }

  v136 = a5;
  v133 = v16;
  v18 = v17;
  v19 = [v18 boundingQuad];
  if (!v19)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    a3 = a4;
    a4 = v18;
    goto LABEL_30;
  }

  v127 = v17;
  v134 = v18;
  v135 = v12;
  v20 = v19;
  [(__CVBuffer *)v19 midPoint];
  v21 = v136;
  sub_257EADC44(a4, a3, v136, v22, v23);
  if (v26)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    a3 = v20;
    a4 = v134;
    v12 = v135;
LABEL_30:

    v100 = sub_257ECCCF0();
    (*(*(v100 - 8) + 8))(v15, v100);
    return (*(v13 + 56))(a6, 1, 1, v12);
  }

  v132 = v20;
  v121 = a6;
  v27.i64[0] = v24;
  v27.i64[1] = v25;
  v131 = v27;
  v28 = v24;
  [a2 transform];
  v138 = __invert_f4(v137);
  v131 = vaddq_f32(v138.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_f32(vdupq_n_s32(v28), v138.columns[0]), v138.columns[1], *v131.f32, 1), v138.columns[2], v131, 2));
  v29 = (ARCameraToDisplayRotation() * 3.1416) / 180.0;
  [(__CVBuffer *)v134 baselineAngle];
  *&v30 = v30;
  v31 = __sincosf_stret((v29 + *&v30) * 0.5);
  v32 = vmulq_n_f32(xmmword_257ED6C00, v31.__sinval);
  v32.n128_u32[3] = LODWORD(v31.__cosval);
  *v33.i64 = MEMORY[0x259C72730](v32);
  v128 = v33;
  v129 = v34;
  v130 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5A48);
  v36 = swift_allocObject();
  v37 = v129;
  *(v36 + 32) = v128;
  *(v36 + 48) = v37;
  v38 = v131;
  *(v36 + 64) = v130;
  *(v36 + 80) = v38;
  swift_setDeallocating();
  swift_deallocClassInstance();
  v126 = a2;
  v39 = [a2 transform];
  v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v128.f32[0]), v41, *v128.f32, 1), v42, v128, 2), v43, v128, 3);
  v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v129.f32[0]), v41, *v129.f32, 1), v42, v129, 2), v43, v129, 3);
  v46 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v130.f32[0]), v41, *v130.f32, 1), v42, v130, 2), v43, v130, 3);
  v47 = v131;
  v48 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v131.f32[0]), v41, *v131.f32, 1), v42, v131, 2);
  v49 = &v15[v135[9]];
  v129 = v44;
  v130 = v45;
  *v49 = v44;
  v49[1] = v45;
  v50 = vmlaq_laneq_f32(v48, v43, v47, 3);
  v131 = v46;
  v49[2] = v46;
  v49[3] = v50;
  v128 = v50;
  *v51.i64 = MEMORY[0x259C72730](v39, xmmword_257EF1A00);
  v122 = v51;
  v123 = v52;
  v124 = v53;
  v125 = v54;
  if (UIInterfaceOrientationIsLandscape(v21))
  {
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
  }

  else
  {
    Width = CVPixelBufferGetHeight(a3);
    Height = CVPixelBufferGetWidth(a3);
  }

  v57 = Height;
  v58 = Width;
  result = [(__CVBuffer *)v132 topLeft];
  if (Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v60 = v57;
  if (v57 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v60 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v61 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v124.f32[0]), v130, *v124.f32, 1), v131, v124, 2);
  v62 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v125.f32[0]), v130, *v125.f32, 1), v131, v125, 2);
  v63 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v122.f32[0]), v130, *v122.f32, 1), v131, v122, 2), v128, v122, 3);
  v130 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v129, v123.f32[0]), v130, *v123.f32, 1), v131, v123, 2), v128, v123, 3);
  v131 = v63;
  v64 = vmlaq_laneq_f32(v61, v128, v124, 3);
  v128 = vmlaq_laneq_f32(v62, v128, v125, 3);
  v129 = v64;
  MEMORY[0x259C73B60](v58, v60);
  v65 = v126;
  v66 = sub_257ECFF00();
  if (v68)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    a3 = v132;
LABEL_18:
    a4 = v134;
    v12 = v135;
    a6 = v121;
    a2 = v65;
    goto LABEL_30;
  }

  v124.i64[0] = v67;
  v125.i64[0] = v66;
  v69 = v132;
  [(__CVBuffer *)v132 topRight];
  MEMORY[0x259C73B60](v58, v60);
  v70 = sub_257ECFF00();
  if (v72)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    a3 = v69;
    goto LABEL_18;
  }

  v122.i64[0] = v71;
  v123.i64[0] = v70;
  [(__CVBuffer *)v69 bottomRight];
  v119 = v58;
  v120 = v60;
  MEMORY[0x259C73B60](v58, v60);
  v73 = sub_257ECFF00();
  a2 = v65;
  if (v75)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    a3 = v69;
LABEL_28:
    a4 = v134;
    goto LABEL_29;
  }

  v76 = v125.i64[0];
  v77.i64[0] = v125.i64[0];
  v78 = v124.i64[0];
  v77.i64[1] = v124.i64[0];
  v79 = v123.i64[0];
  v80.i64[0] = v123.i64[0];
  v81 = v122.i64[0];
  v80.i64[1] = v122.i64[0];
  v82 = vsubq_f32(v77, v80);
  v83.i64[0] = v73;
  v83.i64[1] = v74;
  v84 = vmulq_f32(v82, v82);
  v85 = vsubq_f32(v80, v83);
  v86 = vmulq_f32(v85, v85);
  *v84.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v84, v84, 8uLL), *&vextq_s8(v86, v86, 8uLL)), vadd_f32(vzip1_s32(*v84.i8, *v86.i8), vzip2_s32(*v84.i8, *v86.i8))));
  v84.i64[1] = 1;
  v88 = v134;
  v87 = v135;
  *&v15[v135[5]] = v84;
  v89 = &v15[v87[6]];
  *v89 = v76;
  v89[1] = v78;
  v90 = &v15[v87[7]];
  *v90 = v79;
  v90[1] = v81;
  v91 = &v15[v87[8]];
  *v91 = v73;
  v91[1] = v74;
  v92 = sub_257EAE030();
  if (!v92)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    a3 = v132;
    a4 = v88;
LABEL_29:
    a6 = v121;
    v12 = v135;
    goto LABEL_30;
  }

  v93 = v92;
  v94 = [v92 boundingQuad];
  if (!v94)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    goto LABEL_27;
  }

  v124.i64[0] = v93;
  v125.i64[0] = v94;
  [v94 topLeft];
  v95 = v119;
  v96 = v120;
  MEMORY[0x259C73B60](v119, v120);
  v97 = sub_257ECFF00();
  if (v99)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

LABEL_27:
    a3 = v132;
    goto LABEL_28;
  }

  v122.i64[0] = v97;
  v123.i64[0] = v98;
  [v125.i64[0] bottomLeft];
  MEMORY[0x259C73B60](v95, v96);
  v101 = sub_257ECFF00();
  v12 = v135;
  if (v103)
  {
    sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);

    a3 = v132;
    a4 = v134;
    a6 = v121;
    goto LABEL_30;
  }

  v104 = v101;
  v105 = v102;
  v136 = v135[11];
  v106 = v135[15];

  v107 = v134;
  v108.i64[0] = v122.i64[0];
  v108.i64[1] = v123.i64[0];
  v109.i64[0] = v104;
  v109.i64[1] = v105;
  v110 = vsubq_f32(v108, v109);
  v111 = vmulq_f32(v110, v110);
  *&v15[v12[10]] = sqrtf(v111.f32[2] + vaddv_f32(*v111.f32));
  v112 = v133;
  *&v15[v136] = *(a1 + v133[5]);
  v113 = (a1 + v112[6]);
  v114 = &v15[v12[12]];
  v115 = v113[1];
  *v114 = *v113;
  *(v114 + 1) = v115;
  *&v15[v12[13]] = *(a1 + v112[7]);
  v15[v12[14]] = *(a1 + v112[8]);

  v116 = v107;
  sub_257EAF6A8(a1, type metadata accessor for DetectedTextBlock);
  *&v15[v106] = v127;
  v117 = v121;
  sub_257EAA4CC(v15, v121);
  (*(v13 + 56))(v117, 0, 1, v12);
  return sub_257EAF6A8(v15, type metadata accessor for SpatialTextBlock);
}

unint64_t sub_257EAD3F0(float32x4_t a1)
{
  v2 = type metadata accessor for SpatialTextBlock();
  v3 = (v1 + v2[9]);
  v4 = vmulq_f32(*v3, *v3);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(v5);
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_f32(vsubq_f32(a1, *(v1 + v2[6])), vmulq_n_f32(*v3, vmul_f32(*v4.f32, vrsqrts_f32(v5, vmul_f32(*v4.f32, *v4.f32))).f32[0]));
  v7 = v6.f32[2] + vaddv_f32(*v6.f32);
  if (v7 < -0.01 || (COERCE_FLOAT(*(v1 + v2[5])) + 0.01) < v7 || ((v25 = *(v1 + v2[5]), *v8.i64 = sub_257E2D198(), v9 = vsubq_f32(a1, v8), v10 = v3[1], v12 = vmulq_f32(v10, v10), v11 = vaddv_f32(*v12.f32), v12.i32[1] = 0, *&v13 = v12.f32[2] + v11, v14 = vrsqrte_f32(COERCE_UNSIGNED_INT(v12.f32[2] + v11)), v15 = vmul_f32(v14, vrsqrts_f32(v13, vmul_f32(v14, v14))), v16 = vmulq_f32(v9, vmulq_n_f32(v10, vmul_f32(v15, vrsqrts_f32(v13, vmul_f32(v15, v15))).f32[0])), v17 = v16.f32[2] + vaddv_f32(*v16.f32), v17 >= -0.01) ? (v18 = (*(&v25 + 1) + 0.01) < v17) : (v18 = 1), v18))
  {
    v24 = 0;
    v20 = 1;
  }

  else
  {
    v20 = 0;
    v21 = v3[2];
    v22 = vmulq_f32(v21, v21);
    v12.f32[0] = v22.f32[2] + vaddv_f32(*v22.f32);
    *v22.f32 = vrsqrte_f32(*v12.f32);
    *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(*v12.f32, vmul_f32(*v22.f32, *v22.f32)));
    v23 = vmulq_f32(vsubq_f32(a1, v3[3]), vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(*v12.f32, vmul_f32(*v22.f32, *v22.f32))).f32[0]));
    v24 = COERCE_UNSIGNED_INT(v23.f32[2] + vaddv_f32(*v23.f32));
  }

  return v24 | (v20 << 32);
}

uint64_t SpatialTextBlock.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SpatialTextBlock.id.setter(uint64_t a1)
{
  v3 = sub_257ECCCF0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for SpatialTextBlock()
{
  result = qword_27F8FB9D8;
  if (!qword_27F8FB9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 SpatialTextBlock.dimensions.setter(__n128 a1)
{
  v2 = type metadata accessor for SpatialTextBlock();
  result = a1;
  *(v1 + *(v2 + 20)) = a1;
  return result;
}

__n128 SpatialTextBlock.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = (v4 + *(type metadata accessor for SpatialTextBlock() + 36));
  *v5 = a1;
  v5[1] = a2;
  result = a4;
  v5[2] = a3;
  v5[3] = a4;
  return result;
}

uint64_t SpatialTextBlock.stringLocaleMap.getter()
{
  type metadata accessor for SpatialTextBlock();
}

uint64_t SpatialTextBlock.stringLocaleMap.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SpatialTextBlock() + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SpatialTextBlock.normalizedBbox.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SpatialTextBlock();
  v10 = (v4 + *(result + 48));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SpatialTextBlock.confidence.setter(double a1)
{
  result = type metadata accessor for SpatialTextBlock();
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t SpatialTextBlock.detectLanguages.setter(char a1)
{
  result = type metadata accessor for SpatialTextBlock();
  *(v1 + *(result + 56)) = a1;
  return result;
}

void *SpatialTextBlock.outputRegion.getter()
{
  v1 = *(v0 + *(type metadata accessor for SpatialTextBlock() + 60));
  v2 = v1;
  return v1;
}

void SpatialTextBlock.outputRegion.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SpatialTextBlock() + 60);

  *(v1 + v3) = a1;
}

uint64_t SpatialTextBlock.hash(into:)()
{
  sub_257ECCCF0();
  sub_257EAF450(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

void sub_257EADC44(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, double a4, double a5)
{
  if (CVPixelBufferGetPixelFormatType(a1) == 1717855600 && !CVPixelBufferLockBaseAddress(a1, 1uLL) && CVPixelBufferGetBaseAddress(a1) && a3)
  {
    Height = CVPixelBufferGetHeight(a2);
    Width = CVPixelBufferGetWidth(a2);
    v13 = 1.0;
    if (a4 <= 1.0)
    {
      v14 = a4;
    }

    else
    {
      v14 = 1.0;
    }

    if (v14 > 0.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.0;
    }

    if (a5 <= 1.0)
    {
      v13 = a5;
    }

    if (v13 > 0.0)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0.0;
    }

    IsLandscape = UIInterfaceOrientationIsLandscape(a3);
    v18 = !IsLandscape;
    if (IsLandscape)
    {
      v19 = Width;
    }

    else
    {
      v19 = Height;
    }

    if (v18)
    {
      v20 = Width;
    }

    else
    {
      v20 = Height;
    }

    v21 = MEMORY[0x259C73B60](v19, v20, v15, v16);
    v23 = Width - v21;
    v24 = Height - v22;
    v25 = Width - v22;
    v26 = Height - v21;
    if (a3 != 1)
    {
      v26 = v22;
      v22 = v21;
    }

    if (a3 != 2)
    {
      v21 = v26;
      v25 = v22;
    }

    if (a3 == 4)
    {
      v27 = v24;
    }

    else
    {
      v27 = v21;
    }

    if (a3 == 4)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    v29 = round(v28);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v30 = round(v27);
        if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v30 > -9.22337204e18)
          {
            if (v30 < 9.22337204e18)
            {
              v31 = v29;
              v32 = CVPixelBufferGetHeight(a1);
              v33 = CVPixelBufferGetWidth(a1);
              v34 = (v31 / Width) * v33;
              if (v34 > -9.2234e18)
              {
                if (v34 < 9.2234e18)
                {
                  v35 = COERCE_UNSIGNED_INT(fabs((v31 / Width) * v33)) > 0x7F7FFFFF;
                  v36 = (v30 / Height) * v32;
                  if (COERCE_INT(fabs(v36)) <= 2139095039 && !v35)
                  {
                    if (v36 > -9.2234e18)
                    {
                      if (v36 < 9.2234e18)
                      {
                        v37 = v36 * v33;
                        if ((v36 * v33) >> 64 == v37 >> 63)
                        {
                          v38 = __OFADD__(v34, v37);
                          v39 = v34 + v37;
                          if (!v38)
                          {
                            if ((v39 - 0x2000000000000000) >> 62 == 3)
                            {
                              [v5 intrinsics];
                              [v5 intrinsics];
                              [v5 intrinsics];
                              [v5 intrinsics];
                              [v5 transform];
                              ARVisionCameraToRenderingCoordinateTransform();
                              CVPixelBufferUnlockBaseAddress(a1, 1uLL);
                              return;
                            }

                            goto LABEL_63;
                          }

LABEL_62:
                          __break(1u);
LABEL_63:
                          __break(1u);
                          return;
                        }

LABEL_61:
                        __break(1u);
                        goto LABEL_62;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_52;
  }
}

id sub_257EAE030()
{
  v1 = [v0 children];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_257EAF638();
  v3 = sub_257ECF810();

  v4 = v3;
  v45 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_28:
    v5 = sub_257ED0210();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  v44 = v4;
  if (v5)
  {
    v7 = 0;
    v8 = v4 & 0xC000000000000001;
    v9 = v4 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v8)
      {
        v10 = MEMORY[0x259C72E20](v7, v4);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(v4 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v13 = [v10 boundingQuad];
      if (v13)
      {

        sub_257ED0330();
        sub_257ED0370();
        sub_257ED0380();
        sub_257ED0340();
        v4 = v44;
      }

      else
      {
      }

      ++v7;
    }

    while (v12 != v5);
    v14 = v45;
    if ((v45 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_29;
  }

  v14 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  if ((v14 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v16 = sub_257ED0210();
    if (v16 < 2)
    {

      result = sub_257ED0210();
      if (!result)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

LABEL_32:
    sub_257BF25E4(0, v16, 0);
    v19 = 0;
    v20 = v6;
    do
    {
      if (v19 >= v16)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_54;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x259C72E20](v19, v14);
      }

      else
      {
        if (v19 >= *(v14 + 16))
        {
          goto LABEL_56;
        }

        v22 = *(v14 + 8 * v19 + 32);
      }

      v23 = v22;
      result = [v22 boundingQuad];
      if (!result)
      {
        goto LABEL_60;
      }

      v24 = result;
      [result topLeft];
      v26 = v25;
      v28 = v27;

      result = [v23 boundingQuad];
      if (!result)
      {
        goto LABEL_59;
      }

      v29 = result;
      [result bottomLeft];
      v31 = v30;
      v33 = v32;

      v35 = *(v20 + 16);
      v34 = *(v20 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_257BF25E4((v34 > 1), v35 + 1, 1);
      }

      *(v20 + 16) = v35 + 1;
      v36 = v20 + 16 * v35;
      *(v36 + 32) = sqrt((v31 - v26) * (v31 - v26) + (v33 - v28) * (v33 - v28));
      *(v36 + 40) = v23;
      ++v19;
    }

    while (v21 != v16);
    v37 = *(v20 + 32);
    v15 = *(v20 + 40);

    v14 = v35 + 1;
    v38 = 1;
LABEL_45:
    v39 = (v20 + 32 + 16 * v38);
    while (v14 != v38)
    {
      if (v38 >= *(v20 + 16))
      {
        goto LABEL_55;
      }

      v40 = v39 + 2;
      ++v38;
      v41 = *v39;
      v42 = v37 < *v39;
      v39 += 2;
      if (v42)
      {
        v43 = *(v40 - 1);

        v37 = v41;
        v15 = v43;
        goto LABEL_45;
      }
    }

    return v15;
  }

  v16 = *(v14 + 16);
  if (v16 >= 2)
  {
    goto LABEL_32;
  }

  result = *(v14 + 16);
  if (!result)
  {
LABEL_31:

    return 0;
  }

LABEL_22:
  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_57:
    v18 = MEMORY[0x259C72E20](0, v14);
    goto LABEL_25;
  }

  if (*(v14 + 16))
  {
    v18 = *(v14 + 32);
LABEL_25:
    v15 = v18;

    return v15;
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t SpatialTextBlock.hashValue.getter()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257EAF450(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257EAE4F0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_257EAE560(uint64_t result, double a2, double a3, double a4, double a5)
{
  v6 = (v5 + *(result + 48));
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

void *sub_257EAE610(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  v3 = v2;
  return v2;
}

void sub_257EAE63C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);

  *(v2 + v4) = a1;
}

uint64_t sub_257EAE698()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257EAF450(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

uint64_t sub_257EAE720()
{
  sub_257ECCCF0();
  sub_257EAF450(&qword_27F8F57B0, MEMORY[0x277CC95F0]);

  return sub_257ECF400();
}

uint64_t sub_257EAE7A4()
{
  sub_257ED07B0();
  sub_257ECCCF0();
  sub_257EAF450(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
  sub_257ECF400();
  return sub_257ED0800();
}

void sub_257EAE82C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_bottom);
  v2 = [v1 geometry];
  if (v2)
  {
    v28 = v2;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3 && (v4 = v3, v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_left), (v6 = [v5 geometry]) != 0))
    {
      v7 = v6;
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_right);
        v11 = [v10 geometry];
        if (v11)
        {
          v12 = v11;
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v27 = v13;
            v26 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_top);
            v14 = [v26 geometry];
            if (v14)
            {
              v15 = v14;
              objc_opt_self();
              v16 = swift_dynamicCastObjCClass();
              if (v16)
              {
                v25 = v16;
                [v4 capRadius];
                v18 = v17;
                v19 = (v0 + OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_dimensions);
                LODWORD(v17) = 0;
                *(&v17 + 1) = -((v19[1] * 0.5) - v18);
                [v1 setSimdPosition_];
                [v4 setHeight_];
                [v5 setSimdPosition_];
                [v9 setHeight_];
                [v10 setSimdPosition_];
                [v27 setHeight_];
                LODWORD(v20) = 0;
                *(&v20 + 1) = (v19[1] * 0.5) - v18;
                [v26 setSimdPosition_];
                [v25 setHeight_];
                v21 = v28;
              }

              else
              {
                v21 = v12;
                v12 = v28;
              }

              v24 = v7;
              v7 = v12;
            }

            else
            {
              v24 = v12;
              v15 = v28;
            }
          }

          else
          {
            v24 = v7;
            v7 = v28;
            v15 = v12;
          }

          v23 = v7;
          v7 = v15;
        }

        else
        {
          v23 = v7;
          v7 = v28;
        }
      }

      else
      {
        v23 = v28;
      }

      v22 = v7;
    }

    else
    {
      v22 = v28;
    }
  }
}

char *sub_257EAEB9C(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *&v7[OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_dimensions] = 0;
  v10 = *&a3;
  v11 = objc_opt_self();
  v12 = [v11 capsuleWithCapRadius:a2 height:v10];
  v13 = objc_opt_self();
  v14 = [v13 nodeWithGeometry_];

  v15 = [v14 geometry];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 firstMaterial];

    if (v17)
    {
      v18 = [v17 diffuse];

      [v18 setContents_];
    }
  }

  [v14 simdLocalRotateBy_];
  *&v7[OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_bottom] = v14;
  v19 = v14;
  v20 = [v11 capsuleWithCapRadius:a2 height:*(&a3 + 1)];
  v21 = [v13 nodeWithGeometry_];

  v22 = [v21 geometry];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 firstMaterial];

    if (v24)
    {
      v25 = [v24 diffuse];

      [v25 setContents_];
    }
  }

  v26 = a1;
  *&v7[OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_left] = v21;
  v27 = v21;
  v28 = [v11 capsuleWithCapRadius:a2 height:*(&a3 + 1)];
  v29 = [v13 nodeWithGeometry_];

  v30 = [v29 geometry];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 firstMaterial];

    if (v32)
    {
      v33 = [v32 diffuse];

      [v33 setContents_];
    }
  }

  *&v7[OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_right] = v29;
  v34 = v29;
  v35 = [v11 capsuleWithCapRadius:a2 height:v10];
  v36 = [v13 nodeWithGeometry_];

  v37 = [v36 geometry];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 firstMaterial];

    if (v39)
    {
      v40 = [v39 diffuse];

      [v40 setContents_];
    }
  }

  [v36 simdLocalRotateBy_];
  *&v7[OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_top] = v36;
  v50.receiver = v7;
  v50.super_class = type metadata accessor for WireframePlane();
  v41 = v36;
  v42 = objc_msgSendSuper2(&v50, sel_init);
  [v42 addChildNode_];
  [v42 addChildNode_];
  [v42 addChildNode_];
  [v42 addChildNode_];
  [v42 setSimdWorldTransform_];

  *&v42[OBJC_IVAR____TtC16MagnifierSupport14WireframePlane_dimensions] = a3;
  sub_257EAE82C();

  return v42;
}

id sub_257EAF094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WireframePlane();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s16MagnifierSupport16SpatialTextBlockV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_257ECCCC0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SpatialTextBlock();
  v5 = vmovn_s32(vceqq_f32(*(a1 + v4[5]), *(a2 + v4[5])));
  if ((v5.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v5.i16[1] & v5.i16[2] & 1) == 0)
  {
    return 0;
  }

  v6 = vmovn_s32(vceqq_f32(*(a1 + v4[6]), *(a2 + v4[6])));
  if ((v6.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v6.i16[1] & v6.i16[2] & 1) == 0)
  {
    return 0;
  }

  v7 = vmovn_s32(vceqq_f32(*(a1 + v4[7]), *(a2 + v4[7])));
  if ((v7.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v7.i16[1] & v7.i16[2] & 1) == 0)
  {
    return 0;
  }

  v8 = vmovn_s32(vceqq_f32(*(a1 + v4[8]), *(a2 + v4[8])));
  if ((v8.i8[0] & 1) == 0)
  {
    return 0;
  }

  if ((v8.i16[1] & v8.i16[2] & 1) == 0)
  {
    return 0;
  }

  v9 = v4[9];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + v9 + 16), *(a2 + v9 + 16)), vceqq_f32(*(a1 + v9), *(a2 + v9))), vandq_s8(vceqq_f32(*(a1 + v9 + 32), *(a2 + v9 + 32)), vceqq_f32(*(a1 + v9 + 48), *(a2 + v9 + 48))))) & 0x80000000) == 0 || *(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  v11 = v4[11];
  v12 = *(a2 + v11);
  if (*(a1 + v11))
  {
    if (!v12)
    {
      return 0;
    }

    v13 = v4;
    v14 = sub_257D55200(*(a1 + v11), v12);
    v4 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v15 = v4;
  result = CGRectEqualToRect(*(a1 + v4[12]), *(a2 + v4[12]));
  if (!result)
  {
    return result;
  }

  if (*(a1 + v15[13]) != *(a2 + v15[13]) || *(a1 + v15[14]) != *(a2 + v15[14]))
  {
    return 0;
  }

  v16 = v15[15];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  result = (v17 | v18) == 0;
  if (v17)
  {
    if (v18)
    {
      sub_257EAF638();
      v19 = v18;
      v20 = v17;
      v21 = sub_257ECFF50();

      return v21 & 1;
    }
  }

  return result;
}

uint64_t sub_257EAF3A0(uint64_t a1)
{
  result = sub_257EAF450(&qword_27F8FB9C8, type metadata accessor for SpatialTextBlock);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_257EAF3F8(uint64_t a1)
{
  result = sub_257EAF450(&qword_27F8FB9D0, type metadata accessor for SpatialTextBlock);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_257EAF450(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_257EAF530()
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
        sub_257CCE744();
        if (v3 <= 0x3F)
        {
          type metadata accessor for CGRect(319);
          if (v4 <= 0x3F)
          {
            sub_257CCE7A8();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_257EAF638()
{
  result = qword_27F8F5B20;
  if (!qword_27F8F5B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F8F5B20);
  }

  return result;
}

uint64_t sub_257EAF6A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_257EAF708()
{
  v1 = v0;
  v2 = sub_257ECF4C0();
  v3 = [v0 valueForKey_];

  if (v3)
  {
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_257C3A464(v13);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9418);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *&v13[0] = MEMORY[0x277D84F90];
    sub_257EAF90C();
    sub_257EB1524(v5);
    v6 = *&v13[0];
    sub_257BD2C2C(0, &qword_27F8FBA10);
    v7 = sub_257ECF7F0();
    v8 = sub_257ECF4C0();
    [v1 setValue:v7 forKey:v8];

    v4 = sub_257EB7888(v6);

    return v4;
  }

  return v10;
}

void sub_257EAF90C()
{
  v0 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v1 = objc_opt_self();
  v2 = sub_257ECF4C0();
  v3 = sub_257ECF4C0();
  v43 = v1;
  v4 = [v1 groupSpecifierWithID:v2 name:v3];

  if (v4)
  {
    v5 = sub_257BD2C2C(0, &qword_281543DC0);
    v6 = sub_257ECFF20();
    [v4 setProperty:v6 forKey:*MEMORY[0x277D3FFE8]];

    v7 = sub_257ECFAC0();
    [v4 setProperty:v7 forKey:*MEMORY[0x277D3FEF0]];

    v47 = v0;
    sub_257BF26E4(0, 3, 0);
    v8 = v0;
    v46 = v5;
    *&v45 = sub_257ECFAC0();
    v10 = *(v0 + 16);
    v9 = *(v0 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_257BF26E4((v9 > 1), v10 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v10 + 1;
    sub_257BEBE08(&v45, (v8 + 32 * v10 + 32));
    v11 = sub_257ECFAC0();
    v46 = v5;
    v47 = v8;
    *&v45 = v11;
    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_257BF26E4((v12 > 1), v13 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v13 + 1;
    sub_257BEBE08(&v45, (v8 + 32 * v13 + 32));
    v14 = sub_257ECFAC0();
    v46 = v5;
    v47 = v8;
    *&v45 = v14;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_257BF26E4((v15 > 1), v16 + 1, 1);
      v8 = v47;
    }

    *(v8 + 16) = v16 + 1;
    sub_257BEBE08(&v45, (v8 + 32 * v16 + 32));
    v17 = sub_257ECF7F0();

    v47 = v0;
    sub_257BF26E4(0, 3, 0);
    v18 = v47;
    if (byte_286906508)
    {
      if (byte_286906508 == 1)
      {
        v19 = 0x65746E4920707041;
        v20 = 0xEF6F6D654420746ELL;
      }

      else
      {
        v19 = 0x442074757074754FLL;
        v20 = 0xEB000000006F6D65;
      }
    }

    else
    {
      v20 = 0xE700000000000000;
      v19 = 0x746C7561666544;
    }

    v21 = MEMORY[0x277D837D0];
    v46 = MEMORY[0x277D837D0];
    *&v45 = v19;
    *(&v45 + 1) = v20;
    v23 = *(v47 + 16);
    v22 = *(v47 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_257BF26E4((v22 > 1), v23 + 1, 1);
      v18 = v47;
    }

    *(v18 + 16) = v23 + 1;
    sub_257BEBE08(&v45, (v18 + 32 * v23 + 32));
    if (byte_286906509)
    {
      if (byte_286906509 == 1)
      {
        v24 = 0x65746E4920707041;
        v25 = 0xEF6F6D654420746ELL;
      }

      else
      {
        v24 = 0x442074757074754FLL;
        v25 = 0xEB000000006F6D65;
      }
    }

    else
    {
      v25 = 0xE700000000000000;
      v24 = 0x746C7561666544;
    }

    v46 = v21;
    v47 = v18;
    *&v45 = v24;
    *(&v45 + 1) = v25;
    v27 = *(v18 + 16);
    v26 = *(v18 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_257BF26E4((v26 > 1), v27 + 1, 1);
      v18 = v47;
    }

    *(v18 + 16) = v27 + 1;
    sub_257BEBE08(&v45, (v18 + 32 * v27 + 32));
    if (byte_28690650A)
    {
      if (byte_28690650A == 1)
      {
        v28 = 0x65746E4920707041;
        v29 = 0xEF6F6D654420746ELL;
      }

      else
      {
        v28 = 0x442074757074754FLL;
        v29 = 0xEB000000006F6D65;
      }
    }

    else
    {
      v29 = 0xE700000000000000;
      v28 = 0x746C7561666544;
    }

    v46 = v21;
    v47 = v18;
    *&v45 = v28;
    *(&v45 + 1) = v29;
    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    if (v31 >= v30 >> 1)
    {
      sub_257BF26E4((v30 > 1), v31 + 1, 1);
      v18 = v47;
    }

    *(v18 + 16) = v31 + 1;
    sub_257BEBE08(&v45, (v18 + 32 * v31 + 32));
    v32 = sub_257ECF7F0();

    [v4 setValues:v17 titles:v32];

    v33 = v4;
    MEMORY[0x259C72300]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    if (qword_27F8F46E8 != -1)
    {
      swift_once();
    }

    sub_257ECC3F0();
    sub_257ECDF00();

    v34 = 0;
    v35 = v45;
    v36 = *MEMORY[0x277D401A8];
    v37 = *MEMORY[0x277D40090];
    while (1)
    {
      v38 = byte_286906510[v34 + 32];
      v39 = sub_257ECF4C0();

      v40 = [v43 preferenceSpecifierNamed:v39 target:v44 set:0 get:0 detail:0 cell:3 edit:0];

      if (!v40)
      {
        break;
      }

      v41 = sub_257ECFAC0();
      [v40 setProperty:v41 forKey:v36];

      if (v38 == v35)
      {
        [v33 setProperty:v40 forKey:v37];
      }

      v42 = v40;
      MEMORY[0x259C72300]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      ++v34;
      sub_257ECF860();

      if (v34 == 3)
      {

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_257EB0080(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_257ECCE30();
  v11 = [a1 cellForRowAtIndexPath_];

  if (v11)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 specifier];
      v8 = v7;
      if (v7)
      {
        if ([v7 propertyForKey_])
        {
          sub_257ED0160();
          swift_unknownObjectRelease();
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
        }

        v15 = v12;
        v16 = v13;
        if (*(&v13 + 1))
        {
          if (swift_dynamicCast())
          {
            v9 = v12;
            if (v12 <= 2)
            {
              if (qword_27F8F46E8 != -1)
              {
                swift_once();
                v9 = v12;
              }

              LOBYTE(v15) = v9;
              sub_257ECC3F0();
              sub_257ECDF10();
            }
          }

          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0u;
        v16 = 0u;
      }

      sub_257C3A464(&v15);
LABEL_18:
      v10 = sub_257ECCE30();
      v14.receiver = v2;
      v14.super_class = ObjectType;
      objc_msgSendSuper2(&v14, sel_tableView_didSelectRowAtIndexPath_, a1, v10);

      return;
    }
  }
}

uint64_t sub_257EB0504(uint64_t result)
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

  result = sub_257BFCC70(result, v11, 1, v3);
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

  memcpy((v3 + 80 * v7 + 32), (v6 + 32), 80 * v2);

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

uint64_t sub_257EB0640(uint64_t result)
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

  result = sub_257BFD2F0(result, v10, 1, v3);
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

uint64_t sub_257EB0738(uint64_t a1)
{
  v77 = sub_257ECCCF0();
  v4 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_257BFD690(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_257C677A4(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_257C02520();
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_257EB53DC(v14, v75);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_257BEBE88(v37);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_257BFD690(v39 > 1, v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_257EB53DC(v14, v76);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_257BEBE88(v43);
LABEL_33:
        v74 = v4;
        *(v16 + 2) = v4;
        v37 = v75;
        sub_257EB53DC(v14, v75);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          goto LABEL_33;
        }

        sub_257BEBE88(v14);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_257EB53DC(v14, v76);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_257BEBE88(v14);
    sub_257C02520();
    result = sub_257BEBE88(v37);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_257EB0DAC(uint64_t result)
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

  result = sub_257BFD7D4(result, v10, 1, v3);
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

uint64_t sub_257EB0ED4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_257ED0310();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9DF8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_257EB0FF0(uint64_t result)
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

  result = sub_257BFDD2C(result, v11, 1, v3);
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

uint64_t sub_257EB1124(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_257EB1238(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v8 = *(v4 + 16);
  if ((*(v4 + 24) >> 1) - v8 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  memcpy((v4 + v8 + 32), (v7 + 32), v3);

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_257EB1334(uint64_t result)
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

  result = sub_257BFCF1C(result, v11, 1, v3);
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

void *sub_257EB1420(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_257BFE5EC(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F6970);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_257EB153C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_257ED0210();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_257ED0210();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_257EB4818(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_257EB1634(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_27F8F4668 != -1)
  {
    v11 = a1;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    swift_once();
    a4 = v14;
    a2 = v12;
    a3 = v13;
    a1 = v11;
  }

  if (byte_27F8F8D88 != 1)
  {
    goto LABEL_11;
  }

  if (a4)
  {
    v4 = a1;
    v5 = objc_opt_self();
    if (v4 == 1)
    {
      sub_257EB194C();
      sub_257BD2C2C(0, &qword_281543EF0);
      v10 = sub_257ECF7F0();

      [v5 deactivateConstraints_];
    }

    else
    {
      sub_257BD2C2C(0, &qword_281543EF0);

      v6 = sub_257ECF7F0();

      [v5 deactivateConstraints_];

      sub_257EB194C();
    }

    v15 = sub_257ECF7F0();

    [v5 activateConstraints_];
    goto LABEL_15;
  }

  if (a1 == 1 && (*&a2 <= 375.0 || *&a2 / *&a3 <= 0.42))
  {
LABEL_11:
    v7 = objc_opt_self();
    sub_257EB194C();
    sub_257BD2C2C(0, &qword_281543EF0);
    v9 = sub_257ECF7F0();

    [v7 deactivateConstraints_];
  }

  else
  {
    v7 = objc_opt_self();
    sub_257BD2C2C(0, &qword_281543EF0);

    v8 = sub_257ECF7F0();

    [v7 deactivateConstraints_];

    sub_257EB194C();
  }

  v15 = sub_257ECF7F0();

  [v7 activateConstraints_];
LABEL_15:
}

id sub_257EB194C()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_boundaryConstraints);

  v11[4] = sub_257EB1AD0();
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
  v12 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_xPositionConstraint);
  v13 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_yPositionConstraint);
  v3 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  v4 = v13;
  result = v12;
  v6 = 0;
LABEL_2:
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  while (1)
  {
    if (v6 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBA90);
      swift_arrayDestroy();
      sub_257EB153C(v3, sub_257EB4A48);
      return v1;
    }

    if (v7 == v6)
    {
      break;
    }

    v8 = v11[v6++ + 4];
    if (v8)
    {
      v9 = v8;
      MEMORY[0x259C72300]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_257ECF830();
      }

      result = sub_257ECF860();
      v3 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_257EB1AD0()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___regularWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___regularWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___regularWidthConstraint);
  }

  else
  {
    v4 = [*(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer) widthAnchor];
    v5 = [v4 constraintEqualToConstant_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_257EB1B80()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel);
  }

  else
  {
    v4 = sub_257E00408();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257EB1BE0()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___landscapeInformationLabel;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___landscapeInformationLabel);
  v3 = v2;
  if (v2 == 1)
  {
    if (qword_27F8F4670 != -1)
    {
      swift_once();
    }

    if (byte_27F8F8D89 == 1)
    {
      v4 = [objc_allocWithZone(type metadata accessor for MFInformationLabel()) init];
      v5 = sub_257CA9DF0();
      [v4 setFont_];

      v6 = [objc_opt_self() whiteColor];
      [v4 setTextColor_];

      v7 = objc_allocWithZone(MEMORY[0x277D75348]);
      v3 = v4;
      v8 = [v7 initWithWhite:0.1 alpha:1.0];
      [v3 setBackgroundColor_];
    }

    else
    {
      v3 = 0;
    }

    v9 = *(v0 + v1);
    *(v0 + v1) = v3;
    v10 = v3;
    sub_257CC8CC0(v9);
  }

  sub_257CC9350(v2);
  return v3;
}

char *sub_257EB1D60(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_compactConstraints] = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___regularWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_boundaryConstraints] = v4;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___landscapeInformationLabel] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_topBoundaryConstraint] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_leadingBoundaryConstraint] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_trailingBoundaryConstraint] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_bottomBoundaryConstraint] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_rotationSubscription] = 0;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_containedCard] = a1;
  v5 = objc_allocWithZone(type metadata accessor for MFCardContainerView());
  v6 = a1;
  sub_257E88F30(v6, 500.0, 3000.0);
  v8 = v7;
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer] = v7;
  objc_allocWithZone(type metadata accessor for MFCardContainerController());
  *&v2[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController] = sub_257E79644(v8);
  v15.receiver = v2;
  v15.super_class = type metadata accessor for MFMainCardViewController();
  v9 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  *(*&v9[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController] + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_delegate + 8) = &off_2869167C0;
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBAB8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_257ED6D30;
  v11 = sub_257ECDB10();
  v12 = MEMORY[0x277D74B90];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = v9;
  sub_257ECFC80();

  swift_unknownObjectRelease();

  return v13;
}

void sub_257EB1FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_257ED9BF0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_containedCard];
  *(v1 + 32) = v2;
  v3 = type metadata accessor for MFPassthroughView();
  v4 = objc_allocWithZone(v3);
  v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_enabled] = 1;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_heightOfPanAreaAboveDrawer] = 0x403E000000000000;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport17MFPassthroughView_exemptViews] = v1;
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v0 setView_];
}

void sub_257EB2190(char a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for MFMainCardViewController();
  objc_msgSendSuper2(&v14, sel_viewWillAppear_, a1 & 1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (*MEMORY[0x277D76620])
  {
    v5 = *MEMORY[0x277D76620];
    v6 = sub_257CA7574();
    v7 = v6;
    if (v6)
    {
      [v6 bounds];
      v9 = v8;
      v11 = v10;

      v12 = v9;
      v13 = v11;
    }

    else
    {

      v12 = 0;
      v13 = 0;
    }

    sub_257EB1634(v4, v12, v13, v7 == 0);
    sub_257EB370C();
  }

  else
  {
    __break(1u);
  }
}

id sub_257EB234C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [result addSubview_];

  sub_257E79A04();
  result = [v1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v5 = result;
  sub_257E79ACC(result);

  result = sub_257EB246C();
  if (qword_27F8F4668 != -1)
  {
    result = swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {

    return sub_257EB2810();
  }

  return result;
}

id sub_257EB246C()
{
  v1 = sub_257ECF030();
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
  v3 = [v2 leadingAnchor];
  result = [v0 view];
  v5 = result;
  if ((v1 & 1) == 0)
  {
    if (result)
    {
      v18 = [result leadingAnchor];

      v19 = [v3 constraintEqualToAnchor_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_257EDED10;
      *(v8 + 32) = v19;
      v9 = v19;
      v20 = [v2 bottomAnchor];
      result = [v0 view];
      if (result)
      {
        v21 = result;
        v22 = [result bottomAnchor];

        v23 = [v20 constraintEqualToAnchor_];
        *(v8 + 40) = v23;
        v14 = [v2 widthAnchor];
        result = [v0 view];
        if (result)
        {
          v24 = result;
          v16 = [result widthAnchor];

          v17 = [v14 constraintEqualToAnchor_];
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return result;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = [result leadingAnchor];

  v7 = [v3 constraintEqualToAnchor:v6 constant:6.5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_257EDED10;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = [v2 bottomAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = result;
  v12 = [result bottomAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:-6.5];
  *(v8 + 40) = v13;
  v14 = [v2 widthAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = result;
  v16 = [result widthAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:-13.0];
LABEL_10:
  v25 = v17;

  *(v8 + 48) = v25;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_compactConstraints] = v8;
}

id sub_257EB2810()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
  v2 = [v1 topAnchor];
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  v5 = [result safeAreaLayoutGuide];

  v6 = [v5 topAnchor];
  v7 = [v2 constraintGreaterThanOrEqualToAnchor:v6 constant:20.0];

  v8 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_topBoundaryConstraint;
  v9 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_topBoundaryConstraint];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_topBoundaryConstraint] = v7;

  v10 = [v1 leadingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = [result safeAreaLayoutGuide];

  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintGreaterThanOrEqualToAnchor:v13 constant:20.0];

  v15 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_leadingBoundaryConstraint;
  v16 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_leadingBoundaryConstraint];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_leadingBoundaryConstraint] = v14;

  v17 = [v1 trailingAnchor];
  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = result;
  v19 = [result safeAreaLayoutGuide];

  v20 = [v19 trailingAnchor];
  v21 = [v17 constraintLessThanOrEqualToAnchor:v20 constant:-20.0];

  v22 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_trailingBoundaryConstraint;
  v23 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_trailingBoundaryConstraint];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_trailingBoundaryConstraint] = v21;

  v24 = [v1 bottomAnchor];
  result = [v0 &off_279854AF8];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = result;
  v26 = [result safeAreaLayoutGuide];

  v27 = [v26 bottomAnchor];
  v28 = [v24 constraintLessThanOrEqualToAnchor:v27 constant:-37.0];

  v29 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_bottomBoundaryConstraint;
  v30 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_bottomBoundaryConstraint];
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_bottomBoundaryConstraint] = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  result = swift_allocObject();
  *(result + 1) = xmmword_257EDBE40;
  v31 = *&v0[v8];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(result + 4) = v31;
  v32 = *&v0[v15];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(result + 5) = v32;
  v33 = *&v0[v22];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(result + 6) = v33;
  v34 = *&v0[v29];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  *(result + 7) = v34;
  *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_boundaryConstraints] = result;
  v35 = v31;
  v36 = v32;
  v37 = v33;
  v38 = v34;
}

void sub_257EB2BCC()
{
  v1 = v0;
  v2 = sub_257ECFDF0();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257EB1B80();
  v5 = sub_257ECF4C0();
  [v4 setText_];

  v6 = OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel;
  [*&v1[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel] setAlpha_];
  [*&v1[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 addSubview_];

  v9 = *&v1[v6];
  v10 = [v9 bottomAnchor];
  v11 = *&v1[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
  v12 = OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView;
  v13 = [*(v11 + OBJC_IVAR____TtC16MagnifierSupport19MFCardContainerView_draggableView) topAnchor];
  v14 = [v10 constraintEqualToAnchor:v13 constant:-24.0];

  v15 = *&v9[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard];
  *&v9[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard] = v14;

  v16 = *&v1[v6];
  v17 = [v16 topAnchor];
  v18 = [*(v11 + v12) bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:24.0];

  v20 = *&v16[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard];
  *&v16[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_257EDBE40;
  v22 = [*&v1[v6] leadingAnchor];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  if (qword_281544A68 != -1)
  {
    swift_once();
  }

  v26 = *&qword_2815482F8;
  v27 = [v22 constraintGreaterThanOrEqualToAnchor:v25 constant:*&qword_2815482F8];

  *(v21 + 32) = v27;
  v28 = [*&v1[v6] trailingAnchor];
  v29 = [v1 view];
  if (!v29)
  {
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v29 trailingAnchor];

  v32 = [v28 constraintLessThanOrEqualToAnchor:v31 constant:-v26];
  *(v21 + 40) = v32;
  v33 = [*&v1[v6] centerXAnchor];
  v34 = [*(v11 + v12) centerXAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v21 + 48) = v35;
  v36 = *(*&v1[v6] + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard);
  if (!v36)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v37 = objc_opt_self();
  *(v21 + 56) = v36;
  sub_257BD2C2C(0, &qword_281543EF0);
  v38 = v36;
  v39 = sub_257ECF7F0();

  [v37 activateConstraints_];

  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v40 = [objc_opt_self() defaultCenter];
    v41 = v45;
    sub_257ECFE00();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257DA5490();
    v42 = v47;
    v43 = sub_257ECDE50();

    (*(v46 + 8))(v41, v42);
    *&v1[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_rotationSubscription] = v43;
  }
}

void sub_257EB31B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 orientation];

    sub_257EB3250(v3);
  }
}

void sub_257EB3250(uint64_t a1)
{
  if (qword_27F8F4670 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v3 = sub_257EB1BE0();
    if (v3)
    {
      v4 = v3;
      [v3 rotateIfPossibleTo_];
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong rotateIfPossibleTo_];
    }

    sub_257EB43A0();
    if ((a1 - 3) > 1)
    {
      v12 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___landscapeInformationLabel);
      if (v12)
      {
        [v12 setHidden_];
      }

      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        [v13 setHidden_];
      }

      v15 = sub_257EB1B80();
      [v15 setHidden_];

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = sub_257EB1B80();
      [v7 setHidden_];

      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 setHidden_];
      }

      v10 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___landscapeInformationLabel);
      if (v10)
      {
        [v10 setHidden_];
      }

      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
LABEL_14:
        v16 = v11;
        [v11 setHidden_];
      }
    }
  }
}

void sub_257EB3430()
{
  v1 = sub_257EB1BE0();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v1 setText_];
  v3 = v2;
  [v3 setAlpha_];
  [v3 setHidden_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 addSubview_];

  v6 = [v3 centerXAnchor];
  v7 = [v0 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v7 centerXAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  v11 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX;
  v12 = *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX] = v10;

  v13 = [v3 centerYAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  v16 = [v14 centerYAnchor];

  v17 = [v13 constraintEqualToAnchor_];
  v18 = OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY;
  v19 = *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY];
  *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintY] = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_257ED9BE0;
  v21 = *&v3[v11];
  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v20;
  *(v20 + 32) = v21;
  v23 = *&v3[v18];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v24 = objc_opt_self();
  *(v22 + 40) = v23;
  sub_257BD2C2C(0, &qword_281543EF0);
  v25 = v21;
  v26 = v23;
  v27 = sub_257ECF7F0();

  [v24 activateConstraints_];
}

void sub_257EB370C()
{
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardContainer];
    v2 = [v1 traitCollection];
    if (*MEMORY[0x277D76620])
    {
      v3 = v2;
      v4 = *MEMORY[0x277D76620];
      v5 = sub_257CA7574();
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;

        v11 = [v3 horizontalSizeClass];
        if (v11 == 1)
        {
          if (v8 <= 375.0)
          {
            goto LABEL_9;
          }

          v12 = v8 / v10;
          if (v8 / v10 <= 0.42)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
      }

      [v1 frame];
      MidY = CGRectGetMidY(v55);
      v26 = [v0 view];
      if (v26)
      {
        v27 = v26;
        [v26 bounds];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v56.origin.x = v29;
        v56.origin.y = v31;
        v56.size.width = v33;
        v56.size.height = v35;
        v36 = CGRectGetMidY(v56);
        v37 = sub_257EB1B80();
        v38 = v37;
        if (MidY >= v36)
        {
          v46 = *&v37[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard];
          if (v46)
          {
            v47 = v46;

            [v47 setActive_];
            v38 = v47;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v49 = Strong;
            v50 = *(Strong + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard);
            if (v50)
            {
              v51 = v50;

              [v51 setActive_];
              v49 = v51;
            }
          }

          v45 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel];
          v20 = &OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard;
        }

        else
        {
          v39 = *&v37[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard];
          if (v39)
          {
            v40 = v39;

            [v40 setActive_];
            v38 = v40;
          }

          v41 = swift_unknownObjectWeakLoadStrong();
          if (v41)
          {
            v42 = v41;
            v43 = *(v41 + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard);
            if (v43)
            {
              v44 = v43;

              [v44 setActive_];
              v42 = v44;
            }
          }

          v45 = *&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel];
          v20 = &OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard;
        }

        v52 = *(v45 + *v20);
        if (v52)
        {
          [v52 setActive_];
        }

        v22 = swift_unknownObjectWeakLoadStrong();
        if (v22)
        {
          goto LABEL_18;
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_9:
  v13 = sub_257EB1B80();
  v14 = *&v13[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard];
  if (v14)
  {
    v15 = v14;

    [v15 setActive_];
    v13 = v15;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintBelowCard);
    if (v18)
    {
      v19 = v18;

      [v19 setActive_];
      v17 = v19;
    }
  }

  v20 = &OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard;
  v21 = *(*&v0[OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel] + OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_constraintAboveCard);
  if (v21)
  {
    [v21 setActive_];
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
LABEL_18:
    v23 = v22;
    v24 = *&v22[*v20];
    if (v24)
    {
      v53 = v24;

      [v53 setActive_];
      v22 = v53;
    }
  }
}

id sub_257EB3B94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFMainCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_257EB3D08(void *a1, double a2, double a3)
{
  v7 = sub_257ECDA30();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MFMainCardViewController();
  v24.receiver = v3;
  v24.super_class = v11;
  result = objc_msgSendSuper2(&v24, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (qword_27F8F4668 != -1)
  {
    result = swift_once();
  }

  if (byte_27F8F8D88 == 1)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = a2;
    *(v13 + 32) = a3;
    aBlock[4] = sub_257EB47F4;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257EB4068;
    aBlock[3] = &block_descriptor_66;
    v14 = _Block_copy(aBlock);
    v15 = v3;

    [a1 animateAlongsideTransition:v14 completion:0];
    _Block_release(v14);
    sub_257ECD4E0();
    v16 = sub_257ECDA20();
    v17 = sub_257ECFBD0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136315394;
      v20 = sub_257ECFE90();
      v22 = sub_257BF1FC8(v20, v21, aBlock);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2048;
      *(v18 + 14) = a2 / a3;
      _os_log_impl(&dword_257BAC000, v16, v17, "new size: %s, ratio w/h: %f", v18, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x259C74820](v19, -1, -1);
      MEMORY[0x259C74820](v18, -1, -1);
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_257EB3FE8(int a1, id a2, double a3, double a4)
{
  v6 = [a2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  sub_257EB1634(v7, *&a3, *&a4, 0);
  sub_257EB370C();
}

uint64_t sub_257EB4068(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_257ECC3F0();
  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_257EB4148(void *a1, uint64_t a2)
{
  v5 = sub_257ECDA30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MFMainCardViewController();
  v21.receiver = v2;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, sel_willTransitionToTraitCollection_withTransitionCoordinator_, a1, a2);
  sub_257ECD4E0();
  v10 = a1;
  v11 = sub_257ECDA20();
  v12 = sub_257ECFBD0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315138;
    v15 = sub_257E330D0();
    v17 = sub_257BF1FC8(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_257BAC000, v11, v12, "new sz class: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x259C74820](v14, -1, -1);
    MEMORY[0x259C74820](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_257EB43A0()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 orientation];

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      return;
    }

    v3 = sub_257EB1BE0();
    if (!v3)
    {
LABEL_10:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v14 = *&Strong[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
      if (!v14)
      {
        goto LABEL_30;
      }

      v40 = Strong;
      v15 = v14;
      v16 = [v0 view];
      if (v16)
      {
        v17 = v16;
        [v16 bounds];
        v19 = v18;

        [v40 bounds];
        v21 = v20 * 0.5 - v19 * 0.5;
        if (qword_281544A68 != -1)
        {
          swift_once();
        }

        v22 = v21 + *&qword_2815482F8;
LABEL_29:
        [v15 setConstant_];

        Strong = v40;
        goto LABEL_30;
      }

      goto LABEL_36;
    }

    v4 = v3;
    v5 = *&v3[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
    if (!v5)
    {
LABEL_9:

      goto LABEL_10;
    }

    v6 = v5;
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;

      [v4 bounds];
      v12 = v10 * 0.5 - v11 * 0.5;
      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      [v6 setConstant_];

      goto LABEL_9;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = sub_257EB1BE0();
  if (v23)
  {
    v24 = v23;
    v25 = *&v23[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
    if (v25)
    {
      v26 = v25;
      v27 = [v0 view];
      if (!v27)
      {
        goto LABEL_35;
      }

      v28 = v27;
      [v27 bounds];
      v30 = v29;

      [v24 bounds];
      v32 = v31 * 0.5 - v30 * 0.5;
      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      [v26 setConstant_];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v33 = *&Strong[OBJC_IVAR____TtC16MagnifierSupport18MFInformationLabel_centerConstraintX];
  if (v33)
  {
    v40 = Strong;
    v15 = v33;
    v34 = [v0 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;

      [v40 bounds];
      v39 = v37 * 0.5 - v38 * 0.5;
      if (qword_281544A68 != -1)
      {
        swift_once();
      }

      v22 = v39 - *&qword_2815482F8;
      goto LABEL_29;
    }

LABEL_37:
    __break(1u);
    return;
  }

LABEL_30:
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257EB4818(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_257ED0210();
LABEL_9:
  result = sub_257ED0310();
  *v1 = result;
  return result;
}

uint64_t sub_257EB48B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_257ED0210();
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
      result = sub_257ED0210();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257C6AB38(&qword_27F8FBAE8, &qword_27F8FBAE0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBAE0);
            v9 = sub_257CA8990(v13, i, a3);
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
        type metadata accessor for MindNetModelBoundingBox();
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

uint64_t sub_257EB4A48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_257ED0210();
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
      result = sub_257ED0210();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257C6AB38(&qword_27F8FBAA0, &qword_27F8FBA98);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBA98);
            v9 = sub_257CA8910(v13, i, a3);
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
        sub_257BD2C2C(0, &qword_281543EF0);
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

uint64_t sub_257EB4BE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_257ED0210();
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
      result = sub_257ED0210();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257C6AB38(&qword_27F8FBAD8, &qword_27F8FBAD0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBAD0);
            v9 = sub_257CA8910(v13, i, a3);
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
        sub_257BD2C2C(0, &unk_281543D90);
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

uint64_t sub_257EB4D88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_257ED0210();
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
      result = sub_257ED0210();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257C6AB38(&qword_27F8FBAC8, &qword_27F8FBAC0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBAC0);
            v9 = sub_257CA8A18(v13, i, a3);
            v11 = *v10;
            sub_257ECC3F0();
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
        type metadata accessor for DetectionRecordedFile();
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

uint64_t sub_257EB4F18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_257ED0210();
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
      result = sub_257ED0210();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_257C6AB38(&qword_27F8FBAB0, &qword_27F8FBAA8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBAA8);
            v9 = sub_257CA8910(v13, i, a3);
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
        sub_257BD2C2C(0, &qword_27F8FBA10);
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

void sub_257EB50B8(uint64_t a1, void *a2)
{
  v4 = sub_257ECDA30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257ECD4E0();
  v8 = a2;
  v9 = sub_257ECDA20();
  v10 = sub_257ECFBD0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = sub_257E330D0();
    v15 = sub_257BF1FC8(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_257BAC000, v9, v10, "old sz class: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x259C74820](v12, -1, -1);
    MEMORY[0x259C74820](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v16 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_cardController);
  sub_257E79DDC(*(v16 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_cardPosition));
  v17 = *(v16 + OBJC_IVAR____TtC16MagnifierSupport25MFCardContainerController_containerHeightConstraint);
  if (v17)
  {
    v18 = v17;
    sub_257DD1E80(0);
    [v18 setConstant_];
  }
}

void sub_257EB52D4()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_compactConstraints) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___regularWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_boundaryConstraints) = v1;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___informationLabel) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController____lazy_storage___landscapeInformationLabel) = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_topBoundaryConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_leadingBoundaryConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_trailingBoundaryConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_bottomBoundaryConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport24MFMainCardViewController_rotationSubscription) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257EB53DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5728);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MAGAREvent.description.getter()
{
  v0 = MAGAREvent.AREventType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x746E657645205241;
}

void static MAGAREvent.startedARSession()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
}

double static MAGAREvent.stoppedARSession()@<D0>(uint64_t a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_257EDA120;
  *(a1 + 16) = 5;
  return result;
}

id static MAGAREvent.didReceiveARFrame(session:frame:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  v3 = a1;

  return a2;
}

uint64_t static MAGAREvent.didReceiveARSpatialMappingPointClouds(session:spatialMappingPointClouds:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  v3 = a1;
}

uint64_t static MAGAREvent.didAddAnchors(session:anchors:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
  v3 = a1;
}

uint64_t static MAGAREvent.didUpdateAnchors(session:anchors:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 3;
  v3 = a1;
}

uint64_t static MAGAREvent.didRemoveAnchors(session:anchors:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 4;
  v3 = a1;
}

double static MAGAREvent.sessionWasInterrupted()@<D0>(uint64_t a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_257EE0F90;
  *(a1 + 16) = 5;
  return result;
}

double static MAGAREvent.sessionInterruptionEnded()@<D0>(uint64_t a1@<X8>)
{
  *&result = 3;
  *a1 = xmmword_257EE0FA0;
  *(a1 + 16) = 5;
  return result;
}

double static MAGAREvent.replayConfigurationDidFinishReplaying()@<D0>(uint64_t a1@<X8>)
{
  *&result = 4;
  *a1 = xmmword_257EDE770;
  *(a1 + 16) = 5;
  return result;
}

id MAGAREvent.eventType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_257C73068(v2, v3, v4);
}

unint64_t MAGAREvent.AREventType.description.getter()
{
  result = 0xD000000000000012;
  v2 = *(v0 + 16);
  if (v2 > 2)
  {
    if (v2 == 3 || v2 == 4)
    {
      return 0xD00000000000001BLL;
    }

    else
    {
      v4 = *v0;
      v5 = v0[1];
      if (*v0 > 1)
      {
        if (v4 ^ 2 | v5)
        {
          if (v4 ^ 3 | v5)
          {
            return 0xD000000000000028;
          }

          else
          {
            return 0xD00000000000001ALL;
          }
        }

        else
        {
          return 0xD00000000000001ALL;
        }
      }
    }
  }

  else
  {
    v3 = 0xD000000000000030;
    if (v2 != 1)
    {
      v3 = 0xD000000000000018;
    }

    if (*(v0 + 16))
    {
      return v3;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  return result;
}

uint64_t sub_257EB57C8()
{
  v0 = MAGAREvent.AREventType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x746E657645205241;
}

uint64_t get_enum_tag_for_layout_string_16MagnifierSupport10MAGAREventV11AREventTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_257EB5868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_257EB58B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_257EB58F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for Asset()
{
  result = qword_27F8FBAF0;
  if (!qword_27F8FBAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257EB5998()
{
  sub_257EB5A54(319, &qword_281545C48, MEMORY[0x277CC9260]);
  if (v0 <= 0x3F)
  {
    sub_257EB5A54(319, &qword_27F8FB768, sub_257E2DDD8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_257EB5A54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_257ED00C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t MAGError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  if (v4 <= 1)
  {
    if (*(v0 + 24))
    {
      sub_257ED02D0();

      v18 = 0xD000000000000026;
      v11 = sub_257ED0600();
      MEMORY[0x259C72150](v11);

      return v18;
    }

    sub_257ED02D0();

    v18 = 0xD00000000000001FLL;
    v6 = sub_257ED0600();
    MEMORY[0x259C72150](v6);

    MEMORY[0x259C72150](8238, 0xE200000000000000);
    v7 = v2;
    v8 = v3;
LABEL_9:
    MEMORY[0x259C72150](v7, v8);
    return v18;
  }

  if (v4 == 2)
  {
    sub_257ED02D0();

    v5 = 0xD000000000000010;
    goto LABEL_8;
  }

  if (v4 == 3)
  {
    sub_257ED02D0();

    v5 = 0xD00000000000002CLL;
LABEL_8:
    v18 = v5;
    v7 = v1;
    v8 = v2;
    goto LABEL_9;
  }

  result = 0xD00000000000001ALL;
  v10 = v3 | v2;
  if (!(v3 | v2 | v1))
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 1 && !v10)
  {
    return 0xD000000000000019;
  }

  if (v1 == 2 && !v10)
  {
    return 0xD00000000000002BLL;
  }

  if (v1 == 3 && !v10)
  {
    return 0xD000000000000023;
  }

  if (v1 != 4 || v10)
  {
    if (v1 == 5 && !v10)
    {
      type metadata accessor for MAGUtilities();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v14 = sub_257ECF4C0();
      v15 = sub_257ECF4C0();
      v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

      v17 = sub_257ECF500();
      return v17;
    }

    if (v1 == 6 && !v10)
    {
      return 0xD000000000000024;
    }

    if (v1 == 7 && !v10)
    {
      return 0xD000000000000025;
    }

    if (v1 == 8 && !v10)
    {
      return 0xD000000000000022;
    }

    if (v1 == 9 && !v10)
    {
      return 0xD00000000000002ALL;
    }

    if (v1 == 10 && !v10)
    {
      return 0xD000000000000020;
    }

    if (v1 == 11 && !v10)
    {
      return 0xD00000000000001DLL;
    }

    if (v1 == 12 && !v10)
    {
      return 0xD00000000000002ELL;
    }

    if (v1 == 13 && !v10)
    {
      return 0xD00000000000002CLL;
    }

    if (v1 == 14 && !v10)
    {
      return 0xD000000000000021;
    }

    if (v1 == 15 && !v10)
    {
      return 0xD00000000000002ALL;
    }

    if (v1 != 16 || v10)
    {
      return 0xD00000000000001DLL;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MagnifierSupport8MAGErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 24) & 7;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_257EB5FC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 25))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 24);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_257EB600C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_257EB6054(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

void sub_257EB6080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() sharedApplication];
  v6 = sub_257ECCAE0();
  sub_257BEA8A4(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_257EB6224();
  v7 = sub_257ECF3C0();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v10[4] = sub_257EB627C;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_257DFE438;
  v10[3] = &block_descriptor_67;
  v9 = _Block_copy(v10);
  sub_257BBD7E4(a2);

  [v5 openURL:v6 options:v7 completionHandler:v9];
  _Block_release(v9);
}

unint64_t sub_257EB6224()
{
  result = qword_27F8F5008;
  if (!qword_27F8F5008)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5008);
  }

  return result;
}

uint64_t sub_257EB627C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t sub_257EB62C8(unsigned __int8 *a1)
{
  v50 = sub_257ECCCF0();
  v2 = *(v50 - 8);
  v3 = MEMORY[0x28223BE20](v50);
  v41 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = v38 - v5;
  v6 = sub_257ECC7D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v52 = sub_257EB69B8();
  v53 = v11;
  sub_257ECC7C0();
  sub_257BDAB08();
  v12 = sub_257ED00F0();
  (*(v7 + 8))(v9, v6);

  v13 = *(v12 + 16);
  if (v13)
  {
    v52 = MEMORY[0x277D84F90];
    sub_257ED0360();
    v14 = 0;
    v39 = (v2 + 16);
    v40 = (v2 + 32);
    v48 = (v2 + 8);
    v38[1] = v12;
    v15 = (v12 + 40);
    v42 = v10;
    while (1)
    {
      v45 = v14;
      v46 = v15;
      v47 = v13;
      v16 = *(v15 - 1);
      v17 = *v15;

      v43 = sub_257EB6C50();
      v18 = v49;
      sub_257ECCCE0();
      type metadata accessor for MFReaderTextBlock();
      v19 = swift_allocObject();
      v20 = v41;
      sub_257ECCCE0();
      v21 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
      v22 = *v40;
      v23 = v50;
      (*v40)(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id, v20, v50);
      *(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = 0;
      v24 = v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
      *v24 = 0;
      *(v24 + 8) = 0;
      *(v24 + 16) = 1;
      *(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges) = MEMORY[0x277D84F90];
      *(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed) = 1;
      sub_257ECCF10();
      (*v39)(v20, v18, v23);
      v44 = *v48;
      v44(v19 + v21, v23);
      v22(v19 + v21, v20, v23);
      v25 = (v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock_blockText);
      *v25 = v16;
      v25[1] = v17;
      if (*(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v38[-2] = v19;
        LOBYTE(v38[-1]) = 0;
        v51 = v19;
        sub_257EB6F60();
        v14 = v45;
        sub_257ECCED0();
      }

      else
      {
        *(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__containsSelection) = 0;
        v14 = v45;
      }

      v27 = v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange;
      v28 = v42;
      v29 = v47;
      if (*(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__selectedLocalTextRange + 16))
      {
        *v27 = 0;
        *(v27 + 8) = 0;
        *(v27 + 16) = 1;
      }

      else
      {
        v30 = swift_getKeyPath();
        MEMORY[0x28223BE20](v30);
        v38[-3] = 0;
        v38[-2] = 0;
        v38[-4] = v19;
        LOBYTE(v38[-1]) = 1;
        v51 = v19;
        sub_257EB6F60();
        sub_257ECCED0();
      }

      v31 = v43;
      v32 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges;
      if (sub_257D5675C(*(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__languageRanges), v43))
      {
        *(v19 + v32) = v31;
      }

      else
      {
        v33 = swift_getKeyPath();
        MEMORY[0x28223BE20](v33);
        v38[-2] = v19;
        v38[-1] = v31;
        v51 = v19;
        sub_257EB6F60();
        sub_257ECCED0();

        v28 = v42;
      }

      v34 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed;
      v35 = *(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
      if (v28 > 2)
      {
        if (v28 == 3)
        {
          if (v35 != 3)
          {
            goto LABEL_30;
          }
        }

        else if (v28 == 4)
        {
          if (v35 != 4)
          {
            goto LABEL_30;
          }
        }

        else if (v35 != 5)
        {
LABEL_30:
          v36 = swift_getKeyPath();
          MEMORY[0x28223BE20](v36);
          v38[-2] = v19;
          LOBYTE(v38[-1]) = v28;
          v51 = v19;
          sub_257EB6F60();
          sub_257ECCED0();

          v44(v49, v50);
          goto LABEL_4;
        }
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          if (v35 != 1)
          {
            goto LABEL_30;
          }
        }

        else if (v35 != 2)
        {
          goto LABEL_30;
        }
      }

      else if (*(v19 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed))
      {
        goto LABEL_30;
      }

      v44(v49, v50);
      *(v19 + v34) = v28;
LABEL_4:
      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
      v15 = v46 + 2;
      v13 = v29 - 1;
      if (!v13)
      {

        return v52;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_257EB69B8()
{
  v1 = [v0 blocksWithTypes:2 inRegion:{0.0, 0.0, 1.0, 1.0}];
  sub_257BD2C2C(0, &qword_27F8F5FA8);
  v2 = sub_257ECF810();

  v3 = sub_257CCB040(v2);

  v14 = v3;
  if (!v3)
  {
    return 0;
  }

  v13 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v5 = 0;
    while (1)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C72E20](v5, v14);
      }

      else
      {
        if (v5 >= *(v13 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v14 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 getTranscript];
      if (v10)
      {
        v11 = v10;
        sub_257ECF500();

        v9 = v5 + 1;
        sub_257ECF710();
        sub_257ECF620();
      }

      v15 = sub_257ECF710();
      sub_257ECF620();

      v6 = v15;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v6 = 0;
LABEL_18:

  return v6;
}

uint64_t sub_257EB6C50()
{
  v0 = objc_allocWithZone(MEMORY[0x277CE7DB0]);
  v1 = sub_257ECF4C0();
  v2 = [v0 initWithContent_];

  if (v2)
  {
    [v2 tagContent];
    v3 = [v2 tags];
    if (v3)
    {
      v4 = v3;
      sub_257BD2C2C(0, &qword_27F8F7F08);
      sub_257ECF800();
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_257EB6F60()
{
  result = qword_27F8F5AE0;
  if (!qword_27F8F5AE0)
  {
    type metadata accessor for MFReaderTextBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8F5AE0);
  }

  return result;
}

void sub_257EB6FD8(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_257EDBE40;
  v13 = [v6 leadingAnchor];
  v14 = [a1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:a3];

  *(v12 + 32) = v15;
  v16 = [v6 trailingAnchor];
  v17 = [a1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:a5];

  *(v12 + 40) = v18;
  v19 = [v6 topAnchor];
  v20 = [a1 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:a2];

  *(v12 + 48) = v21;
  v22 = [v6 bottomAnchor];
  v23 = [a1 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:a4];

  *(v12 + 56) = v24;
  v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v25)
  {
    for (i = 0; i != v25; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x259C72E20](i, v12);
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v27 = *(v12 + 8 * i + 32);
      }

      v28 = v27;
      [v27 setActive_];
    }
  }
}

void sub_257EB7258(uint64_t a1)
{
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    switch(a1)
    {
      case 2:
        v5 = 3.14159265;
        break;
      case 4:
        v5 = -1.57079633;
        break;
      case 3:
        v5 = 1.57079633;
        break;
      default:
        v7 = xmmword_257EEAFE0;
        v6 = xmmword_257EEAFF0;
        v8 = 0uLL;
        goto LABEL_10;
    }

    CGAffineTransformMakeRotation(&v9, v5);
    v6 = *&v9.a;
    v7 = *&v9.c;
    v8 = *&v9.tx;
LABEL_10:
    *&v9.a = v6;
    *&v9.c = v7;
    *&v9.tx = v8;
    [v1 setTransform_];
  }
}

void sub_257EB7340(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_257EB7258(a3);
}

char *sub_257EB73BC(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_257ED0210();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_257BF26E4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x259C72E20](i, a1);
        sub_257BD2C2C(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_257BF26E4((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_257BEBE08(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_257BD2C2C(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_257BF26E4((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_257BEBE08(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_257EB75A8(uint64_t a1)
{
  v2 = type metadata accessor for DetectedTextBlock();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_257BF2824(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_257C7E2F0(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_257BF2824((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_257EBCC58(&unk_27F8FBBD0, type metadata accessor for DetectedTextBlock);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_257C7E2F0(v5, boxed_opaque_existential_1);
      *(v7 + 16) = v11 + 1;
      sub_257BE40E4(&v14, v7 + 40 * v11 + 32);
      sub_257CCE2EC(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_257EB7770(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    sub_257ED0360();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBBC0);
      sub_257BD2C2C(0, &unk_281543E00);
      swift_dynamicCast();
      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_257EB789C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257EB791C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

uint64_t sub_257EB7990()
{
  v1 = v0;
  v2 = sub_257ECCB70();
  v13 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F8F46D8 != -1)
  {
LABEL_12:
    swift_once();
  }

  v5 = sub_257C73204();
  v6 = v5[2];
  if (v6)
  {
    v11[1] = v1;
    v15 = MEMORY[0x277D84F90];
    sub_257ED0360();
    v1 = 0;
    v12 = v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v11[2] = v13 + 16;
    v7 = (v13 + 8);
    do
    {
      if (v1 >= v5[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      (*(v13 + 16))(v4, &v12[*(v13 + 72) * v1], v2);
      sub_257EBAC20(v4, &v14);
      ++v1;
      (*v7)(v4, v2);
      sub_257ED0330();
      sub_257ED0370();
      sub_257ED0380();
      sub_257ED0340();
    }

    while (v6 != v1);

    v8 = v15;
    if (v15 >> 62)
    {
      goto LABEL_10;
    }
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_10:
      sub_257BD2C2C(0, &unk_281543E00);

      v9 = sub_257ED0420();

      goto LABEL_8;
    }
  }

  sub_257ED0660();
  sub_257BD2C2C(0, &unk_281543E00);
  v9 = v8;
LABEL_8:

  sub_257EBAF00(v9);
}

double sub_257EB7C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView);
  [v1 contentOffset];
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config);
  v5 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config + 8);
  v6 = v5[3](v4, v5);
  sub_257EB8078();
  v8 = v7;
  v9 = v5[6](v4, v5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = v5[7](v4, v5);
  if (v10 >= v8)
  {
    v10 = v8;
  }

  v11 = v3 + (v6 + v10) * 0.5;
  [v1 frame];
  [v1 contentOffset];
  return v11;
}

uint64_t sub_257EB7D84()
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
  aBlock[4] = sub_257C1C6EC;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_257D231C0;
  aBlock[3] = &block_descriptor_33_5;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_257ECF150();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_257EBCC58(&qword_281544090, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
  sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
  sub_257ED0180();
  MEMORY[0x259C72880](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_257EB8078()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    sub_257ED0210();
    goto LABEL_5;
  }

  result = sub_257ED0210();
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 < 1)
  {
    return result;
  }

  [v0 bounds];
  if (*&v0[v1] >> 62)
  {
    goto LABEL_12;
  }

LABEL_5:
  (*(*&v0[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config + 8] + 24))();
  v5 = *&v0[v1];
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!__OFSUB__(result, 1))
    {
      return result;
    }

LABEL_15:
    __break(1u);
    return result;
  }

  result = sub_257ED0210();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_15;
  }

  return result;
}

double sub_257EB81D0()
{
  v4 = v0;
  [v0 bounds];
  v5 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
  swift_beginAccess();
  v7 = *&v0[v5];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 - 1;
    if (!__OFSUB__(v8, 1))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_257ED0210();
  v9 = v15 - 1;
  if (__OFSUB__(v15, 1))
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_257EB8078();
  v2 = v10;
  v0 = *&v0[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config];
  v1 = *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config + 8];
  v3 = (*(v1 + 48))(*&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config], v1);
  (*(v1 + 56))(v0, v1);
  v11 = *&v4[v5];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_14:
  v16 = v6;
  v12 = sub_257ED0210();
  v6 = v16;
LABEL_5:
  if (v2 > v3)
  {
    v13 = v2;
  }

  else
  {
    v13 = v3;
  }

  if (v6 >= v13)
  {
    v6 = v13;
  }

  return v6 * v9 + (*(v1 + 24))(v0, v1) * v12;
}

uint64_t sub_257EB834C(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_257ECCEB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  v11 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_activeItemIndexPath;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, v2 + v11, v4);
  swift_beginAccess();
  (*(v5 + 24))(v2 + v11, a1, v4);
  swift_endAccess();
  v12(v7, v2 + v11, v4);
  sub_257EBCC58(&qword_27F8F7610, MEMORY[0x277CC9AF8]);
  LOBYTE(v11) = sub_257ECF450();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if ((v11 & 1) == 0)
  {
    v14 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView);
    if (([v14 isDragging] & 1) != 0 || objc_msgSend(v14, sel_isDecelerating))
    {
      [*(v2 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_feedbackGenerator) selectionChanged];
    }
  }

  v13(a1, v4);
  return (v13)(v10, v4);
}

id sub_257EB859C()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___overlayBox;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___overlayBox);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___overlayBox);
  }

  else
  {
    v4 = sub_257C16EE8();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_257EB85FC()
{
  v1 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___addButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___addButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___addButton);
  }

  else
  {
    sub_257EB8660(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_257EB8660(uint64_t a1)
{
  v2 = sub_257D96488();
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 bundleForClass_];
  v7 = sub_257ECF4C0();
  v8 = sub_257ECF4C0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_257ECF500();
    v9 = sub_257ECF4C0();
  }

  v10 = *MEMORY[0x277D74010];
  v11 = AXAttributedStringForBetterPronuciation();

  if (v11)
  {
    [v5 setAccessibilityHint_];

    v12 = v5;
    v13 = sub_257DE1218();
    [v12 setImage:v13 forState:0];

    [v12 addTarget:a1 action:sel_didTapAddButton_ forControlEvents:64];
  }

  else
  {
    __break(1u);
  }
}

id sub_257EB8824(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config];
  *v10 = &type metadata for LayoutConstants.FilterRow;
  v10[1] = &off_28690ABD0;
  v11 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_shouldHighlight] = 0;
  v12 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_maskedView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_subscribers] = MEMORY[0x277D84FA0];
  *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons] = MEMORY[0x277D84F90];
  v13 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_feedbackGenerator;
  v14 = [objc_opt_self() lightConfiguration];
  v15 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration_];

  [v15 _setOutputMode_];
  *&v4[v13] = v15;
  MEMORY[0x259C6F990](0, 0);
  *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___overlayBox] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_overlayBoxLeadingAnchorConstraint] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___addButton] = 0;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___activeItemIndicator] = 0;
  v16 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_shouldCenterButtonsVerticallyInParent;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  v4[v16] = byte_27F8F8D88;
  *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_rotationSubscription] = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  sub_257EB8AB8();
  sub_257EB7990();
  sub_257EB8CA4();
  sub_257EB91D0();
  return v19;
}

void sub_257EB8AB8()
{
  v1 = *&v0[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_maskedView];
  [v1 setClipsToBounds_];
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView];
  [v2 setClipsToBounds_];
  [v2 setContentInsetAdjustmentBehavior_];
  [v2 setShowsHorizontalScrollIndicator_];
  [v2 setShowsVerticalScrollIndicator_];
  [v2 setDecelerationRate_];
  [v2 setDelegate_];
  [v2 setBounces_];
  [v2 setBouncesVertically_];
  [v2 setBouncesHorizontally_];
  [v2 setAlwaysBounceHorizontal_];
  v3 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_didTapScrollView_];
  [v3 setNumberOfTapsRequired_];
  [v2 addGestureRecognizer_];
  [v0 addSubview_];
  [v1 addSubview_];
  v4 = sub_257EB859C();
  [v0 addSubview_];

  v5 = sub_257EB85FC();
  [v0 addSubview_];
}

void sub_257EB8CA4()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_maskedView] setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = sub_257EB859C();
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];

  v3 = sub_257EB85FC();
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];

  sub_257EB6FD8(v1, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));

  v4 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___overlayBox;
  v5 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___overlayBox] leadingAnchor];
  v6 = [v1 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor:v6 constant:0.0];

  v8 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_overlayBoxLeadingAnchorConstraint;
  v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_overlayBoxLeadingAnchorConstraint];
  *&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_overlayBoxLeadingAnchorConstraint] = v7;

  v10 = *&v1[v4];
  if (v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_shouldCenterButtonsVerticallyInParent] == 1)
  {
    v11 = [v10 centerYAnchor];
    v12 = [v1 centerYAnchor];
    v13 = [v11 constraintEqualToAnchor_];
  }

  else
  {
    v11 = [v10 topAnchor];
    v12 = [v1 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-3.0];
  }

  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_257EDBE40;
  v16 = *&v1[v8];
  if (v16)
  {
    v17 = v15;
    v40 = objc_opt_self();
    v17[4] = v16;
    v17[5] = v14;
    v18 = *&v1[v4];
    v19 = v16;
    v42 = v14;
    v20 = [v18 widthAnchor];
    v21 = *&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config];
    v22 = *&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config + 8];
    v41 = v4;
    v23 = *(v22 + 24);
    v24 = [v20 constraintEqualToConstant_];

    v17[6] = v24;
    v25 = [*&v1[v4] heightAnchor];
    v26 = [v25 constraintEqualToConstant_];

    v17[7] = v26;
    sub_257BD2C2C(0, &qword_281543EF0);
    v27 = sub_257ECF7F0();

    [v40 activateConstraints_];

    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_257EDBE40;
    v29 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___addButton;
    v30 = [*&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___addButton] trailingAnchor];
    v31 = [v1 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor_];

    *(v28 + 32) = v32;
    v33 = [*&v1[v29] widthAnchor];
    v34 = [v33 constraintEqualToConstant_];

    *(v28 + 40) = v34;
    v35 = [*&v1[v29] heightAnchor];
    v36 = [v35 constraintEqualToConstant_];

    *(v28 + 48) = v36;
    v37 = [*&v1[v29] centerYAnchor];
    v38 = [*&v1[v41] centerYAnchor];
    v39 = [v37 constraintEqualToAnchor_];

    *(v28 + 56) = v39;
    v43 = sub_257ECF7F0();

    [v40 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_257EB91D0()
{
  v0 = sub_257ECFDF0();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0);
  v37 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v36 - v3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F54C0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DC0);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v36 - v6;
  v7 = sub_257ECF130();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_257ECFD10();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBB80);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBB88);
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v17 = &v36 - v16;
  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8FBB90);
  sub_257ECDD30();
  swift_endAccess();
  sub_257ECFD00();
  sub_257BD2C2C(0, &qword_281543F10);
  (*(v8 + 104))(v10, *MEMORY[0x277D851C0], v7);
  v18 = sub_257ECFD90();
  v19 = v7;
  v20 = v18;
  (*(v8 + 8))(v10, v19);
  v54 = v20;
  sub_257BD2D4C(&unk_27F8FBBA0, &qword_27F8FBB80);
  sub_257CA64A0(&qword_281543F20, &qword_281543F10);
  v21 = v41;
  sub_257ECDE00();

  (*(v42 + 8))(v12, v44);
  (*(v40 + 8))(v15, v21);
  swift_allocObject();
  v22 = v53;
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_27F8FBBB0, &qword_27F8FBB88);
  v23 = v45;
  sub_257ECDE50();

  (*(v43 + 8))(v17, v23);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F4DD0);
  v24 = v46;
  sub_257ECDD30();
  swift_endAccess();
  v25 = [objc_opt_self() mainRunLoop];
  v54 = v25;
  v26 = sub_257ED0080();
  v27 = v48;
  (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
  sub_257BD2C2C(0, &unk_281543D40);
  sub_257BD2D4C(&unk_281544140, &unk_27F8F54C0);
  sub_257CA64A0(&qword_281543D50, &unk_281543D40);
  v28 = v49;
  v29 = v50;
  sub_257ECDDF0();
  sub_257BE4084(v27, &unk_27F8F4DB0);

  (*(v47 + 8))(v24, v28);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_257BD2D4C(&unk_281544230, &unk_27F8F4DC0);
  v30 = v52;
  sub_257ECDE50();

  (*(v51 + 8))(v29, v30);
  swift_beginAccess();
  sub_257ECDCB0();
  swift_endAccess();

  if (qword_27F8F4670 != -1)
  {
    result = swift_once();
  }

  if (byte_27F8F8D89 == 1)
  {
    v32 = [objc_opt_self() defaultCenter];
    v33 = v37;
    sub_257ECFE00();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_257EBCC58(&qword_281543EB0, MEMORY[0x277CC9DB0]);
    v34 = v39;
    v35 = sub_257ECDE50();

    (*(v38 + 8))(v33, v34);
    *(v22 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_rotationSubscription) = v35;
  }

  return result;
}

uint64_t sub_257EB9C5C(uint64_t a1)
{
  v21 = a1;
  v1 = sub_257ECF120();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v23 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_257ECF190();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_257ECCEB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_257BD2C2C(0, &qword_281543F10);
    v20 = sub_257ECFD30();
    (*(v8 + 16))(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v7);
    v12 = *(v8 + 80);
    v21 = v4;
    v13 = (v12 + 24) & ~v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    (*(v8 + 32))(v14 + v13, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    aBlock[4] = sub_257EBCCE4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_27_1;
    v15 = _Block_copy(aBlock);
    v16 = v11;

    sub_257ECF150();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_257EBCC58(&qword_281544090, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5480);
    sub_257BD2D4C(&qword_281543FB0, &unk_27F8F5480);
    v17 = v23;
    sub_257ED0180();
    v18 = v20;
    MEMORY[0x259C72880](0, v6, v17, v15);
    _Block_release(v15);

    (*(v2 + 8))(v17, v1);
    return (*(v22 + 8))(v6, v21);
  }

  return result;
}

void sub_257EBA04C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView);
  if ([v1 isDragging])
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 isDecelerating] ^ 1;
  }

  v3 = sub_257ECCE80();
  sub_257EBA0C8(v3, v2, v2);
}

void sub_257EBA0C8(unint64_t a1, char a2, int a3)
{
  v4 = v3;
  KeyPath = sub_257ECCEB0();
  v9 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
  swift_beginAccess();
  v13 = *&v4[v12];
  if (v13 >> 62)
  {
    v14 = sub_257ED0210();
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_19:
      swift_once();
      goto LABEL_7;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v12;
  if (v14 <= a1)
  {
    v36.a = 0.0;
    v36.b = -2.68156159e154;
    sub_257ED02D0();

    v36.a = -2.31584178e77;
    *&v36.b = 0x8000000257F0AD70;
    v37 = a1;
    v33 = sub_257ED0600();
    MEMORY[0x259C72150](v33);

    sub_257ED0410();
    __break(1u);
    return;
  }

  v15 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_activeItemIndexPath;
  swift_beginAccess();
  v16 = sub_257ECCE80();
  swift_endAccess();
  if (v16 != a1)
  {
    (*(v9 + 16))(v11, &v4[v15], KeyPath);
    MEMORY[0x259C6F9B0](a1);
    sub_257EB834C(v11);
  }

  HIDWORD(v34) = a3;
  if (qword_281544FE0 != -1)
  {
    goto LABEL_19;
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v17 = sub_257ECCE80();
  (*(v9 + 8))(v11, KeyPath);
  if (v17 != a1)
  {
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    v18 = sub_257ECDD50();
    MEMORY[0x259C6F9B0](a1);
    v18(&v36, 0);
  }

  if (a2)
  {
    sub_257EBB0AC(a1, BYTE4(v34) & 1);
  }

  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = sub_257ECF4C0();
  v22 = sub_257ECF4C0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  sub_257ECF500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F58E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_257ED9BD0;
  swift_beginAccess();
  v25 = sub_257ECCE80();
  swift_endAccess();
  v26 = v25 + 1;
  if (__OFADD__(v25, 1))
  {
    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x277D83B88];
    KeyPath = MEMORY[0x277D83C10];
    *(v24 + 56) = MEMORY[0x277D83B88];
    *(v24 + 64) = KeyPath;
    *(v24 + 32) = v26;
    v27 = *&v4[v35];
    if (!(v27 >> 62))
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }
  }

  v28 = sub_257ED0210();
LABEL_14:
  *(v24 + 96) = v25;
  *(v24 + 104) = KeyPath;
  *(v24 + 72) = v28;
  sub_257ECF540();

  v29 = sub_257ECF4C0();

  [v4 setAccessibilityValue_];

  v30 = [objc_opt_self() sharedApplication];
  v31 = [v30 userInterfaceLayoutDirection];

  if (v31 == 1)
  {
    v32 = *&v4[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView];
    CGAffineTransformMakeScale(&v36, -1.0, 1.0);
    [v32 setTransform_];
  }
}

uint64_t sub_257EBA678()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = &qword_281544000;
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
    v3 = Strong;
    swift_beginAccess();
    v4 = *&v3[v2];

    if (v4 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
    {
      v6 = 0;
      v24 = v4 & 0xFFFFFFFFFFFFFF8;
      v25 = v4 & 0xC000000000000001;
      v22 = v4;
      v23 = i;
      while (1)
      {
        if (v25)
        {
          v8 = MEMORY[0x259C72E20](v6, v4);
        }

        else
        {
          if (v6 >= *(v24 + 16))
          {
            goto LABEL_23;
          }

          v8 = *(v4 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v1[508] != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_257ECDD60();

        if (v26 == 1 && (type metadata accessor for ImageCell(), (v11 = swift_dynamicCastClass()) != 0))
        {
          v12 = v11;
          v13 = (qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter);
          swift_beginAccess();
          v26 = *v13;
          v14 = qword_2815447E0;
          v15 = v9;

          if (v14 != -1)
          {
            v16 = swift_once();
          }

          MEMORY[0x28223BE20](v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70);
          sub_257ECFD50();

          v17 = OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter;
          *(v12 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_filter) = v27;
          v18 = [*(v12 + OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView) layer];
          if (*(v12 + v17) == 12)
          {
            v19 = 0;
          }

          else
          {
            LOBYTE(v26) = *(v12 + v17);
            v20 = sub_257D18A0C();
            sub_257EB73BC(v20, &qword_281543DD0);

            v19 = sub_257ECF7F0();
          }

          v1 = &qword_281544000;
          v7 = v23;
          [v18 setFilters_];

          v4 = v22;
        }

        else
        {

          v7 = v23;
        }

        ++v6;
        if (v10 == v7)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_25:
  }

  if (v1[508] != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  return sub_257ECDD70();
}

void sub_257EBAA9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() currentDevice];
    v3 = [v2 orientation];

    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    aBlock[4] = sub_257EBCCA0;
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_257D231C0;
    aBlock[3] = &block_descriptor_68;
    v7 = _Block_copy(aBlock);

    _Block_release(v7);
  }
}

void sub_257EBAC20(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ImageCell();
  strcpy(v19, "freezeframe-");
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_257ECCAD0();
  MEMORY[0x259C72150](v5);

  v6 = sub_257ECF4C0();

  [v4 setAccessibilityIdentifier_];

  strcpy(v19, "freezeframe-");
  HIBYTE(v19[6]) = 0;
  v19[7] = -5120;
  v7 = sub_257ECCAD0();
  MEMORY[0x259C72150](v7);

  v8 = sub_257ECF4C0();

  [v4 setAccessibilityLabel_];

  v9 = qword_27F8F46E0;
  v10 = *&v4[OBJC_IVAR____TtC16MagnifierSupport9ImageCell_imageView];
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_257C76CCC(a1);
  [v10 setImage_];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  v12 = qword_281548348 + OBJC_IVAR____TtCV16MagnifierSupport13MFEnvironment12UserControls__storedColorFilter;
  swift_beginAccess();
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  v17[0] = *v12;
  v17[1] = v13;
  v18 = v14;
  v15 = qword_2815447E0;

  if (v15 != -1)
  {
    v16 = swift_once();
  }

  MEMORY[0x28223BE20](v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F9E70);
  sub_257ECFD50();

  LOBYTE(v17[0]) = v20;
  sub_257D2F9A0(v17);
  *a2 = v4;
}

uint64_t sub_257EBAF00(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_257ED0210())
  {
    v3 = 0;
    v4 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x259C72E20](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [objc_opt_self() sharedApplication];
      v9 = [v8 userInterfaceLayoutDirection];

      if (v9 == 1)
      {
        CGAffineTransformMakeScale(&v13, -1.0, 1.0);
        [v6 setTransform_];
      }

      [*(v12 + v4) addSubview_];

      ++v3;
      if (v7 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v10 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
  swift_beginAccess();
  *(v12 + v10) = a1;

  return sub_257EB7D84();
}

void sub_257EBB0AC(unint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    v7 = sub_257ED0210();
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 <= a1)
  {
    return;
  }

  swift_beginAccess();
  v8 = *(v2 + v5);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 8 * a1 + 32);
    goto LABEL_7;
  }

LABEL_11:
  v9 = MEMORY[0x259C72E20](a1);
LABEL_7:
  v10 = v9;
  swift_endAccess();
  [v10 bounds];
  v11 = *(v2 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView);
  [v10 convertRect:v11 toCoordinateSpace:?];
  v13 = v12;
  [v11 contentOffset];
  [v11 setContentOffset:a2 & 1 animated:v13];
}

void sub_257EBB1F0()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_maskedView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 userInterfaceLayoutDirection];

  if (!v8)
  {
    v4 = v4 + 3.0;
  }

  [v2 bounds];
  v9 = *&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView];
  [v9 setFrame_];
  [v9 frame];
  [v9 setContentInset_];
  [v9 setContentSize_];
  [v9 setScrollEnabled_];
  v11 = *&v1[OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_overlayBoxLeadingAnchorConstraint];
  if (v11)
  {
    [v11 setConstant_];
  }

  sub_257EBB46C();
  v12 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
  swift_beginAccess();
  v13 = *&v1[v12];
  if (v13 >> 62)
  {
    v17 = sub_257ED0210();
    if (v17 < 0)
    {
      __break(1u);
    }

    v14 = v17;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  v15 = sub_257ECCE80();
  swift_endAccess();
  if (v15 < v14)
  {
    swift_beginAccess();
    v16 = sub_257ECCE80();
    swift_endAccess();
    sub_257EBA0C8(v16, 1, 0);
  }
}

uint64_t sub_257EBB46C()
{
  v1 = v0;
  sub_257EB8078();
  v3 = v2;
  v4 = v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config;
  v6 = *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config);
  v5 = *(v4 + 8);
  v7 = v5[6](v6, v5);
  if (v3 <= v7)
  {
    v3 = v7;
  }

  v8 = v5[7](v6, v5);
  if (v8 >= v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  v10 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_shouldCenterButtonsVerticallyInParent) == 1)
  {
    [*(v1 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_maskedView) bounds];
    v10 = (v11 - v5[3](v6, v5)) * 0.5;
  }

  v12 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_257ED0210())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x259C72E20](j, v13);
      }

      else
      {
        if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v16 = *(v13 + 8 * j + 32);
      }

      v17 = v16;
      v18 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v19 = i;
      v20 = v5[3];
      v21 = v9 * j + v20(v6, v5) * j;
      v22 = v20(v6, v5);
      v23 = v20(v6, v5);
      i = v19;
      [v17 setFrame_];

      if (v18 == v19)
      {
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }
}

uint64_t type metadata accessor for LensFreezeFrameScrubber()
{
  result = qword_27F8FBB68;
  if (!qword_27F8FBB68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_257EBB86C()
{
  result = sub_257ECCEB0();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_257EBB944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_257ED9BF0;
  *(v0 + 32) = sub_257EB85FC();
  return v0;
}

void sub_257EBB9A0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView);
  [a1 locationInView_];
  v4 = v3;
  if (sub_257C1C354(v2, v3, v5))
  {
    v6 = sub_257EBBA7C(v4);
    if (v6)
    {
      v7 = v6;
      v8 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
      swift_beginAccess();
      v9 = *(v1 + v8);

      v10 = sub_257DB880C(v7, v9);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        sub_257EBA0C8(v10, 1, 1);
      }
    }
  }
}

uint64_t sub_257EBBA7C(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView);
  v3 = [v2 subviews];
  sub_257BD2C2C(0, &unk_281543E00);
  v4 = sub_257ECF810();

  v37 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v5 = sub_257ED0210();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x259C72E20](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for ImageCell();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x259C72300]();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_257ECF830();
    }

    sub_257ECF860();
    v7 = v37;
  }

  while (v6 != v5);
LABEL_21:

  if (!(v7 >> 62))
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_44:

    return 0;
  }

LABEL_43:
  result = sub_257ED0210();
  v12 = result;
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_23:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x259C72E20](0, v7);
    goto LABEL_26;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v7 + 32);
LABEL_26:
    v14 = v13;
    if (v12 != 1)
    {
      v15 = 1;
      while (2)
      {
        v16 = v14;
        v17 = v15;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x259C72E20](v17, v7);
          }

          else
          {
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v17 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v18 = *(v7 + 8 * v17 + 32);
          }

          v14 = v18;
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          [v18 bounds];
          [v14 convertRect:v2 toCoordinateSpace:?];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          [v16 bounds];
          [v16 convertRect:v2 toCoordinateSpace:?];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v38.origin.x = v20;
          v38.origin.y = v22;
          v38.size.width = v24;
          v38.size.height = v26;
          v35 = vabdd_f64(CGRectGetMidX(v38), a1);
          v39.origin.x = v28;
          v39.origin.y = v30;
          v39.size.width = v32;
          v39.size.height = v34;
          if (v35 < vabdd_f64(CGRectGetMidX(v39), a1))
          {
            break;
          }

          ++v17;
          if (v15 == v12)
          {
            v14 = v16;
            goto LABEL_39;
          }
        }

        if (v15 != v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    return v14;
  }

  __break(1u);
  return result;
}

void *sub_257EBBE70(double a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config);
  v5 = *(v1 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config + 8);
  v6 = v5[3](v4, v5);
  sub_257EB8078();
  v8 = v7;
  v9 = v5[6](v4, v5);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v10 = v5[7](v4, v5);
  if (v10 >= v8)
  {
    v10 = v8;
  }

  result = sub_257EBBA7C((v6 + v10) * 0.5 + a1);
  v12 = result;
  if (result)
  {
    [result bounds];
    [v12 convertRect:*(v2 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView) toCoordinateSpace:?];
    v14 = v13;

    return v14;
  }

  return result;
}

void sub_257EBBFA4(void *a1)
{
  v2 = v1;
  v4 = sub_257EB7C60();
  v5 = sub_257EBBA7C(v4);
  if (v5)
  {
    v11 = v5;
    sub_257BD2C2C(0, &qword_281543DA0);
    if ((sub_257ECFF50() & 1) != 0 && (([a1 isDragging] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating)))
    {
      v6 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
      swift_beginAccess();
      v7 = *(v2 + v6);

      v8 = sub_257DB880C(v11, v7);
      v10 = v9;

      if ((v10 & 1) == 0)
      {
        sub_257EBA0C8(v8, 0, 0);
      }
    }

    else
    {
    }
  }
}

void sub_257EBC344()
{
  v1 = v0;
  swift_beginAccess();
  v2 = sub_257ECCE80();
  swift_endAccess();
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v7 = sub_257ED0210();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

LABEL_4:
  if (v4 < v7)
  {
    sub_257EBA0C8(v4, 1, 1);
  }
}

void sub_257EBC45C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = sub_257ECCE80();
  swift_endAccess();
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons;
    swift_beginAccess();
    v6 = *(v1 + v5);
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  v7 = sub_257ED0210();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return;
  }

LABEL_4:
  if (v4 < v7)
  {
    sub_257EBA0C8(v4, 1, 1);
  }
}

void *sub_257EBC634(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_257ED9BF0;
    result = sub_257EB85FC();
    *(inited + 32) = result;
    if ((inited & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x259C72E20](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v6 = result;
    }

    v7 = v6;
    [v6 rotateIfPossibleTo_];

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

uint64_t sub_257EBC734()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();
}

uint64_t sub_257EBC7B0(uint64_t a1)
{
  v2 = sub_257ECCEB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  (v10)(v5, v9, v2);
  sub_257ECC3F0();
  sub_257ECDD70();
  return (*(v3 + 8))(v9, v2);
}

void sub_257EBC944()
{
  v1 = (v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_config);
  *v1 = &type metadata for LayoutConstants.FilterRow;
  v1[1] = &off_28690ABD0;
  v2 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_scrollView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D759D8]) init];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_shouldHighlight) = 0;
  v3 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_maskedView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_subscribers) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_buttons) = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_feedbackGenerator;
  v5 = [objc_opt_self() lightConfiguration];
  v6 = [objc_allocWithZone(MEMORY[0x277D75A10]) initWithConfiguration_];

  [v6 _setOutputMode_];
  *(v0 + v4) = v6;
  MEMORY[0x259C6F990](0, 0);
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___overlayBox) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_overlayBoxLeadingAnchorConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___addButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber____lazy_storage___activeItemIndicator) = 0;
  v7 = OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_shouldCenterButtonsVerticallyInParent;
  if (qword_27F8F4668 != -1)
  {
    swift_once();
  }

  *(v0 + v7) = byte_27F8F8D88;
  *(v0 + OBJC_IVAR____TtC16MagnifierSupport23LensFreezeFrameScrubber_rotationSubscription) = 0;
  sub_257ED0410();
  __break(1u);
}

uint64_t sub_257EBCB50()
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

uint64_t sub_257EBCC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

void sub_257EBCCE4()
{
  sub_257ECCEB0();
  v1 = *(v0 + 16);

  sub_257EBA04C(v1);
}

uint64_t type metadata accessor for MFReaderTextDisplayView()
{
  result = qword_27F8FBBE0;
  if (!qword_27F8FBBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_257EBCDE4()
{
  sub_257D00350();
  if (v0 <= 0x3F)
  {
    sub_257C09F4C();
    if (v1 <= 0x3F)
    {
      sub_257D003E4();
      if (v2 <= 0x3F)
      {
        sub_257C09FE0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_257EBCEBC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  *a1 = v3;
  return result;
}

uint64_t sub_257EBCF3C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_257ECDD70();
}

uint64_t sub_257EBCFAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_257ECE4D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for MFReaderTextDisplayView();
  sub_257BE401C(v1 + *(v10 + 28), v9, &qword_27F8F5BA0);
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

uint64_t sub_257EBD1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_257ECE1D0();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v46 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MFReaderTextDisplayView();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = v8;
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_257ECE2A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBBF0);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBBF8);
  v47 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v54 = &v39 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC00);
  v48 = *(v17 - 8);
  v49 = v17;
  MEMORY[0x28223BE20](v17);
  v44 = &v39 - v18;
  sub_257ECE910();
  v55 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC08);
  sub_257EBEC6C();
  v40 = v15;
  sub_257ECDF60();
  v19 = *(a2 + 32);
  if (v19)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v19;
    sub_257ECDD60();

    (*(v11 + 16))(&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
    sub_257EBEB80(a2, v9);
    v21 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v22 = *(v41 + 80);
    v23 = a2;
    v41 = v22 | 7;
    v24 = swift_allocObject();
    (*(v11 + 32))(v24 + v21, &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    sub_257C37F30(v9, v24 + ((v12 + v22 + v21) & ~v22));
    v25 = sub_257BD2D4C(&qword_27F8FBC38, &qword_27F8FBBF0);
    v26 = MEMORY[0x277D83B88];
    v27 = v43;
    v28 = v40;
    sub_257ECED00();

    (*(v42 + 8))(v28, v27);
    v29 = v46;
    sub_257EBCFAC(v46);
    sub_257EBEB80(v23, v9);
    v30 = swift_allocObject();
    sub_257C37F30(v9, v30 + ((v22 + 16) & ~v22));
    v56 = v27;
    v57 = v26;
    v58 = v25;
    v59 = MEMORY[0x277D83BA8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = sub_257EBF34C(&qword_27F8F67F8, MEMORY[0x277CDFA28]);
    v33 = v44;
    v34 = v50;
    v35 = v52;
    v36 = v54;
    sub_257ECED00();

    (*(v51 + 8))(v29, v35);
    (*(v47 + 8))(v36, v34);
    v56 = v34;
    v57 = v35;
    v58 = OpaqueTypeConformance2;
    v59 = v32;
    swift_getOpaqueTypeConformance2();
    v37 = v49;
    sub_257ECEC10();
    return (*(v48 + 8))(v33, v37);
  }

  else
  {
    type metadata accessor for MFReaderBlockManager();
    sub_257EBF34C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257EBD8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_257ECE770();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC20);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v26[-v7];
  v27 = a1;
  sub_257ECE5B0();
  v28 = 0;
  sub_257EBF34C(&qword_27F8FAAF8, MEMORY[0x277CE0428]);
  sub_257ED0890();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC40);
  sub_257EBEF3C();
  sub_257ECDF50();
  v9 = sub_257ECE930();
  sub_257ECDF40();
  v10 = &v8[*(v6 + 44)];
  *v10 = v9;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  LOBYTE(v6) = sub_257ECE950();
  v15 = sub_257ECE970();
  sub_257ECE970();
  if (sub_257ECE970() != v6)
  {
    v15 = sub_257ECE970();
  }

  sub_257ECDF40();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_257EBF130(v8, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC08);
  v25 = a2 + *(result + 36);
  *v25 = v15;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_257EBDB24(uint64_t a1)
{
  v2 = type metadata accessor for MFReaderTextDisplayView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v10 = *(v5 + v6);
    sub_257EBEB80(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_257C37F30(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC90);
    sub_257ECCCF0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC58);
    sub_257BD2D4C(&qword_27F8FBC98, &qword_27F8FBC90);
    sub_257EBEFC0();
    sub_257EBF34C(&qword_27F8FBCA0, type metadata accessor for MFReaderTextBlock);
    return sub_257ECEF90();
  }

  else
  {
    type metadata accessor for MFReaderBlockManager();
    sub_257EBF34C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
    result = sub_257ECE320();
    __break(1u);
  }

  return result;
}

uint64_t sub_257EBDD94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_257ECE500();
  v30 = 1;
  sub_257EBE078(v5, a2, &v26);
  v31 = v26;
  v32 = v27;
  v33[0] = v28[0];
  *(v33 + 9) = *(v28 + 9);
  v34[0] = v26;
  v34[1] = v27;
  v35[0] = v28[0];
  *(v35 + 9) = *(v28 + 9);
  sub_257BE401C(&v31, v25, &qword_27F8FBCA8);
  sub_257BE4084(v34, &qword_27F8FBCA8);
  *&v29[7] = v31;
  *&v29[23] = v32;
  *&v29[39] = v33[0];
  *&v29[48] = *(v33 + 9);
  v7 = v30;
  swift_getKeyPath();
  *&v26 = v5;
  sub_257EBF34C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
  sub_257ECCEE0();

  v8 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
  swift_beginAccess();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC78) + 52);
  v10 = sub_257ECCCF0();
  (*(*(v10 - 8) + 16))(a3 + v9, v5 + v8, v10);
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  v11 = *&v29[16];
  *(a3 + 17) = *v29;
  *(a3 + 33) = v11;
  v12 = *&v29[48];
  *(a3 + 49) = *&v29[32];
  *(a3 + 65) = v12;
  LOBYTE(v8) = sub_257ECE990();
  sub_257ECDF40();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC68) + 36);
  *v21 = v8;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC58) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC88);
  sub_257ECDD60();

  *v23 = KeyPath;
  return result;
}

uint64_t sub_257EBE078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  v4 = sub_257ECCCF0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v30 = a2;
  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = v11;
    v29 = v12;
    v13 = sub_257CD1E08();

    swift_getKeyPath();
    v35 = v13;
    sub_257EBF34C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
    sub_257ECCEE0();

    v14 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
    swift_beginAccess();
    v15 = *(v5 + 16);
    v15(v10, v13 + v14, v4);

    swift_getKeyPath();
    v16 = v31;
    v34 = v31;
    sub_257ECCEE0();

    v17 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
    swift_beginAccess();
    v15(v7, v16 + v17, v4);
    v18 = sub_257ECCCC0();
    v19 = *(v5 + 8);
    v19(v7, v4);
    v19(v10, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    v20 = v29;
    sub_257ECC3F0();
    sub_257ECDD60();

    if (v33)
    {
      v21 = sub_257ED0640();

      if ((v21 & 1) == 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v24 = v20;
        sub_257ECDD60();

        if (v33 && v33 == 1)
        {
          v22 = 1;
          v23 = v32;
        }

        else
        {
          v23 = v32;
          v22 = sub_257ED0640();
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

    v22 = 1;
    v23 = v32;
LABEL_12:
    type metadata accessor for MFReaderTextFormatterModel(0);
    sub_257EBF34C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
    v25 = sub_257ECE150();
    v33 = 1;
    *v23 = v16;
    *(v23 + 8) = v18 & 1;
    *(v23 + 16) = v25;
    *(v23 + 24) = v26;
    *(v23 + 32) = 0x3FC999999999999ALL;
    *(v23 + 40) = v22 & 1;
    *(v23 + 48) = 0;
    *(v23 + 56) = 1;
    return sub_257ECC3F0();
  }

  type metadata accessor for MFReaderBlockManager();
  sub_257EBF34C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  result = sub_257ECE320();
  __break(1u);
  return result;
}

uint64_t sub_257EBE568()
{
  sub_257ECF080();
  sub_257ECE110();
}

uint64_t sub_257EBE5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_257ECCCF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 32);
  if (v9)
  {
    v10 = a1 & ~(a1 >> 63);
    v11 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v12 = *&v9[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {
      v17 = v9;
      v13 = MEMORY[0x259C72E20](v10, v12);
      goto LABEL_5;
    }

    if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 8 * v10 + 32);
      v14 = v9;
      sub_257ECC3F0();
LABEL_5:
      swift_endAccess();

      swift_getKeyPath();
      v18[1] = v13;
      sub_257EBF34C(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
      sub_257ECCEE0();

      v15 = OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__id;
      swift_beginAccess();
      (*(v6 + 16))(v8, v13 + v15, v5);

      sub_257ECF0F0();
      sub_257EBF34C(&qword_27F8F57B0, MEMORY[0x277CC95F0]);
      sub_257ECE290();
      return (*(v6 + 8))(v8, v5);
    }

    __break(1u);
  }

  type metadata accessor for MFReaderBlockManager();
  sub_257EBF34C(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  result = sub_257ECE320();
  __break(1u);
  return result;
}

uint64_t sub_257EBE8AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_257ECE1D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F76F8);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  type metadata accessor for MFReaderTextFormatterModel(0);
  sub_257EBF34C(&qword_27F8F5B60, type metadata accessor for MFReaderTextFormatterModel);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  (*(v4 + 16))(v6, a2, v3);
  sub_257ECEF40();
  return sub_257BE4084(v9, &qword_27F8F76F8);
}

uint64_t sub_257EBEA94@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_257EBEB80(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_257C37F30(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_257EBEBE4;
  a2[1] = v7;
  return result;
}

uint64_t sub_257EBEB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MFReaderTextDisplayView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257EBEBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MFReaderTextDisplayView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_257EBD1B4(a1, v6, a2);
}

unint64_t sub_257EBEC6C()
{
  result = qword_27F8FBC10;
  if (!qword_27F8FBC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBC08);
    sub_257EBECF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBC10);
  }

  return result;
}

unint64_t sub_257EBECF8()
{
  result = qword_27F8FBC18;
  if (!qword_27F8FBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBC20);
    sub_257BD2D4C(&qword_27F8FBC28, &qword_27F8FBC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBC18);
  }

  return result;
}

uint64_t sub_257EBEDB0()
{
  sub_257ECE2A0();
  type metadata accessor for MFReaderTextDisplayView();

  return sub_257EBE568();
}

uint64_t sub_257EBEE94(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MFReaderTextDisplayView();

  return sub_257EBE8AC(a1, a2);
}

unint64_t sub_257EBEF3C()
{
  result = qword_27F8FBC48;
  if (!qword_27F8FBC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBC40);
    sub_257EBEFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBC48);
  }

  return result;
}

unint64_t sub_257EBEFC0()
{
  result = qword_27F8FBC50;
  if (!qword_27F8FBC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBC58);
    sub_257EBF078();
    sub_257BD2D4C(&qword_27F8FBC80, &qword_27F8FBC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBC50);
  }

  return result;
}

unint64_t sub_257EBF078()
{
  result = qword_27F8FBC60;
  if (!qword_27F8FBC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBC68);
    sub_257BD2D4C(&qword_27F8FBC70, &qword_27F8FBC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBC60);
  }

  return result;
}

uint64_t sub_257EBF130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBC20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_10()
{
  v1 = (type metadata accessor for MFReaderTextDisplayView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_257ECE1D0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_257EBF2CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MFReaderTextDisplayView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_257EBDD94(a1, v6, a2);
}

uint64_t sub_257EBF34C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t MAGSoundEffect.rawValue.getter()
{
  result = 0x6E61747369447861;
  switch(*v0)
  {
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x74736944726F6F64;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6F69746365746564;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
    case 0xA:
      v2 = 13;
      goto LABEL_16;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      v2 = 10;
LABEL_16:
      result = v2 | 0xD000000000000010;
      break;
    case 0xD:
      result = 0xD000000000000017;
      break;
    case 0xE:
      result = 0x6F72506C65646F6DLL;
      break;
    case 0xF:
      result = 0x6E616353706F6F6CLL;
      break;
    case 0x10:
    case 0x11:
      result = 0x65636E6164697567;
      break;
    case 0x12:
      result = 0x75476E4F6B636F6CLL;
      break;
    case 0x13:
      result = 0x4766664F6B636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MAGSoundEffect.url.getter@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5F30);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v131 = &v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v130 = &v119 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v129 = &v119 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v128 = &v119 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v127 = &v119 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v126 = &v119 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v119 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v119 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v119 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v122 = &v119 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v121 = &v119 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v120 = &v119 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v119 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v119 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v119 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v119 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v119 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v119 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v119 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v119 - v48;
  v50 = *v1;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = [objc_opt_self() bundleForClass_];
  switch(v50)
  {
    case 1:
      v86 = sub_257ECF4C0();
      v87 = sub_257ECF4C0();
      v88 = [v52 URLForResource:v86 withExtension:v87];

      if (v88)
      {
        sub_257ECCB20();

        v89 = sub_257ECCB70();
        (*(*(v89 - 8) + 56))(v47, 0, 1, v89);
      }

      else
      {
        v115 = sub_257ECCB70();
        (*(*(v115 - 8) + 56))(v47, 1, 1, v115);
      }

      v49 = v47;
      return sub_257D22FD0(v49, v132);
    case 2:
      v72 = sub_257ECF4C0();
      v73 = sub_257ECF4C0();
      v74 = [v52 URLForResource:v72 withExtension:v73];

      if (v74)
      {
        sub_257ECCB20();

        v75 = sub_257ECCB70();
        (*(*(v75 - 8) + 56))(v44, 0, 1, v75);
      }

      else
      {
        v112 = sub_257ECCB70();
        (*(*(v112 - 8) + 56))(v44, 1, 1, v112);
      }

      v49 = v44;
      return sub_257D22FD0(v49, v132);
    case 3:
      v78 = sub_257ECF4C0();
      v79 = sub_257ECF4C0();
      v80 = [v52 URLForResource:v78 withExtension:v79];

      if (v80)
      {
        sub_257ECCB20();

        v81 = sub_257ECCB70();
        (*(*(v81 - 8) + 56))(v41, 0, 1, v81);
      }

      else
      {
        v113 = sub_257ECCB70();
        (*(*(v113 - 8) + 56))(v41, 1, 1, v113);
      }

      v49 = v41;
      return sub_257D22FD0(v49, v132);
    case 4:
      v64 = sub_257ECF4C0();
      v65 = sub_257ECF4C0();
      v66 = [v52 URLForResource:v64 withExtension:v65];

      if (v66)
      {
        sub_257ECCB20();

        v67 = sub_257ECCB70();
        (*(*(v67 - 8) + 56))(v38, 0, 1, v67);
      }

      else
      {
        v111 = sub_257ECCB70();
        (*(*(v111 - 8) + 56))(v38, 1, 1, v111);
      }

      v49 = v38;
      return sub_257D22FD0(v49, v132);
    case 5:
      v92 = sub_257ECF4C0();
      v93 = sub_257ECF4C0();
      v94 = [v52 URLForResource:v92 withExtension:v93];

      if (v94)
      {
        sub_257ECCB20();

        v95 = sub_257ECCB70();
        (*(*(v95 - 8) + 56))(v35, 0, 1, v95);
      }

      else
      {
        v116 = sub_257ECCB70();
        (*(*(v116 - 8) + 56))(v35, 1, 1, v116);
      }

      v49 = v35;
      return sub_257D22FD0(v49, v132);
    case 6:
      v98 = sub_257ECF4C0();
      v99 = sub_257ECF4C0();
      v100 = [v52 URLForResource:v98 withExtension:v99];

      if (v100)
      {
        sub_257ECCB20();

        v101 = sub_257ECCB70();
        (*(*(v101 - 8) + 56))(v32, 0, 1, v101);
      }

      else
      {
        v117 = sub_257ECCB70();
        (*(*(v117 - 8) + 56))(v32, 1, 1, v117);
      }

      v49 = v32;
      return sub_257D22FD0(v49, v132);
    case 7:
      v82 = sub_257ECF4C0();
      v83 = sub_257ECF4C0();
      v84 = [v52 URLForResource:v82 withExtension:v83];

      if (v84)
      {
        sub_257ECCB20();

        v85 = sub_257ECCB70();
        (*(*(v85 - 8) + 56))(v29, 0, 1, v85);
      }

      else
      {
        v114 = sub_257ECCB70();
        (*(*(v114 - 8) + 56))(v29, 1, 1, v114);
      }

      v49 = v29;
      return sub_257D22FD0(v49, v132);
    case 8:
      v106 = sub_257ECF4C0();
      v107 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v106 withExtension:v107];

      if (v55)
      {
        v49 = v120;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v120;
      goto LABEL_69;
    case 9:
      v70 = sub_257ECF4C0();
      v71 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v70 withExtension:v71];

      if (v55)
      {
        v49 = v121;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v121;
      goto LABEL_69;
    case 10:
      v104 = sub_257ECF4C0();
      v105 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v104 withExtension:v105];

      if (v55)
      {
        v49 = v122;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v122;
      goto LABEL_69;
    case 11:
      v62 = sub_257ECF4C0();
      v63 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v62 withExtension:v63];

      if (v55)
      {
        v49 = v123;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v123;
      goto LABEL_69;
    case 12:
      v68 = sub_257ECF4C0();
      v69 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v68 withExtension:v69];

      if (v55)
      {
        v49 = v124;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v124;
      goto LABEL_69;
    case 13:
      v96 = sub_257ECF4C0();
      v97 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v96 withExtension:v97];

      if (v55)
      {
        v49 = v125;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v125;
      goto LABEL_69;
    case 14:
      v60 = sub_257ECF4C0();
      v61 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v60 withExtension:v61];

      if (v55)
      {
        v49 = v126;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v126;
      goto LABEL_69;
    case 15:
      v76 = sub_257ECF4C0();
      v77 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v76 withExtension:v77];

      if (v55)
      {
        v49 = v127;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v127;
      goto LABEL_69;
    case 16:
      v58 = sub_257ECF4C0();
      v59 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v58 withExtension:v59];

      if (v55)
      {
        v49 = v128;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v128;
      goto LABEL_69;
    case 17:
      v90 = sub_257ECF4C0();
      v91 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v90 withExtension:v91];

      if (v55)
      {
        v49 = v129;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v129;
      goto LABEL_69;
    case 18:
      v102 = sub_257ECF4C0();
      v103 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v102 withExtension:v103];

      if (v55)
      {
        v49 = v130;
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      v49 = v130;
      goto LABEL_69;
    case 19:
      v108 = sub_257ECF4C0();
      v109 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v108 withExtension:v109];

      if (v55)
      {
        v49 = v131;
LABEL_42:
        sub_257ECCB20();

        v110 = sub_257ECCB70();
        (*(*(v110 - 8) + 56))(v49, 0, 1, v110);
      }

      else
      {
        v56 = sub_257ECCB70();
        v57 = *(*(v56 - 8) + 56);
        v49 = v131;
LABEL_69:
        v57(v49, 1, 1, v56);
      }

      return sub_257D22FD0(v49, v132);
    default:
      v53 = sub_257ECF4C0();
      v54 = sub_257ECF4C0();
      v55 = [v52 URLForResource:v53 withExtension:v54];

      if (v55)
      {
        goto LABEL_42;
      }

      v56 = sub_257ECCB70();
      v57 = *(*(v56 - 8) + 56);
      goto LABEL_69;
  }
}

MagnifierSupport::MAGSoundEffect_optional __swiftcall MAGSoundEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_257ED0670();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_257EC0A4C()
{
  v0 = MAGSoundEffect.rawValue.getter();
  v2 = v1;
  if (v0 == MAGSoundEffect.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_257ED0640();
  }

  return v5 & 1;
}

unint64_t sub_257EC0AEC()
{
  result = qword_27F8FBCC0;
  if (!qword_27F8FBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBCC0);
  }

  return result;
}

uint64_t sub_257EC0B40()
{
  sub_257ED07B0();
  MAGSoundEffect.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

uint64_t sub_257EC0BA8()
{
  MAGSoundEffect.rawValue.getter();
  sub_257ECF5D0();
}

uint64_t sub_257EC0C0C()
{
  sub_257ED07B0();
  MAGSoundEffect.rawValue.getter();
  sub_257ECF5D0();

  return sub_257ED0800();
}

unint64_t sub_257EC0C7C@<X0>(unint64_t *a1@<X8>)
{
  result = MAGSoundEffect.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_257EC0CA8()
{
  result = qword_27F8FBCC8;
  if (!qword_27F8FBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FA130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBCC8);
  }

  return result;
}

unint64_t sub_257EC0D1C@<X0>(unint64_t *a1@<X8>)
{
  result = MAGSoundEffect.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MAGSoundEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MAGSoundEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_257EC0EA8(double a1, double a2, double a3, double a4)
{
  v5 = UIEdgeInsetsInsetRect_1(a1, a2, a3, a4, *&v4[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_topInset], *&v4[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_leftInset]);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for MFInsetLabel();
  return objc_msgSendSuper2(&v13, sel_drawTextInRect_, v5, v7, v9, v11);
}

double sub_257EC0FB8(double a1, double a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for MFInsetLabel();
  objc_msgSendSuper2(&v7, sel_sizeThatFits_, a1, a2);
  return v5 + *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_leftInset] + *&v2[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_rightInset];
}

double sub_257EC10DC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for MFInsetLabel();
  objc_msgSendSuper2(&v3, sel_intrinsicContentSize);
  return v1 + *&v0[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_leftInset] + *&v0[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_rightInset];
}

id sub_257EC11F8(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_topInset] = 0x4000000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_leftInset] = 0x4020000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_bottomInset] = 0x4000000000000000;
  *&v1[OBJC_IVAR____TtC16MagnifierSupport12MFInsetLabel_rightInset] = 0x4020000000000000;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MFInsetLabel();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_257EC12BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MFInsetLabel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MAGFeatures.__allocating_init()()
{
  v0 = swift_allocObject();
  if (qword_27F8F4870 != -1)
  {
    swift_once();
  }

  v1 = qword_27F913518;
  sub_257E32D54();
  v2 = v1;
  *(v0 + 16) = sub_257ECDEF0();
  return v0;
}

MagnifierSupport::MAGAppMode_optional __swiftcall MAGAppMode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MAGAppMode.title.getter()
{
  v1 = 0x65746E4920707041;
  if (*v0 != 1)
  {
    v1 = 0x442074757074754FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666544;
  }
}

uint64_t MAGAppMode.symbolImage.getter()
{
  if (*v0)
  {
    return 0x687361642E707061;
  }

  else
  {
    return 7368801;
  }
}

uint64_t MAGFeatures.init()()
{
  if (qword_27F8F4870 != -1)
  {
    swift_once();
  }

  v1 = qword_27F913518;
  sub_257E32D54();
  v2 = v1;
  *(v0 + 16) = sub_257ECDEF0();
  return v0;
}

uint64_t MAGFeatures.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_257EC15B8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_257ECF4C0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27F913518 = v2;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_257EC1634()
{
  result = qword_27F8FBCF0;
  if (!qword_27F8FBCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBCF0);
  }

  return result;
}

unint64_t sub_257EC168C()
{
  result = qword_27F8FBCF8;
  if (!qword_27F8FBCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBCF8);
  }

  return result;
}

uint64_t MAGPointAndSpeakEventHandler.register(_:asActionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  sub_257EC6E30(&unk_257EEBC68, v10, a1, a2, isUniquelyReferenced_nonNull_native, sub_257C07CF8, &qword_27F8F5670);

  *(v5 + 16) = v13;
  return swift_endAccess();
}

uint64_t static MAGPointAndSpeakEvent.handTooClose()()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MAGPointAndSpeakEventHandler.send(_:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  type metadata accessor for MAGPointAndSpeakEvent(0);
  v2[11] = swift_task_alloc();
  v3 = sub_257ECDA30();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  sub_257ECF900();
  v2[15] = sub_257ECF8F0();
  v5 = sub_257ECF8B0();
  v2[16] = v5;
  v2[17] = v4;

  return MEMORY[0x2822009F8](sub_257EC19BC, v5, v4);
}

uint64_t sub_257EC19BC()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v0 + 144) = v2;
  v3 = *(v2 + 32);
  *(v0 + 208) = v3;
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
    *(v0 + 152) = v6;
    *(v0 + 160) = v7;
    v9 = (v7 << 10) | (16 * __clz(__rbit64(v6)));
    v10 = (*(v2 + 48) + v9);
    *(v0 + 168) = *v10;
    *(v0 + 176) = v10[1];
    v11 = (*(v2 + 56) + v9);
    v12 = *v11;
    *(v0 + 184) = v11[1];

    sub_257ECC3F0();
    v16 = (v12 + *v12);
    v13 = swift_task_alloc();
    *(v0 + 192) = v13;
    *v13 = v0;
    v13[1] = sub_257EC1BE0;

    return v16();
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

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_257EC1BE0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_257EC1F10;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_257EC1D24;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_257EC1D24()
{
  v1 = *(v0 + 160);
  v2 = (*(v0 + 152) - 1) & *(v0 + 152);
  if (v2)
  {
    v3 = *(v0 + 144);
LABEL_7:
    *(v0 + 152) = v2;
    *(v0 + 160) = v1;
    v5 = (v1 << 10) | (16 * __clz(__rbit64(v2)));
    v6 = (*(v3 + 48) + v5);
    *(v0 + 168) = *v6;
    *(v0 + 176) = v6[1];
    v7 = (*(v3 + 56) + v5);
    v8 = *v7;
    *(v0 + 184) = v7[1];

    sub_257ECC3F0();
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 192) = v9;
    *v9 = v0;
    v9[1] = sub_257EC1BE0;

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

      v3 = *(v0 + 144);
      if (v4 >= (((1 << *(v0 + 208)) + 63) >> 6))
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

uint64_t sub_257EC1F10()
{
  v32 = v0;
  v1 = v0[25];
  v2 = v0[11];
  v3 = v0[9];

  sub_257ECD4F0();
  sub_257EC6AD8(v3, v2, type metadata accessor for MAGPointAndSpeakEvent);

  v4 = v1;
  v5 = sub_257ECDA20();
  v6 = sub_257ECFBE0();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[21];
    v7 = v0[22];
    v9 = v0[13];
    v28 = v0[14];
    v10 = v0[11];
    v27 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315650;
    v13 = sub_257BF1FC8(v8, v7, &v29);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v30 = 0x746E657645205241;
    v31 = 0xEA0000000000203ALL;
    v14 = MAGPointAndSpeakEvent.PointAndSpeakEventType.description.getter();
    MEMORY[0x259C72150](v14);

    v15 = v30;
    v16 = v31;
    sub_257EC8198(v10, type metadata accessor for MAGPointAndSpeakEvent);
    v17 = sub_257BF1FC8(v15, v16, &v29);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v18 = sub_257ED0720();
    v20 = sub_257BF1FC8(v18, v19, &v29);

    *(v11 + 24) = v20;
    _os_log_impl(&dword_257BAC000, v5, v6, "Handler=%s error handling event=%s. Error=%s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C74820](v12, -1, -1);
    MEMORY[0x259C74820](v11, -1, -1);

    (*(v9 + 8))(v28, v27);
  }

  else
  {
    v22 = v0[13];
    v21 = v0[14];
    v24 = v0[11];
    v23 = v0[12];

    sub_257EC8198(v24, type metadata accessor for MAGPointAndSpeakEvent);
    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t static MAGPointAndSpeakEvent.handDetected()()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);

  return swift_storeEnumTagMultiPayload();
}

id static MAGPointAndSpeakEvent.handlePointAndSpeakBounds(boundingBox:block:camera:capturedImage:depthMap:orientation:isHuman:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, double *a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268);
  v21 = v20[12];
  v22 = v20[16];
  v23 = v20[20];
  v24 = v20[24];
  v25 = v20[28];
  v26 = v20[32];
  *a7 = a8;
  a7[1] = a9;
  a7[2] = a10;
  a7[3] = a11;
  sub_257EC6AD8(a1, a7 + v21, type metadata accessor for DetectedTextBlock);
  *(a7 + v22) = a2;
  *(a7 + v23) = a3;
  *(a7 + v24) = a4;
  *(a7 + v25) = a5;
  *(a7 + v26) = a6;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
  v27 = a4;
  v28 = a2;

  return a3;
}

uint64_t static MAGPointAndSpeakEvent.handlePointAndSpeak3D(jointPosition:)@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  *a1 = a2;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static MAGPointAndSpeakEvent.processPointAndSpeakUpdate(filteredTextBlocks:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static MAGPointAndSpeakEvent.handlePointAndSpeakBoundsWithSpatialBlock(spatialText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_257EC6AD8(a1, a2, type metadata accessor for SpatialTextBlock);
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static MAGPointAndSpeakEvent.handleCoachingUpdate(tip:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static MAGPointAndSpeakEvent.handleNoContentAvailable()()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t static MAGPointAndSpeakEvent.handleEmptyHandPoseRequest()()
{
  type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t MAGPointAndSpeakEventHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_257BEA684(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t MAGPointAndSpeakEvent.description.getter()
{
  v0 = MAGPointAndSpeakEvent.PointAndSpeakEventType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x746E657645205241;
}

uint64_t MAGPointAndSpeakEvent.PointAndSpeakEventType.description.getter()
{
  v1 = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_257EC6AD8(v0, v3, type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_257EC8198(v3, type metadata accessor for SpatialTextBlock);
        return 0xD000000000000029;
      }

      else
      {
        sub_257EC8198(v3, type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType);
        return 0xD00000000000001ELL;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F8F5268);
      v7 = v6[12];

      sub_257EC8198(&v3[v7], type metadata accessor for DetectedTextBlock);
      return 0xD000000000000023;
    }

    else
    {
      return 0xD000000000000024;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_257EC8198(v3, type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType);
      return 0xD00000000000001ALL;
    }

    else
    {
      return 0xD00000000000001ELL;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return 0x74654420646E6148;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return 0x6F6F5420646E6148;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_257EC28DC()
{
  v0 = MAGPointAndSpeakEvent.PointAndSpeakEventType.description.getter();
  MEMORY[0x259C72150](v0);

  return 0x746E657645205241;
}

Swift::Void __swiftcall MAGPointAndSpeakEventHandler.unregister(_:)(Swift::String a1)
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
      sub_257C07CF8();
    }

    sub_257C09E7C(v5, v9);
    *(v2 + 16) = v9;
  }

  swift_endAccess();
}

uint64_t MAGPointAndSpeakEventHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_257EC2A94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D0);
  result = sub_257ED0470();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v29 = *(*(v5 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
      }

      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v15) >> 6;
        while (++v17 != v25 || (v24 & 1) == 0)
        {
          v26 = v17 == v25;
          if (v17 == v25)
          {
            v17 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v17);
          if (v27 != -1)
          {
            v18 = __clz(__rbit64(~v27)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 16 * v18) = v29;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_257EC2F60(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B38);
  v35 = a2;
  result = sub_257ED0470();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v36 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      sub_257ECF500();
      sub_257ED07B0();
      sub_257ECF5D0();
      v24 = sub_257ED0800();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v34;
      v12 = v36;
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
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

uint64_t sub_257EC3228(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5758);
  v39 = a2;
  result = sub_257ED0470();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 56 * v20;
      v23 = *(v22 + 8);
      v40 = *v22;
      v24 = *(v22 + 24);
      v42 = *(v22 + 16);
      v25 = *(v22 + 32);
      v41 = *(v22 + 40);
      if ((v39 & 1) == 0)
      {
        v26 = v24;

        v27 = v23;
        v28 = v42;
      }

      result = sub_257ED07A0();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v40;
      *(v16 + 8) = v23;
      *(v16 + 16) = v42;
      *(v16 + 24) = v24;
      *(v16 + 32) = v25;
      *(v16 + 40) = v41;
      ++*(v7 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_257EC34F8(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_257ECCCF0();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5768);
  v37 = a2;
  result = sub_257ED0470();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_257ED07A0();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_257EC3844(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F55A0);
  v42 = a2;
  result = sub_257ED0470();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      if (v42)
      {
        v25 = *(v5 + 56) + 296 * v21;
        v43 = *v25;
        v44 = *(v25 + 1);
        v27 = *(v25 + 8);
        v26 = *(v25 + 16);
        v28 = *(v25 + 24);
        v45 = *(v25 + 32);
        v46 = *(v25 + 40);
        v29 = *(v25 + 48);
        v47 = *(v25 + 52);
        v51 = *(v25 + 56);
        v48 = *(v25 + 64);
        v49 = *(v25 + 53);
        v50 = *(v25 + 72);
        v52 = *(v25 + 73);
        v53 = *(v25 + 74);
        v54 = *(v25 + 75);
        v55 = *(v25 + 76);
        v56 = *(v25 + 77);
        v57 = *(v25 + 78);
        v30 = *(v25 + 80);
        v58 = *(v25 + 88);
        v32 = *(v25 + 96);
        v31 = *(v25 + 104);
        v72 = *(v25 + 112);
        v73 = *(v25 + 144);
        v74 = *(v25 + 136);
        v33 = *(v25 + 152);
        v59 = *(v25 + 128);
        v60 = *(v25 + 160);
        v61 = *(v25 + 161);
        v62 = *(v25 + 162);
        v63 = *(v25 + 168);
        v75 = *(v25 + 184);
        v76 = *(v25 + 200);
        v78 = *(v25 + 224);
        v79 = *(v25 + 216);
        v77 = *(v25 + 232);
        v64 = *(v25 + 176);
        v65 = *(v25 + 240);
        v66 = *(v25 + 241);
        v67 = *(v25 + 242);
        v68 = *(v25 + 243);
        v80 = *(v25 + 248);
        v71 = *(v25 + 272);
        v69 = *(v25 + 264);
        v70 = *(v25 + 288);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 296 * v21), 0x128uLL);
        v71 = __dst[17];
        v69 = *(&__dst[16] + 1);
        v70 = *&__dst[18];
        v80 = *(&__dst[15] + 8);
        v67 = BYTE2(__dst[15]);
        v68 = BYTE3(__dst[15]);
        v65 = __dst[15];
        v66 = BYTE1(__dst[15]);
        v78 = *&__dst[14];
        v79 = *(&__dst[13] + 1);
        v77 = *(&__dst[14] + 1);
        v75 = *(&__dst[11] + 8);
        v76 = *(&__dst[12] + 8);
        v64 = __dst[11];
        v63 = *(&__dst[10] + 1);
        v61 = BYTE1(__dst[10]);
        v62 = BYTE2(__dst[10]);
        v73 = *&__dst[9];
        v74 = *(&__dst[8] + 1);
        v33 = *(&__dst[9] + 1);
        v59 = __dst[8];
        v60 = __dst[10];
        v72 = __dst[7];
        v31 = *(&__dst[6] + 1);
        v32 = *&__dst[6];
        v58 = *(&__dst[5] + 1);
        v30 = *&__dst[5];
        v56 = BYTE13(__dst[4]);
        v57 = BYTE14(__dst[4]);
        v54 = BYTE11(__dst[4]);
        v55 = BYTE12(__dst[4]);
        v52 = BYTE9(__dst[4]);
        v53 = BYTE10(__dst[4]);
        v51 = *(&__dst[3] + 1);
        v48 = *&__dst[4];
        v49 = BYTE5(__dst[3]);
        v50 = BYTE8(__dst[4]);
        v47 = BYTE4(__dst[3]);
        v29 = __dst[3];
        v46 = *(&__dst[2] + 1);
        v28 = *(&__dst[1] + 1);
        v26 = *&__dst[1];
        v27 = *(&__dst[0] + 1);
        v44 = BYTE1(__dst[0]);
        v45 = __dst[2];
        v43 = __dst[0];

        sub_257C09C58(__dst, v81);
      }

      sub_257ED07B0();
      sub_257ECF5D0();
      result = sub_257ED0800();
      v34 = -1 << *(v7 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 296 * v15;
      *v17 = v43;
      *(v17 + 1) = v44;
      *(v17 + 32) = v45;
      *(v17 + 40) = v46;
      *(v17 + 52) = v47;
      *(v17 + 53) = v49;
      *(v17 + 56) = v51;
      *(v17 + 64) = v48;
      *(v17 + 72) = v50;
      *(v17 + 73) = v52;
      *(v17 + 74) = v53;
      *(v17 + 75) = v54;
      *(v17 + 76) = v55;
      *(v17 + 77) = v56;
      *(v17 + 78) = v57;
      *(v17 + 88) = v58;
      *(v17 + 128) = v59;
      *(v17 + 160) = v60;
      *(v17 + 161) = v61;
      *(v17 + 162) = v62;
      *(v17 + 168) = v63;
      *(v17 + 176) = v64;
      *(v17 + 240) = v65;
      *(v17 + 241) = v66;
      *(v17 + 242) = v67;
      *(v17 + 243) = v68;
      *(v17 + 264) = v69;
      *(v17 + 272) = v71;
      *(v17 + 288) = v70;
      *(v17 + 8) = v27;
      *(v17 + 16) = v26;
      *(v17 + 24) = v28;
      *(v17 + 48) = v29;
      *(v17 + 80) = v30;
      *(v17 + 96) = v32;
      *(v17 + 104) = v31;
      *(v17 + 112) = v72;
      *(v17 + 136) = v74;
      *(v17 + 144) = v73;
      *(v17 + 152) = v33;
      *(v17 + 184) = v75;
      *(v17 + 200) = v76;
      *(v17 + 216) = v79;
      *(v17 + 224) = v78;
      *(v17 + 232) = v77;
      *(v17 + 248) = v80;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v2;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_257EC3E6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5688);
  result = sub_257ED0470();
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
      sub_257ED07B0();
      MEMORY[0x259C732E0](v20);
      result = sub_257ED0800();
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

uint64_t sub_257EC40F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5610);
  v37 = a2;
  result = sub_257ED0470();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_257ED07B0();
      sub_257ECF5D0();
      result = sub_257ED0800();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_257EC43B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B08);
  v34 = a2;
  result = sub_257ED0470();
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

      sub_257ED07B0();
      sub_257ECF5D0();
      result = sub_257ED0800();
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

uint64_t sub_257EC4658(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for SpatialTextBlock();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DetectedTextBlock();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B30);
  v42 = a2;
  result = sub_257ED0470();
  v11 = result;
  if (*(v9 + 16))
  {
    v38 = v2;
    v39 = v9;
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
    v18 = result + 64;
    v19 = v43;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v40 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v42)
      {
        sub_257C31FD8(v26, v19, type metadata accessor for DetectedTextBlock);
        v27 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_257C31FD8(v27 + v28 * v24, v44, type metadata accessor for SpatialTextBlock);
      }

      else
      {
        sub_257EC6AD8(v26, v19, type metadata accessor for DetectedTextBlock);
        v29 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_257EC6AD8(v29 + v28 * v24, v44, type metadata accessor for SpatialTextBlock);
      }

      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257CA8180();
      sub_257ECF400();
      result = sub_257ED0800();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v43;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_257C31FD8(v19, *(v11 + 48) + v25 * v20, type metadata accessor for DetectedTextBlock);
      result = sub_257C31FD8(v44, *(v11 + 56) + v28 * v20, type metadata accessor for SpatialTextBlock);
      ++*(v11 + 16);
      v9 = v39;
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

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_257EC4AD4(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = sub_257ECCCF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v43 = a2;
  result = sub_257ED0470();
  v13 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v38 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v11;
    v41 = v7;
    v42 = v8;
    v44 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v45 = *(v42 + 72);
      v27 = v26 + v45 * v25;
      if (v43)
      {
        (*v44)(v46, v27, v7);
        v28 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v39)(v46, v27, v7);
        v28 = *(*(v11 + 56) + 8 * v25);
      }

      sub_257CA8180();
      result = sub_257ECF3F0();
      v29 = -1 << *(v13 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v20 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v20 + 8 * v31);
          if (v35 != -1)
          {
            v21 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v30) & ~*(v20 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v7 = v41;
      result = (*v44)(*(v13 + 48) + v45 * v21, v46, v41);
      *(*(v13 + 56) + 8 * v21) = v28;
      ++*(v13 + 16);
      v11 = v40;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v11 + 32);
    v5 = v38;
    if (v36 >= 64)
    {
      bzero(v15, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v36;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_257EC4E74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5658);
  result = sub_257ED0470();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v30 = *(*(v5 + 56) + 16 * v22);
      if ((a2 & 1) == 0)
      {
        v24 = v30;
      }

      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 16 * v18) = v30;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_257EC5300(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F56D8);
  v31 = a2;
  result = sub_257ED0470();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v31 & 1) == 0)
      {
        v25 = v24;
      }

      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v15) >> 6;
        while (++v17 != v27 || (v26 & 1) == 0)
        {
          v28 = v17 == v27;
          if (v17 == v27)
          {
            v17 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v17);
          if (v29 != -1)
          {
            v18 = __clz(__rbit64(~v29)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_257EC586C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5648);
  v38 = a2;
  result = sub_257ED0470();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      if ((v38 & 1) == 0)
      {
      }

      sub_257ED07B0();
      sub_257ECF5D0();
      result = sub_257ED0800();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v28;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_257EC5B2C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v34 = a2;
  result = sub_257ED0470();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v6 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v35 = *(*(v6 + 56) + v22);
      if ((v34 & 1) == 0)
      {

        sub_257ECC3F0();
      }

      sub_257ED07B0();
      sub_257ECF5D0();
      result = sub_257ED0800();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v35;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero((v6 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_257EC5DDC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5618);
  v30 = a2;
  result = sub_257ED0470();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_257ED07B0();
      sub_257ECF5D0();

      result = sub_257ED0800();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_257EC6268(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for DetectedTextBlock();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SpatialTextBlock();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B10);
  v42 = a2;
  result = sub_257ED0470();
  v11 = result;
  if (*(v9 + 16))
  {
    v38 = v2;
    v39 = v9;
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
    v18 = result + 64;
    v19 = v43;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v40 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v42)
      {
        sub_257C31FD8(v26, v19, type metadata accessor for SpatialTextBlock);
        v27 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_257C31FD8(v27 + v28 * v24, v44, type metadata accessor for DetectedTextBlock);
      }

      else
      {
        sub_257EC6AD8(v26, v19, type metadata accessor for SpatialTextBlock);
        v29 = *(v9 + 56);
        v28 = *(v41 + 72);
        sub_257EC6AD8(v29 + v28 * v24, v44, type metadata accessor for DetectedTextBlock);
      }

      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257CA8180();
      sub_257ECF400();
      result = sub_257ED0800();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v19 = v43;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v19 = v43;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_257C31FD8(v19, *(v11 + 48) + v25 * v20, type metadata accessor for SpatialTextBlock);
      result = sub_257C31FD8(v44, *(v11 + 56) + v28 * v20, type metadata accessor for DetectedTextBlock);
      ++*(v11 + 16);
      v9 = v39;
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

    v37 = 1 << *(v9 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_257EC66D0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for DetectedTextBlock();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5B18);
  v36 = a2;
  result = sub_257ED0470();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
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
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v35 + 72);
      v24 = *(v8 + 48) + v23 * v22;
      if (v36)
      {
        sub_257C31FD8(v24, v7, type metadata accessor for DetectedTextBlock);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      else
      {
        sub_257EC6AD8(v24, v7, type metadata accessor for DetectedTextBlock);
        v37 = *(*(v8 + 56) + 8 * v22);
      }

      sub_257ED07B0();
      sub_257ECCCF0();
      sub_257CA8180();
      sub_257ECF400();
      result = sub_257ED0800();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_257C31FD8(v7, *(v10 + 48) + v23 * v18, type metadata accessor for DetectedTextBlock);
      *(*(v10 + 56) + 8 * v18) = v37;
      ++*(v10 + 16);
      v8 = v34;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v12, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_257EC6AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_257EC6B40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_257C03FE4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_257EC2A94(v16, a4 & 1);
      result = sub_257C03FE4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_257ED06C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_257C07D0C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_257EC6CA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_257C040A0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_257C08174();
      goto LABEL_7;
    }

    sub_257EC34F8(v13, a3 & 1);
    v24 = sub_257C040A0(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_257ECCCF0();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_257EC7F04(v10, a2, a1, v16);
}

uint64_t sub_257EC6E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_257C03F6C(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_257EC5B2C(v22, a5 & 1, a7);
      v17 = sub_257C03F6C(a3, a4);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_257ED06C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      a6();
      v17 = v25;
    }
  }

  v27 = *v10;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v30 = (v27[6] + 16 * v17);
  *v30 = a3;
  v30[1] = a4;
  v31 = (v27[7] + 16 * v17);
  *v31 = a1;
  v31[1] = a2;
  v32 = v27[2];
  v21 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v33;
}

uint64_t sub_257EC6FE8(const void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_257C03F6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_257EC3844(v16, a4 & 1);
      v11 = sub_257C03F6C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_257ED06C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_257C083F0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 296 * v11;

    return sub_257EC8644(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  memcpy((v21[7] + 296 * v11), a1, 0x128uLL);
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_257EC7174(uint64_t a1, char a2, float a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_257C09E78(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_257C085AC();
    result = v17;
    goto LABEL_8;
  }

  sub_257EC3E6C(v14, a2 & 1);
  result = sub_257C09E78(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 4 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a1;
    *(v19[7] + 4 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_257ED06C0();
  __break(1u);
  return result;
}

uint64_t sub_257EC729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_257C03F6C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_257EC40F0(v18, a5 & 1);
      v13 = sub_257C03F6C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_257ED06C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_257C086F8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_257EC7424(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_257C03F6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_257EC43B0(v16, a4 & 1);
      v11 = sub_257C03F6C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_257ED06C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_257C08870();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_257EC75A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for DetectedTextBlock();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_257C0422C(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_257C089E0();
      goto LABEL_7;
    }

    sub_257EC4658(v16, a3 & 1);
    v23 = sub_257C0422C(a2);
    if ((v17 & 1) == (v24 & 1))
    {
      v13 = v23;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_257EC6AD8(a2, v10, type metadata accessor for DetectedTextBlock);
      return sub_257EC7FB0(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = v20 + *(*(type metadata accessor for SpatialTextBlock() - 8) + 72) * v13;

  return sub_257EC8800(a1, v21);
}

uint64_t sub_257EC7788(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_257ECCCF0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_257C042F8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_257C08CFC();
      goto LABEL_7;
    }

    sub_257EC4AD4(v17, a3 & 1, &qword_27F8F5B40);
    v22 = sub_257C042F8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_257EC809C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_257ED06C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_257EC798C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();

  sub_257EC86A0(a1, a3, a4, v4, ObjectType, a2);
}

void sub_257EC79F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_257C04470(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_257EC5300(v14, a3 & 1);
      v9 = sub_257C04470(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_257ED06C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_257C09100();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

unint64_t sub_257EC7B3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, float a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_257C03F6C(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_257EC586C(v18, a4 & 1);
      result = sub_257C03F6C(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_257ED06C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_257C0925C();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * result;
    *v24 = a1;
    *(v24 + 8) = a5;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v25 = (v23[6] + 16 * result);
  *v25 = a2;
  v25[1] = a3;
  v26 = v23[7] + 16 * result;
  *v26 = a1;
  *(v26 + 8) = a5;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v28;
}

unint64_t sub_257EC7D14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_257C040E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_257EC5DDC(v14, a3 & 1);
      result = sub_257C040E4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_257ED06C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_257C0956C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_257EC7E60(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_257EC7EA4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v4 = a4[7] + 56 * result;
  v5 = *(a3 + 16);
  *v4 = *a3;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a3 + 32);
  *(v4 + 48) = *(a3 + 48);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_257EC7F04(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_257ECCCF0();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_257EC7FB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for DetectedTextBlock();
  sub_257C31FD8(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for DetectedTextBlock);
  v10 = a4[7];
  v11 = type metadata accessor for SpatialTextBlock();
  result = sub_257C31FD8(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for SpatialTextBlock);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_257EC809C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_257ECCCF0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_257EC8154(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_257EC8198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_257EC8220()
{
  result = type metadata accessor for MAGPointAndSpeakEvent.PointAndSpeakEventType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_257EC828C()
{
  sub_257EC8520(319, &qword_27F8FBD28, sub_257BFEB74);
  if (v0 <= 0x3F)
  {
    sub_257EC8390(319);
    if (v1 <= 0x3F)
    {
      sub_257EC8520(319, &qword_27F8FBD40, type metadata accessor for SpatialTextBlock);
      if (v2 <= 0x3F)
      {
        sub_257EC8520(319, &qword_27F8FBD48, sub_257EC856C);
        if (v3 <= 0x3F)
        {
          sub_257EC85C4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_257EC8390(uint64_t a1)
{
  if (!qword_27F8FBD30)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for CGRect(255);
    type metadata accessor for DetectedTextBlock();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8F87F8);
    type metadata accessor for UIInterfaceOrientation(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F8FBD30);
    }
  }
}

void sub_257EC8520(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_257EC856C()
{
  if (!qword_27F8F6E38)
  {
    type metadata accessor for DetectedTextBlock();
    v0 = sub_257ECF870();
    if (!v1)
    {
      atomic_store(v0, &qword_27F8F6E38);
    }
  }
}

uint64_t sub_257EC85C4()
{
  result = qword_27F8FBD50;
  if (!qword_27F8FBD50)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F8FBD50);
  }

  return result;
}

void sub_257EC86A0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v12 = sub_257C040E4(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      sub_257EC4E74(v17, a3 & 1);
      v12 = sub_257C040E4(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_16:
        sub_257ED06C0();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      sub_257C08F9C();
      v12 = v20;
    }
  }

  v22 = *a4;
  if ((v18 & 1) == 0)
  {
    v22[(v12 >> 6) + 8] |= 1 << v12;
    *(v22[6] + v12) = a2;
    v25 = (v22[7] + 16 * v12);
    *v25 = a1;
    v25[1] = a6;
    v26 = v22[2];
    v16 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v16)
    {
      v22[2] = v27;
      return;
    }

    goto LABEL_15;
  }

  v23 = v22[7] + 16 * v12;
  v24 = *v23;
  *v23 = a1;
  *(v23 + 8) = a6;
}

uint64_t sub_257EC8800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTextBlock();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t sub_257EC888C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_257EC88D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_257EC8950@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B40);
  MEMORY[0x28223BE20](v55);
  v54 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v46 - v4;
  v5 = sub_257ECE1D0();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v46 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B48);
  MEMORY[0x28223BE20](v56);
  v53 = &v46 - v9;
  v65 = sub_257ECE750();
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v59 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD58);
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD60);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v15 = &v46 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD68);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v46 - v16;
  v67 = v1;
  v57 = v1;
  v66 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD78);
  sub_257ECA2CC();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD98);
  v18 = sub_257BD2D4C(&qword_27F8FBDA0, &qword_27F8FBD98);
  v19 = sub_257C3EC00();
  v68 = v17;
  v69 = &type metadata for MFReaderPlaybackSpeed;
  v70 = v18;
  v71 = v19;
  v20 = v60;
  swift_getOpaqueTypeConformance2();
  sub_257ECEA90();
  v21 = v59;
  sub_257ECE740();
  v22 = sub_257BD2D4C(&qword_27F8FBDA8, &qword_27F8FBD58);
  v23 = sub_257ECA660(&qword_27F8F77F8, MEMORY[0x277CDE0B8]);
  v46 = v15;
  v24 = v65;
  sub_257ECEB60();
  (*(v62 + 8))(v21, v24);
  v25 = *(v61 + 8);
  v26 = v13;
  v27 = v63;
  v62 = v11;
  v25(v26, v11);
  v28 = v64;
  v29 = *(v64 + 104);
  v29(v27, *MEMORY[0x277CDFA00], v5);
  v29(v20, *MEMORY[0x277CDF988], v5);
  sub_257ECA660(&qword_27F8F7C10, MEMORY[0x277CDFA28]);
  result = sub_257ECF440();
  if (result)
  {
    v31 = *(v28 + 32);
    v61 = v23;
    v32 = v52;
    v31(v52, v27, v5);
    v33 = v55;
    v31((v32 + *(v55 + 48)), v20, v5);
    v34 = v54;
    sub_257ECA414(v32, v54);
    v35 = *(v33 + 48);
    v36 = v53;
    v31(v53, v34, v5);
    v63 = v22;
    v37 = *(v28 + 8);
    v37(v34 + v35, v5);
    sub_257ECA484(v32, v34);
    v38 = v56;
    v31((v36 + *(v56 + 36)), (v34 + *(v33 + 48)), v5);
    v37(v34, v5);
    v68 = v62;
    v69 = v65;
    v70 = v63;
    v71 = v61;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = sub_257BD2D4C(&qword_27F8F7C08, &qword_27F8F7B48);
    v41 = v49;
    v42 = v48;
    v43 = v46;
    sub_257ECEBB0();
    sub_257BE4084(v36, &qword_27F8F7B48);
    v44 = (*(v47 + 8))(v43, v42);
    MEMORY[0x28223BE20](v44);
    *(&v46 - 2) = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBDB0);
    v68 = v42;
    v69 = v38;
    v70 = OpaqueTypeConformance2;
    v71 = v40;
    swift_getOpaqueTypeConformance2();
    sub_257BD2D4C(&qword_27F8FBDB8, &qword_27F8FBDB0);
    v45 = v51;
    sub_257ECECA0();
    return (*(v50 + 8))(v41, v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_257EC928C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-1] - v5;
  type metadata accessor for MFReaderSpeechFormatterModel(0);
  sub_257ECA660(&qword_27F8F5E30, type metadata accessor for MFReaderSpeechFormatterModel);
  sub_257ECE160();
  swift_getKeyPath();
  sub_257ECE170();

  v14 = v11[0];
  v15 = v11[1];
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBDC0);
  sub_257ECA4FC();
  sub_257ECA550();
  sub_257ECEEF0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v13 = v14;
  v7 = swift_allocObject();
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  v7[3] = a1[2];
  *(v7 + 57) = *(a1 + 41);
  sub_257ECA628(a1, v11);
  sub_257BD2D4C(&qword_27F8FBDA0, &qword_27F8FBD98);
  sub_257C3EC00();
  sub_257ECED00();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_257EC9588()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F6370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBDD8);
  sub_257BD2D4C(&qword_27F8FBDE0, &qword_27F8F6370);
  sub_257ECA4FC();
  swift_getOpaqueTypeConformance2();
  return sub_257ECEF80();
}

uint64_t sub_257EC96C4@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = MFReaderPlaybackSpeed.localizedName.getter();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

void sub_257EC9724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = *(a3 + 32);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = v7;
    sub_257ECDD60();

    v9 = v27;
    v10 = OBJC_IVAR____TtC16MagnifierSupport20MFReaderBlockManager_blocks;
    swift_beginAccess();
    v11 = *&v8[v10];
    if (v11 >> 62)
    {
      v12 = sub_257ED0210();
      if (!v12)
      {
LABEL_29:
        v17 = sub_257ECF930();
        (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        sub_257ECF900();
        v18 = v8;
        v19 = sub_257ECF8F0();
        v20 = swift_allocObject();
        v21 = MEMORY[0x277D85700];
        *(v20 + 16) = v19;
        *(v20 + 24) = v21;
        *(v20 + 32) = v18;
        *(v20 + 40) = 1;
        sub_257C3FBD4(0, 0, v6, &unk_257EF2B10, v20);

        return;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_29;
      }
    }

    if (v12 >= 1)
    {
      v23 = v8;
      v24 = v6;
      v25 = v11 & 0xC000000000000001;

      v13 = 0;
      while (1)
      {
        if (v25)
        {
          v14 = MEMORY[0x259C72E20](v13, v11);
        }

        else
        {
          v14 = *(v11 + 8 * v13 + 32);
          sub_257ECC3F0();
        }

        v15 = *(v14 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            if (v15 != 3)
            {
              goto LABEL_27;
            }
          }

          else if (v9 == 4)
          {
            if (v15 != 4)
            {
              goto LABEL_27;
            }
          }

          else if (v15 != 5)
          {
LABEL_27:
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v22 - 2) = v14;
            *(&v22 - 8) = v9;
            v26 = v14;
            sub_257ECA660(&qword_27F8F5AE0, type metadata accessor for MFReaderTextBlock);
            sub_257ECCED0();

            goto LABEL_7;
          }
        }

        else if (v9)
        {
          if (v9 == 1)
          {
            if (v15 != 1)
            {
              goto LABEL_27;
            }
          }

          else if (v15 != 2)
          {
            goto LABEL_27;
          }
        }

        else if (*(v14 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed))
        {
          goto LABEL_27;
        }

        *(v14 + OBJC_IVAR____TtC16MagnifierSupport17MFReaderTextBlock__playbackSpeed) = v9;

LABEL_7:
        if (v12 == ++v13)
        {

          v8 = v23;
          v6 = v24;
          goto LABEL_29;
        }
      }
    }

    __break(1u);
  }

  type metadata accessor for MFReaderBlockManager();
  sub_257ECA660(&qword_27F8F5E38, type metadata accessor for MFReaderBlockManager);
  sub_257ECE320();
  __break(1u);
}

uint64_t sub_257EC9B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_257ECE540();
  MEMORY[0x28223BE20](v3 - 8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD70);
  MEMORY[0x28223BE20](v39);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v33 - v6;
  sub_257ECE530();
  sub_257ECE520();
  v37 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  LOBYTE(v42) = v44;
  MFReaderPlaybackSpeed.localizedName.getter();
  sub_257ECE510();

  sub_257ECE520();
  sub_257ECE560();
  v7 = sub_257ECEAD0();
  v33 = v8;
  v34 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v35 = v12;
  v14 = sub_257D42694();
  v44 = v7;
  v45 = v9;
  v15 = v11 & 1;
  v46 = v11 & 1;
  v47 = v13;
  v48 = v14;
  v49 = 0;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = sub_257ECF4C0();
  v19 = sub_257ECF4C0();
  v20 = [v17 localizedStringForKey:v18 value:0 table:v19];

  v21 = sub_257ECF500();
  v23 = v22;

  v42 = v21;
  v43 = v23;
  sub_257BDAB08();
  v24 = sub_257ECEAF0();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8FBD90);
  sub_257ECA388();
  v29 = v36;
  sub_257ECEBE0();
  sub_257C0300C(v24, v26, v28 & 1);

  sub_257C0300C(v34, v33, v15);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  v41 = v42;
  v44 = MFReaderPlaybackSpeed.localizedName.getter();
  v45 = v30;
  v31 = v38;
  sub_257ECE210();

  sub_257BE4084(v29, &qword_27F8FBD70);
  sub_257ECE230();
  return sub_257BE4084(v31, &qword_27F8FBD70);
}

__n128 sub_257EC9FA0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_257ECE5B0();
  sub_257ECA034(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_257ECA034@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECDD60();

  LOBYTE(v25) = v27;
  v23 = MFReaderPlaybackSpeed.localizedName.getter();
  v24 = v2;
  sub_257BDAB08();
  v3 = sub_257ECEAF0();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  type metadata accessor for MAGUtilities();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  v12 = sub_257ECF4C0();
  v13 = sub_257ECF4C0();
  v14 = [v11 localizedStringForKey:v12 value:0 table:v13];

  sub_257ECF500();
  v15 = sub_257ECEAF0();
  v17 = v16;
  v18 = v7 & 1;
  v26 = v7 & 1;
  v20 = v19 & 1;
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v18;
  *(a1 + 24) = v9;
  *(a1 + 32) = v15;
  *(a1 + 40) = v16;
  *(a1 + 48) = v19 & 1;
  *(a1 + 56) = v21;
  sub_257BD1B90(v3, v5, v18);

  sub_257BD1B90(v15, v17, v20);

  sub_257C0300C(v15, v17, v20);

  sub_257C0300C(v3, v5, v26);
}

unint64_t sub_257ECA2CC()
{
  result = qword_27F8FBD80;
  if (!qword_27F8FBD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD70);
    sub_257ECA388();
    sub_257ECA660(&qword_27F8F5CA0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBD80);
  }

  return result;
}

unint64_t sub_257ECA388()
{
  result = qword_27F8FBD88;
  if (!qword_27F8FBD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBD90);
    sub_257E2EB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBD88);
  }

  return result;
}

uint64_t sub_257ECA414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_257ECA484(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F7B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_257ECA4FC()
{
  result = qword_27F8FBDC8;
  if (!qword_27F8FBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBDC8);
  }

  return result;
}

unint64_t sub_257ECA550()
{
  result = qword_27F8FBDD0;
  if (!qword_27F8FBDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F8FBDC0);
    sub_257ECA4FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F8FBDD0);
  }

  return result;
}

uint64_t sub_257ECA614(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_257ECA660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_257ECA6A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_257BE3DE0;

  return sub_257CD29FC(a1, v4, v5, v6, v7);
}

void sub_257ECA76C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  [v4 addChildViewController_];
  if (a4)
  {
    if (a4 == 1)
    {
      v9 = [a1 view];
      if (!v9)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v10 = v9;
      v11 = [v4 view];
      if (!v11)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v12 = v11;
      [v11 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v83.origin.x = v14;
      v83.origin.y = v16;
      v83.size.width = v18;
      v83.size.height = v20;
      Height = CGRectGetHeight(v83);
      CGAffineTransformMakeTranslation(&v82, 0.0, Height);
      [v10 setTransform_];
    }
  }

  else
  {
    v22 = [a1 view];
    if (!v22)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v23 = v22;
    v24 = [v22 layer];

    [v24 setOpacity_];
  }

  v25 = [v4 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_32;
  }

  v26 = v25;
  v27 = [a1 view];
  if (!v27)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = v27;
  [v26 addSubview_];

  v29 = *a2;
  v30 = *(a2 + 8);
  v31 = *(a2 + 16);
  v32 = *(a2 + 24);
  if ((*(a2 + 32) & 1) == 0)
  {
    v75 = [a1 view];
    if (v75)
    {
      v76 = v75;
      [v75 setFrame_];

      v67 = a4;
      if (a4)
      {
        goto LABEL_24;
      }

LABEL_28:
      v68 = *&a3;
      v69 = objc_opt_self();
      v77 = swift_allocObject();
      *(v77 + 16) = a1;
      *&v82.tx = sub_257ECB218;
      *&v82.ty = v77;
      *&v82.a = MEMORY[0x277D85DD0];
      *&v82.b = 1107296256;
      *&v82.c = sub_257D231C0;
      *&v82.d = &block_descriptor_12_1;
      v71 = _Block_copy(&v82);
      v72 = a1;

      v78 = swift_allocObject();
      *(v78 + 16) = v72;
      *(v78 + 24) = v4;
      *&v82.tx = sub_257ECB238;
      *&v82.ty = v78;
      *&v82.a = MEMORY[0x277D85DD0];
      *&v82.b = 1107296256;
      v74 = &block_descriptor_18;
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  if (*&v31 | *&v30 | *&v29 | *&v32)
  {
    goto LABEL_23;
  }

  v33 = [a1 view];
  if (!v33)
  {
    goto LABEL_37;
  }

  v34 = v33;
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];

  v35 = [v4 view];
  if (!v35)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F8F5430);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_257EDBE40;
  v38 = [v4 view];
  if (!v38)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [a1 view];
  if (!v41)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor_];
  *(v37 + 32) = v44;
  v45 = [v4 view];
  if (!v45)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v46 = v45;
  v47 = [v45 bottomAnchor];

  v48 = [a1 view];
  if (!v48)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v49 = v48;
  v50 = [v48 bottomAnchor];

  v51 = [v47 constraintEqualToAnchor_];
  *(v37 + 40) = v51;
  v52 = [v4 view];
  if (!v52)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v53 = v52;
  v54 = [v52 leftAnchor];

  v55 = [a1 view];
  if (!v55)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v56 = v55;
  v57 = [v55 leftAnchor];

  v58 = [v54 constraintEqualToAnchor_];
  *(v37 + 48) = v58;
  v59 = [v4 view];
  if (!v59)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v60 = v59;
  v61 = [v59 rightAnchor];

  v62 = [a1 view];
  if (!v62)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v63 = v62;
  v64 = [v62 rightAnchor];

  v65 = [v61 constraintEqualToAnchor_];
  *(v37 + 56) = v65;
  sub_257C80FFC();
  v66 = sub_257ECF7F0();

  [v36 addConstraints_];

LABEL_23:
  v67 = a4;
  if (!a4)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v67 == 1)
  {
    v68 = *&a3;
    v69 = objc_opt_self();
    v70 = swift_allocObject();
    *(v70 + 16) = a1;
    *&v82.tx = sub_257ECB1F8;
    *&v82.ty = v70;
    *&v82.a = MEMORY[0x277D85DD0];
    *&v82.b = 1107296256;
    *&v82.c = sub_257D231C0;
    *&v82.d = &block_descriptor_69;
    v71 = _Block_copy(&v82);
    v72 = a1;

    v73 = swift_allocObject();
    *(v73 + 16) = v72;
    *(v73 + 24) = v4;
    *&v82.tx = sub_257ECB254;
    *&v82.ty = v73;
    *&v82.a = MEMORY[0x277D85DD0];
    *&v82.b = 1107296256;
    v74 = &block_descriptor_6_4;
LABEL_29:
    *&v82.c = sub_257DFE438;
    *&v82.d = v74;
    v79 = _Block_copy(&v82);
    v80 = v72;
    v81 = v4;

    [v69 animateWithDuration:0x20000 delay:v71 options:v79 animations:v68 completion:{0.0, *&v82.a}];
    _Block_release(v79);
    _Block_release(v71);
    return;
  }

  [a1 didMoveToParentViewController_];
}

void sub_257ECAF84(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    CGAffineTransformMakeTranslation(&v3, 0.0, 0.0);
    [v2 setTransform_];
  }

  else
  {
    __break(1u);
  }
}

void sub_257ECB008(void *a1, float a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    v6 = [v3 layer];

    *&v5 = a2;
    [v6 setOpacity_];
  }

  else
  {
    __break(1u);
  }
}

void sub_257ECB09C(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v16.origin.x = v7;
      v16.origin.y = v9;
      v16.size.width = v11;
      v16.size.height = v13;
      Height = CGRectGetHeight(v16);
      CGAffineTransformMakeTranslation(&v15, 0.0, Height);
      [v3 setTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_257ECB188(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    return [a2 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_257ECC3F0();
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_27F912DC8 == -1)
  {
    if (qword_27F912DD0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27F912DD0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27F912DC0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27F912DB4 > a3)
      {
        return 1;
      }

      if (dword_27F912DB4 >= a3)
      {
        return dword_27F912DB8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27F912DD0;
  if (qword_27F912DD0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27F912DD0 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x259C73E90](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27F912DB4, &dword_27F912DB8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGPoint VNImagePointForNormalizedPoint(CGPoint normalizedPoint, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x2821350A8](imageWidth, imageHeight, normalizedPoint, *&normalizedPoint.y);
  result.y = v4;
  result.x = v3;
  return result;
}

CGRect VNNormalizedRectForImageRect(CGRect imageRect, size_t imageWidth, size_t imageHeight)
{
  MEMORY[0x2821350B8](imageWidth, imageHeight, imageRect.origin, *&imageRect.origin.y, imageRect.size, *&imageRect.size.height);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}