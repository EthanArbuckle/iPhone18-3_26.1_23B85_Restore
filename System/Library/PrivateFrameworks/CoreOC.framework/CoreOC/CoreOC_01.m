uint64_t sub_245F9E1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>, __n128 a10@<Q3>, double a11@<D4>, __n128 a12@<Q5>, __n128 a13@<Q6>)
{
  v102 = a12;
  v103 = a13;
  v100 = a9;
  v101 = a10;
  v98 = a7;
  v99 = a8;
  v108 = a5;
  v109 = a6;
  v105 = a3;
  v106 = a2;
  v16 = sub_2460918F4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v107 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v104 = &v94 - v22;
  MEMORY[0x28223BE20](v21);
  v96 = &v94 - v23;
  v24 = sub_246091834();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v97 = &v94 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v95 = &v94 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = &v94 - v34;
  v36 = *(*a4 + 264);
  v37 = v36(a1);
  if (!v37)
  {
    v47 = sub_245FA32CC();
    (*(v17 + 16))(v107, v47, v16);
    (*(v25 + 16))(v29, v108, v24);
    v48 = sub_2460918D4();
    v49 = sub_246091FB4();
    v50 = v16;
    v51 = v17;
    if (os_log_type_enabled(v48, v49))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v110[0] = v53;
      *v52 = 136380931;
      *(v52 + 4) = sub_245F8D3C0(0xD00000000000005ALL, 0x800000024609E970, v110);
      *(v52 + 12) = 2082;
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0]);
      v108 = v50;
      v54 = sub_2460923D4();
      v56 = v55;
      (*(v25 + 8))(v29, v24);
      v57 = sub_245F8D3C0(v54, v56, v110);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_245F8A000, v48, v49, "%{private}s: Failed to create mesh anchor %{public}s from mutable data - failed to create buffer for vertex positions!", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v53, -1, -1);
      MEMORY[0x24C1989D0](v52, -1, -1);

      (*(v51 + 8))(v107, v108);
    }

    else
    {

      (*(v25 + 8))(v29, v24);
      (*(v17 + 8))(v107, v50);
    }

    goto LABEL_17;
  }

  v107 = v37;
  v38 = v25;
  v39 = v16;
  v40 = v36(v106);
  if (!v40)
  {
    v58 = sub_245FA32CC();
    v59 = v17;
    v60 = v104;
    v61 = v16;
    (*(v17 + 16))(v104, v58, v16);
    v62 = v97;
    (*(v25 + 16))(v97, v108, v24);
    v63 = sub_2460918D4();
    v64 = sub_246091FB4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v110[0] = v66;
      *v65 = 136380931;
      *(v65 + 4) = sub_245F8D3C0(0xD00000000000005ALL, 0x800000024609E970, v110);
      *(v65 + 12) = 2082;
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0]);
      v67 = sub_2460923D4();
      v68 = v62;
      v70 = v69;
      (*(v25 + 8))(v68, v24);
      v71 = sub_245F8D3C0(v67, v70, v110);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_245F8A000, v63, v64, "%{private}s: Failed to create mesh anchor %{public}s from mutable data - failed to create buffer for vertex colors!", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v66, -1, -1);
      MEMORY[0x24C1989D0](v65, -1, -1);

      v72 = *(v59 + 8);
      v73 = v104;
    }

    else
    {

      (*(v25 + 8))(v62, v24);
      v72 = *(v17 + 8);
      v73 = v60;
    }

    v91 = v61;
    goto LABEL_16;
  }

  v41 = v40;
  v42 = v36(v105);
  if (!v42)
  {
    v74 = sub_245FA32CC();
    v75 = v17;
    v76 = *(v17 + 16);
    v77 = v96;
    v76(v96, v74, v39);
    v78 = v25;
    v79 = v95;
    v80 = v24;
    (*(v25 + 16))(v95, v108, v24);
    v81 = sub_2460918D4();
    v82 = sub_246091FB4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v108 = v39;
      v84 = v83;
      v85 = v78;
      v86 = swift_slowAlloc();
      v110[0] = v86;
      *v84 = 136380931;
      *(v84 + 4) = sub_245F8D3C0(0xD00000000000005ALL, 0x800000024609E970, v110);
      *(v84 + 12) = 2082;
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0]);
      LODWORD(v106) = v82;
      v87 = sub_2460923D4();
      v89 = v88;
      (*(v85 + 8))(v79, v80);
      v90 = sub_245F8D3C0(v87, v89, v110);

      *(v84 + 14) = v90;
      _os_log_impl(&dword_245F8A000, v81, v106, "%{private}s: Failed to create mesh anchor %{public}s from mutable data - failed to create buffer for vertex normals!", v84, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v86, -1, -1);
      MEMORY[0x24C1989D0](v84, -1, -1);

      (*(v75 + 8))(v96, v108);
LABEL_17:
      v46 = 1;
      v45 = v109;
      goto LABEL_18;
    }

    (*(v78 + 8))(v79, v24);
    v72 = *(v75 + 8);
    v73 = v77;
    v91 = v39;
LABEL_16:
    v72(v73, v91);
    goto LABEL_17;
  }

  v43 = v42;
  (*(v38 + 16))(v35, v108, v24);
  v44 = sub_245FCCC80();
  v45 = v109;
  sub_2460364E0(v35, v107, v41, v43, 0, v44 & 1, v109, v98, v99, v100, v101, a11, v102, v103);
  v46 = 0;
LABEL_18:
  v92 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  return (*(*(v92 - 8) + 56))(v45, v46, 1, v92);
}

uint64_t sub_245F9EB34(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v3 = *(*(v2 - 1) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - v7;
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = *(a1 + v2[8]);
  if (!v16)
  {
    v39 = sub_245FA32CC();
    (*(v10 + 16))(v14, v39, v9);
    sub_245FA2954(a1, v6);
    v40 = sub_2460918D4();
    v41 = sub_246091FB4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v67 = v43;
      *v42 = 136380931;
      *(v42 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609E9D0, &v67);
      *(v42 + 12) = 2082;
      sub_246091834();
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0]);
      v44 = sub_2460923D4();
      v46 = v45;
      sub_245FA29B8(v6);
      v47 = sub_245F8D3C0(v44, v46, &v67);

      *(v42 + 14) = v47;
      _os_log_impl(&dword_245F8A000, v40, v41, "%{private}s: Failed to get mesh anchor from tri mesh - missing faces in the mesh anchor %{public}s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v43, -1, -1);
      MEMORY[0x24C1989D0](v42, -1, -1);
    }

    else
    {

      sub_245FA29B8(v6);
    }

    (*(v10 + 8))(v14, v9);
    return 0;
  }

  v65 = &v62 - v15;
  v17 = *(a1 + v2[5]);
  v18 = v16;
  result = [v17 count];
  v20 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v20 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v62 = v8;
  v63 = v10;
  v64 = v9;
  v21 = [v17 buffer];
  v22 = [v21 contents];
  v23 = v21;
  v24 = [*(a1 + v2[6]) buffer];
  v25 = [v24 contents];
  v26 = v24;
  v27 = [*(a1 + v2[7]) buffer];
  v66 = v18;
  v28 = v27;
  v29 = [v27 contents];
  v30 = v28;
  v31 = v66;
  v32 = v30;
  result = [v31 count];
  v33 = 3 * result;
  if ((result * 3) >> 64 != (3 * result) >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = [v31 buffer];
    v35 = [v34 contents];
    v36 = v34;
    v37 = [objc_allocWithZone(MEMORY[0x277D0AE80]) init];
    [v37 setPositions:v22 size:v20];
    [v37 setVertexColors:v25 size:v20];
    [v37 setVertexNormals:v29 size:v20];
    [v37 setFaces:v35 size:v33];
    v38 = [objc_allocWithZone(MEMORY[0x277D0AE88]) init];
    if ([v37 create_])
    {

      return v38;
    }

    v48 = sub_245FA32CC();
    v50 = v63;
    v49 = v64;
    v51 = v65;
    (*(v63 + 16))(v65, v48, v64);
    v52 = v62;
    sub_245FA2954(a1, v62);
    v53 = sub_2460918D4();
    v54 = sub_246091FB4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v67 = v56;
      *v55 = 136380931;
      *(v55 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609E9D0, &v67);
      *(v55 + 12) = 2082;
      sub_246091834();
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0]);
      v57 = v54;
      v58 = sub_2460923D4();
      v60 = v59;
      sub_245FA29B8(v52);
      v61 = sub_245F8D3C0(v58, v60, &v67);

      *(v55 + 14) = v61;
      _os_log_impl(&dword_245F8A000, v53, v57, "%{private}s: Failed to create tri mesh for anchor %{public}s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v56, -1, -1);
      MEMORY[0x24C1989D0](v55, -1, -1);

      (*(v50 + 8))(v65, v64);
    }

    else
    {

      sub_245FA29B8(v52);
      (*(v50 + 8))(v51, v49);
    }

    return 0;
  }

LABEL_20:
  __break(1u);
  return result;
}

BOOL sub_245F9F250()
{
  v1 = (*(*v0 + 112))();
  v2 = *sub_24601EF70();
  v3 = sub_246026268();

  return sub_246026278(v2, v3, v1);
}

float32x4_t *sub_245F9F300(float32x4_t a1, float32x4_t a2)
{
  v3 = v2;
  v39 = a1;
  v40 = a2;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24601EF70();
  v10 = vld1q_dup_f32(v9);
  v10.i32[3] = 0;
  v2[3] = v10;
  v11 = vmvnq_s8(vorrq_s8(vcltzq_f32(v39), vcgezq_f32(v39)));
  v15 = v11.i32[0] + v11.i32[1] == (vmovn_s32(*&v11).i32[1] & 1);
  v11.i64[0] = 0x7F0000007FLL;
  v11.i64[1] = 0x7F0000007FLL;
  v12 = vnegq_f32(v11);
  v13 = vceqq_f32(vabsq_f32(v39), v12);
  v14 = vmovn_s32(v13).i32[1] & 1;
  v15 = v15 && v13.i32[0] + v13.i32[1] == v14;
  v16 = vmvnq_s8(vorrq_s8(vcltzq_f32(v40), vcgezq_f32(v40)));
  v17 = vmovn_s32(v16).i32[1] & 1;
  v18 = v15 && v16.i32[0] + v16.i32[1] == v17;
  v19 = vceqq_f32(vabsq_f32(v40), v12);
  v20 = vmovn_s32(v19).i32[1] & 1;
  v21 = v18 && v19.i32[0] + v19.i32[1] == v20;
  if (v21 && v40.f32[0] >= 0.0 && (v35 = vcgez_f32(*&vextq_s8(v40, v40, 4uLL)), (v35.i8[0] & 1) != 0) && (v35.i8[4] & 1) != 0)
  {
    v36 = v40;
    v2[1] = v39;
    v2[2] = v36;
  }

  else
  {
    v22 = sub_245FA32CC();
    (*(v5 + 16))(v8, v22, v4);
    v23 = sub_2460918D4();
    v24 = sub_246091FB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v25 = 136381187;
      *(v25 + 4) = sub_245F8D3C0(0xD000000000000017, 0x800000024609E9F0, &v42);
      *(v25 + 12) = 2082;
      v41 = v39;
      sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
      sub_245FA2A38();
      v26 = sub_246092404();
      v28 = sub_245F8D3C0(v26, v27, &v42);
      v39.i64[0] = v4;
      v29 = v28;

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      v41 = v40;
      v30 = sub_246092404();
      v32 = sub_245F8D3C0(v30, v31, &v42);

      *(v25 + 24) = v32;
      _os_log_impl(&dword_245F8A000, v23, v24, "AABB.%{private}s: Invalid minCorner %{public}s or extent %{public}s for AABB!", v25, 0x20u);
      v33 = v38;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v25, -1, -1);

      (*(v5 + 8))(v8, v39.i64[0]);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    type metadata accessor for MeshUtils.AABB();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

float32x4_t *sub_245F9F6A4(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v36 = a3;
  v42 = a1;
  v43 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2460233E8(v36, v37, v38, v39) & 1) == 0)
  {
    v26 = sub_245FA32CC();
    (*(v8 + 16))(v11, v26, v7);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44.i64[0] = v30;
      *v29 = 136380931;
      *(v29 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA10, &v44);
      *(v29 + 12) = 2082;
      v45 = v36;
      v46 = v37;
      v47 = v38;
      v48 = v39;
      type metadata accessor for simd_float4x4(0);
      v31 = sub_246091C54();
      v33 = sub_245F8D3C0(v31, v32, &v44);

      *(v29 + 14) = v33;
      _os_log_impl(&dword_245F8A000, v27, v28, "AABB.%{private}s: Invalid transform %{public}s for creating AABB from OBB!", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v30, -1, -1);
      MEMORY[0x24C1989D0](v29, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  type metadata accessor for MeshUtils.AABB();
  swift_allocObject();
  result = sub_245F9F300(v42, v43);
  if (!result)
  {
    return result;
  }

  v13 = (*(result->i64[0] + 136))();
  v14 = *(v13 + 16);
  if (v14)
  {
    v43 = xmmword_246096F60;
    v15 = xmmword_246096F70;
    v16 = 32;
    do
    {
      v41 = v15;
      v42 = v15;
      v17 = *(v13 + v16);
      v40 = v43;
      v45 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, v17.f32[0]), v37, *v17.f32, 1), v38, v17, 2), v39);
      v18 = sub_245F8E624(&qword_27EE3A080, &unk_246096F90);
      sub_246026078(v18);
      v19 = v42;
      v20 = v43;
      v21 = v44;
      v20.i32[3] = 0;
      v21.i32[3] = 0;
      v22 = vminnmq_f32(v20, v21);
      v22.i32[3] = v40.i32[3];
      v43 = v22;
      v19.i32[3] = 0;
      v15 = vmaxnmq_f32(v19, v21);
      v15.i32[3] = v41.i32[3];
      v16 += 16;
      --v14;
    }

    while (v14);
    v42 = v15;

    v25 = v42;
    v24 = v43;
  }

  else
  {

    v24 = xmmword_246096F60;
    v25 = xmmword_246096F70;
  }

  v34 = vsubq_f32(v25, v24);
  v34.n128_u32[3] = 0;
  v35 = (*(v6 + 128))(v23, v24, v34);

  if (!v35)
  {
    return 0;
  }

  return v35;
}

char *sub_245F9FA84()
{
  v60 = v0[1];
  v1 = sub_245FA26DC(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    v1 = sub_245FA26DC((v2 > 1), v3 + 1, 1, v1);
    v2 = *(v1 + 3);
    v4 = v2 >> 1;
  }

  *(v1 + 2) = v5;
  v6 = v60;
  *&v1[16 * v3 + 32] = v60;
  v7 = v0[2];
  v8 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    v53 = v7;
    v31 = sub_245FA26DC((v2 > 1), v3 + 2, 1, v1);
    v7 = v53;
    v6 = v60;
    v1 = v31;
  }

  v9 = vaddq_f32(v6, v7);
  v10 = v9.u32[0];
  v11 = v6.f32[1] + 0.0;
  v12 = v9.u32[0];
  *(&v12 + 1) = v6.f32[1] + 0.0;
  v13 = v6.f32[2] + 0.0;
  v14 = v12;
  *(&v14 + 2) = v6.f32[2] + 0.0;
  *(v1 + 2) = v8;
  *&v1[16 * v5 + 32] = v14;
  v15 = *(v1 + 3);
  v16 = v3 + 3;
  if ((v3 + 3) > (v15 >> 1))
  {
    v48 = v9.u32[0];
    v54 = v9;
    v41 = v6.f32[1] + 0.0;
    v44 = v12;
    v38 = v6.f32[2] + 0.0;
    v32 = sub_245FA26DC((v15 > 1), v3 + 3, 1, v1);
    v13 = v38;
    v11 = v41;
    v12 = v44;
    v10 = v48;
    v6.i32[0] = v60.i32[0];
    v9 = v54;
    v1 = v32;
  }

  DWORD1(v10) = v9.i32[1];
  v17 = v10;
  *(&v17 + 2) = v13;
  *(v1 + 2) = v16;
  *&v1[16 * v8 + 32] = v17;
  v18 = *(v1 + 3);
  v19 = v3 + 4;
  if ((v3 + 4) > (v18 >> 1))
  {
    v49 = v10;
    v55 = v9;
    v42 = v11;
    v45 = v12;
    v39 = v13;
    v33 = sub_245FA26DC((v18 > 1), v3 + 4, 1, v1);
    v13 = v39;
    v11 = v42;
    v12 = v45;
    v10 = v49;
    v6.i32[0] = v60.i32[0];
    v9 = v55;
    v1 = v33;
  }

  v6.i32[1] = 0;
  v6.i64[1] = 0;
  v6.f32[0] = v6.f32[0] + 0.0;
  v21 = v6.u32[0];
  DWORD1(v21) = v9.i32[1];
  v22 = v21;
  *(&v22 + 2) = v13;
  *(v1 + 2) = v19;
  *&v1[16 * v16 + 32] = v22;
  v23 = *(v1 + 3);
  v24 = v3 + 5;
  if ((v3 + 5) > (v23 >> 1))
  {
    v50 = v10;
    v56 = v9.i32[2];
    v46 = v12;
    v61 = v21;
    v40 = v6;
    v43 = v11;
    v34 = sub_245FA26DC((v23 > 1), v3 + 5, 1, v1);
    v6 = v40;
    v11 = v43;
    v21 = v61;
    v12 = v46;
    v10 = v50;
    v9.i32[2] = v56;
    v1 = v34;
  }

  v6.f32[1] = v11;
  v6.i32[2] = v9.i32[2];
  *(v1 + 2) = v24;
  *&v1[16 * v19 + 32] = v6;
  v25 = *(v1 + 3);
  v26 = v3 + 6;
  if ((v3 + 6) > (v25 >> 1))
  {
    v51 = v10;
    v57 = v9.i32[2];
    v47 = v12;
    v62 = v21;
    v35 = sub_245FA26DC((v25 > 1), v3 + 6, 1, v1);
    v21 = v62;
    v12 = v47;
    v10 = v51;
    v9.i32[2] = v57;
    v1 = v35;
  }

  DWORD2(v12) = v9.i32[2];
  *(v1 + 2) = v26;
  *&v1[16 * v24 + 32] = v12;
  v27 = *(v1 + 3);
  v28 = v3 + 7;
  if ((v3 + 7) > (v27 >> 1))
  {
    v52 = v10;
    v58 = v9.i32[2];
    v63 = v21;
    v36 = sub_245FA26DC((v27 > 1), v3 + 7, 1, v1);
    v21 = v63;
    v10 = v52;
    v9.i32[2] = v58;
    v1 = v36;
  }

  DWORD2(v10) = v9.i32[2];
  *(v1 + 2) = v28;
  *&v1[16 * v26 + 32] = v10;
  v29 = *(v1 + 3);
  if ((v3 + 8) > (v29 >> 1))
  {
    v59 = v9.i32[2];
    v64 = v21;
    v37 = sub_245FA26DC((v29 > 1), v3 + 8, 1, v1);
    v21 = v64;
    v9.i32[2] = v59;
    v1 = v37;
  }

  DWORD2(v21) = v9.i32[2];
  *(v1 + 2) = v3 + 8;
  *&v1[16 * v28 + 32] = v21;
  return v1;
}

float32x4_t *sub_245F9FDB4(float32x4_t *a1)
{
  v3 = a1[1];
  v15 = v3;
  v17 = v1[1];
  v4 = (*(v1->i64[0] + 120))();
  v5 = (*(v1->i64[0] + 104))();
  if (v4)
  {
    v6 = vaddq_f32(v6, v1[3]);
    v6.i32[3] = 0;
  }

  v14 = v6;
  v7 = (*(a1->i64[0] + 120))(v5);
  (*(a1->i64[0] + 104))();
  if (v7)
  {
    v8 = vaddq_f32(v8, a1[3]);
  }

  *v9.f32 = vbsl_s8(vcge_f32(*v15.f32, *v17.f32), *v15.f32, *v17.f32);
  v10 = v17.f32[2];
  if (v17.f32[2] <= v15.f32[2])
  {
    v10 = v15.f32[2];
  }

  v11 = v14.f32[2];
  if (v8.f32[2] < v14.f32[2])
  {
    v11 = v8.f32[2];
  }

  *v12.f32 = vsub_f32(vbsl_s8(vcgt_f32(*v14.f32, *v8.f32), *v8.f32, *v14.f32), *v9.f32);
  if (v12.f32[0] < 0.0 || v12.f32[1] < 0.0 || (v11 - v10) < 0.0)
  {
    return 0;
  }

  v12.i64[1] = COERCE_UNSIGNED_INT(v11 - v10);
  v9.i64[1] = LODWORD(v10);
  v16 = v9;
  v18 = v12;
  type metadata accessor for MeshUtils.AABB();
  swift_allocObject();
  return sub_245F9F300(v16, v18);
}

void sub_245F9FF48()
{
  v1 = (*(v0->i64[0] + 144))();
  if (v1)
  {
    v2 = v1;
    if ((*(v0->i64[0] + 120))())
    {
      v3 = vaddq_f32(v0[2], v0[3]);
      v3.i32[3] = 0;
      v4 = sub_24602606C(v3);
    }

    else
    {
      v4 = (*(v0->i64[0] + 112))();
    }

    v5 = v4;
    if (v4 <= 0.0)
    {
      __break(1u);
    }

    else
    {
      v6 = (*(*v2 + 112))();
      sub_246021418(v6 / v5, 0.0, 1.0);
    }
  }
}

float32x4_t *sub_245FA0068(__int128 *a1)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *v1.f32 = OCBoundingBox.extent.getter();
  v5 = v1;
  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  v2.i64[0] = vmulq_f32(vsubq_f32(0, v1), v2).u64[0];
  v2.f32[2] = (0.0 - v1.f32[2]) * 0.5;
  v2.i32[3] = 0;
  v4 = v2;
  type metadata accessor for MeshUtils.AABB();
  swift_allocObject();
  return sub_245F9F300(v4, v5);
}

float32x4_t *sub_245FA00F4(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v6 = v5;
  type metadata accessor for MeshUtils.AABB();
  v8 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  result = sub_245F9F6A4(*(a1 + *(v8 + 44)), *(a1 + *(v8 + 48)), a2, a3, a4, a5);
  if (result)
  {
    (*(*v6 + 152))();
  }

  return result;
}

uint64_t sub_245FA01AC(uint64_t *a1, int *a2, int a3)
{
  v255 = a3;
  v271[2] = *MEMORY[0x277D85DE8];
  v254 = sub_246091C44();
  v266.i64[0] = *(v254 - 8);
  v5 = *(v266.i64[0] + 64);
  v6 = MEMORY[0x28223BE20](v254);
  v247 = (&v220 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v253 = (&v220 - v8);
  v259 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v258 = *(v259 - 1);
  v9 = *(v258 + 64);
  MEMORY[0x28223BE20](v259);
  v260 = &v220 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_246091704();
  v11 = *(v261 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v261);
  v15 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v248 = &v220 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v220 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v246 = &v220 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v220 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v252 = (&v220 - v27);
  v28 = MEMORY[0x28223BE20](v26);
  v256 = &v220 - v29;
  MEMORY[0x28223BE20](v28);
  v265.i64[0] = &v220 - v30;
  v31 = sub_2460918F4();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v220 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v220 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v42);
  v44 = MEMORY[0x28223BE20](&v220 - v43);
  v49 = *a1;
  v50 = *(*a1 + 16);
  if (!v50)
  {
    v89 = sub_245FA32CC();
    (*(v32 + 16))(v38, v89, v31);
    v90 = sub_2460918D4();
    v91 = sub_246091FB4();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v271[0] = v93;
      *v92 = 136380675;
      *(v92 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA40, v271);
      _os_log_impl(&dword_245F8A000, v90, v91, "MeshWriter.%{private}s: Failed to save mesh anchors - received empty mesh anchors!", v92, 0xCu);
      sub_245F8E6F4(v93);
      MEMORY[0x24C1989D0](v93, -1, -1);
      MEMORY[0x24C1989D0](v92, -1, -1);
    }

    (*(v32 + 8))(v38, v31);
    goto LABEL_12;
  }

  v264.i64[0] = &v220 - v45;
  v244 = v50;
  v249 = v49;
  v243 = v44;
  v236 = v48;
  v239 = v47;
  v237 = v15;
  v238 = v46;
  v51 = v11;
  v267 = 0;
  v52 = [objc_opt_self() defaultManager];
  v257 = a2;
  sub_2460916E4();
  v53 = sub_246091BD4();

  v54 = [v52 fileExistsAtPath:v53 isDirectory:&v267];

  if (!v54 || v267 != 1)
  {
    v75 = sub_245FA32CC();
    (*(v32 + 16))(v41, v75, v31);
    v76 = v51;
    v77 = v32;
    v78 = v261;
    (*(v51 + 16))(v20, v257, v261);
    v79 = sub_2460918D4();
    v80 = sub_246091FB4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v250 = v31;
      v82 = v81;
      v83 = swift_slowAlloc();
      v271[0] = v83;
      *v82 = 136380931;
      *(v82 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA40, v271);
      *(v82 + 12) = 2081;
      sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260]);
      v84 = sub_2460923D4();
      v85 = v76;
      v87 = v86;
      (*(v85 + 8))(v20, v78);
      v88 = sub_245F8D3C0(v84, v87, v271);

      *(v82 + 14) = v88;
      _os_log_impl(&dword_245F8A000, v79, v80, "MeshWriter.%{private}s: Failed to save mesh anchors - %{private}s is not a directory!", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v83, -1, -1);
      MEMORY[0x24C1989D0](v82, -1, -1);

      (*(v77 + 8))(v41, v250);
    }

    else
    {

      (*(v76 + 8))(v20, v78);
      (*(v77 + 8))(v41, v31);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  v221 = v25;
  v55 = sub_245FA32CC();
  v56 = *(v32 + 16);
  v57 = v264.i64[0];
  v227 = v55;
  v58 = v31;
  v229 = v32 + 16;
  v228 = v56;
  (v56)(v264.i64[0]);
  v59 = *(v51 + 16);
  v60 = v265.i64[0];
  v61 = v32;
  v62 = v261;
  v231 = v51 + 16;
  v230 = v59;
  v59(v265.i64[0], v257, v261);
  v63 = sub_2460918D4();
  v64 = sub_246091FC4();
  v65 = os_log_type_enabled(v63, v64);
  v250 = v58;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v263.i64[0] = swift_slowAlloc();
    v271[0] = v263.i64[0];
    *v66 = 136380931;
    v225 = 0x800000024609EA40;
    *(v66 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609EA40, v271);
    *(v66 + 12) = 2081;
    sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v67 = sub_2460923D4();
    v69 = v68;
    v70 = *(v51 + 8);
    v234 = v51 + 8;
    v233 = v70;
    v70(v60, v62);
    v71 = sub_245F8D3C0(v67, v69, v271);

    *(v66 + 14) = v71;
    _os_log_impl(&dword_245F8A000, v63, v64, "MeshWriter.%{private}s: Saving mesh anchor at URL: %{private}s", v66, 0x16u);
    v72 = v263.i64[0];
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v72, -1, -1);
    MEMORY[0x24C1989D0](v66, -1, -1);

    v73 = *(v61 + 8);
    v235 = v61 + 8;
    v232 = v73;
    v73(v264.i64[0], v58);
  }

  else
  {

    v96 = *(v51 + 8);
    v72 = v51 + 8;
    v234 = v72;
    v233 = v96;
    v96(v60, v62);
    v97 = *(v61 + 8);
    v235 = v61 + 8;
    v232 = v97;
    v97(v57, v58);
    v225 = 0x800000024609EA40;
  }

  v98 = v249;
  v99 = 0;
  v222 = 0;
  v100 = 0;
  v242 = 0;
  v240 = v249 + ((*(v258 + 80) + 32) & ~*(v258 + 80));
  v226 = (v266.i64[0] + 8);
  *&v74 = 136380931;
  v224 = v74;
  v101 = &off_278E99000;
  v223 = 0xE000000000000000;
  v102 = v260;
  while (1)
  {
    if (v100 >= *(v98 + 16))
    {
      goto LABEL_85;
    }

    sub_245FA2954(v240 + *(v258 + 72) * v100, v102);
    v72 = v259;
    v103 = *(v102 + v259[5]);
    v104 = *(v102 + v259[6]);
    v105 = (v102 + v259[9]);
    v106 = *v105;
    v107 = v105[2];
    v108 = v105[3];
    v264 = v105[1];
    v265 = v106;
    v262 = v108;
    v263 = v107;
    v241 = sub_245FA21E0(v103, v104, v106, v264, v107, v108);
    v251 = v109;
    v245 = v110;
    v111 = *(v102 + *(v72 + 28));
    v271[0] = 0;
    v271[1] = 0xE000000000000000;
    v112 = [v111 count];
    if (v112 < 0xFFFFFFFF80000000)
    {
      goto LABEL_86;
    }

    v64 = v112;
    if (v112 > 0x7FFFFFFF)
    {
      goto LABEL_87;
    }

    if (v112 < 0)
    {
      goto LABEL_88;
    }

    if (v112)
    {
      v113 = 0;
      while ([v111 v101[94]] == 30)
      {
        v114 = [v111 buffer];
        v115 = [v114 contents];
        v116 = v114;
        v117 = [v111 offset];
        v118 = [v111 stride];
        v119 = v118 * v113;
        if ((v118 * v113) >> 64 != (v118 * v113) >> 63)
        {
          goto LABEL_79;
        }

        v120 = __OFADD__(v117, v119);
        v121 = &v117[v119];
        if (v120)
        {
          goto LABEL_80;
        }

        ++v113;
        v266 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v265, *&v121[v115]), v264, *&v121[v115 + 4]), v263, *&v121[v115 + 8]), 0, v262);
        v268 = 0;
        v269 = 0xE000000000000000;
        MEMORY[0x24C196640](2125430, 0xE300000000000000);
        v72 = MEMORY[0x277D84698];
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](10, 0xE100000000000000);
        MEMORY[0x24C196640](v268, v269);

        if (v64 == v113)
        {
          v264.i64[0] = v271[0];
          v263.i64[0] = v271[1];
          v102 = v260;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v264.i64[0] = 0;
    v263.i64[0] = 0xE000000000000000;
LABEL_28:
    v122 = [v111 count];
    if (v245 != v122)
    {
      goto LABEL_89;
    }

    v123 = *(v102 + v259[8]);
    if (v123)
    {
      break;
    }

    v144 = 0;
    v145 = 0xE000000000000000;
LABEL_56:
    ++v100;
    v146 = v251;
    v147 = v263.i64[0];
    if (v255)
    {
      v271[0] = v241;
      v271[1] = v251;

      MEMORY[0x24C196640](v264.i64[0], v147);

      MEMORY[0x24C196640](v144, v145);

      v266.i64[0] = v145;
      v148 = v271[0];
      v149 = v271[1];
      v150 = sub_2460917F4();
      strcpy(v271, "mesh_anchor_");
      BYTE5(v271[1]) = 0;
      HIWORD(v271[1]) = -5120;
      MEMORY[0x24C196640](v150);

      MEMORY[0x24C196640](1784835886, 0xE400000000000000);

      v151 = v256;
      sub_2460916A4();
      v271[0] = v148;
      v271[1] = v149;
      v72 = v253;
      sub_246091C34();
      sub_245FA2AE4();
      v130 = v151;
      v152 = v242;
      sub_246092144();
      v242 = v152;
      if (v152)
      {
LABEL_73:
        (*v226)(v72, v254);
        v182 = v242;
        v271[0] = v242;
        v183 = v242;
        sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
        sub_245FA2B38();
        swift_dynamicCast();

        v184 = v268;
        v185 = v239;
        v186 = v250;
        v228(v239, v227, v250);
        v187 = v248;
        v188 = v261;
        v230(v248, v130, v261);
        v189 = v184;
        v190 = sub_2460918D4();
        v191 = sub_246091FB4();

        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v266.i64[0] = swift_slowAlloc();
          v270 = v266.i64[0];
          *v192 = 136381187;
          *(v192 + 4) = sub_245F8D3C0(0xD000000000000021, v225, &v270);
          *(v192 + 12) = 2081;
          sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260]);
          v194 = sub_2460923D4();
          v195 = v187;
          v197 = v196;
          v198 = v233;
          v233(v195, v188);
          v199 = sub_245F8D3C0(v194, v197, &v270);

          *(v192 + 14) = v199;
          *(v192 + 22) = 2112;
          *(v192 + 24) = v189;
          *v193 = v189;
          v200 = v189;
          _os_log_impl(&dword_245F8A000, v190, v191, "MeshWriter.%{private}s: Failed to save mesh anchor at %{private}s. Error: %@", v192, 0x20u);
          sub_245F8E744(v193, &qword_27EE3AE80, &qword_246096FA0);
          MEMORY[0x24C1989D0](v193, -1, -1);
          v201 = v266.i64[0];
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v201, -1, -1);
          MEMORY[0x24C1989D0](v192, -1, -1);

          v232(v185, v250);
          v198(v256, v261);
        }

        else
        {

          v202 = v233;
          v233(v187, v188);
          v232(v185, v186);
          v202(v130, v188);
        }

        sub_245FA29B8(v260);
        goto LABEL_77;
      }

      v265.i64[0] = v100;
      (*v226)(v72, v254);

      v153 = v243;
      v154 = v250;
      v228(v243, v227, v250);
      v72 = v252;
      v64 = v261;
      v230(v252, v130, v261);
      v155 = sub_2460918D4();
      v156 = sub_246091FC4();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v266.i64[0] = swift_slowAlloc();
        v271[0] = v266.i64[0];
        *v157 = v224;
        *(v157 + 4) = sub_245F8D3C0(0xD000000000000021, v225, v271);
        *(v157 + 12) = 2081;
        sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260]);
        v158 = sub_2460923D4();
        v64 = v159;
        v160 = v72;
        v72 = v233;
        v233(v160, v261);
        v161 = sub_245F8D3C0(v158, v64, v271);

        *(v157 + 14) = v161;
        _os_log_impl(&dword_245F8A000, v155, v156, "MeshWriter.%{private}s: Saved mesh anchor at %{private}s", v157, 0x16u);
        v162 = v266.i64[0];
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v162, -1, -1);
        MEMORY[0x24C1989D0](v157, -1, -1);

        v232(v153, v250);
        (v72)(v256, v261);
      }

      else
      {

        v163 = v233;
        v233(v72, v64);
        v232(v153, v154);
        v163(v130, v64);
      }

      v102 = v260;
      sub_245FA29B8(v260);
      v100 = v265.i64[0];
      v98 = v249;
      v101 = &off_278E99000;
      if (v265.i64[0] == v244)
      {

        result = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v271[0] = v222;
      v271[1] = v223;

      MEMORY[0x24C196640](v241, v146);

      v72 = v147;

      MEMORY[0x24C196640](v264.i64[0], v147);

      MEMORY[0x24C196640](v144, v145);

      v120 = __OFADD__(v99, v245);
      v99 += v245;
      if (v120)
      {
        __break(1u);
      }

      v222 = v271[0];
      v223 = v271[1];
      v102 = v260;
      sub_245FA29B8(v260);
      v64 = v261;
      v98 = v249;
      if (v100 == v244)
      {
        v99 = v221;
        sub_2460916A4();
        v271[0] = v222;
        v271[1] = v223;

        v72 = v247;
        sub_246091C34();
        sub_245FA2AE4();
        v164 = v242;
        sub_246092144();
        if (!v164)
        {
          goto LABEL_91;
        }

        (*v226)(v72, v254);

        v271[0] = v164;
        sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
        sub_245FA2B38();
        swift_dynamicCast();

        v165 = v268;
        v166 = v238;
        v167 = v250;
        v228(v238, v227, v250);
        v168 = v237;
        v230(v237, v99, v64);
        v169 = v165;
        v170 = sub_2460918D4();
        v171 = sub_246091FB4();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v266.i64[0] = swift_slowAlloc();
          v173 = v64;
          v174 = swift_slowAlloc();
          v270 = v174;
          *v172 = 136381187;
          *(v172 + 4) = sub_245F8D3C0(0xD000000000000021, v225, &v270);
          *(v172 + 12) = 2081;
          sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260]);
          v175 = sub_2460923D4();
          v177 = v176;
          v178 = v233;
          v233(v168, v173);
          v179 = sub_245F8D3C0(v175, v177, &v270);

          *(v172 + 14) = v179;
          *(v172 + 22) = 2112;
          *(v172 + 24) = v169;
          v180 = v266.i64[0];
          *v266.i64[0] = v169;
          v181 = v169;
          _os_log_impl(&dword_245F8A000, v170, v171, "MeshWriter.%{private}s: Failed to save mesh at %{private}s. Error: %@", v172, 0x20u);
          sub_245F8E744(v180, &qword_27EE3AE80, &qword_246096FA0);
          MEMORY[0x24C1989D0](v180, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v174, -1, -1);
          MEMORY[0x24C1989D0](v172, -1, -1);

          v232(v238, v250);
          v178(v221, v173);
        }

        else
        {

          v218 = v233;
          v233(v168, v64);
          v232(v166, v167);
          v218(v99, v64);
        }

LABEL_77:

        goto LABEL_12;
      }
    }
  }

  v124 = v123;
  v271[0] = 0;
  v271[1] = 0xE000000000000000;
  v125 = [v124 count];
  if ((v125 & 0x8000000000000000) != 0)
  {
    goto LABEL_90;
  }

  if (!v125)
  {
    v144 = 0;
    v145 = 0xE000000000000000;
LABEL_55:
    [v124 count];

    goto LABEL_56;
  }

  v265.i64[0] = v100;
  v126 = 0;
  v266.i64[0] = v125;
  while (1)
  {
    if ([v124 bytesPerIndex] != 4)
    {
      goto LABEL_81;
    }

    v72 = &off_278E99000;
    v127 = [v124 indexCountPerPrimitive];
    v64 = sub_245FA27E0(0, v127 & ~(v127 >> 63), 0, MEMORY[0x277D84F90]);
    v128 = [v124 indexCountPerPrimitive];
    if ((v128 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

    v129 = v128;
    if (v128)
    {
      v130 = 0;
      while (1)
      {
        v131 = [v124 buffer];
        v132 = [v131 contents];
        v133 = v131;
        v134 = [v124 indexCountPerPrimitive];
        v135 = v126 * v134;
        if ((v126 * v134) >> 64 != (v126 * v134) >> 63)
        {
          break;
        }

        v120 = __OFADD__(v135, v130);
        v136 = v130 + v135;
        if (v120)
        {
          goto LABEL_69;
        }

        if ((v136 - 0x2000000000000000) >> 62 != 3)
        {
          goto LABEL_70;
        }

        v137 = v132[v136];
        v72 = *(v64 + 16);
        v138 = *(v64 + 24);
        if (v72 >= v138 >> 1)
        {
          v64 = sub_245FA27E0((v138 > 1), v72 + 1, 1, v64);
        }

        v130 = (v130 + 1);
        *(v64 + 16) = v72 + 1;
        *(v64 + 4 * v72 + 32) = v137;
        if (v129 == v130)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_44:
    MEMORY[0x24C196640](102, 0xE100000000000000);
    v139 = *(v64 + 16);
    if (v139)
    {
      break;
    }

LABEL_33:
    ++v126;

    MEMORY[0x24C196640](10, 0xE100000000000000);
    v101 = &off_278E99000;
    if (v126 == v266.i64[0])
    {
      v144 = v271[0];
      v145 = v271[1];
      v100 = v265.i64[0];
      goto LABEL_55;
    }
  }

  if (v99 < 0xFFFFFFFF80000000)
  {
    goto LABEL_83;
  }

  if (v99 <= 0x7FFFFFFF)
  {
    v130 = (v64 + 32);
    while (1)
    {
      v140 = *v130++;
      v268 = 32;
      v269 = 0xE100000000000000;
      v141 = v140 + 1;
      if (__OFADD__(v140, 1))
      {
        break;
      }

      v120 = __OFADD__(v141, v99);
      v142 = v141 + v99;
      if (v120)
      {
        goto LABEL_72;
      }

      LODWORD(v270) = v142;
      v143 = sub_2460923D4();
      MEMORY[0x24C196640](v143);

      MEMORY[0x24C196640](v268, v269);

      if (!--v139)
      {
        goto LABEL_33;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
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

  (*v226)(v72, v254);

  v203 = v236;
  v204 = v250;
  v228(v236, v227, v250);
  v205 = v246;
  v230(v246, v99, v64);
  v206 = sub_2460918D4();
  v207 = sub_246091FC4();
  if (os_log_type_enabled(v206, v207))
  {
    v208 = swift_slowAlloc();
    v209 = swift_slowAlloc();
    v271[0] = v209;
    *v208 = v224;
    *(v208 + 4) = sub_245F8D3C0(0xD000000000000021, v225, v271);
    *(v208 + 12) = 2081;
    sub_245FA2A9C(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v210 = sub_2460923D4();
    v211 = v64;
    v213 = v212;
    v214 = v205;
    v215 = v99;
    v216 = v233;
    v233(v214, v211);
    v217 = sub_245F8D3C0(v210, v213, v271);

    *(v208 + 14) = v217;
    _os_log_impl(&dword_245F8A000, v206, v207, "MeshWriter.%{private}s: Saved mesh anchor at %{private}s", v208, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v209, -1, -1);
    MEMORY[0x24C1989D0](v208, -1, -1);

    v232(v203, v250);
    v216(v215, v261);
  }

  else
  {

    v219 = v233;
    v233(v205, v64);
    v232(v203, v204);
    v219(v99, v64);
  }

  result = 1;
LABEL_13:
  v95 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245FA21E0(void *a1, void *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v8 = &off_278E99000;
  result = [a1 count];
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_18:
      [a1 v8[72]];
      return 0;
    }

    v11 = 0;
    while (v10 != v11)
    {
      result = [a1 format];
      if (result != 30)
      {
        goto LABEL_20;
      }

      v12 = [a1 buffer];
      v13 = [v12 contents];
      v14 = v12;
      v15 = [a1 offset];
      result = [a1 stride];
      v16 = result * v11;
      if ((result * v11) >> 64 != (result * v11) >> 63)
      {
        goto LABEL_21;
      }

      v17 = __OFADD__(v15, v16);
      v18 = &v15[v16];
      if (v17)
      {
        goto LABEL_22;
      }

      v36 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a3, *&v18[v13]), a4, *&v18[v13 + 4]), a5, *&v18[v13 + 8]), a6);
      if (a2)
      {
        v19 = a2;
        result = [v19 format];
        if (result != 30)
        {
          goto LABEL_23;
        }

        v20 = [v19 buffer];
        v21 = [v20 contents];
        v22 = v20;
        v23 = [v19 offset];
        result = [v19 stride];
        v24 = result * v11;
        if ((result * v11) >> 64 != (result * v11) >> 63)
        {
          goto LABEL_24;
        }

        v17 = __OFADD__(v23, v24);
        v25 = &v23[v24];
        if (v17)
        {
          goto LABEL_25;
        }

        v26 = &v25[v21];
        v28 = *v26;
        v27 = *(v26 + 1);
        v29 = *(v26 + 2);
        sub_246092284();
        MEMORY[0x24C196640](8310, 0xE200000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](10, 0xE100000000000000);
        MEMORY[0x24C196640](0, 0xE000000000000000);
      }

      else
      {
        sub_246092284();
        MEMORY[0x24C196640](8310, 0xE200000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        v35 = *(v30 + 16);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](32, 0xE100000000000000);
        sub_246091F14();
        MEMORY[0x24C196640](10, 0xE100000000000000);
        MEMORY[0x24C196640](0, 0xE000000000000000);
      }

      ++v11;

      if (v10 == v11)
      {
        v8 = &off_278E99000;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_245FA26AC()
{
  v0 = swift_allocObject();
  result = 0.00781250185;
  *(v0 + 16) = xmmword_246096F80;
  return result;
}

char *sub_245FA26DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&unk_27EE3B240, &unk_246097000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_245FA27E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A088, "pQ");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_245FA28E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FA2954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FA29B8(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_245FA2A38()
{
  result = qword_27EE3A340;
  if (!qword_27EE3A340)
  {
    sub_245F9135C(&qword_27EE3A2F0, &unk_246096850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A340);
  }

  return result;
}

uint64_t sub_245FA2A9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_245FA2AE4()
{
  result = qword_27EE3AD30;
  if (!qword_27EE3AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AD30);
  }

  return result;
}

unint64_t sub_245FA2B38()
{
  result = qword_27EE3AD40;
  if (!qword_27EE3AD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3AD40);
  }

  return result;
}

id sub_245FA2BE8(uint64_t a1, uint64_t a2)
{
  sub_245FA30EC(0, &qword_27EE3A090, 0x277CE53B0);
  v3 = [swift_getObjCClassFromMetadata() supportedVideoFormats];
  sub_245FA30EC(0, &qword_27EE3A098, 0x277CE5398);
  v4 = sub_246091DD4();

  if (v4 >> 62)
  {
LABEL_35:
    v5 = sub_246092354();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v24 = 0;
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v30 = v4 & 0xFFFFFFFFFFFFFF8;
      v28 = 0;
      v29 = v4 + 32;
      v26 = 1;
      v27 = v4;
      while (1)
      {
        while (1)
        {
          if (v7)
          {
            v8 = MEMORY[0x24C196C20](v6, v4);
          }

          else
          {
            if (v6 >= *(v30 + 16))
            {
              goto LABEL_34;
            }

            v8 = *(v29 + 8 * v6);
          }

          v9 = v8;
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v11 = [v8 deviceFormat];
          v12 = sub_246092094();

          if ([v9 isRecommendedForHighResolutionFrameCapturing])
          {
            v13 = *(v12 + 16);
            if (v13)
            {
              break;
            }
          }

          if (v6 == v5)
          {
            goto LABEL_37;
          }
        }

        v14 = 0;
        v15 = (v12 + 36);
        v16 = 1;
        do
        {
          v17 = *v15;
          if (v17 <= a1)
          {
            v18 = v17 <= SHIDWORD(v14);
            v19 = *(v15 - 1) | (v17 << 32);
            if (v18)
            {
              v20 = v14;
            }

            else
            {
              v20 = v19;
            }

            v21 = (v16 & 1) == 0;
            v16 = 0;
            if (v21)
            {
              v14 = v20;
            }

            else
            {
              v14 = v19;
            }
          }

          v15 += 2;
          --v13;
        }

        while (v13);
        if (v16)
        {
        }

        else
        {
          if ((*(a2 + 8) & 1) != 0 || *(a2 + 4) < SHIDWORD(v14))
          {

            *a2 = v14;
            *(a2 + 8) = 0;
          }

          else
          {
            result = [v9 framesPerSecond];
            if (v26)
            {
              __break(1u);
              return result;
            }

            v23 = result;

            if (v23 >= v24)
            {

              v26 = 0;
              goto LABEL_27;
            }

            *a2 = v14;
            *(a2 + 8) = 0;
          }

          v24 = [v9 framesPerSecond];
          v26 = 0;
          v28 = v9;
        }

LABEL_27:
        v4 = v27;
        if (v6 == v5)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v28 = 0;
LABEL_37:

  return v28;
}

id sub_245FA2EBC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_245FA2F08(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_245FA2F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_245FA2F7C()
{
  sub_245FA30EC(0, &qword_27EE3A090, 0x277CE53B0);
  v0 = [swift_getObjCClassFromMetadata() supportedVideoFormats];
  sub_245FA30EC(0, &qword_27EE3A098, 0x277CE5398);
  v1 = sub_246091DD4();

  if (v1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_246092354())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C196C20](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isRecommendedForHighResolutionFrameCapturing] && objc_msgSend(v5, sel_framesPerSecond) == 30)
      {

        return v5;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_245FA30EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_245FA3198(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_245FA331C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_2460918F4();
  sub_245FA341C(v3, a2);
  sub_245FA3198(v3, a2);
  return sub_2460918E4();
}

uint64_t sub_245FA33B8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_2460918F4();

  return sub_245FA3198(v3, a2);
}

uint64_t *sub_245FA341C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_245FA3480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_245FA34CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_245FA3544(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ObjectCaptureImageFolderReader.__allocating_init(url:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ObjectCaptureImageFolderReader.init(url:)(a1);
  return v5;
}

uint64_t ObjectCaptureImageFolderReader.init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = &v41 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors) = 0;
  *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_invalidSampleIds) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle) = 0;
  v13 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_folderUrl;
  v14 = sub_246091704();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = *(v47 + 16);
  v49 = a1;
  v15(v2 + v13, a1);
  v16 = sub_245FA3174();
  v17 = v5[2];
  v44 = v16;
  v45 = v17;
  (v17)(v12);

  v18 = sub_2460918D4();
  v19 = sub_246091FC4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    v50 = v22;
    *v21 = 141558275;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2081;
    v23 = sub_2460916F4();
    v25 = sub_245F8D3C0(v23, v24, &v50);

    *(v21 + 14) = v25;
    _os_log_impl(&dword_245F8A000, v18, v19, "Object Capture Image folder Reader: Reader input URL: %{private,mask.hash}s", v21, 0x16u);
    sub_245F8E6F4(v22);
    MEMORY[0x24C1989D0](v22, -1, -1);
    v26 = v21;
    v4 = v42;
    MEMORY[0x24C1989D0](v26, -1, -1);
  }

  v27 = v5[1];
  v27(v12, v4);
  v28 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  swift_beginAccess();
  v29 = OCNonModularSPI_CMPhoto_HeicReadCreate();
  swift_endAccess();
  v30 = v46;
  if (!v29)
  {
    v36 = *(v2 + v28);
    if (!OCNonModularSPI_CMPhoto_HeicReadStart())
    {
      (*(v47 + 8))(v49, v48);
      return v2;
    }

    v37 = *(v2 + v28);
    OCNonModularSPI_CMPhoto_HeicReadDestroy();
    *(v2 + v28) = 0;
    v30 = v43;
    v45(v43, v44, v4);
    v31 = sub_2460918D4();
    v32 = sub_246091FB4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = v4;
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Image Folder Reader: Failed to start the image folder reader.";
      goto LABEL_9;
    }

LABEL_10:

    (*(v47 + 8))(v49, v48);
    v38 = v30;
    v39 = v4;
    goto LABEL_11;
  }

  v45(v46, v44, v4);
  v31 = sub_2460918D4();
  v32 = sub_246091FB4();
  if (!os_log_type_enabled(v31, v32))
  {
    goto LABEL_10;
  }

  v33 = v4;
  v34 = swift_slowAlloc();
  *v34 = 0;
  v35 = "Image Folder Reader: Failed to initialize the image folder reader.";
LABEL_9:
  _os_log_impl(&dword_245F8A000, v31, v32, v35, v34, 2u);
  MEMORY[0x24C1989D0](v34, -1, -1);

  (*(v47 + 8))(v49, v48);
  v38 = v30;
  v39 = v33;
LABEL_11:
  v27(v38, v39);
  return v2;
}

uint64_t ObjectCaptureImageFolderReader.deinit()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  swift_beginAccess();
  v8 = *(v1 + v7);
  Stop = OCNonModularSPI_CMPhoto_HeicReadStop();
  v10 = *(v1 + v7);
  Destroy = OCNonModularSPI_CMPhoto_HeicReadDestroy();
  v12 = sub_245FA3174();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67240448;
    *(v15 + 4) = Stop;
    *(v15 + 8) = 1026;
    *(v15 + 10) = Destroy;
    _os_log_impl(&dword_245F8A000, v13, v14, "Image Folder Reader: HEIC bundle reader stopped with state %{public}d and destroyed with state %{public}d", v15, 0xEu);
    MEMORY[0x24C1989D0](v15, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v16 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_folderUrl;
  v17 = sub_246091704();
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v18 = *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors);

  v19 = *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_invalidSampleIds);

  return v1;
}

uint64_t ObjectCaptureImageFolderReader.__deallocating_deinit()
{
  ObjectCaptureImageFolderReader.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *sub_245FA3CD0()
{
  v2 = 0xD000000000000034;
  v3 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  swift_beginAccess();
  if (!*(v0 + v3))
  {
    v5 = "com.apple.CoreOC";
    v2 = 0xD000000000000051;
    goto LABEL_6;
  }

  sub_245FA90D4();
  if (!v1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors);
    if (v4)
    {
      sub_245F8E624(&qword_27EE3A0A8, &qword_246097090);
      v1 = swift_allocObject();
      v1[2] = v4;
      v1[3] = sub_245FAC760;
      v1[4] = v0;
      v1[5] = sub_245FA6808;
      v1[6] = 0;
      v1[7] = sub_245FA68D4;
      v1[8] = 0;

      return v1;
    }

    v5 = "HEIC read handle.";
LABEL_6:
    v6 = v5 | 0x8000000000000000;
    sub_245FAC70C();
    v7 = swift_allocError();
    *v8 = v2;
    *(v8 + 8) = v6;
    *(v8 + 16) = 1;
    v1 = v7;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_245FA3E24@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a2;
  v76 = a3;
  v4 = type metadata accessor for PhotogrammetrySample();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v74 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69[0] = v69 - v8;
  v84 = sub_2460918F4();
  v9 = *(v84 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v84);
  v78 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v69 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v69 - v16;
  v18 = sub_246091704();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v77 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v69 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v69 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = v69 - v29;
  v83 = v19;
  v33 = *(v19 + 16);
  v32 = v19 + 16;
  v31 = v33;
  v33(v69 - v29, a1, v18);
  v80 = *&a1[*(type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor(0) + 20)];
  v69[1] = type metadata accessor for PhotogrammetryImageHelper();
  LOBYTE(a1) = sub_245F9AFEC();
  v34 = sub_245FA3174();
  v81 = v30;
  v82 = v9;
  v35 = *(v9 + 16);
  v72 = v9 + 16;
  v73 = v33;
  v71 = v35;
  if ((a1 & 1) == 0)
  {
    v35(v15, v34, v84);
    v31(v25, v30, v18);
    v48 = sub_2460918D4();
    v49 = v18;
    v50 = sub_246091FC4();
    if (os_log_type_enabled(v48, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v85[0] = v52;
      *v51 = 134349571;
      v53 = v80;
      *(v51 + 4) = v80;
      *(v51 + 12) = 2160;
      *(v51 + 14) = 1752392040;
      *(v51 + 22) = 2081;
      v70 = v32;
      v54 = v49;
      v55 = sub_2460916F4();
      v57 = v56;
      v75 = *(v83 + 8);
      v75(v25, v54);
      v58 = sub_245F8D3C0(v55, v57, v85);

      *(v51 + 24) = v58;
      _os_log_impl(&dword_245F8A000, v48, v50, "Image Folder Reader: Reading sample from non-HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v51, 0x20u);
      sub_245F8E6F4(v52);
      MEMORY[0x24C1989D0](v52, -1, -1);
      v59 = v51;
      v30 = v81;
      MEMORY[0x24C1989D0](v59, -1, -1);

      (*(v82 + 8))(v15, v84);
      v60 = v54;
    }

    else
    {

      v75 = *(v83 + 8);
      v75(v25, v49);
      (*(v82 + 8))(v15, v84);
      v60 = v49;
      v53 = v80;
    }

    v67 = v74;
    sub_245F994C8(v53, v30, v74);
    v75(v30, v60);
    v68 = v67;
    goto LABEL_11;
  }

  v35(v17, v34, v84);
  v70 = v32;
  v31(v28, v30, v18);
  v36 = sub_2460918D4();
  v37 = sub_246091FC4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v74 = v18;
    v40 = v39;
    v85[0] = v39;
    *v38 = 134349571;
    *(v38 + 4) = v80;
    *(v38 + 12) = 2160;
    *(v38 + 14) = 1752392040;
    *(v38 + 22) = 2081;
    v41 = sub_2460916F4();
    v43 = v42;
    v75 = *(v83 + 8);
    v75(v28, v74);
    v44 = sub_245F8D3C0(v41, v43, v85);
    v45 = v82;

    *(v38 + 24) = v44;
    _os_log_impl(&dword_245F8A000, v36, v37, "Image Folder Reader: Reading sample from HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v38, 0x20u);
    sub_245F8E6F4(v40);
    v46 = v40;
    v18 = v74;
    MEMORY[0x24C1989D0](v46, -1, -1);
    MEMORY[0x24C1989D0](v38, -1, -1);

    v47 = v45;
  }

  else
  {

    v75 = *(v83 + 8);
    v75(v28, v18);
    v47 = v82;
  }

  (*(v47 + 8))(v17, v84);
  v61 = v79;
  v62 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  result = swift_beginAccess();
  v64 = *(v61 + v62);
  v65 = v81;
  if (v64)
  {
    type metadata accessor for ObjectCaptureImageFolderReader(0);
    v66 = v69[0];
    sub_245FA47E0(v80, v65, v64, v69[0]);
    v75(v65, v18);
    v68 = v66;
LABEL_11:
    sub_245FAED94(v68, v76, type metadata accessor for PhotogrammetrySample);
    sub_245F8E624(&qword_27EE3A0F0, &unk_246097230);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
  return result;
}

void sub_245FA47E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v307 = a3;
  v301 = a1;
  v351 = *MEMORY[0x277D85DE8];
  v6 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v287.i64[0] = &v265 - v8;
  *&v297 = sub_2460917D4();
  *&v296 = *(v297 - 8);
  v9 = *(v296 + 64);
  MEMORY[0x28223BE20](v297);
  *&v289 = &v265 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v288 = &v265 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v299 = &v265 - v15;
  *&v300 = type metadata accessor for PhotogrammetrySample();
  v16 = *(*(v300 - 8) + 64);
  MEMORY[0x28223BE20](v300);
  v311 = &v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_246091704();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x28223BE20](v18);
  v293 = &v265 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v265 - v23;
  v25 = sub_2460918F4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v298 = &v265 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v285 = &v265 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v282 = &v265 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v286 = &v265 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v283 = &v265 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v281 = &v265 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v284 = &v265 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v306 = &v265 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = &v265 - v44;
  v46 = sub_245FA3174();
  v309 = v26;
  v310 = v25;
  v47 = *(v26 + 16);
  v303 = v46;
  v304 = v26 + 16;
  v302 = v47;
  (v47)(v45);
  v48 = v19[2];
  v49 = v24;
  v308 = a2;
  v290 = v48;
  v291 = v19 + 2;
  v48(v24, a2, v18);
  v50 = sub_2460918D4();
  v51 = sub_246091FC4();
  v52 = os_log_type_enabled(v50, v51);
  v294 = v18;
  v295 = a4;
  v292 = v19;
  if (v52)
  {
    v53 = v18;
    v54 = swift_slowAlloc();
    v305 = swift_slowAlloc();
    *&v318 = v305;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v55 = v49;
    v280 = sub_2460916F4();
    v57 = v56;
    v58 = v53;
    v59 = v19[1];
    v59(v55, v58);
    v60 = sub_245F8D3C0(v280, v57, &v318);
    v61 = v310;

    *(v54 + 14) = v60;
    _os_log_impl(&dword_245F8A000, v50, v51, "Image Folder Reader: Trying to read sample %{private,mask.hash}s.", v54, 0x16u);
    v62 = v305;
    sub_245F8E6F4(v305);
    MEMORY[0x24C1989D0](v62, -1, -1);
    MEMORY[0x24C1989D0](v54, -1, -1);

    v63 = *(v309 + 8);
    v64 = v45;
    v65 = v61;
  }

  else
  {

    v59 = v19[1];
    v59(v49, v18);
    v65 = v310;
    v63 = *(v309 + 8);
    v64 = v45;
  }

  v305 = v63;
  (v63)(v64, v65);
  v346 = 0u;
  v345 = 0u;
  v344 = 0u;
  v343 = 0u;
  v342 = 0u;
  v341 = 0u;
  v340 = 0u;
  v339 = 0u;
  v338 = 0u;
  v337 = 0u;
  v336 = 0u;
  v335 = 0u;
  v334 = 0u;
  v333 = 0u;
  v332 = 0u;
  v331 = 0u;
  v330 = 0u;
  v329 = 0u;
  v328 = 0u;
  v327 = 0u;
  v326 = 0u;
  v325 = 0u;
  v324 = 0u;
  v323 = 0u;
  v322 = 0u;
  v321 = 0u;
  v320 = 0u;
  v319 = 0u;
  v318 = 0u;
  v66 = sub_246091674();
  v67 = OCNonModularSPI_CMPhoto_read();

  if (v67)
  {
    v317[0].boundingBox.columns[0].i64[0] = 0;
    v317[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD00000000000003FLL, 0x800000024609EE20);
    v68 = sub_2460916F4();
    MEMORY[0x24C196640](v68);

    MEMORY[0x24C196640](46, 0xE100000000000000);
    v69 = v317[0].boundingBox.columns[0];
    sub_245FAC70C();
    swift_allocError();
    *v70 = v69;
    v70[1].i8[0] = 1;
    swift_willThrow();
LABEL_112:
    v264 = *MEMORY[0x277D85DE8];
    return;
  }

  v271 = v59;
  v71 = v318;
  if (v318)
  {
    v277 = *(&v320 + 1);
    v278 = v320;
    v279 = *(&v319 + 1);
    v307 = *(&v318 + 1);
    v275 = v346;
    v72 = v321;
    v73 = *(&v343 + 1);
    if (*(&v343 + 1))
    {
      v272 = sub_246091C04();
      v273 = v74;

      v75 = *(&v344 + 1);
      if (*(&v344 + 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v272 = 0;
      v273 = 0;
      v75 = *(&v344 + 1);
      if (*(&v344 + 1))
      {
LABEL_9:
        v76 = sub_246091C04();
        v78 = v77;

        v79 = v330;
        if (v330)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    v76 = 0;
    v78 = 0;
    v79 = v330;
    if (v330)
    {
LABEL_10:
      v80 = v71;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v317[0].boundingBox.columns[0].i64[0] = 0;
        sub_246091B54();

        v81 = v317[0].boundingBox.columns[0].i64[0];
        if (v317[0].boundingBox.columns[0].i64[0])
        {
          v82 = v343;
          if (v343)
          {
LABEL_13:
            v276 = sub_246091744();
            v280 = v83;

LABEL_20:
            v84 = *(&v345 + 1);
            v85 = MEMORY[0x277D84F90];
            v274 = *(&v345 + 1);
            if (*(&v345 + 1))
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v317[0].boundingBox.columns[0].i64[0] = 0;
                v86 = v81;
                v87 = v84;
                sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
                sub_246091DC4();

                v81 = v86;
                v85 = MEMORY[0x277D84F90];
                if (v317[0].boundingBox.columns[0].i64[0])
                {
                  v85 = v317[0].boundingBox.columns[0].i64[0];
                }
              }
            }

            if (!sub_245FC6568(v80))
            {

              v317[0].boundingBox.columns[0].i64[0] = 0;
              v317[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
              sub_246092284();
              MEMORY[0x24C196640](0xD000000000000026, 0x800000024609EE60);
              v316[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v80);
              v124 = sub_2460923D4();
              MEMORY[0x24C196640](v124);

              MEMORY[0x24C196640](0xD000000000000012, 0x800000024609EE90);
              v125 = v317[0].boundingBox.columns[0];
              sub_245FAC70C();
              swift_allocError();
              *v126 = v125;
              v126[1].i8[0] = 1;
              swift_willThrow();

              sub_245FAEC68(v276, v280);
              goto LABEL_112;
            }

            v268 = v72;
            v269 = v81;
            v88 = v319;
            v270 = v80;
            PhotogrammetrySample.init(id:image:orientation:)(v301, v270, v88, v311);
            v302(v306, v303, v310);
            v89 = sub_2460918D4();
            v90 = sub_246091FA4();
            if (os_log_type_enabled(v89, v90))
            {
              v91 = v85;
              v92 = v78;
              v93 = swift_slowAlloc();
              *v93 = 134349056;
              *(v93 + 4) = v301;
              _os_log_impl(&dword_245F8A000, v89, v90, "Image Folder Reader: Initiate sample (id = %{public}ld)", v93, 0xCu);
              v94 = v93;
              v78 = v92;
              v85 = v91;
              MEMORY[0x24C1989D0](v94, -1, -1);
            }

            v309 += 8;
            (v305)(v306, v310);
            v96 = v278;
            v95 = v279;
            if (v279)
            {
              v97 = v279;
              if (!sub_245FC664C(v97))
              {

                v317[0].boundingBox.columns[0].i64[0] = 0;
                v317[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
                sub_246092284();
                MEMORY[0x24C196640](0xD000000000000032, 0x800000024609EF30);
                v316[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v97);
                v127 = sub_2460923D4();
                MEMORY[0x24C196640](v127);

                MEMORY[0x24C196640](46, 0xE100000000000000);
                v128 = v317[0].boundingBox.columns[0];
                sub_245FAC70C();
                v129 = v96;
                swift_allocError();
                *v130 = v128;
                v130[1].i8[0] = 1;
                swift_willThrow();

                sub_245FAEC68(v276, v280);
                v131 = v277;
                goto LABEL_46;
              }

              v98 = v311;

              *(v98 + 32) = v95;
            }

            if (v96)
            {
              v99 = v96;
              if (!sub_245FC6820(v99))
              {

                v317[0].boundingBox.columns[0].i64[0] = 0;
                v317[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
                sub_246092284();
                MEMORY[0x24C196640](0xD00000000000003DLL, 0x800000024609EEF0);
                v316[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v99);
                v132 = sub_2460923D4();
                v133 = v307;
                MEMORY[0x24C196640](v132);

                MEMORY[0x24C196640](46, 0xE100000000000000);
                v134 = v317[0].boundingBox.columns[0];
                sub_245FAC70C();
                swift_allocError();
                *v135 = v134;
                v135[1].i8[0] = 1;
                swift_willThrow();

                sub_245FAEC68(v276, v280);
                v136 = v311;
LABEL_111:
                sub_245F97D30(v136);
                goto LABEL_112;
              }

              v100 = v311;

              *(v100 + 40) = v96;
            }

            v101 = v277;
            if (!v277)
            {
              goto LABEL_36;
            }

            v102 = v277;
            if (sub_245FC66D0(v102))
            {
              v103 = v311;

              *(v103 + 80) = v101;
LABEL_36:
              v267 = v76;
              if (v307)
              {
                objc_opt_self();
                v104 = swift_dynamicCastObjCClass();
                v105 = v288;
                if (v104)
                {
                  v317[0].boundingBox.columns[0].i64[0] = 0;
                  v106 = v307;
                  sub_246091B54();

                  v107 = v317[0].boundingBox.columns[0].i64[0];
                  if (v317[0].boundingBox.columns[0].i64[0])
                  {
                    v108 = v85;
                    v266 = v78;
                    v109 = v311;
                    v110 = *(v311 + 24);

                    *(v109 + 24) = v107;
                    type metadata accessor for PhotogrammetryMetadataHelper();
                    v111 = sub_245F8BD84(v107);
                    v112 = *(*v111 + 176);

                    v113 = v112();
                    v115 = v114;
                    v117 = v116;
                    v119 = v118;
                    v306 = v111;

                    *(v109 + 48) = v113;
                    *(v109 + 56) = v115;
                    *(v109 + 64) = v117;
                    *(v109 + 72) = v119 & 1;
                    if (v119)
                    {
                      v120 = v281;
                      v302(v281, v303, v310);
                      v121 = sub_2460918D4();
                      v122 = sub_246091FB4();
                      if (os_log_type_enabled(v121, v122))
                      {
                        v123 = swift_slowAlloc();
                        *v123 = 134349056;
                        *(v123 + 4) = v301;
                        _os_log_impl(&dword_245F8A000, v121, v122, "Image Folder Reader: Failed to parse gravity field of sample (id = %{public}ld)", v123, 0xCu);
                        v284 = v120;
LABEL_51:
                        v85 = v108;
                        v142 = v283;
                        MEMORY[0x24C1989D0](v123, -1, -1);
                        v78 = v266;
                        v140 = v284;
LABEL_54:

                        v143 = v140;
                        v144 = v310;
                        v145 = (v305)(v143, v310);
                        v146 = (*(*v306 + 192))(v145);
                        v147 = v311;
                        *(v311 + 720) = v146;
                        *(v147 + 728) = v148 & 1;
                        v302(v142, v303, v144);
                        v149 = sub_2460918D4();
                        v150 = sub_246091FA4();
                        if (os_log_type_enabled(v149, v150))
                        {
                          v151 = swift_slowAlloc();
                          *v151 = 134349056;
                          *(v151 + 4) = v301;
                          _os_log_impl(&dword_245F8A000, v149, v150, "Image Folder Reader: Parsed metadata and timestamp fields of sample (id = %{public}ld)", v151, 0xCu);
                          v152 = v151;
                          v78 = v266;
                          MEMORY[0x24C1989D0](v152, -1, -1);
                        }

                        (v305)(v142, v310);
                        goto LABEL_57;
                      }

                      v140 = v120;
                    }

                    else
                    {
                      v140 = v284;
                      v302(v284, v303, v310);
                      v121 = sub_2460918D4();
                      v141 = sub_246091FC4();
                      if (os_log_type_enabled(v121, v141))
                      {
                        v123 = swift_slowAlloc();
                        *v123 = 134349056;
                        *(v123 + 4) = v301;
                        _os_log_impl(&dword_245F8A000, v121, v141, "Image Folder Reader: Parsed gravity field of sample (id = %{public}ld)", v123, 0xCu);
                        goto LABEL_51;
                      }
                    }

                    v78 = v266;
                    v85 = v108;
                    v142 = v283;
                    goto LABEL_54;
                  }
                }

                v306 = 0;
              }

              else
              {
                v306 = 0;
                v105 = v288;
              }

LABEL_57:
              type metadata accessor for PhotogrammetryImageHelper();
              v153 = v299;
              sub_245F9A538(v308, v299);
              sub_245F8E7A4(v153, v105, &qword_27EE39F80, &unk_246096C10);
              v154 = v296;
              v155 = v297;
              if ((*(v296 + 48))(v105, 1, v297) == 1)
              {
                sub_245F8E744(v105, &qword_27EE39F80, &unk_246096C10);
              }

              else
              {
                v156 = v289;
                (*(v154 + 32))(v289, v105, v155);
                v157 = v154;
                v158 = *(v300 + 76);
                v159 = v311;
                sub_245F8E744(v311 + v158, &qword_27EE39F80, &unk_246096C10);
                (*(v157 + 16))(v159 + v158, v156, v155);
                (*(v157 + 56))(v159 + v158, 0, 1, v155);
                v160 = v286;
                v302(v286, v303, v310);
                v161 = sub_2460918D4();
                v162 = sub_246091FC4();
                if (os_log_type_enabled(v161, v162))
                {
                  v163 = v85;
                  v164 = v78;
                  v165 = swift_slowAlloc();
                  *v165 = 134349056;
                  *(v165 + 4) = v301;
                  _os_log_impl(&dword_245F8A000, v161, v162, "Image Folder Reader: Parsed EXIF capture timestamp field of sample (id = %{public}ld)", v165, 0xCu);
                  v166 = v165;
                  v78 = v164;
                  v85 = v163;
                  MEMORY[0x24C1989D0](v166, -1, -1);
                }

                (v305)(v160, v310);
                (*(v296 + 8))(v289, v297);
              }

              LODWORD(v167) = sub_245FFF464(v326);
              if (v167 == 6)
              {
                v167 = 0;
              }

              else
              {
                v167 = v167;
              }

              sub_245FFF494(v167, v317);
              LODWORD(v288) = v317[0].boundingBox.columns[0].u8[0];
              v168 = v300;
              if (v280 >> 60 != 15)
              {
                v169 = objc_allocWithZone(MEMORY[0x277CE5320]);
                v170 = v276;
                v171 = v280;
                sub_245FAED40(v276, v280);
                v172 = sub_246091734();
                v173 = [v169 initWithPointData_];

                v174 = v170;
                v168 = v300;
                sub_245FAEC68(v174, v171);
                v175 = v311;

                *(v175 + 712) = v173;
              }

              ObjectCaptureSession.Frame.Feedback.init(rawValue:)(SDWORD1(v345));
              v176 = v311;
              v177 = v311 + v168[23];
              *v177 = v317[0].boundingBox.columns[0].i64[0];
              *(v177 + 8) = 0;

              *(v176 + 88) = v268;
              v178 = (v176 + v168[22]);
              v179 = v178[1];
              v181 = v272;
              v180 = v273;
              *v178 = v272;
              v178[1] = v180;

              v182 = v310;
              if (v180)
              {
                v183 = sub_246091188();
                if (*v183 == v181 && v180 == *(v183 + 1))
                {
                }

                else
                {
                  v184 = v183;
                  if (sub_2460923E4())
                  {

                    v168 = v300;
                  }

                  else
                  {
                    *&v297 = v85;
                    v266 = v78;
                    v185 = v282;
                    v302(v282, v303, v182);

                    v186 = sub_2460918D4();
                    v187 = sub_246091FB4();

                    if (os_log_type_enabled(v186, v187))
                    {
                      v188 = swift_slowAlloc();
                      v189 = swift_slowAlloc();
                      v317[0].boundingBox.columns[0].i64[0] = v189;
                      *v188 = 136446466;
                      v181 = v272;
                      v190 = sub_245F8D3C0(v272, v180, v317);

                      *(v188 + 4) = v190;
                      *(v188 + 12) = 2082;
                      v191 = *v184;
                      v192 = v184[1];

                      v193 = sub_245F8D3C0(v191, v192, v317);

                      *(v188 + 14) = v193;
                      _os_log_impl(&dword_245F8A000, v186, v187, "Image Folder Reader: The version of the object capture bundle (version = %{public}s) and the bundle reader (version = %{public}s) are different.", v188, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x24C1989D0](v189, -1, -1);
                      MEMORY[0x24C1989D0](v188, -1, -1);

                      (v305)(v282, v310);
                      v168 = v300;
                      v78 = v266;
                      v85 = v297;
                    }

                    else
                    {

                      (v305)(v185, v182);
                      v168 = v300;
                      v78 = v266;
                      v85 = v297;
                      v181 = v272;
                    }
                  }
                }
              }

              *&v194 = sub_245FABAE4(v345, v181, v180, v339, v340, v341, v342);
              v289 = v194;
              v296 = v195;
              v297 = v196;
              v300 = v197;
              v198 = v345;
              v199 = sub_246021E38(v339, v340, v341, v342);
              if (v198 == 1)
              {
                if (v199)
                {
                  PhotogrammetrySample.Scene.init(boundingBox:)(v317, v199);
                  v206 = v317[0].boundingBox.columns[1];
                  v207 = v317[0].boundingBox.columns[2];
                  v208 = v317[0].boundingBox.columns[3];
                  v316[0].transform.columns[0].i8[0] = 0;
                  v209 = v311;
                  *(v311 + 624) = v317[0].boundingBox.columns[0];
                  *(v209 + 640) = v206;
                  *(v209 + 656) = v207;
                  *(v209 + 672) = v208;
                  *(v209 + 688) = 0;
                }
              }

              else if (v199)
              {
                PhotogrammetrySample.Object.init(transform:boundingBox:)(v316, v199, v200);
                v317[1] = v316[0].boundingBox;
                v317[0] = v316[0].transform;
                sub_245F97D8C(v317);
                v201 = v317[1].boundingBox.columns[3];
                v202 = v311;
                *(v311 + 576) = v317[1].boundingBox.columns[2];
                *(v202 + 592) = v201;
                *(v202 + 608) = v317[2].boundingBox.columns[0].i8[0];
                v203 = v317[0].boundingBox.columns[3];
                *(v202 + 512) = v317[0].boundingBox.columns[2];
                *(v202 + 528) = v203;
                v204 = v317[1].boundingBox.columns[1];
                *(v202 + 544) = v317[1].boundingBox.columns[0];
                *(v202 + 560) = v204;
                v205 = v317[0].boundingBox.columns[1];
                *(v202 + 480) = v317[0].boundingBox.columns[0];
                *(v202 + 496) = v205;
              }

              v210 = v311 + v168[21];
              *v210 = v344;
              *(v210 + 8) = 0;
              if (v78)
              {
                v211 = v287.i64[0];
                sub_2460917E4();

                sub_245FAECD0(v211, v311 + v168[20]);
              }

              v212 = v311;
              *(v311 + 696) = v345;
              *(v212 + 704) = 0;
              v300 = v331;
              v296 = v333;
              v297 = v332;
              v289 = v334;
              v213 = v168[24];
              v214 = *(v212 + v213);

              *(v212 + v213) = MEMORY[0x277D84F90];
              v215 = v85;
              v216 = *(v85 + 16);
              if (v216)
              {
                type metadata accessor for TemporalDepthPointCloud();
                v217 = (v215 + 32);
                do
                {
                  v218 = *v217;

                  sub_245FC7524(v219);
                  if (v220)
                  {

                    v222 = v311;
                    MEMORY[0x24C196720](v221);
                    if (*((*(v222 + v213) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v222 + v213) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      v223 = *((*(v222 + v213) & 0xFFFFFFFFFFFFFF8) + 0x10);
                      sub_246091DF4();
                    }

                    sub_246091E34();
                  }

                  ++v217;
                  --v216;
                }

                while (v216);
              }

              if (!v306 || (v225 = (*(*v306 + 200))(v224), v226 = v225, (v225 & 0x100000000) != 0))
              {
                v226 = 0;
              }

              OCNonModularSPI_Serialization_InvalidCameraIntrinsics();
              v228 = vdupq_n_s32(0x38D1B717u);
              v231 = vandq_s8(vandq_s8(vcgeq_f32(v228, vabdq_f32(v227, v327)), vcgeq_f32(v228, vabdq_f32(v229, v328))), vcgeq_f32(v228, vabdq_f32(v230, v329)));
              v231.i32[3] = v231.i32[2];
              v232 = v310;
              v233 = v298;
              v234 = v308;
              v235 = v293;
              v236 = v269;
              if ((vminvq_u32(v231) & 0x80000000) != 0 || (v287 = v228, OCNonModularSPI_Serialization_InvalidCameraTransform(), (vminvq_u32(vandq_s8(vandq_s8(vcgeq_f32(v287, vabdq_f32(v238, v323)), vcgeq_f32(v287, vabdq_f32(v237, v322))), vandq_s8(vcgeq_f32(v287, vabdq_f32(v239, v324)), vcgeq_f32(v287, vabdq_f32(v240, v325))))) & 0x80000000) != 0))
              {
              }

              else
              {
                v313[0] = v327;
                v313[1] = v328;
                v313[2] = v329;
                v317[0].boundingBox.columns[0].i8[0] = v288;
                v312 = 0;
                v349[0] = v300;
                v349[1] = v297;
                v349[2] = v296;
                v349[3] = v289;
                v350 = 0;
                v241 = PhotogrammetrySample.Camera.init(id:intrinsics:transform:trackingState:calibrationData:wideToDepthTransform:)(v226, v313, v317, 0, v349, v315, v322, v323, v324, v325);
                nullsub_1(v315, v241);
                v242 = v311;
                memcpy(v316, (v311 + 96), 0x171uLL);
                sub_245F8E744(v316, &qword_27EE39F78, &unk_246096990);
                memcpy((v242 + 96), v315, 0x171uLL);
                memcpy(v317, v315, 0x171uLL);
                if (sub_245F97C38(v317) != 1)
                {
                  v314[0] = 1;
                  memset(v347, 0, sizeof(v347));
                  v348 = 1;
                  sub_245F95934(v347, v347);
                }

                memcpy(v314, (v311 + 96), 0x171uLL);
                if (sub_245F97C38(v314) == 1)
                {
                }

                else
                {
                  if (v236)
                  {
                    v243 = sub_246091B34();
                  }

                  else
                  {
                    v243 = 0;
                  }

                  v244 = OCNonModularSPI_AVCameraCalibrationData_InitFrom();

                  v245 = v311;
                  *(v245 + 232) = v244;
                }

                v246 = v285;
                v302(v285, v303, v232);
                v247 = sub_2460918D4();
                v248 = sub_246091FA4();
                if (os_log_type_enabled(v247, v248))
                {
                  v249 = swift_slowAlloc();
                  *v249 = 134349056;
                  *(v249 + 4) = v301;
                  _os_log_impl(&dword_245F8A000, v247, v248, "Image Folder Reader: Read camera field of sample (id = %{public}ld)", v249, 0xCu);
                  v250 = v249;
                  v234 = v308;
                  MEMORY[0x24C1989D0](v250, -1, -1);
                }

                (v305)(v246, v232);
              }

              v302(v233, v303, v232);
              v251 = v294;
              v290(v235, v234, v294);
              v252 = sub_2460918D4();
              v253 = sub_246091FC4();
              if (os_log_type_enabled(v252, v253))
              {
                v254 = swift_slowAlloc();
                v255 = swift_slowAlloc();
                v317[0].boundingBox.columns[0].i64[0] = v255;
                *v254 = 141558275;
                *(v254 + 4) = 1752392040;
                *(v254 + 12) = 2081;
                v256 = sub_2460916F4();
                v257 = v235;
                v259 = v258;
                v271(v257, v251);
                v260 = sub_245F8D3C0(v256, v259, v317);

                *(v254 + 14) = v260;
                _os_log_impl(&dword_245F8A000, v252, v253, "Image Folder Reader: Successfully read sample %{private,mask.hash}s", v254, 0x16u);
                sub_245F8E6F4(v255);
                MEMORY[0x24C1989D0](v255, -1, -1);
                MEMORY[0x24C1989D0](v254, -1, -1);

                sub_245FAEC68(v276, v280);

                v261 = v298;
                v262 = v310;
              }

              else
              {

                sub_245FAEC68(v276, v280);

                v271(v235, v251);
                v261 = v233;
                v262 = v232;
              }

              (v305)(v261, v262);
              sub_245F8E744(v299, &qword_27EE39F80, &unk_246096C10);
              v263 = v311;
              sub_245F97CCC(v311, v295);
              v136 = v263;
              goto LABEL_111;
            }

            v317[0].boundingBox.columns[0].i64[0] = 0;
            v317[0].boundingBox.columns[0].i64[1] = 0xE000000000000000;
            sub_246092284();
            MEMORY[0x24C196640](0xD000000000000034, 0x800000024609EEB0);
            v316[0].transform.columns[0].i32[0] = CVPixelBufferGetPixelFormatType(v102);
            v137 = sub_2460923D4();
            MEMORY[0x24C196640](v137);

            MEMORY[0x24C196640](46, 0xE100000000000000);
            v138 = v317[0].boundingBox.columns[0];
            sub_245FAC70C();
            v129 = v96;
            swift_allocError();
            *v139 = v138;
            v139[1].i8[0] = 1;
            swift_willThrow();

            sub_245FAEC68(v276, v280);
            v131 = v307;
LABEL_46:

            v136 = v311;
            goto LABEL_111;
          }

LABEL_19:
          v276 = 0;
          v280 = 0xF000000000000000;
          goto LABEL_20;
        }
      }

      else
      {
      }

LABEL_18:
      v81 = 0;
      v82 = v343;
      if (v343)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_16:
    v80 = v71;
    goto LABEL_18;
  }

  __break(1u);
}

BOOL sub_245FA6808(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A0F0, &unk_246097230);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  sub_245F8E7A4(a1, &v8 - v4, &qword_27EE3A0F0, &unk_246097230);
  v6 = swift_getEnumCaseMultiPayload() != 1;
  sub_245F8E744(v5, &qword_27EE3A0F0, &unk_246097230);
  return v6;
}

uint64_t sub_245FA68D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_245F8E624(&qword_27EE3A0F0, &unk_246097230);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_245F8E7A4(a1, &v9 - v6, &qword_27EE3A0F0, &unk_246097230);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_245FAED94(v7, a2, type metadata accessor for PhotogrammetrySample);
  }

  result = sub_246092344();
  __break(1u);
  return result;
}

void *sub_245FA6A0C(uint64_t a1)
{
  v4 = 0xD000000000000034;
  v5 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  swift_beginAccess();
  if (!*(v1 + v5))
  {
    v8 = "com.apple.CoreOC";
    v4 = 0xD000000000000051;
    goto LABEL_6;
  }

  sub_245FA90D4();
  if (!v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors);
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v1;
      *(v7 + 24) = a1;
      sub_245F8E624(&qword_27EE3A0B0, &qword_246097098);
      v2 = swift_allocObject();
      v2[2] = v6;
      v2[3] = sub_245FAC7A0;
      v2[4] = v7;
      v2[5] = sub_245FA6F14;
      v2[6] = 0;
      v2[7] = sub_245FA6F24;
      v2[8] = 0;

      return v2;
    }

    v8 = "HEIC read handle.";
LABEL_6:
    v9 = v8 | 0x8000000000000000;
    sub_245FAC70C();
    v10 = swift_allocError();
    *v11 = v4;
    *(v11 + 8) = v9;
    *(v11 + 16) = 1;
    v2 = v10;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_245FA6B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2460918F4();
  v18 = *(v6 - 8);
  v19 = v6;
  v7 = *(v18 + 64);
  MEMORY[0x28223BE20](v6);
  v17[3] = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091704();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  (*(v10 + 16))(v17 - v13, a1, v9);
  v15 = sub_245FABD88(v14, a2);
  result = (*(v10 + 8))(v14, v9);
  *a3 = v15;
  *(a3 + 8) = 0;
  return result;
}

id sub_245FA6F24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    result = sub_246092344();
    __break(1u);
  }

  else
  {
    v3 = *a1;
    *a2 = v3;

    return v3;
  }

  return result;
}

void *sub_245FA6FA8()
{
  v1 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_invalidSampleIds;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = sub_245FAC688(*(v2 + 16), 0);
  v5 = sub_245FAE730(&v7, v4 + 4, v3, v2);

  sub_245F8E6B8();
  if (v5 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t static ObjectCaptureImageFolderReader.loadPhotogrammetrySample(id:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v109 = a1;
  v113 = a2;
  v111 = a3;
  v119 = *MEMORY[0x277D85DE8];
  v115 = sub_246091704();
  v112 = *(v115 - 8);
  v3 = *(v112 + 64);
  v4 = MEMORY[0x28223BE20](v115);
  v108 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v114 = &v102 - v6;
  v7 = sub_2460918F4();
  v116 = *(v7 - 8);
  v8 = *(v116 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v102 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v102 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v102 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = (&v102 - v21);
  v23 = type metadata accessor for PhotogrammetrySample();
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v102 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v102 - v31;
  v118 = 0;
  if (!OCNonModularSPI_CMPhoto_HeicReadCreate())
  {
    v104 = v27;
    v105 = v17;
    v43 = v14;
    v106 = v32;
    v107 = v22;
    v103 = v30;
    v44 = v114;
    v45 = v115;
    v46 = v7;
    if (OCNonModularSPI_CMPhoto_HeicReadStart())
    {
      OCNonModularSPI_CMPhoto_HeicReadDestroy();
      v118 = 0;
      v47 = sub_245FA3174();
      v48 = v116;
      v49 = v43;
      (*(v116 + 16))(v43, v47, v7);
      v50 = sub_2460918D4();
      v51 = sub_246091FB4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_245F8A000, v50, v51, "Image Folder Reader: Failed to start the image reade handle.", v52, 2u);
        MEMORY[0x24C1989D0](v52, -1, -1);
      }

      (*(v48 + 8))(v49, v7);
      v40 = 0x800000024609ECD0;
      sub_245FAC70C();
      swift_allocError();
      v42 = 0xD000000000000026;
      goto LABEL_9;
    }

    if (!v118)
    {
      v77 = sub_245FA3174();
      v78 = v116;
      v79 = v105;
      (*(v116 + 16))(v105, v77, v7);
      v80 = sub_2460918D4();
      v81 = sub_246091FB4();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_245F8A000, v80, v81, "Image Folder Reader: Failed to start the image read handle.", v82, 2u);
        MEMORY[0x24C1989D0](v82, -1, -1);
      }

      (*(v78 + 8))(v79, v7);
      sub_245FAC70C();
      swift_allocError();
      *v83 = 0xD000000000000025;
      *(v83 + 8) = 0x800000024609ED00;
      *(v83 + 16) = 1;
      swift_willThrow();
      goto LABEL_27;
    }

    v105 = v118;
    v55 = type metadata accessor for PhotogrammetryImageHelper();
    v56 = v113;
    v102 = v55;
    v57 = sub_245F9AFEC();
    v58 = sub_245FA3174();
    v59 = *(v116 + 16);
    v60 = v112;
    v61 = (v112 + 16);
    if (v57)
    {
      v62 = v107;
      v59(v107, v58, v46);
      v63 = v44;
      (*v61)(v44, v56, v45);
      v64 = sub_2460918D4();
      v65 = sub_246091FC4();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v108 = v46;
        v68 = v67;
        v117 = v67;
        *v66 = 134349571;
        v69 = v45;
        v70 = v109;
        *(v66 + 4) = v109;
        *(v66 + 12) = 2160;
        *(v66 + 14) = 1752392040;
        *(v66 + 22) = 2081;
        v71 = sub_2460916F4();
        v73 = v72;
        (*(v112 + 8))(v63, v69);
        v74 = sub_245F8D3C0(v71, v73, &v117);

        *(v66 + 24) = v74;
        _os_log_impl(&dword_245F8A000, v64, v65, "Image Folder Reader: Reading sample from HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v66, 0x20u);
        sub_245F8E6F4(v68);
        MEMORY[0x24C1989D0](v68, -1, -1);
        MEMORY[0x24C1989D0](v66, -1, -1);

        (*(v116 + 8))(v107, v108);
        v75 = v110;
        v76 = v111;
      }

      else
      {

        (*(v112 + 8))(v44, v45);
        (*(v116 + 8))(v62, v46);
        v75 = v110;
        v76 = v111;
        v70 = v109;
      }

      v99 = v103;
      type metadata accessor for ObjectCaptureImageFolderReader(0);
      sub_245FA47E0(v70, v113, v105, v99);
      v100 = v106;
      if (v75)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v84 = v20;
      v85 = v46;
      v59(v20, v58, v46);
      v86 = v108;
      (*v61)(v108, v56, v45);
      v87 = sub_2460918D4();
      v88 = sub_246091FC4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v114 = v84;
        v90 = v89;
        v107 = swift_slowAlloc();
        v117 = v107;
        *v90 = 134349571;
        v91 = v60;
        v92 = v88;
        v93 = v109;
        *(v90 + 4) = v109;
        *(v90 + 12) = 2160;
        *(v90 + 14) = 1752392040;
        *(v90 + 22) = 2081;
        v94 = sub_2460916F4();
        v96 = v95;
        (*(v91 + 8))(v86, v115);
        v97 = sub_245F8D3C0(v94, v96, &v117);

        *(v90 + 24) = v97;
        _os_log_impl(&dword_245F8A000, v87, v92, "Image Folder Reader: Reading sample from non-HEIC image with id = %{public}ld from url = %{private,mask.hash}s", v90, 0x20u);
        v98 = v107;
        sub_245F8E6F4(v107);
        MEMORY[0x24C1989D0](v98, -1, -1);
        MEMORY[0x24C1989D0](v90, -1, -1);

        (*(v116 + 8))(v114, v85);
      }

      else
      {

        (*(v60 + 8))(v86, v45);
        (*(v116 + 8))(v84, v46);
        v93 = v109;
      }

      v99 = v104;
      v101 = v110;
      sub_245F994C8(v93, v113, v104);
      v76 = v111;
      if (v101)
      {
        goto LABEL_27;
      }

      v100 = v106;
    }

    sub_245FAED94(v99, v100, type metadata accessor for PhotogrammetrySample);
    sub_245FAED94(v100, v76, type metadata accessor for PhotogrammetrySample);
LABEL_27:
    OCNonModularSPI_CMPhoto_HeicReadStop();
    result = OCNonModularSPI_CMPhoto_HeicReadDestroy();
    goto LABEL_10;
  }

  v33 = sub_245FA3174();
  v34 = v116;
  (*(v116 + 16))(v11, v33, v7);
  v35 = sub_2460918D4();
  v36 = sub_246091FB4();
  v37 = v7;
  v38 = v34;
  if (os_log_type_enabled(v35, v36))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_245F8A000, v35, v36, "Image Folder Reader: Failed to initialize the image reade handle.", v39, 2u);
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  (*(v38 + 8))(v11, v37);
  v40 = 0x800000024609ECA0;
  sub_245FAC70C();
  swift_allocError();
  v42 = 0xD00000000000002BLL;
LABEL_9:
  *v41 = v42;
  *(v41 + 8) = v40;
  *(v41 + 16) = 1;
  result = swift_willThrow();
LABEL_10:
  v54 = *MEMORY[0x277D85DE8];
  return result;
}

NSObject *sub_245FA7AB0()
{
  v180 = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v168 = *(v0 - 8);
  v1 = *(v168 + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v151 = &v148 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v150 = &v148 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v165 = &v148 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v148 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v148 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v159 = &v148 - v18;
  MEMORY[0x28223BE20](v17);
  v161 = &v148 - v19;
  v20 = sub_246091704();
  v174 = *(v20 - 8);
  v21 = *(v174 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v158 = &v148 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v156 = &v148 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v173 = &v148 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v172 = &v148 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = (&v148 - v33);
  v35 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v179 = 0;
  OCNonModularSPI_CMPhoto_HeicReadCreate();
  OCNonModularSPI_CMPhoto_HeicReadStart();
  if (!v179)
  {
    sub_245FAC70C();
    swift_allocError();
    *v54 = 0xD000000000000051;
    *(v54 + 8) = 0x800000024609EC00;
    *(v54 + 16) = 1;
LABEL_52:
    swift_willThrow();
    OCNonModularSPI_CMPhoto_HeicReadStop();
    OCNonModularSPI_CMPhoto_HeicReadDestroy();

    goto LABEL_53;
  }

  v36 = sub_246091674();
  v178 = 0;
  v149 = v35;
  v37 = [v35 contentsOfDirectoryAtURL:v36 includingPropertiesForKeys:0 options:0 error:&v178];

  v38 = v178;
  if (!v37)
  {
    v55 = v178;
    v56 = sub_2460915D4();

    swift_willThrow();
    v57 = sub_245FA3174();
    v58 = v168;
    (*(v168 + 16))(v4, v57, v0);
    v59 = v56;
    v34 = sub_2460918D4();
    v60 = v0;
    v61 = sub_246091FB4();

    if (os_log_type_enabled(v34, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v171 = v60;
      v64 = v63;
      v178 = v63;
      *v62 = 136446210;
      swift_getErrorValue();
      v65 = sub_246092484();
      v67 = sub_245F8D3C0(v65, v66, &v178);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_245F8A000, v34, v61, "Image Folder Reader: contentsOfDirectory error: %{public}s", v62, 0xCu);
      sub_245F8E6F4(v64);
      MEMORY[0x24C1989D0](v64, -1, -1);
      MEMORY[0x24C1989D0](v62, -1, -1);

      (*(v58 + 8))(v4, v171);
    }

    else
    {

      (*(v58 + 8))(v4, v60);
    }

    v35 = v149;
    sub_245FAC70C();
    swift_allocError();
    *v145 = v56;
    *(v145 + 8) = 0;
    *(v145 + 16) = 0;
    goto LABEL_52;
  }

  v171 = v0;
  v39 = sub_246091DD4();
  v40 = v38;

  v41 = *(v39 + 16);
  v160 = v13;
  v157 = v16;
  v170 = v20;
  v152 = v24;
  v169 = v41;
  if (v41)
  {
    v42 = 0;
    v164 = (v174 + 8);
    v167 = (v174 + 32);
    v43 = MEMORY[0x277D84F90];
    v166 = v174 + 16;
    do
    {
      if (v42 >= *(v39 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
      }

      v45 = v20;
      v46 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v47 = *(v174 + 72);
      (*(v174 + 16))(v34, v39 + v46 + v47 * v42, v45);
      type metadata accessor for PhotogrammetryImageHelper();
      if (sub_245F9AABC())
      {
        v48 = *v167;
        (*v167)(v172, v34, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v178 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_245FAC7A8(0, v43[2] + 1, 1);
          v43 = v178;
        }

        v50 = v43;
        v51 = v43[2];
        v52 = v50[3];
        if (v51 >= v52 >> 1)
        {
          sub_245FAC7A8(v52 > 1, v51 + 1, 1);
          v50 = v178;
        }

        v50[2] = v51 + 1;
        v53 = v50 + v46 + v51 * v47;
        v20 = v170;
        v48(v53, v172, v170);
        v43 = v50;
      }

      else
      {
        (*v164)(v34, v45);
        v20 = v45;
      }

      ++v42;
      v44 = v173;
    }

    while (v169 != v42);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
    v44 = v173;
  }

  v68 = sub_245FA3174();
  v69 = v168;
  v70 = *(v168 + 16);
  v164 = v68;
  v71 = v171;
  v163 = v168 + 16;
  v162 = v70;
  v70(v161);

  v72 = sub_2460918D4();
  v73 = sub_246091FC4();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134349056;
    *(v74 + 4) = v43[2];

    _os_log_impl(&dword_245F8A000, v72, v73, "Image Folder Reader: Number of loadable image files = %{public}ld", v74, 0xCu);
    MEMORY[0x24C1989D0](v74, -1, -1);
  }

  else
  {
  }

  v75 = v165;
  v76 = v161;
  v161 = *(v69 + 8);
  v168 = v69 + 8;
  (v161)(v76, v71);
  v162(v159, v164, v71);
  v77 = sub_2460918D4();
  v78 = sub_246091FC4();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_245F8A000, v77, v78, "Image Folder Reader: ImageFiles: [", v79, 2u);
    v80 = v79;
    v75 = v165;
    MEMORY[0x24C1989D0](v80, -1, -1);
  }

  (v161)(v159, v71);
  v81 = v43[2];
  if (v81)
  {
    v82 = type metadata accessor for PhotogrammetryImageHelper();
    v34 = 0;
    v172 = *(v174 + 16);
    v83 = (*(v174 + 80) + 32) & ~*(v174 + 80);
    v148 = v43;
    v84 = v43 + v83;
    v166 = *(v174 + 72);
    v174 += 16;
    v169 = (v174 - 8);
    *&v85 = 141558787;
    v155 = v85;
    v167 = v82;
    do
    {
      (v172)(v44, v84, v20);
      v176 = *sub_24601EF58();
      v175 = *sub_24601EF64();
      if (sub_245F9AFEC())
      {
        v86 = sub_246091674();
        swift_beginAccess();
        swift_beginAccess();
        Resolution = OCNonModularSPI_CMPhoto_readResolution();
        swift_endAccess();
        swift_endAccess();

        v88 = v44;
        if (Resolution)
        {
          v159 = v81;
          v89 = v171;
          v162(v160, v164, v171);
          v90 = v158;
          (v172)(v158, v88, v20);
          v91 = sub_2460918D4();
          v92 = sub_246091FB4();
          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            LODWORD(v154) = v92;
            v94 = v93;
            v153 = swift_slowAlloc();
            v177 = v153;
            *v94 = v155;
            *(v94 + 4) = 1752392040;
            *(v94 + 12) = 2081;
            v95 = sub_2460916F4();
            v97 = v96;
            v98 = *v169;
            (*v169)(v90, v170);
            v99 = sub_245F8D3C0(v95, v97, &v177);
            v20 = v170;

            *(v94 + 14) = v99;
            *(v94 + 22) = 2050;
            *(v94 + 24) = v176;
            *(v94 + 32) = 2050;
            *(v94 + 34) = v175;
            _os_log_impl(&dword_245F8A000, v91, v154, "Image Folder Reader: Failed to fetch image resolution in %{private,mask.hash}s, using default resolution %{public}llu x %{public}llu as an estimate instead.", v94, 0x2Au);
            v100 = v153;
            sub_245F8E6F4(v153);
            MEMORY[0x24C1989D0](v100, -1, -1);
            MEMORY[0x24C1989D0](v94, -1, -1);

            (v161)(v160, v171);
            v101 = v173;
            (v98)(v173, v20);
            v75 = v165;
            v44 = v101;
          }

          else
          {

            v131 = *v169;
            (*v169)(v90, v20);
            (v161)(v160, v89);
            v44 = v173;
            (v131)(v173, v20);
            v75 = v165;
          }

          v81 = v159;
        }

        else
        {
          v119 = v171;
          v162(v157, v164, v171);
          v120 = v156;
          (v172)(v156, v88, v20);
          v121 = sub_2460918D4();
          v122 = sub_246091FC4();
          if (os_log_type_enabled(v121, v122))
          {
            v123 = swift_slowAlloc();
            LODWORD(v154) = v122;
            v124 = v123;
            v125 = swift_slowAlloc();
            v177 = v125;
            *v124 = v155;
            *(v124 + 4) = 1752392040;
            *(v124 + 12) = 2081;
            v126 = sub_2460916F4();
            v128 = v127;
            v159 = *v169;
            (v159)(v156, v170);
            v129 = sub_245F8D3C0(v126, v128, &v177);

            *(v124 + 14) = v129;
            *(v124 + 22) = 2050;
            *(v124 + 24) = v176;
            *(v124 + 32) = 2050;
            *(v124 + 34) = v175;
            _os_log_impl(&dword_245F8A000, v121, v154, "Image Folder Reader: %{private,mask.hash}s of resolution %{public}llu x %{public}llu", v124, 0x2Au);
            sub_245F8E6F4(v125);
            v130 = v125;
            v20 = v170;
            MEMORY[0x24C1989D0](v130, -1, -1);
            MEMORY[0x24C1989D0](v124, -1, -1);

            (v161)(v157, v171);
            v44 = v173;
            (v159)(v173, v20);
          }

          else
          {

            v133 = *v169;
            (*v169)(v120, v20);
            (v161)(v157, v119);
            v44 = v173;
            (v133)(v173, v20);
          }

          v75 = v165;
        }
      }

      else
      {
        v102 = sub_245F9AC5C(v44);
        if (v103)
        {
          (*v169)(v44, v20);
        }

        else
        {
          v104 = HIDWORD(v102);
          v105 = v102;
          swift_beginAccess();
          v176 = v105;
          swift_beginAccess();
          v175 = v104;
          v106 = v171;
          v162(v75, v164, v171);
          v107 = v44;
          v108 = v152;
          (v172)(v152, v107, v20);
          v109 = sub_2460918D4();
          v110 = sub_246091FC4();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            LODWORD(v159) = v110;
            v112 = v111;
            v154 = swift_slowAlloc();
            v177 = v154;
            *v112 = v155;
            *(v112 + 4) = 1752392040;
            *(v112 + 12) = 2081;
            v113 = sub_2460916F4();
            v115 = v114;
            v116 = *v169;
            (*v169)(v108, v170);
            v117 = sub_245F8D3C0(v113, v115, &v177);
            v20 = v170;

            *(v112 + 14) = v117;
            *(v112 + 22) = 2050;
            *(v112 + 24) = v176;
            *(v112 + 32) = 2050;
            *(v112 + 34) = v175;
            _os_log_impl(&dword_245F8A000, v109, v159, "Image Folder Reader: %{private,mask.hash}s of resolution %{public}llu x %{public}llu", v112, 0x2Au);
            v118 = v154;
            sub_245F8E6F4(v154);
            MEMORY[0x24C1989D0](v118, -1, -1);
            MEMORY[0x24C1989D0](v112, -1, -1);

            v75 = v165;
            (v161)(v165, v171);
            v44 = v173;
            (v116)(v173, v20);
          }

          else
          {

            v132 = *v169;
            (*v169)(v108, v20);
            v75 = v165;
            (v161)(v165, v106);
            v44 = v173;
            (v132)(v173, v20);
          }
        }
      }

      swift_beginAccess();
      v134 = v176;
      swift_beginAccess();
      if (!is_mul_ok(v134, v175))
      {
        goto LABEL_55;
      }

      v135 = __CFADD__(v34, v134 * v175);
      v34 = (v34 + v134 * v175);
      if (v135)
      {
        goto LABEL_56;
      }

      v84 += v166;
      --v81;
    }

    while (v81);
  }

  else
  {

    v34 = 0;
  }

  v136 = v171;
  v162(v150, v164, v171);
  v137 = sub_2460918D4();
  v138 = sub_246091FC4();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    *v139 = 0;
    _os_log_impl(&dword_245F8A000, v137, v138, "Image Folder Reader: ]  // Files", v139, 2u);
    v140 = v139;
    v136 = v171;
    MEMORY[0x24C1989D0](v140, -1, -1);
  }

  (v161)(v150, v136);
  v162(v151, v164, v136);
  v141 = sub_2460918D4();
  v142 = sub_246091FC4();
  if (os_log_type_enabled(v141, v142))
  {
    v143 = swift_slowAlloc();
    *v143 = 134349056;
    *(v143 + 4) = v34;
    _os_log_impl(&dword_245F8A000, v141, v142, "Image Folder Reader: Total number of pixels is %{public}llu", v143, 0xCu);
    v144 = v143;
    v136 = v171;
    MEMORY[0x24C1989D0](v144, -1, -1);
  }

  (v161)(v151, v136);
  OCNonModularSPI_CMPhoto_HeicReadStop();
  OCNonModularSPI_CMPhoto_HeicReadDestroy();

LABEL_53:
  v146 = *MEMORY[0x277D85DE8];
  return v34;
}

uint64_t sub_245FA9094(char a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_245FA90D4()
{
  v116 = sub_245F8E624(&qword_27EE3A100, &qword_246097240);
  v1 = *(*(v116 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v116);
  v114 = (&v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v115 = &v92 - v4;
  v5 = type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor(0);
  v112 = *(v5 - 8);
  v113 = v5;
  v6 = *(v112 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v110 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v96 = &v92 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v117 = &v92 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v92 - v18;
  v20 = sub_245FA3174();
  v21 = v10[2];
  v97 = v20;
  v99 = v10 + 2;
  v98 = v21;
  (v21)(v19);

  v22 = sub_2460918D4();
  v23 = sub_246091FC4();

  v24 = os_log_type_enabled(v22, v23);
  v111 = v0;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v95 = v9;
    v26 = v25;
    v27 = swift_slowAlloc();
    v118[0] = v27;
    *v26 = 141558275;
    *(v26 + 4) = 1752392040;
    *(v26 + 12) = 2081;
    v28 = sub_2460916F4();
    v30 = sub_245F8D3C0(v28, v29, v118);
    v0 = v111;

    *(v26 + 14) = v30;
    _os_log_impl(&dword_245F8A000, v22, v23, "Image Folder Reader: Checking folder listing cache for: %{private,mask.hash}s...", v26, 0x16u);
    sub_245F8E6F4(v27);
    MEMORY[0x24C1989D0](v27, -1, -1);
    v31 = v26;
    v9 = v95;
    MEMORY[0x24C1989D0](v31, -1, -1);
  }

  v100 = v10[1];
  v100(v19, v9);
  v32 = v10;
  v33 = v101;
  v34 = v117;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors))
  {
    v35 = v110;
    v98(v110, v97, v9);

    v36 = sub_2460918D4();
    v37 = sub_246091FC4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v118[0] = v39;
      *v38 = 141558275;
      *(v38 + 4) = 1752392040;
      *(v38 + 12) = 2081;
      v40 = sub_2460916F4();
      v42 = v9;
      v43 = sub_245F8D3C0(v40, v41, v118);

      *(v38 + 14) = v43;
      _os_log_impl(&dword_245F8A000, v36, v37, "Image Folder Reader: Folder already enumerated and cached, nothing to do for: %{private,mask.hash}s...", v38, 0x16u);
      sub_245F8E6F4(v39);
      MEMORY[0x24C1989D0](v39, -1, -1);
      MEMORY[0x24C1989D0](v38, -1, -1);

      v44 = v110;
      v45 = v42;
      return (v100)(v44, v45);
    }

    v44 = v35;
LABEL_9:
    v45 = v9;
    return (v100)(v44, v45);
  }

  v93 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors;
  v94 = v32;
  v98(v117, v97, v9);

  v46 = sub_2460918D4();
  v47 = sub_246091FC4();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = v33;
    v49 = v9;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v118[0] = v51;
    *v50 = 141558275;
    *(v50 + 4) = 1752392040;
    *(v50 + 12) = 2081;
    v52 = sub_2460916F4();
    v54 = sub_245F8D3C0(v52, v53, v118);

    *(v50 + 14) = v54;
    _os_log_impl(&dword_245F8A000, v46, v47, "Image Folder Reader: Enumerating image folder and caching result for: %{private,mask.hash}s...", v50, 0x16u);
    sub_245F8E6F4(v51);
    MEMORY[0x24C1989D0](v51, -1, -1);
    v55 = v50;
    v9 = v49;
    v33 = v48;
    MEMORY[0x24C1989D0](v55, -1, -1);

    v56 = v117;
  }

  else
  {

    v56 = v34;
  }

  v100(v56, v9);
  result = sub_245FA9B50();
  if (!v33)
  {
    v58 = *(result + 16);
    if (!v58)
    {

      v60 = MEMORY[0x277D84F90];
LABEL_22:
      v77 = v111;
      v78 = v93;
      v79 = *(v111 + v93);
      *(v111 + v93) = v60;
      v80 = v77;

      v81 = *(v80 + v78);
      v82 = v96;
      if (v81)
      {
        v83 = *(v81 + 16);
      }

      else
      {
        v83 = 0;
      }

      swift_beginAccess();
      *(v80 + 16) = v83;
      v98(v82, v97, v9);

      v84 = sub_2460918D4();
      v85 = sub_246091FC4();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v119 = v87;
        *v86 = 141558275;
        *(v86 + 4) = 1752392040;
        *(v86 + 12) = 2081;
        v88 = sub_2460916F4();
        v90 = v9;
        v91 = sub_245F8D3C0(v88, v89, &v119);

        *(v86 + 14) = v91;
        _os_log_impl(&dword_245F8A000, v84, v85, "Image Folder Reader: Done enumerating image folder and caching result for: %{private,mask.hash}s.", v86, 0x16u);
        sub_245F8E6F4(v87);
        MEMORY[0x24C1989D0](v87, -1, -1);
        MEMORY[0x24C1989D0](v86, -1, -1);

        v44 = v96;
        v45 = v90;
        return (v100)(v44, v45);
      }

      v44 = v82;
      goto LABEL_9;
    }

    v95 = v9;
    v101 = 0;
    v118[0] = MEMORY[0x277D84F90];
    v59 = result;
    sub_245FAC7EC(0, v58, 0);
    v60 = v118[0];
    v110 = *(v59 + 16);
    v61 = sub_246091704();
    result = v59;
    v62 = 0;
    v107 = v61;
    v108 = v58;
    v63 = *(v61 - 8);
    v104 = v59 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v105 = v8;
    v106 = v63;
    v102 = v63 + 32;
    v103 = v63 + 16;
    v109 = v59;
    while (v110 != v62)
    {
      if (v62 >= *(result + 16))
      {
        goto LABEL_29;
      }

      v65 = v115;
      v64 = v116;
      v66 = *(v116 + 48);
      v117 = v60;
      v67 = v106;
      v68 = v107;
      v69 = *(v106 + 16);
      v69(&v115[v66], v104 + *(v106 + 72) * v62, v107);
      v70 = v114;
      *v114 = v62;
      v71 = *(v64 + 48);
      v72 = *(v67 + 32);
      v60 = v117;
      v73 = &v65[v66];
      v74 = v105;
      v72(v70 + v71, v73, v68);
      v69(v74, v70 + v71, v68);
      *(v74 + *(v113 + 20)) = v62;
      sub_245F8E744(v70, &qword_27EE3A100, &qword_246097240);
      v118[0] = v60;
      v76 = *(v60 + 16);
      v75 = *(v60 + 24);
      if (v76 >= v75 >> 1)
      {
        sub_245FAC7EC(v75 > 1, v76 + 1, 1);
        v60 = v118[0];
      }

      ++v62;
      *(v60 + 16) = v76 + 1;
      sub_245FAED94(v74, v60 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v76, type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor);
      result = v109;
      if (v108 == v62)
      {

        v9 = v95;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_245FA9B50()
{
  v291[3] = *MEMORY[0x277D85DE8];
  v1 = sub_245F8E624(&qword_27EE3A0B8, "nP");
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v240 = &v235 - v3;
  v278 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  v261 = *(v278 - 8);
  v4 = *(v261 + 64);
  v5 = MEMORY[0x28223BE20](v278);
  v259 = &v235 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v258 = &v235 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v257 = &v235 - v10;
  MEMORY[0x28223BE20](v9);
  v256 = &v235 - v11;
  v12 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v264 = &v235 - v14;
  v280 = sub_2460917D4();
  v270 = *(v280 - 8);
  v15 = *(v270 + 64);
  v16 = MEMORY[0x28223BE20](v280);
  v245 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v269 = &v235 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v244 = &v235 - v21;
  MEMORY[0x28223BE20](v20);
  v268 = &v235 - v22;
  v282 = sub_2460918F4();
  v288 = *(v282 - 8);
  v23 = *(v288 + 64);
  v24 = MEMORY[0x28223BE20](v282);
  v26 = &v235 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24);
  v236 = &v235 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v241 = &v235 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v238 = &v235 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v266 = &v235 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v255 = &v235 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v254 = &v235 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v275 = &v235 - v40;
  MEMORY[0x28223BE20](v39);
  v277 = &v235 - v41;
  v276 = sub_246091704();
  v287 = *(v276 - 8);
  v42 = *(v287 + 64);
  v43 = MEMORY[0x28223BE20](v276);
  v45 = &v235 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v235 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v262 = &v235 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v243 = &v235 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v289[0] = &v235 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v286 = &v235 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v235 - v57;
  if (*(v0 + OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_sortedSampleDescriptors))
  {
    goto LABEL_83;
  }

  v59 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v265 = v0;
  v60 = sub_246091674();
  sub_245F8E624(&qword_27EE39FF0, "fN");
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_246096460;
  v62 = *MEMORY[0x277CBE7C0];
  *(v61 + 32) = *MEMORY[0x277CBE7C0];
  type metadata accessor for URLResourceKey(0);
  v63 = v62;
  v64 = sub_246091DB4();

  v291[0] = 0;
  v239 = v59;
  v65 = [v59 contentsOfDirectoryAtURL:v60 includingPropertiesForKeys:v64 options:0 error:v291];

  v66 = v291[0];
  if (!v65)
  {
    v82 = v291[0];
    v83 = sub_2460915D4();

    swift_willThrow();
    v84 = sub_245FA3174();
    v85 = v288;
    v86 = v282;
    (*(v288 + 16))(v26, v84, v282);
    v87 = v83;
    v88 = v26;
    v89 = sub_2460918D4();
    v90 = sub_246091FB4();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v291[0] = v92;
      *v91 = 136446210;
      swift_getErrorValue();
      v93 = sub_246092484();
      v88 = v94;
      v95 = sub_245F8D3C0(v93, v94, v291);

      *(v91 + 4) = v95;
      _os_log_impl(&dword_245F8A000, v89, v90, "Image Folder Reader: contentsOfDirectory error: %{public}s", v91, 0xCu);
      sub_245F8E6F4(v92);
      MEMORY[0x24C1989D0](v92, -1, -1);
      MEMORY[0x24C1989D0](v91, -1, -1);

      (*(v85 + 8))(v26, v282);
    }

    else
    {

      (*(v85 + 8))(v26, v86);
    }

    sub_245FAC70C();
    swift_allocError();
    *v232 = v83;
    *(v232 + 8) = 0;
    *(v232 + 16) = 0;
    swift_willThrow();

LABEL_79:
    v233 = *MEMORY[0x277D85DE8];
    return v88;
  }

  v246 = v48;
  v260 = v45;
  v67 = sub_246091DD4();
  v68 = v66;

  v69 = v288;
  v285 = *(v67 + 16);
  if (v285)
  {
    v70 = 0;
    v284 = (v287 + 16);
    v279 = (v287 + 8);
    v283 = (v287 + 32);
    v281 = MEMORY[0x277D84F90];
    v71 = v276;
    v72 = v289[0];
    while (v70 < *(v67 + 16))
    {
      v73 = (*(v287 + 80) + 32) & ~*(v287 + 80);
      v74 = v67;
      v75 = v67 + v73;
      v76 = *(v287 + 72);
      (*(v287 + 16))(v58, v75 + v76 * v70, v71);
      type metadata accessor for PhotogrammetryImageHelper();
      if (sub_245F9AABC())
      {
        v77 = *v283;
        (*v283)(v286, v58, v71);
        v78 = v281;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v291[0] = v78;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_245FAC7A8(0, v78[2] + 1, 1);
          v78 = v291[0];
        }

        v81 = v78[2];
        v80 = v78[3];
        if (v81 >= v80 >> 1)
        {
          sub_245FAC7A8(v80 > 1, v81 + 1, 1);
          v78 = v291[0];
        }

        v78[2] = v81 + 1;
        v281 = v78;
        v71 = v276;
        v77(v78 + v73 + v81 * v76, v286, v276);
        v72 = v289[0];
      }

      else
      {
        (*v279)(v58, v71);
      }

      ++v70;
      v69 = v288;
      v67 = v74;
      if (v285 == v70)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }

  v281 = MEMORY[0x277D84F90];
  v72 = v289[0];
LABEL_17:
  v96 = sub_245FA3174();
  v97 = *(v69 + 16);
  v274 = v96;
  v273 = v69 + 16;
  v272 = v97;
  (v97)(v277);
  v98 = v281;

  v99 = sub_2460918D4();
  v100 = sub_246091FC4();
  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = v98;
    v103 = v101;
    *v101 = 134349056;
    *(v101 + 4) = v102[2];

    _os_log_impl(&dword_245F8A000, v99, v100, "Image Folder Reader: Number of loadable image files = %{public}ld", v103, 0xCu);
    MEMORY[0x24C1989D0](v103, -1, -1);
  }

  else
  {
  }

  v104 = v260;
  v105 = v264;
  v106 = v282;
  v271 = *(v69 + 8);
  v288 = v69 + 8;
  v271(v277, v282);
  v107 = v275;
  v272(v275, v274, v106);
  v108 = sub_2460918D4();
  v109 = sub_246091FC4();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_245F8A000, v108, v109, "Image Folder Reader: ImageFiles: [", v110, 2u);
    MEMORY[0x24C1989D0](v110, -1, -1);
  }

  v271(v107, v282);
  v111 = v281;
  v112 = v276;
  v253 = v281[2];
  if (v253)
  {
    v235 = v67;
    v113 = type metadata accessor for PhotogrammetryImageHelper();
    v114 = v287;
    v250 = v111 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v251 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
    swift_beginAccess();
    v252 = 0;
    v263 = 0;
    v115 = 0;
    v286 = (v114 + 16);
    v249 = (v270 + 48);
    v242 = (v270 + 32);
    v248 = (v270 + 16);
    v277 = (v270 + 8);
    v285 = (v114 + 8);
    v279 = MEMORY[0x277D84F90];
    *&v116 = 141558531;
    v247 = v116;
    v117 = v280;
    v118 = v262;
    v270 = v113;
    do
    {
      if (v115 >= v281[2])
      {
        goto LABEL_81;
      }

      v120 = v118;
      v121 = *(v287 + 72);
      v275 = v115;
      v122 = *(v287 + 16);
      v122(v72, v250 + v121 * v115, v112);
      sub_245F9A538(v72, v105);
      v123 = (*v249)(v105, 1, v117);
      v284 = v122;
      if (v123 == 1)
      {
        sub_245F8E744(v105, &qword_27EE39F80, &unk_246096C10);
        v124 = v269;
        sub_245F98F2C(v72, v269);
        v125 = v282;
        v272(v255, v274, v282);
        v122(v120, v72, v112);
        v126 = v245;
        (*v248)(v245, v124, v117);
        v127 = v117;
        v128 = sub_2460918D4();
        v129 = sub_246091FC4();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v131 = swift_slowAlloc();
          v290[0] = v131;
          *v130 = v247;
          *(v130 + 4) = 1752392040;
          *(v130 + 12) = 2081;
          v132 = sub_2460916F4();
          v134 = v133;
          v283 = *v285;
          (v283)(v120, v276);
          v135 = sub_245F8D3C0(v132, v134, v290);

          *(v130 + 14) = v135;
          *(v130 + 22) = 2082;
          sub_245FAEDFC(&qword_27EE3A0C8, MEMORY[0x277CC9578]);
          v136 = sub_2460923D4();
          v138 = v137;
          v139 = v126;
          v140 = *v277;
          (*v277)(v139, v127);
          v141 = sub_245F8D3C0(v136, v138, v290);

          *(v130 + 24) = v141;
          _os_log_impl(&dword_245F8A000, v128, v129, "Image Folder Reader: %{private,mask.hash}s using creationDate instead: %{public}s", v130, 0x20u);
          swift_arrayDestroy();
          v142 = v131;
          v125 = v282;
          MEMORY[0x24C1989D0](v142, -1, -1);
          v143 = v130;
          v112 = v276;
          MEMORY[0x24C1989D0](v143, -1, -1);
        }

        else
        {

          v166 = v126;
          v140 = *v277;
          (*v277)(v166, v127);
          v283 = *v285;
          (v283)(v120, v112);
        }

        v271(v255, v125);
        sub_246091784();
        v167 = *(v278 + 48);
        v168 = v257;
        *v257 = v169;
        v284(&v168[v167], v289[0], v112);
        v170 = v279;
        v171 = swift_isUniquelyReferenced_nonNull_native();
        v172 = v266;
        if ((v171 & 1) == 0)
        {
          v170 = sub_245FAC498(0, v170[2] + 1, 1, v170);
        }

        v174 = v170[2];
        v173 = v170[3];
        v175 = v174 + 1;
        if (v174 >= v173 >> 1)
        {
          v170 = sub_245FAC498(v173 > 1, v174 + 1, 1, v170);
        }

        v140(v269, v280);
        v176 = v289;
      }

      else
      {
        v144 = v268;
        (*v242)(v268, v105, v117);
        v145 = v72;
        v125 = v282;
        v272(v254, v274, v282);
        v146 = v243;
        v122(v243, v145, v112);
        v147 = v244;
        (*v248)(v244, v144, v117);
        v148 = v117;
        v149 = sub_2460918D4();
        v150 = sub_246091FC4();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v290[0] = v152;
          *v151 = v247;
          *(v151 + 4) = 1752392040;
          *(v151 + 12) = 2081;
          v153 = sub_2460916F4();
          v155 = v154;
          v283 = *v285;
          (v283)(v146, v276);
          v156 = sub_245F8D3C0(v153, v155, v290);

          *(v151 + 14) = v156;
          *(v151 + 22) = 2082;
          sub_245FAEDFC(&qword_27EE3A0C8, MEMORY[0x277CC9578]);
          v157 = sub_2460923D4();
          v159 = v158;
          v160 = v147;
          v161 = *v277;
          (*v277)(v160, v148);
          v162 = sub_245F8D3C0(v157, v159, v290);
          v163 = v161;

          *(v151 + 24) = v162;
          _os_log_impl(&dword_245F8A000, v149, v150, "Image Folder Reader: %{private,mask.hash}s with dateTimeOriginal %{public}s", v151, 0x20u);
          swift_arrayDestroy();
          v164 = v152;
          v125 = v282;
          MEMORY[0x24C1989D0](v164, -1, -1);
          v165 = v151;
          v112 = v276;
          MEMORY[0x24C1989D0](v165, -1, -1);
        }

        else
        {

          v163 = *v277;
          (*v277)(v147, v148);
          v112 = v276;
          v283 = *v285;
          (v283)(v146, v276);
        }

        v271(v254, v125);
        sub_246091784();
        v177 = *(v278 + 48);
        v178 = v256;
        *v256 = v179;
        v284(&v178[v177], v289[0], v112);
        v170 = v279;
        v180 = swift_isUniquelyReferenced_nonNull_native();
        v172 = v266;
        if ((v180 & 1) == 0)
        {
          v170 = sub_245FAC498(0, v170[2] + 1, 1, v170);
        }

        v174 = v170[2];
        v181 = v170[3];
        v175 = v174 + 1;
        if (v174 >= v181 >> 1)
        {
          v170 = sub_245FAC498(v181 > 1, v174 + 1, 1, v170);
        }

        v163(v268, v280);
        v176 = &v288;
      }

      v182 = *(v176 - 32);
      v170[2] = v175;
      v183 = (*(v261 + 80) + 32) & ~*(v261 + 80);
      v279 = v170;
      sub_245FAEBF8(v182, v170 + v183 + *(v261 + 72) * v174);
      v72 = v289[0];
      if (!*(v265 + v251))
      {
        goto LABEL_82;
      }

      v184 = sub_245F9B098(v289[0]);
      if (v185)
      {
        v186 = v185;
        v267 = v184;
        v272(v172, v274, v125);
        v187 = v125;
        v188 = v246;
        v284(v246, v72, v112);

        v189 = v112;
        v190 = sub_2460918D4();
        v191 = sub_246091FC4();

        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v193 = swift_slowAlloc();
          v290[0] = v193;
          *v192 = v247;
          *(v192 + 4) = 1752392040;
          *(v192 + 12) = 2081;
          v194 = sub_2460916F4();
          v196 = v195;
          (v283)(v188, v189);
          v197 = sub_245F8D3C0(v194, v196, v290);

          *(v192 + 14) = v197;
          *(v192 + 22) = 2082;
          v198 = v267;
          *(v192 + 24) = sub_245F8D3C0(v267, v186, v290);
          _os_log_impl(&dword_245F8A000, v190, v191, "Image Folder Reader: %{private,mask.hash}s with HEIC version: %{public}s", v192, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v193, -1, -1);
          v72 = v289[0];
          MEMORY[0x24C1989D0](v192, -1, -1);

          v271(v266, v282);
          v112 = v189;
        }

        else
        {

          (v283)(v188, v189);
          v271(v172, v187);
          v112 = v189;
          v72 = v289[0];
          v198 = v267;
        }

        v104 = v260;
        v117 = v280;
        v118 = v262;
        v119 = v275;
        if (v263)
        {
          if (v252 == v198 && v263 == v186)
          {
          }

          else
          {
            v199 = sub_2460923E4();

            if (v199)
            {
              v252 = v267;
              v263 = v186;
              v72 = v289[0];
            }

            else
            {
              v290[0] = 0x302E302E31;
              v290[1] = 0xE500000000000000;
              v289[1] = v267;
              v289[2] = v186;
              v200 = sub_246091864();
              v201 = v240;
              (*(*(v200 - 8) + 56))(v240, 1, 1, v200);
              sub_245FA2AE4();
              v202 = sub_246092154();
              sub_245F8E744(v201, &qword_27EE3A0B8, "nP");
              v72 = v289[0];
              if (!v202)
              {
                (*(*v265 + 192))(1);
              }

              v252 = v267;
              v263 = v186;
              v117 = v280;
            }
          }
        }

        else
        {
          v252 = v198;
          v263 = v186;
        }
      }

      else
      {
        v104 = v260;
        v117 = v280;
        v118 = v262;
        v119 = v275;
      }

      v115 = (v119 + 1);
      (v283)(v72, v112);
      v105 = v264;
    }

    while (v253 != v115);
  }

  else
  {
    v279 = MEMORY[0x277D84F90];
  }

  v203 = v238;
  v272(v238, v274, v282);
  v204 = sub_2460918D4();
  v205 = sub_246091FC4();
  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    *v206 = 0;
    _os_log_impl(&dword_245F8A000, v204, v205, "Image Folder Reader: ]  // Files", v206, 2u);
    MEMORY[0x24C1989D0](v206, -1, -1);
  }

  v207 = v282;
  v271(v203, v282);
  v272(v241, v274, v207);
  v208 = v265;

  v209 = sub_2460918D4();
  v210 = sub_246091FC4();
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    *v211 = 67109120;
    *(v211 + 4) = (*(*v208 + 184))() & 1;

    _os_log_impl(&dword_245F8A000, v209, v210, "Image Folder Reader: Should reset legacy segment id: %{BOOL}d", v211, 8u);
    v212 = v211;
    v213 = v282;
    MEMORY[0x24C1989D0](v212, -1, -1);

    v214 = v237;
    v215 = v236;
  }

  else
  {

    v214 = v237;
    v215 = v236;
    v213 = v282;
  }

  v271(v241, v213);
  v290[0] = v279;

  sub_245FAD364(v290);
  if (!v214)
  {

    v216 = v290[0];
    v272(v215, v274, v213);

    v217 = sub_2460918D4();
    v218 = sub_246091FC4();
    if (os_log_type_enabled(v217, v218))
    {
      v219 = swift_slowAlloc();
      *v219 = 134349056;
      *(v219 + 4) = *(v216 + 2);

      _os_log_impl(&dword_245F8A000, v217, v218, "Image Folder Reader: Number of loadable image files with valid timestamps = %{public}ld", v219, 0xCu);
      v220 = v219;
      v213 = v282;
      MEMORY[0x24C1989D0](v220, -1, -1);
    }

    else
    {
    }

    v271(v215, v213);
    v221 = *(v216 + 2);
    if (v221)
    {
      v288 = 0;
      v290[0] = MEMORY[0x277D84F90];
      sub_245FAC7A8(0, v221, 0);
      v88 = v290[0];
      v222 = *(v261 + 80);
      v286 = v216;
      v223 = &v216[(v222 + 32) & ~v222];
      v289[0] = *(v261 + 72);
      v224 = (v287 + 32);
      v225 = v276;
      do
      {
        v226 = v258;
        sub_245F8E7A4(v223, v258, &qword_27EE3A0C0, "nP");
        v227 = v259;
        sub_245FAEBF8(v226, v259);
        v228 = *v224;
        (*v224)(v104, v227 + *(v278 + 48), v225);
        v290[0] = v88;
        v229 = v104;
        v231 = v88[2];
        v230 = v88[3];
        if (v231 >= v230 >> 1)
        {
          sub_245FAC7A8(v230 > 1, v231 + 1, 1);
          v88 = v290[0];
        }

        v88[2] = v231 + 1;
        v228(v88 + ((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v231, v229, v225);
        v223 += v289[0];
        --v221;
        v104 = v229;
      }

      while (v221);
    }

    else
    {

      v88 = MEMORY[0x277D84F90];
    }

    goto LABEL_79;
  }

  __break(1u);
  return result;
}

double sub_245FABAE4(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7)
{
  v29 = a6;
  v30 = a7;
  v27 = a4;
  v28 = a5;
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245F8E624(&qword_27EE3A0B8, "nP");
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  if (!a3)
  {
    v22 = sub_245FA3174();
    (*(v11 + 16))(v14, v22, v10);
    v23 = sub_2460918D4();
    v24 = sub_246091FB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245F8A000, v23, v24, "No heifVersion found!  Can't tell if the box is already padded or not, so just returning it as-is!", v25, 2u);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    return *v27.i64;
  }

  v33 = a2;
  v34 = a3;
  v31 = 0x302E302E32;
  v32 = 0xE500000000000000;
  v19 = sub_246091864();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  sub_245FA2AE4();
  v20 = sub_246092154();
  sub_245F8E744(v18, &qword_27EE3A0B8, "nP");
  if (v20 != -1)
  {
    return *v27.i64;
  }

  if (a1 == 1)
  {
    v21 = sub_246090E60();
  }

  else
  {
    v21 = sub_246090EC4();
  }

  return sub_246021644(v27, v28, v29, v30, *v21);
}

uint64_t sub_245FABD88(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v79 = *MEMORY[0x277D85DE8];
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v72 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v74 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - v16;
  v18 = sub_245FA3174();
  v73 = v12;
  v19 = *(v12 + 16);
  v64 = v18;
  v65 = v12 + 16;
  v63 = v19;
  (v19)(v17);
  v20 = v5[2];
  v71 = a1;
  v62 = v5 + 2;
  v60 = v20;
  v20(v10, a1, v4);
  v21 = sub_2460918D4();
  v22 = sub_246091FC4();
  v23 = os_log_type_enabled(v21, v22);
  v68 = v2;
  v66 = v5;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v67 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v77 = v26;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = sub_2460916F4();
    v28 = v5;
    v30 = v29;
    v61 = v28[1];
    v61(v10, v4);
    v31 = sub_245F8D3C0(v27, v30, &v77);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_245F8A000, v21, v22, "Image Folder Reader: Trying to load thumbnail %{private,mask.hash}s", v25, 0x16u);
    sub_245F8E6F4(v26);
    MEMORY[0x24C1989D0](v26, -1, -1);
    v32 = v25;
    v11 = v67;
    MEMORY[0x24C1989D0](v32, -1, -1);
  }

  else
  {

    v61 = v5[1];
    v61(v10, v4);
  }

  v33 = *(v73 + 8);
  v33(v17, v11);
  v78 = 0;
  v34 = OBJC_IVAR____TtC6CoreOC30ObjectCaptureImageFolderReader_heicReadHandle;
  v35 = v69;
  swift_beginAccess();
  v36 = *(v35 + v34);
  v37 = v71;
  v38 = sub_246091674();
  LODWORD(v36) = OCNonModularSPI_CMPhoto_readThumbnail();

  v39 = v74;
  v40 = v72;
  if (v36 || (v22 = v78) == 0)
  {
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_246092284();

    v75 = 0xD000000000000030;
    v76 = 0x800000024609EDE0;
    v41 = sub_2460916F4();
    MEMORY[0x24C196640](v41);

    v42 = v75;
    v43 = v76;
    sub_245FAC70C();
    swift_allocError();
    *v44 = v42;
    *(v44 + 8) = v43;
    *(v44 + 16) = 1;
    swift_willThrow();
  }

  else
  {
    v63(v74, v64, v11);
    v60(v40, v37, v4);
    v45 = sub_2460918D4();
    v46 = sub_246091FC4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v71 = v4;
      v48 = v40;
      v49 = v47;
      v50 = swift_slowAlloc();
      v75 = v50;
      *v49 = 141558275;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2081;
      v51 = sub_2460916F4();
      v67 = v11;
      v53 = v52;
      v61(v48, v71);
      v54 = sub_245F8D3C0(v51, v53, &v75);

      *(v49 + 14) = v54;
      _os_log_impl(&dword_245F8A000, v45, v46, "Image Folder Reader: Successfully loaded thumbnail %{private,mask.hash}s", v49, 0x16u);
      sub_245F8E6F4(v50);
      MEMORY[0x24C1989D0](v50, -1, -1);
      MEMORY[0x24C1989D0](v49, -1, -1);

      v55 = v74;
      v56 = v67;
    }

    else
    {

      v61(v40, v4);
      v55 = v39;
      v56 = v11;
    }

    v33(v55, v56);
  }

  v57 = *MEMORY[0x277D85DE8];
  return v22;
}

char *sub_245FAC394(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A0D0, &qword_246098D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

size_t sub_245FAC498(size_t result, int64_t a2, char a3, void *a4)
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

  sub_245F8E624(&qword_27EE3A0D8, &unk_246097220);
  v10 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
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

void *sub_245FAC688(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&qword_27EE3A0E8, &qword_24609ADA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

unint64_t sub_245FAC70C()
{
  result = qword_27EE3A0A0;
  if (!qword_27EE3A0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A0A0);
  }

  return result;
}

uint64_t sub_245FAC768()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

size_t sub_245FAC7A8(size_t a1, int64_t a2, char a3)
{
  result = sub_245FACA34(a1, a2, a3, *v3, &qword_27EE3A0E0, &unk_246097BF0, MEMORY[0x277CC9260]);
  *v3 = result;
  return result;
}

size_t sub_245FAC7EC(size_t a1, int64_t a2, char a3)
{
  result = sub_245FACA34(a1, a2, a3, *v3, &qword_27EE3A108, &qword_246097248, type metadata accessor for ObjectCaptureImageFolderReader.SampleDescriptor);
  *v3 = result;
  return result;
}

size_t sub_245FAC844(size_t result, int64_t a2, char a3, void *a4)
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

  sub_245F8E624(&qword_27EE3A0D8, &unk_246097220);
  v10 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
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

size_t sub_245FACA34(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_245F8E624(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t sub_245FACC10(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_2460924F4();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_245FACF14(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_245FACCF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_245F8E624(&qword_27EE3A0F8, &unk_246098440);
  result = sub_246092244();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_2460924F4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_245FACF14(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245FACCF0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_245FAD034();
      a2 = v7;
      goto LABEL_12;
    }

    sub_245FAD174(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_2460924F4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_245FAD034()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A0F8, &unk_246098440);
  v2 = *v0;
  v3 = sub_246092234();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_245FAD174(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_245F8E624(&qword_27EE3A0F8, &unk_246098440);
  result = sub_246092244();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_2460924F4();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_245FAD364(void **a1)
{
  v2 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_245FAC830(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_245FAD418(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_245FAD418(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2460923C4();
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
        sub_245F8E624(&qword_27EE3A0C0, "nP");
        v6 = sub_246091E14();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_245F8E624(&qword_27EE3A0C0, "nP") - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_245FAD79C(v8, v9, a1, v4);
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
    return sub_245FAD55C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_245FAD55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v29 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    while (1)
    {
      sub_245F8E7A4(v24, v18, &qword_27EE3A0C0, "nP");
      sub_245F8E7A4(v21, v14, &qword_27EE3A0C0, "nP");
      v26 = *v18;
      v27 = *v14;
      sub_245F8E744(v14, &qword_27EE3A0C0, "nP");
      result = sub_245F8E744(v18, &qword_27EE3A0C0, "nP");
      if (v26 >= v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_245FAEBF8(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_245FAEBF8(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245FAD79C(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v101 = a1;
  v114 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  v109 = *(v114 - 8);
  v8 = *(v109 + 64);
  v9 = MEMORY[0x28223BE20](v114);
  v105 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v98 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v98 - v14);
  result = MEMORY[0x28223BE20](v13);
  v18 = (&v98 - v17);
  v111 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    a4 = *v101;
    if (!*v101)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_128:
      result = sub_245FAE62C(a3);
    }

    v115 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v111)
      {
        v94 = *(result + 16 * a3);
        v95 = result;
        v96 = *(result + 16 * (a3 - 1) + 40);
        sub_245FAE0A0(*v111 + *(v109 + 72) * v94, *v111 + *(v109 + 72) * *(result + 16 * (a3 - 1) + 32), *v111 + *(v109 + 72) * v96, a4);
        if (v5)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_245FAE62C(v95);
        }

        if (a3 - 2 >= *(v95 + 2))
        {
          goto LABEL_122;
        }

        v97 = &v95[16 * a3];
        *v97 = v94;
        *(v97 + 1) = v96;
        v115 = v95;
        sub_245FAE5A0(a3 - 1);
        result = v115;
        a3 = *(v115 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v100 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v106 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v102 = v20;
      v24 = *v111;
      v25 = *(v109 + 72);
      v26 = *v111 + v25 * v23;
      v112 = v24;
      sub_245F8E7A4(v24 + v25 * v23, v18, &qword_27EE3A0C0, "nP");
      v27 = v102;
      sub_245F8E7A4(v24 + v25 * v102, v15, &qword_27EE3A0C0, "nP");
      v28 = *v18;
      v29 = *v15;
      sub_245F8E744(v15, &qword_27EE3A0C0, "nP");
      result = sub_245F8E744(v18, &qword_27EE3A0C0, "nP");
      a3 = v27 + 2;
      v110 = v25;
      v30 = v112 + v25 * a3;
      while (v19 != a3)
      {
        LODWORD(v112) = v28 < v29;
        sub_245F8E7A4(v30, v18, &qword_27EE3A0C0, "nP");
        sub_245F8E7A4(v26, v15, &qword_27EE3A0C0, "nP");
        v31 = *v18;
        v32 = *v15;
        sub_245F8E744(v15, &qword_27EE3A0C0, "nP");
        result = sub_245F8E744(v18, &qword_27EE3A0C0, "nP");
        ++a3;
        v30 += v110;
        v26 += v110;
        if (((v112 ^ (v31 >= v32)) & 1) == 0)
        {
          v19 = a3 - 1;
          break;
        }
      }

      a4 = v100;
      v22 = v102;
      if (v28 < v29)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v99 = v5;
          a3 = v110 * (v19 - 1);
          v33 = v19 * v110;
          v112 = v19;
          v34 = v19;
          v35 = v102;
          v36 = v102 * v110;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v111;
              if (!*v111)
              {
                goto LABEL_131;
              }

              sub_245FAEBF8(v37 + v36, v105);
              if (v36 < a3 || v37 + v36 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_245FAEBF8(v105, v37 + a3);
            }

            ++v35;
            a3 -= v110;
            v33 -= v110;
            v36 += v110;
          }

          while (v35 < v34);
          v5 = v99;
          a4 = v100;
          v22 = v102;
          v19 = v112;
        }
      }
    }

    v38 = v111[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v38)
        {
          v39 = v111[1];
        }

        else
        {
          v39 = v22 + a4;
        }

        if (v39 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v106;
    }

    else
    {
      result = sub_245FAC394(0, *(v106 + 2) + 1, 1, v106);
      v21 = result;
    }

    a3 = *(v21 + 2);
    v40 = *(v21 + 3);
    a4 = a3 + 1;
    if (a3 >= v40 >> 1)
    {
      result = sub_245FAC394((v40 > 1), a3 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = a4;
    v41 = &v21[16 * a3];
    *(v41 + 4) = v22;
    *(v41 + 5) = v20;
    v112 = *v101;
    if (!v112)
    {
      goto LABEL_133;
    }

    if (a3)
    {
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v21 + 4);
          v44 = *(v21 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_112;
          }

          v59 = &v21[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_115;
          }

          v65 = &v21[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_119;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v21[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_114;
        }

        v72 = &v21[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_117;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v42 - 1;
        if (v42 - 1 >= a4)
        {
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
          goto LABEL_127;
        }

        if (!*v111)
        {
          goto LABEL_130;
        }

        v80 = v21;
        a4 = *&v21[16 * a3 + 32];
        v81 = *&v21[16 * v42 + 40];
        sub_245FAE0A0(*v111 + *(v109 + 72) * a4, *v111 + *(v109 + 72) * *&v21[16 * v42 + 32], *v111 + *(v109 + 72) * v81, v112);
        if (v5)
        {
        }

        if (v81 < a4)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_245FAE62C(v80);
        }

        if (a3 >= *(v80 + 2))
        {
          goto LABEL_109;
        }

        v82 = &v80[16 * a3];
        *(v82 + 4) = a4;
        *(v82 + 5) = v81;
        v115 = v80;
        a3 = &v115;
        result = sub_245FAE5A0(v42);
        v21 = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v21[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_110;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_111;
      }

      v54 = &v21[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_113;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_116;
      }

      if (v58 >= v50)
      {
        v76 = &v21[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_120;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v111[1];
    a4 = v100;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v99 = v5;
  v83 = *v111;
  v84 = *(v109 + 72);
  v85 = *v111 + v84 * (v19 - 1);
  v86 = v19;
  v87 = -v84;
  v102 = v22;
  v103 = v84;
  v88 = v22 - v86;
  v112 = v86;
  a4 = v83 + v86 * v84;
  v104 = v39;
LABEL_85:
  v107 = a4;
  v108 = v88;
  v89 = v88;
  v110 = v85;
  v90 = v85;
  while (1)
  {
    a3 = &qword_27EE3A0C0;
    sub_245F8E7A4(a4, v18, &qword_27EE3A0C0, "nP");
    sub_245F8E7A4(v90, v15, &qword_27EE3A0C0, "nP");
    v91 = *v18;
    v92 = *v15;
    sub_245F8E744(v15, &qword_27EE3A0C0, "nP");
    result = sub_245F8E744(v18, &qword_27EE3A0C0, "nP");
    if (v91 >= v92)
    {
LABEL_84:
      v20 = v104;
      v85 = v110 + v103;
      v88 = v108 - 1;
      a4 = v107 + v103;
      if (++v112 != v104)
      {
        goto LABEL_85;
      }

      v5 = v99;
      v22 = v102;
      if (v104 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v83)
    {
      break;
    }

    a3 = v113;
    sub_245FAEBF8(a4, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_245FAEBF8(a3, v90);
    v90 += v87;
    a4 += v87;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_245FAE0A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v45 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  v7 = *(*(v45 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v45);
  v46 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v44 = v27;
        while (1)
        {
          v30 = v47;
          if (v27 <= a1)
          {
            v50 = v27;
            v48 = v40;
            goto LABEL_58;
          }

          v41 = v24;
          v47 += v25;
          v31 = v26 + v25;
          sub_245F8E7A4(v31, v12, &qword_27EE3A0C0, "nP");
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v46;
          sub_245F8E7A4(v33, v46, &qword_27EE3A0C0, "nP");
          v36 = *v34;
          v37 = *v35;
          v38 = v35;
          v12 = v34;
          sub_245F8E744(v38, &qword_27EE3A0C0, "nP");
          sub_245F8E744(v34, &qword_27EE3A0C0, "nP");
          if (v36 < v37)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v31;
            }
          }

          v26 = v24;
          v27 = v44;
          v29 = v31 > v43;
          v25 = v42;
          if (!v29)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v30 < v44 || v47 >= v44)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v25 = v42;
          a2 = v32;
          if (v30 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_57:
    v50 = a2;
    v48 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < v47)
    {
      do
      {
        sub_245F8E7A4(a2, v12, &qword_27EE3A0C0, "nP");
        v21 = v46;
        sub_245F8E7A4(a4, v46, &qword_27EE3A0C0, "nP");
        v22 = *v12;
        v23 = *v21;
        sub_245F8E744(v21, &qword_27EE3A0C0, "nP");
        sub_245F8E744(v12, &qword_27EE3A0C0, "nP");
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v19 && a2 < v47);
    }
  }

LABEL_58:
  sub_245FAE640(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_245FAE5A0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_245FAE62C(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_245FAE640(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_245F8E624(&qword_27EE3A0C0, "nP");
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

void *sub_245FAE730(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_245FAE858()
{
  result = sub_246091704();
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

uint64_t sub_245FAE9FC(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_245FAEA3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_245FAEABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091704();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_245FAEB4C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245FAEB84()
{
  result = sub_246091704();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_245FAEBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A0C0, "nP");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FAEC68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_245FAEC7C(a1, a2);
  }

  return a1;
}

uint64_t sub_245FAEC7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_245FAECD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FAED40(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_245FAED94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_245FAEDFC(unint64_t *a1, void (*a2)(uint64_t))
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

CoreOC::ObjectCaptureFrameEvent::GestureEvent_optional __swiftcall ObjectCaptureFrameEvent.GestureEvent.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s6CoreOC21PhotogrammetrySessionC13ConfigurationV14SampleOrderingO9hashValueSivg_0()
{
  v1 = *v0;
  sub_246092504();
  MEMORY[0x24C196E90](v1);
  return sub_246092544();
}

uint64_t sub_245FAEEE8()
{
  v1 = *v0;
  sub_246092504();
  MEMORY[0x24C196E90](v1);
  return sub_246092544();
}

CoreOC::ObjectCaptureFrameEvent::ScanStatus_optional __swiftcall ObjectCaptureFrameEvent.ScanStatus.init(rawValue:)(Swift::Int rawValue)
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

void *sub_245FAEF7C@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t sub_245FAF014(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

double sub_245FAF068()
{
  v1 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_245FAF0AC(double a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_245FAF0FC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x90))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_245FAF168(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_245FAF1BC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_245FAF210(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

void *sub_245FAF260@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xA8))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_245FAF2CC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_245FAF320@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_245FAF374(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_245FAF420(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position);
  result = swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  return result;
}

double sub_245FAF478()
{
  v1 = v0 + OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_245FAF4C0(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_245FAF518@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD8))();
  *a2 = result;
  return result;
}

uint64_t sub_245FAF574(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_245FAF5DC()
{
  v1 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_245FAF624(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_245FAF6E4()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xD8))();
  v3 = *(v2 + 16);
  if (v3)
  {
    v29 = MEMORY[0x277D84F90];
    sub_245FB10A0(0, v3, 0);
    v4 = 32;
    v5 = v29;
    do
    {
      v6 = *(v2 + v4);
      v7 = sub_246091F04();
      v29 = v5;
      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_245FB10A0((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v5 = v29;
      }

      *(v5 + 16) = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v8;
      v4 += 4;
      --v3;
    }

    while (v3);
  }

  sub_245F8E624(&qword_27EE3A138, &qword_246097250);
  sub_245FB10C0();
  v14 = sub_246091BA4();
  v16 = v15;

  v29 = 0;
  v30 = 0xE000000000000000;
  v17 = sub_246092284();
  (*((*v1 & *v0) + 0x78))(v17);
  sub_246091EF4();
  v18 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  (*((*v1 & *v0) + 0x90))(&v28, v18);
  v19 = sub_2460923D4();
  MEMORY[0x24C196640](v19);

  v20 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  (*((*v1 & *v0) + 0xA8))(&v28, v20);
  v21 = sub_2460923D4();
  MEMORY[0x24C196640](v21);

  v22 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  v23 = *((*v1 & *v0) + 0xC0);
  v23(v22);
  v24 = sub_246091EE4();
  MEMORY[0x24C196640](v24);

  v25 = MEMORY[0x24C196640](8236, 0xE200000000000000);
  v23(v25);
  v26 = sub_246091EE4();
  MEMORY[0x24C196640](v26);

  MEMORY[0x24C196640](8236, 0xE200000000000000);

  MEMORY[0x24C196640](v14, v16);

  return v29;
}

id ObjectCaptureFrameEvent.__allocating_init(timestamp:gesture:scanStatus:position:boxTransform:)(_BYTE *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = *a2;
  v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture] = *a1;
  v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus] = v14;
  v15 = &v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position];
  *v15 = a5;
  v15[1] = a6;
  *&v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp] = a4;
  *&v13[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform] = a3;
  v17.receiver = v13;
  v17.super_class = v6;
  return objc_msgSendSuper2(&v17, sel_init);
}

id ObjectCaptureFrameEvent.init(timestamp:gesture:scanStatus:position:boxTransform:)(_BYTE *a1, _BYTE *a2, uint64_t a3, double a4, double a5, double a6)
{
  v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_gesture] = *a1;
  v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_scanStatus] = *a2;
  v7 = &v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_position];
  *v7 = a5;
  v7[1] = a6;
  *&v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_timestamp] = a4;
  *&v6[OBJC_IVAR____TtC6CoreOC23ObjectCaptureFrameEvent_boxTransform] = a3;
  v9.receiver = v6;
  v9.super_class = type metadata accessor for ObjectCaptureFrameEvent();
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t ObjectCaptureFrameEvent.init(coder:)(void *a1)
{
  v2 = sub_246091BD4();
  v3 = [a1 decodeIntegerForKey_];

  if (v3 > 4)
  {
    goto LABEL_5;
  }

  v4 = sub_246091BD4();
  v5 = [a1 decodeIntegerForKey_];

  if (v5)
  {
    if (v5 == 1)
    {
      v26 = v3;
      v25 = 1;
      goto LABEL_7;
    }

LABEL_5:

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v26 = v3;
  v25 = 0;
LABEL_7:
  v7 = sub_246091BD4();
  [a1 decodeCGPointForKey_];
  v9 = v8;
  v11 = v10;

  v12 = sub_246091BD4();
  [a1 decodeDoubleForKey_];
  v14 = v13;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  do
  {
    v17 = sub_2460923D4();
    strcpy(v28, "boxTransform");
    HIBYTE(v28[6]) = 0;
    v28[7] = -5120;
    MEMORY[0x24C196640](v17);

    v18 = sub_246091BD4();

    [a1 decodeFloatForKey_];
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_245FB1254(0, *(v16 + 2) + 1, 1, v16);
    }

    v22 = *(v16 + 2);
    v21 = *(v16 + 3);
    if (v22 >= v21 >> 1)
    {
      v16 = sub_245FB1254((v21 > 1), v22 + 1, 1, v16);
    }

    ++v15;
    *(v16 + 2) = v22 + 1;
    *&v16[4 * v22 + 32] = v20;
  }

  while (v15 != 16);
  ObjectType = swift_getObjectType();
  LOBYTE(v28[0]) = v26;
  v27 = v25;
  v24 = (*(ObjectType + 240))(v28, &v27, v16, v14, v9, v11);

  swift_deallocPartialClassInstance();
  return v24;
}

unsigned __int8 *ObjectCaptureFrameEvent.__allocating_init(line:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_246091494();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_114;
  }

  v95 = v2;
  v98 = *&a1;
  v99 = a2;
  v97[0] = 44;
  v97[1] = 0xE100000000000000;
  sub_245FA2AE4();
  v11 = sub_246092114();

  v12 = v11[2];
  if (v12 < 5)
  {
    goto LABEL_114;
  }

  v13 = v11[5];
  v98 = *(v11 + 4);
  v99 = v13;

  sub_246091484();
  v14 = sub_246092124();
  v16 = v15;
  v18 = *(v6 + 8);
  v17 = v6 + 8;
  v94 = v18;
  v18(v9, v5);

  v98 = 0.0;
  LOBYTE(v14) = sub_245FB1358(v14, v16, &v98, MEMORY[0x277D84FA8]);

  if ((v14 & 1) == 0)
  {
    goto LABEL_114;
  }

  if (v11[2] < 2uLL)
  {
    __break(1u);
LABEL_112:

    goto LABEL_114;
  }

  v19 = v98;
  v20 = v11[7];
  v98 = *(v11 + 6);
  v99 = v20;

  sub_246091484();
  v21 = sub_246092124();
  v23 = v22;
  v94(v9, v5);

  v25 = HIBYTE(v23) & 0xF;
  v26 = v21 & 0xFFFFFFFFFFFFLL;
  if ((v23 & 0x2000000000000000) != 0)
  {
    v27 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v27 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {
    goto LABEL_112;
  }

  if ((v23 & 0x1000000000000000) != 0)
  {
    LOBYTE(v97[0]) = 0;
    v93 = sub_245F8DA98(v21, v23, 10);
    v88 = v87;

    if (v88)
    {
      goto LABEL_114;
    }

    goto LABEL_71;
  }

  if ((v23 & 0x2000000000000000) != 0)
  {
    v98 = *&v21;
    v99 = v23 & 0xFFFFFFFFFFFFFFLL;
    if (v21 == 43)
    {
      if (!v25)
      {
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      if (--v25)
      {
        v29 = 0;
        v43 = &v98 + 1;
        while (1)
        {
          v44 = *v43 - 48;
          if (v44 > 9)
          {
            break;
          }

          v45 = (v29 * 10) >> 64;
          v46 = 10 * v29;
          if (v45 != v46 >> 63)
          {
            break;
          }

          v34 = __OFADD__(v46, v44);
          v29 = v46 + v44;
          if (v34)
          {
            break;
          }

          ++v43;
          if (!--v25)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v21 == 45)
    {
      if (!v25)
      {
LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      if (--v25)
      {
        v29 = 0;
        v35 = &v98 + 1;
        while (1)
        {
          v36 = *v35 - 48;
          if (v36 > 9)
          {
            break;
          }

          v37 = (v29 * 10) >> 64;
          v38 = 10 * v29;
          if (v37 != v38 >> 63)
          {
            break;
          }

          v34 = __OFSUB__(v38, v36);
          v29 = v38 - v36;
          if (v34)
          {
            break;
          }

          ++v35;
          if (!--v25)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v25)
    {
      v29 = 0;
      v51 = &v98;
      while (1)
      {
        v52 = *v51 - 48;
        if (v52 > 9)
        {
          break;
        }

        v53 = (v29 * 10) >> 64;
        v54 = 10 * v29;
        if (v53 != v54 >> 63)
        {
          break;
        }

        v34 = __OFADD__(v54, v52);
        v29 = v54 + v52;
        if (v34)
        {
          break;
        }

        v51 = (v51 + 1);
        if (!--v25)
        {
          goto LABEL_69;
        }
      }
    }

    goto LABEL_68;
  }

  if ((v21 & 0x1000000000000000) != 0)
  {
    result = ((v23 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_2460922B4();
  }

  v28 = *result;
  if (v28 == 43)
  {
    if (v26 < 1)
    {
LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

    v25 = v26 - 1;
    if (v26 == 1)
    {
      goto LABEL_68;
    }

    v29 = 0;
    if (result)
    {
      v39 = result + 1;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          goto LABEL_68;
        }

        v41 = (v29 * 10) >> 64;
        v42 = 10 * v29;
        if (v41 != v42 >> 63)
        {
          goto LABEL_68;
        }

        v34 = __OFADD__(v42, v40);
        v29 = v42 + v40;
        if (v34)
        {
          goto LABEL_68;
        }

        ++v39;
        if (!--v25)
        {
          goto LABEL_69;
        }
      }
    }

LABEL_77:
    LOBYTE(v25) = 0;
    goto LABEL_69;
  }

  if (v28 == 45)
  {
    if (v26 < 1)
    {
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v25 = v26 - 1;
    if (v26 == 1)
    {
      goto LABEL_68;
    }

    v29 = 0;
    if (result)
    {
      v30 = result + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        v32 = (v29 * 10) >> 64;
        v33 = 10 * v29;
        if (v32 != v33 >> 63)
        {
          break;
        }

        v34 = __OFSUB__(v33, v31);
        v29 = v33 - v31;
        if (v34)
        {
          break;
        }

        ++v30;
        if (!--v25)
        {
          goto LABEL_69;
        }
      }

LABEL_68:
      v29 = 0;
      LOBYTE(v25) = 1;
LABEL_69:
      v93 = v29;
      goto LABEL_70;
    }

    goto LABEL_77;
  }

  if (v26)
  {
    v47 = 0;
    if (!result)
    {
LABEL_60:
      LOBYTE(v25) = 0;
      v93 = v47;
      goto LABEL_70;
    }

    while (1)
    {
      v48 = *result - 48;
      if (v48 > 9)
      {
        break;
      }

      v49 = (v47 * 10) >> 64;
      v50 = 10 * v47;
      if (v49 != v50 >> 63)
      {
        break;
      }

      v34 = __OFADD__(v50, v48);
      v47 = v50 + v48;
      if (v34)
      {
        break;
      }

      ++result;
      if (!--v26)
      {
        goto LABEL_60;
      }
    }
  }

  LOBYTE(v25) = 1;
  v93 = 0;
LABEL_70:
  LOBYTE(v97[0]) = v25;
  v55 = v25;

  if (v55)
  {
    goto LABEL_114;
  }

LABEL_71:
  if (v93 >= 5)
  {
    goto LABEL_114;
  }

  v92 = v17;
  if (v11[2] < 3uLL)
  {
    __break(1u);
    goto LABEL_117;
  }

  v56 = v11[9];
  v98 = *(v11 + 8);
  v99 = v56;

  sub_246091484();
  v57 = sub_246092124();
  v59 = v58;
  v94(v9, v5);

  result = sub_245FB0940(v57, v59);
  if (v60)
  {
    goto LABEL_114;
  }

  if (result)
  {
    if (result == 1)
    {
      v61 = 1;
      goto LABEL_80;
    }

LABEL_114:

    return 0;
  }

  v61 = 0;
LABEL_80:
  if (v11[2] < 4uLL)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v62 = v11[11];
  v98 = *(v11 + 10);
  v99 = v62;

  sub_246091484();
  v63 = sub_246092124();
  v65 = v64;
  v94(v9, v5);

  LODWORD(v98) = 0;
  LOBYTE(v63) = sub_245FB1358(v63, v65, &v98, MEMORY[0x277D84FB0]);

  if ((v63 & 1) == 0)
  {
    goto LABEL_114;
  }

  if (v11[2] < 5uLL)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v66 = *&v98;
  v67 = v11[13];
  v98 = *(v11 + 12);
  v99 = v67;

  sub_246091484();
  v68 = sub_246092124();
  v70 = v69;
  v94(v9, v5);

  LODWORD(v98) = 0;
  LOBYTE(v68) = sub_245FB1358(v68, v70, &v98, MEMORY[0x277D84FB0]);

  if ((v68 & 1) == 0)
  {
    goto LABEL_114;
  }

  v90 = v61;
  v71 = *&v98;
  if (v12 >= 0x15)
  {
    if (v11[2] >= 0x15uLL)
    {
      v73 = v11 + 15;
      v74 = 16;
      v91 = MEMORY[0x277D84F90];
      while (1)
      {
        v75 = *v73;
        v98 = *(v73 - 1);
        v99 = v75;

        sub_246091484();
        v76 = sub_246092124();
        v78 = v77;
        v94(v9, v5);

        LODWORD(v97[0]) = 0;
        MEMORY[0x28223BE20](v79);
        *&v89[-16] = v97;
        if ((v78 & 0x1000000000000000) != 0)
        {
LABEL_110:
          sub_246092274();

          v72 = v95;
          goto LABEL_104;
        }

        if ((v78 & 0x2000000000000000) != 0)
        {
          v98 = *&v76;
          v99 = v78 & 0xFFFFFFFFFFFFFFLL;
          if (v76 >= 0x21u || ((0x100003E01uLL >> v76) & 1) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          if ((v76 & 0x1000000000000000) == 0)
          {
            goto LABEL_110;
          }

          v80 = *((v78 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          if (v80 >= 0x21 || ((0x100003E01uLL >> v80) & 1) == 0)
          {
LABEL_100:
            v82 = _swift_stdlib_strtof_clocale();
            v72 = v95;
            if (v82)
            {
              v81 = *v82 == 0;
            }

            else
            {
              v81 = 0;
            }

            goto LABEL_103;
          }
        }

        v81 = 0;
        v72 = v95;
LABEL_103:
        v96 = v81;

LABEL_104:
        if (v96)
        {
          v83 = v97[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_245FB1254(0, *(v91 + 2) + 1, 1, v91);
          }

          v85 = *(v91 + 2);
          v84 = *(v91 + 3);
          if (v85 >= v84 >> 1)
          {
            v91 = sub_245FB1254((v84 > 1), v85 + 1, 1, v91);
          }

          v86 = v91;
          *(v91 + 2) = v85 + 1;
          *&v86[4 * v85 + 32] = v83;
        }

        else
        {

          v91 = MEMORY[0x277D84F90];
        }

        v73 += 2;
        if (!--v74)
        {
          goto LABEL_86;
        }
      }
    }

LABEL_123:
    __break(1u);
    return result;
  }

  v91 = MEMORY[0x277D84F90];
  v72 = v95;
LABEL_86:

  LOBYTE(v98) = v93;
  LOBYTE(v97[0]) = v90;
  return (*(v72 + 240))(&v98, v97, v91, v19, v66, v71);
}

uint64_t sub_245FB0940(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2460922B4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_245F8DA98(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_245FB0C40(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x90))(v26);
  v5 = LOBYTE(v26[0]);
  v6 = sub_246091BD4();
  [a1 encodeInteger:v5 forKey:v6];

  (*((*v4 & *v2) + 0xA8))(v26);
  v7 = LOBYTE(v26[0]);
  v8 = sub_246091BD4();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = (*((*v4 & *v2) + 0xC0))();
  v11 = v10;
  v12 = sub_246091BD4();
  [a1 encodePoint:v12 forKey:{v9, v11}];

  v13 = (*((*v4 & *v2) + 0x78))();
  v14 = sub_246091BD4();
  v15 = a1;
  [a1 encodeDouble:v14 forKey:v13];

  v16 = *((*v4 & *v2) + 0xD8);
  v17 = *(v16() + 16);

  if (v17)
  {
    v19 = 0;
    while (1)
    {
      v20 = (v16)(v18);
      if (v19 >= *(v20 + 16))
      {
        break;
      }

      v21 = v19 + 1;
      v22 = *(v20 + 4 * v19 + 32);

      v26[0] = v19;
      v23 = sub_2460923D4();
      strcpy(v26, "boxTransform");
      BYTE5(v26[1]) = 0;
      HIWORD(v26[1]) = -5120;
      MEMORY[0x24C196640](v23);

      v24 = sub_246091BD4();

      LODWORD(v25) = v22;
      [v15 encodeFloat:v24 forKey:v25];

      v19 = v21;
      if (v17 == v21)
      {
        return;
      }
    }

    __break(1u);
  }
}

id ObjectCaptureFrameEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjectCaptureFrameEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjectCaptureFrameEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_245FB10A0(char *a1, int64_t a2, char a3)
{
  result = sub_245FB1148(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_245FB10C0()
{
  result = qword_27EE3A140;
  if (!qword_27EE3A140)
  {
    sub_245F9135C(&qword_27EE3A138, &qword_246097250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A140);
  }

  return result;
}

char *sub_245FB1148(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_245FB1254(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

BOOL sub_245FB1358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_246092274();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

unint64_t sub_245FB1478()
{
  result = qword_27EE3A148;
  if (!qword_27EE3A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A148);
  }

  return result;
}

unint64_t sub_245FB14D0()
{
  result = qword_27EE3A150;
  if (!qword_27EE3A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A150);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FreeformMeshManager.ScanExtent(unsigned __int8 *a1, unsigned int a2)
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