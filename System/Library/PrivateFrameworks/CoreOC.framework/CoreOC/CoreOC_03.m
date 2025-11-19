uint64_t sub_245FC7278(double a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

id sub_245FC7308()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_245FC734C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

__n128 sub_245FC7394@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(a1 + 64) = *(v1 + 96);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 128);
  *(a1 + 112) = *(v1 + 144);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v4;
  result = *(v1 + 64);
  v6 = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_245FC73F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v3;
  *(v1 + 128) = *(a1 + 96);
  *(v1 + 144) = *(a1 + 112);
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 64) = result;
  *(v1 + 80) = v6;
  return result;
}

__n128 sub_245FC74AC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a1;
  v7 = *(a2 + 80);
  *(v6 + 96) = *(a2 + 64);
  *(v6 + 112) = v7;
  *(v6 + 128) = *(a2 + 96);
  *(v6 + 144) = *(a2 + 112);
  v8 = *(a2 + 16);
  *(v6 + 32) = *a2;
  *(v6 + 48) = v8;
  result = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v6 + 64) = result;
  *(v6 + 80) = v10;
  return result;
}

void sub_245FC7560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v9 = sub_245F8D968(48, 0xE100000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v9, v29);
  sub_245FC82A8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = v31.n128_u64[0];
  if (*(a1 + 16))
  {
    v12 = sub_245F8D968(49, 0xE100000000000000);
    if (v13)
    {
      sub_245F8E5C8(*(a1 + 56) + 32 * v12, v29);
      if (swift_dynamicCast())
      {
        v14 = v31;
        if (*(a1 + 16))
        {
          v15 = sub_245F8D968(50, 0xE100000000000000);
          if (v16)
          {
            sub_245F8E5C8(*(a1 + 56) + 32 * v15, v29);
            sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
            if (swift_dynamicCast())
            {

              sub_245FC7C4C(v17, v29);
              if (sub_245FC82F4(v29) != 1)
              {
                v35 = v29[4];
                v36 = v29[5];
                v37 = v29[6];
                v38 = v30;
                v31 = v29[0];
                v32 = v29[1];
                v33 = v29[2];
                v34 = v29[3];
                [v11 doubleValue];
                v2[1].n128_u64[0] = v22;
                v23 = sub_246091734();
                DepthPointCloudDataBuffer = OCNonModularSPI_NSData_CreateDepthPointCloudDataBuffer();

                if (DepthPointCloudDataBuffer)
                {

                  v25 = DepthPointCloudDataBuffer;

                  sub_245FAEC7C(v14.n128_i64[0], v14.n128_u64[1]);
                  v2[1].n128_u64[1] = v25;
                  v26 = v36;
                  v2[6] = v35;
                  v2[7] = v26;
                  v2[8] = v37;
                  v2[9].n128_u64[0] = v38;
                  v27 = v32;
                  v2[2] = v31;
                  v2[3] = v27;
                  v28 = v34;
                  v2[4] = v33;
                  v2[5] = v28;
                }

                else
                {
                  __break(1u);
                }

                return;
              }

              sub_245FAEC7C(v14.n128_i64[0], v14.n128_u64[1]);
              goto LABEL_13;
            }
          }
        }

        sub_245FAEC7C(v14.n128_i64[0], v14.n128_u64[1]);
LABEL_15:

        goto LABEL_16;
      }
    }
  }

LABEL_13:

LABEL_16:
  v18 = sub_245FA3174();
  (*(v5 + 16))(v8, v18, v4);
  v19 = sub_2460918D4();
  v20 = sub_246091FB4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_245F8A000, v19, v20, "Temporal pointcloud: Failed to initialize temporal LiDAR point cloud data from dictionary!", v21, 2u);
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  type metadata accessor for TemporalDepthPointCloud();
  swift_deallocPartialClassInstance();
}

unint64_t sub_245FC7920()
{
  v1 = (*(*v0 + 128))();
  v2 = OCNonModularSPI_Serialization_CVBufferToData();

  if (!v2)
  {
    return 0;
  }

  v3 = sub_246091744();
  v5 = v4;

  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096640;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v7 = (*(*v0 + 104))();
  v8 = MEMORY[0x277D839F8];
  *(inited + 48) = v7;
  v9 = MEMORY[0x277CC9318];
  *(inited + 72) = v8;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v3;
  *(inited + 104) = v5;
  *(inited + 120) = v9;
  *(inited + 128) = 50;
  *(inited + 136) = 0xE100000000000000;
  v10 = *(*v0 + 152);
  v11 = sub_245FAED40(v3, v5);
  v10(v15, v11);
  v12 = sub_245FC70D8();
  *(inited + 168) = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  *(inited + 144) = v12;
  v13 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  sub_245FAEC7C(v3, v5);
  return v13;
}

uint64_t sub_245FC7AF0()
{

  return swift_deallocClassInstance();
}

char *sub_245FC7B28(char *a1, int64_t a2, char a3)
{
  result = sub_245FC7B48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245FC7B48(char *result, int64_t a2, char a3, char *a4)
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

void sub_245FC7C4C(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v9 = sub_245F8D968(48, 0xE100000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v9, &v72);
  sub_245F8E624(&qword_27EE3A460, "6K");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v11 = v64.n128_u64[0];
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v12 = sub_245F8D968(49, 0xE100000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v12, &v72);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (!*(a1 + 16) || (v63.n128_u64[0] = v64.n128_u64[0], v14 = sub_245F8D968(50, 0xE100000000000000), (v15 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v14, &v72);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

LABEL_24:

    v28 = sub_245FA3174();
    (*(v5 + 16))(v8, v28, v4);
    v29 = sub_2460918D4();
    v30 = sub_246091FB4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245F8A000, v29, v30, "Temporal pointcloud: Failed to initialize LiDAR point cloud camera from dictionary!", v31, 2u);
      MEMORY[0x24C1989D0](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    sub_245FC83B4(&v72);
    goto LABEL_27;
  }

  v16 = v64.n128_u64[0];
  if (v11 >> 62)
  {
    v17 = sub_246092354();
  }

  else
  {
    v17 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D84F90];
  v62 = v16;
  if (v17)
  {
    v72.n128_u64[0] = MEMORY[0x277D84F90];
    sub_245FC7B28(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v19 = 0;
    v20 = v72.n128_u64[0];
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x24C196C20](v19, v11);
      }

      else
      {
        v21 = *(v11 + 8 * v19 + 32);
      }

      v22 = v21;
      [v21 floatValue];
      v24 = v23;

      v72.n128_u64[0] = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v61.n128_u64[0] = v26 + 1;
        sub_245FC7B28((v25 > 1), v26 + 1, 1);
        v27 = v61.n128_u64[0];
        v20 = v72.n128_u64[0];
      }

      ++v19;
      *(v20 + 16) = v27;
      *(v20 + 4 * v26 + 32) = v24;
    }

    while (v17 != v19);

    v16 = v62;
    v18 = MEMORY[0x277D84F90];
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  sub_246020F68(v20, v71, v35, v36, v37);

  if (v63.n128_u64[0] >> 62)
  {
    v38 = sub_246092354();
    if (v38)
    {
      goto LABEL_32;
    }

LABEL_43:

    v40 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v38 = *((v63.n128_u64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_43;
  }

LABEL_32:
  v72.n128_u64[0] = v18;
  sub_245FC7B28(0, v38 & ~(v38 >> 63), 0);
  if (v38 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v39 = 0;
  v40 = v72.n128_u64[0];
  v41 = v63.n128_u64[0];
  v42 = v63.n128_u64[0] & 0xC000000000000001;
  do
  {
    if (v42)
    {
      v43 = MEMORY[0x24C196C20](v39);
    }

    else
    {
      v43 = *(v41 + 8 * v39 + 32);
    }

    v44 = v43;
    [v43 floatValue];
    v46 = v45;

    v72.n128_u64[0] = v40;
    v48 = *(v40 + 16);
    v47 = *(v40 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_245FC7B28((v47 > 1), v48 + 1, 1);
      v40 = v72.n128_u64[0];
    }

    ++v39;
    *(v40 + 16) = v48 + 1;
    *(v40 + 4 * v48 + 32) = v46;
    v41 = v63.n128_u64[0];
  }

  while (v38 != v39);

  v16 = v62;
LABEL_44:
  sub_24602105C(v40);
  v63 = v49;
  v60 = v51;
  v61 = v50;
  v59 = v52;

  if ((v16 & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x24C196C20](0, v16);
    goto LABEL_47;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_54;
  }

  v53 = *(v16 + 32);
LABEL_47:
  v54 = v53;
  v55 = [v53 unsignedIntValue];

  if ((v16 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x24C196C20](1, v16);
LABEL_51:
    v57 = v56;

    v58 = [v57 unsignedIntValue];

    v64 = v71[0];
    v65 = v71[1];
    v66 = v71[2];
    v67 = v63;
    v68 = v61;
    v69 = v60;
    v70[0] = v59;
    *&v70[1] = __PAIR64__(v58, v55);
    sub_245FC83D8(&v64);
    v76 = v68;
    v77 = v69;
    v78[0] = v70[0];
    *(v78 + 9) = *(v70 + 9);
    v72 = v64;
    v73 = v65;
    v74 = v66;
    v75 = v67;
LABEL_27:
    v32 = v77;
    a2[4] = v76;
    a2[5] = v32;
    a2[6] = v78[0];
    *(a2 + 105) = *(v78 + 9);
    v33 = v73;
    *a2 = v72;
    a2[1] = v33;
    v34 = v75;
    a2[2] = v74;
    a2[3] = v34;
    return;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v56 = *(v16 + 40);
    goto LABEL_51;
  }

LABEL_56:
  __break(1u);
}

unint64_t sub_245FC82A8()
{
  result = qword_27EE3A458;
  if (!qword_27EE3A458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A458);
  }

  return result;
}

uint64_t sub_245FC82F4(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_245FC8310(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_245FC833C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245FC835C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 120) = v3;
  return result;
}

double sub_245FC83B4(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_245FC841C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_245FC846C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
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
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_245FC84FC;
}

void sub_245FC84FC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_245FC85B0(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_245FC8624(double a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_245FC8664(double a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  *(v5 + 24) = a3;
  *(v5 + 32) = a1;
  return v5;
}

uint64_t sub_245FC86F8()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

size_t sub_245FC8730@<X0>(char a1@<W1>, unint64_t a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 1);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v90 = &v83 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v83 - v12;
  v93 = sub_246091704();
  v14 = *(v93 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v93);
  v89 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v83 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v83 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  if (a1)
  {
    QuadMeshUsdaAssetsURLs = CPGOutputGetQuadMeshUsdaAssetsURLs();
    if (!QuadMeshUsdaAssetsURLs)
    {
LABEL_3:
      v26 = 0;
LABEL_21:
      v39 = sub_245FA31EC();
      (*(v5 + 16))(v9, v39, v4);
      v40 = sub_2460918D4();
      v41 = sub_246091FB4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_245F8A000, v40, v41, "Backend Manager: Failed to get output USDA assets!", v42, 2u);
        MEMORY[0x24C1989D0](v42, -1, -1);
        v43 = v26;
      }

      else
      {
        v43 = v40;
        v40 = v26;
      }

      (*(v5 + 8))(v9, v4);
      v44 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
      v45 = *(*(v44 - 8) + 56);
      v46 = a2;
      return v45(v46, 1, 1, v44);
    }
  }

  else
  {
    QuadMeshUsdaAssetsURLs = CPGOutputGetUsdaAssetsURLs();
    if (!QuadMeshUsdaAssetsURLs)
    {
      goto LABEL_3;
    }
  }

  v87 = v24;
  v26 = QuadMeshUsdaAssetsURLs;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_21;
  }

  v85 = v13;
  v94 = 0;
  type metadata accessor for CFURL();
  v27 = v26;
  sub_246091DC4();
  v88 = v27;

  v28 = v94;
  if (!v94)
  {
    v26 = v88;
    goto LABEL_21;
  }

  if (v94 >> 62)
  {
LABEL_45:
    v29 = sub_246092354();
  }

  else
  {
    v29 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v86 = a2;
  v83 = v5;
  v84 = v4;
  if (!v29)
  {

    v32 = MEMORY[0x277D84F90];
    v38 = v93;
    v28 = *(MEMORY[0x277D84F90] + 16);
    if (!v28)
    {
LABEL_33:

      v49 = sub_245FA31EC();
      v51 = v83;
      v50 = v84;
      v52 = v90;
      (*(v83 + 16))(v90, v49, v84);
      v53 = sub_2460918D4();
      v54 = sub_246091FB4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_245F8A000, v53, v54, "Backend Manager: Failed to find USDA asset", v55, 2u);
        MEMORY[0x24C1989D0](v55, -1, -1);
        v56 = v88;
      }

      else
      {
        v56 = v53;
        v53 = v88;
      }

      v57 = v86;

      (*(v51 + 8))(v52, v50);
      v44 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
      v45 = *(*(v44 - 8) + 56);
      v46 = v57;
      return v45(v46, 1, 1, v44);
    }

LABEL_27:
    v22 = 0;
    v5 = 1633973109;
    v4 = (v14 + 8);
    while (1)
    {
      if (v22 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      a2 = *(v14 + 16);
      (a2)(v91, v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v38);
      if (sub_2460915F4() == 1633973109 && v47 == 0xE400000000000000)
      {
        break;
      }

      v48 = sub_2460923E4();

      if (v48)
      {
        goto LABEL_38;
      }

      ++v22;
      v38 = v93;
      (*v4)(v91, v93);
      if (v28 == v22)
      {
        goto LABEL_33;
      }
    }

LABEL_38:
    v58 = *(v14 + 32);
    v59 = v87;
    v58(v87, v91, v93);
    v60 = objc_allocWithZone(MEMORY[0x277D778A8]);
    v61 = sub_246091674();
    v62 = [v60 initSceneFromURL_];

    if (v62)
    {

      v63 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
      v64 = *(v63 + 48);
      v65 = *(v63 + 64);
      v66 = v86;
      *v86 = v62;
      v58(&v66[v64], v59, v93);
      *&v66[v65] = v32;
      return (*(*(v63 - 8) + 56))(v66, 0, 1, v63);
    }

    v67 = sub_245FA31EC();
    v68 = v83;
    v69 = v84;
    (*(v83 + 16))(v85, v67, v84);
    v70 = v89;
    (a2)(v89, v59, v93);
    v71 = sub_2460918D4();
    v72 = sub_246091FB4();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = v70;
      v74 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v94 = v92;
      *v74 = 141558275;
      *(v74 + 4) = 1752392040;
      *(v74 + 12) = 2081;
      v75 = sub_2460916F4();
      v77 = v76;
      v78 = *v4;
      (*v4)(v73, v93);
      v79 = sub_245F8D3C0(v75, v77, &v94);

      *(v74 + 14) = v79;
      _os_log_impl(&dword_245F8A000, v71, v72, "Backend Manager: Failed to create USKScene for USDA URL = %{private,mask.hash}s", v74, 0x16u);
      v80 = v92;
      sub_245F8E6F4(v92);
      MEMORY[0x24C1989D0](v80, -1, -1);
      MEMORY[0x24C1989D0](v74, -1, -1);

      (*(v68 + 8))(v85, v84);
      v78(v59, v93);
    }

    else
    {

      v81 = *v4;
      v82 = v93;
      (*v4)(v70, v93);
      (*(v68 + 8))(v85, v69);
      v81(v59, v82);
    }

    v44 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
    v45 = *(*(v44 - 8) + 56);
    v46 = v86;
    return v45(v46, 1, 1, v44);
  }

  v94 = MEMORY[0x277D84F90];
  result = sub_245FAC7A8(0, v29 & ~(v29 >> 63), 0);
  v92 = v29;
  if ((v29 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v94;
    v33 = v28;
    v34 = v28 & 0xC000000000000001;
    do
    {
      if (v34)
      {
        v35 = MEMORY[0x24C196C20](v31, v33);
      }

      else
      {
        v35 = *(v33 + 8 * v31 + 32);
      }

      v36 = v35;
      sub_2460916D4();

      v94 = v32;
      a2 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (a2 >= v37 >> 1)
      {
        sub_245FAC7A8(v37 > 1, a2 + 1, 1);
        v32 = v94;
      }

      v31 = (v31 + 1);
      *(v32 + 16) = a2 + 1;
      v38 = v93;
      (*(v14 + 32))(v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a2, v22, v93);
    }

    while (v92 != v31);

    v28 = *(v32 + 16);
    if (!v28)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

double sub_245FC90CC(void *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 data];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 arraySize];
    v14 = [v12 dataNoCopy];
    v15 = sub_246091744();
    v17 = v16;

    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        memset(v35, 0, 14);
        goto LABEL_21;
      }

      v24 = *(v15 + 16);
      v25 = *(v15 + 24);
      v26 = sub_2460914B4();
      if (v26)
      {
        v27 = sub_2460914E4();
        if (__OFSUB__(v24, v27))
        {
          goto LABEL_25;
        }

        v26 += v24 - v27;
      }

      if (!__OFSUB__(v25, v24))
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v35[0] = v15;
      LOWORD(v35[1]) = v17;
      BYTE2(v35[1]) = BYTE2(v17);
      BYTE3(v35[1]) = BYTE3(v17);
      BYTE4(v35[1]) = BYTE4(v17);
      BYTE5(v35[1]) = BYTE5(v17);
LABEL_21:
      v29 = v35;
      goto LABEL_22;
    }

    if (v15 <= v15 >> 32)
    {
      v26 = sub_2460914B4();
      if (!v26)
      {
LABEL_19:
        sub_2460914D4();
        v29 = v26;
LABEL_22:
        sub_245FC9418(v29, v13, &v36, v31, v32, v33, v34);
        sub_245FAEC7C(v15, v17);

        result = *&v36;
        goto LABEL_23;
      }

      v28 = sub_2460914E4();
      if (!__OFSUB__(v15, v28))
      {
        v26 += v15 - v28;
        goto LABEL_19;
      }

LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = sub_245FA31EC();
  (*(v7 + 16))(v10, v19, v6);
  v20 = sub_2460918D4();
  v21 = sub_246091FB4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_245F8A000, v20, v21, "Backend Manager: Failed to get the point array property data!", v22, 2u);
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  result = 0.0;
LABEL_23:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245FC9418@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  if (!result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    return result;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v7 = 0x7F0000007FLL;
    v8 = vneg_f32(0x7F0000007FLL);
    v9 = (result + 8);
    v10 = 0x2AAAAAAAAAAAAAAALL;
    v11 = INFINITY;
    v12 = -INFINITY;
    while (v10)
    {
      v14 = *(v9 - 2);
      v13 = *(v9 - 1);
      v15 = *v9;
      v9 += 3;
      v16 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, v14), a5, v13), a6, v15), a7);
      v8 = vbsl_s8(vcgt_f32(v8, *v16.f32), *v16.f32, v8);
      v7 = vbsl_s8(vcge_f32(*v16.f32, v7), *v16.f32, v7);
      if (v16.f32[2] < v11)
      {
        v11 = v16.f32[2];
      }

      if (v12 <= v16.f32[2])
      {
        v12 = v16.f32[2];
      }

      --v10;
      if (!--a2)
      {
        v17.i64[0] = v8.u32[0];
        v17.i64[1] = v8.u32[1];
        v18 = vorrq_s8(vshll_n_s32(v7, 0x20uLL), v17);
        v19 = LODWORD(v11) | (LODWORD(v12) << 32);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v19 = 0xFF8000007F800000;
  v18 = vdupq_n_s64(0xFF8000007F800000);
LABEL_14:
  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = 0;
  return result;
}

double sub_245FC94E8(void *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v57 = a4;
  v58 = a5;
  v55 = a2;
  v56 = a3;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 nodeIterator];
  v12 = &off_278E99000;
  v13 = [v11 nextObject];
  if (!v13)
  {
    swift_unknownObjectRelease();
    return 0.0;
  }

  v14 = v13;
  v54 = 0;
  v15 = (v7 + 16);
  v16 = (v7 + 8);
  v17 = 0x7F0000007FLL;
  v18 = vneg_f32(0x7F0000007FLL);
  v59 = *MEMORY[0x277D779A0];
  v19 = -INFINITY;
  v20 = INFINITY;
  do
  {
    while (1)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        break;
      }

      v24 = sub_245FA31EC();
      (*v15)(v10, v24, v6);
      v25 = sub_2460918D4();
      v26 = sub_246091FB4();
      if (os_log_type_enabled(v25, v26))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_245F8A000, v25, v26, "Backend Manager: Failed to cast iterator in USKScene to USKNode!", v21, 2u);
        MEMORY[0x24C1989D0](v21, -1, -1);
        v22 = v14;
      }

      else
      {
        v22 = v25;
        v25 = v14;
      }

      (*v16)(v10, v6);
      v14 = [v11 v12[123]];
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    v52 = v11;
    v53 = v6;
    v27 = [v23 propertyList];
    v28 = v12[123];
    v60 = v27;
    v29 = [v27 v28];
    if (v29)
    {
      v30 = v29;
      v51 = v15;
      while (1)
      {
        v31 = v12;
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (!v32)
        {
          swift_unknownObjectRelease();

          v14 = v30;
          v15 = v51;
          goto LABEL_30;
        }

        v33 = v32;
        v34 = [v32 role];
        v35 = sub_246091C04();
        v37 = v36;
        if (v35 == sub_246091C04() && v37 == v38)
        {
          break;
        }

        v40 = sub_2460923E4();

        if (v40)
        {
LABEL_20:
          sub_245FC90CC(v33, v55, v56, v57, v58);
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          if (v48)
          {
            goto LABEL_11;
          }

          v18 = vbsl_s8(vcgt_f32(v18, __PAIR64__(v44, v42)), __PAIR64__(v44, v42), v18);
          v17 = vbsl_s8(vcge_f32(__PAIR64__(HIDWORD(v44), HIDWORD(v42)), v17), __PAIR64__(HIDWORD(v44), HIDWORD(v42)), v17);
          if (v20 > *&v46)
          {
            v20 = *&v46;
          }

          if (v19 <= *(&v46 + 1))
          {
            v19 = *(&v46 + 1);
          }

          v12 = v31;
          v30 = [v60 v31 + 2680];
          v54 = 1;
          v15 = v51;
          if (!v30)
          {
            goto LABEL_29;
          }
        }

        else
        {

LABEL_11:
          v12 = v31;
          v30 = [v60 v31 + 2680];
          if (!v30)
          {
            v15 = v51;
            goto LABEL_29;
          }
        }
      }

      goto LABEL_20;
    }

LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:

    v11 = v52;
    v14 = [v52 v12[123]];
    v6 = v53;
  }

  while (v14);
LABEL_31:
  swift_unknownObjectRelease();
  if (v54)
  {
    v49.i64[0] = v18.u32[0];
    v49.i64[1] = v18.u32[1];
    *&result = vorrq_s8(vshll_n_s32(v17, 0x20uLL), v49).u64[0];
    return result;
  }

  return 0.0;
}

__n128 sub_245FC9964@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v60 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v60 - v16;
  if (v15 && (v18 = CPGSfmMapCopyBoundingBox()) != 0)
  {
    v70 = v18;
    CPGBoundingBoxGetTransform();
    *v19.i64 = sub_2460211BC(v88);
    *v98.columns[0].i64 = sub_2460214C8(v19);
    v99 = __invert_f4(v98);
    v68 = v99.columns[1];
    v69 = v99.columns[0];
    v66 = v99.columns[3];
    v67 = v99.columns[2];
    sub_245FC94E8(a2, v99.columns[0], v99.columns[1], v99.columns[2], v99.columns[3]);
    if (v23)
    {
      v24 = sub_245FA31EC();
      (*(v7 + 16))(v14, v24, v6);
      v25 = sub_2460918D4();
      v26 = sub_246091FB4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_245F8A000, v25, v26, "Backend Manager: Failed to get the initial mesh bounds!", v27, 2u);
        MEMORY[0x24C1989D0](v27, -1, -1);
      }

      (*(v7 + 8))(v14, v6);
      sub_245F97B40(&v71);
    }

    else
    {
      v32 = v20;
      v33 = v21;
      v34 = v22;
      v35 = *&v20;
      v63 = HIDWORD(v20);
      v36 = *(&v20 + 1);
      v37 = *&v21;
      v38 = *&v22;
      v39 = HIDWORD(v22);
      v40 = *(&v22 + 1);
      v41 = sub_245FA31EC();
      (*(v7 + 16))(v17, v41, v6);
      v42 = sub_2460918D4();
      LODWORD(v64.f64[0]) = sub_246091FC4();
      *&v65.f64[0] = v42;
      if (os_log_type_enabled(v42, LOBYTE(v64.f64[0])))
      {
        v61 = HIDWORD(v33);
        v43 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *&v71.f64[0] = v62;
        *v43 = 136315138;
        *&v89.f64[0] = __PAIR64__(v63, v32);
        *&v89.f64[1] = __PAIR64__(v61, v33);
        v90.n128_u64[0] = __PAIR64__(v39, v34);
        v44 = sub_246091C54();
        v46 = sub_245F8D3C0(v44, v45, &v71);

        v47 = v43;
        *(v43 + 4) = v46;
        v48 = v65.f64[0];
        _os_log_impl(&dword_245F8A000, *&v65.f64[0], LOBYTE(v64.f64[0]), "Found recenter mesh bounds: %s", v47, 0xCu);
        v49 = v62;
        sub_245F8E6F4(v62);
        MEMORY[0x24C1989D0](v49, -1, -1);
        MEMORY[0x24C1989D0](v47, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v17, v6);
      v50.f32[0] = (v35 + v36) * -0.5;
      v50.f32[1] = -v37;
      __asm { FMOV            V1.2D, #1.0 }

      _Q1.f64[0] = ((v38 + v40) * -0.5);
      v64 = _Q1;
      v65 = vcvtq_f64_f32(v50);
      sub_246021188(&v80, v69, v68, v67, v66);
      v71 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v80.f64[0]), xmmword_246097A80, v80, 1), 0, v81.f64[0]), v65, v81, 1);
      v72 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v80.f64[0]), 0, v80, 1), xmmword_246097A70, v81.f64[0]), v64, v81, 1);
      v73 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v82.f64[0]), xmmword_246097A80, v82, 1), 0, v83.f64[0]), v65, v83, 1);
      v74 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v82.f64[0]), 0, v82, 1), xmmword_246097A70, v83.f64[0]), v64, v83, 1);
      v75 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v84.f64[0]), xmmword_246097A80, v84, 1), 0, v85.f64[0]), v65, v85, 1);
      v76 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v84.f64[0]), 0, v84, 1), xmmword_246097A70, v85.f64[0]), v64, v85, 1);
      v77 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v86.f64[0]), xmmword_246097A80, v86, 1), 0, v87.f64[0]), v65, v87, 1);
      v78 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v86.f64[0]), 0, v86, 1), xmmword_246097A70, v87.f64[0]), v64, v87, 1);
      sub_245F97D8C(&v71);
    }

    CPGBoundingBoxRelease();
    v95 = v77;
    v96 = v78;
    v97 = v79;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v94 = v76;
    v89 = v71;
    v90 = v72;
  }

  else
  {
    v28 = sub_245FA31EC();
    (*(v7 + 16))(v11, v28, v6);
    v29 = sub_2460918D4();
    v30 = sub_246091FB4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245F8A000, v29, v30, "Backend Manager: Failed to get the initial SfM map bounding box!", v31, 2u);
      MEMORY[0x24C1989D0](v31, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    sub_245F97B40(&v89);
  }

  v56 = v96;
  *(a3 + 96) = v95;
  *(a3 + 112) = v56;
  *(a3 + 128) = v97;
  v57 = v92;
  *(a3 + 32) = v91;
  *(a3 + 48) = v57;
  v58 = v94;
  *(a3 + 64) = v93;
  *(a3 + 80) = v58;
  result = v90;
  *a3 = v89;
  *(a3 + 16) = result;
  return result;
}

BOOL sub_245FC9F0C(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245FCB7EC(a1, v5);
  v6 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v7 = (*(*(v6 - 8) + 48))(v5, 3, v6);
  if (v7)
  {
    sub_245FCB850(v5);
  }

  else
  {
    v8 = sub_246091704();
    (*(*(v8 - 8) + 8))(v5, v8);
  }

  return v7 == 0;
}

uint64_t sub_245FCA01C(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245FCB7EC(a1, v5);
  v6 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if ((*(*(v6 - 8) + 48))(v5, 3, v6))
  {
    sub_245FCB850(v5);
  }

  else
  {
    v7 = &v5[*(v6 + 64)];
    v8 = *(v7 + 7);
    v21 = *(v7 + 6);
    v22 = v8;
    v23 = v7[128];
    v9 = *(v7 + 3);
    v17 = *(v7 + 2);
    v18 = v9;
    v10 = *(v7 + 5);
    v19 = *(v7 + 4);
    v20 = v10;
    v11 = *(v7 + 1);
    v15 = *v7;
    v16 = v11;
    if (sub_245F97DBC(&v15) != 1 && (sub_246021E38(v15, v16, v17, v18) & 1) != 0)
    {
      v12 = sub_246091704();
      (*(*(v12 - 8) + 8))(v5, v12);
      return 1;
    }

    v14 = sub_246091704();
    (*(*(v14 - 8) + 8))(v5, v14);
  }

  return 0;
}

uint64_t sub_245FCA1BC(uint64_t a1)
{
  v2 = sub_2460918F4();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v84 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v84 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v84 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v84 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v84 - v22;
  strcpy(v86, "reports");
  v86[1] = 0xE700000000000000;
  sub_2460921F4();
  if (!*(a1 + 16) || (v24 = sub_245FCB8AC(v87), (v25 & 1) == 0))
  {
    sub_245FCB8F0(v87);
    goto LABEL_19;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v24, v88);
  sub_245FCB8F0(v87);
  sub_245F8E624(&qword_27EE3A478, &unk_246097AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v48 = sub_245FA31EC();
    v49 = v84;
    v50 = v85;
    (*(v84 + 16))(v6, v48, v85);
    v51 = sub_2460918D4();
    v52 = sub_246091FB4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v87[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_245F8D3C0(0x7374726F706572, 0xE700000000000000, v87);
      _os_log_impl(&dword_245F8A000, v51, v52, "Native dictionary has no %{public}s key.", v53, 0xCu);
      sub_245F8E6F4(v54);
      MEMORY[0x24C1989D0](v54, -1, -1);
      MEMORY[0x24C1989D0](v53, -1, -1);
    }

    (*(v49 + 8))(v6, v50);
    goto LABEL_22;
  }

  v26 = v86[0];
  strcpy(v86, "report_mvsprep");
  HIBYTE(v86[1]) = -18;
  sub_2460921F4();
  if (!*(v26 + 16) || (v27 = sub_245FCB8AC(v87), (v28 & 1) == 0))
  {

    sub_245FCB8F0(v87);
    goto LABEL_25;
  }

  sub_245F8E5C8(*(v26 + 56) + 32 * v27, v88);
  sub_245FCB8F0(v87);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v56 = sub_245FA31EC();
    v57 = v84;
    v58 = v85;
    (*(v84 + 16))(v9, v56, v85);
    v59 = sub_2460918D4();
    v60 = sub_246091FB4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v87[0] = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_245F8D3C0(0x6D5F74726F706572, 0xEE00706572707376, v87);
      _os_log_impl(&dword_245F8A000, v59, v60, "Native dictionary has no %{public}s key.", v61, 0xCu);
      sub_245F8E6F4(v62);
      MEMORY[0x24C1989D0](v62, -1, -1);
      MEMORY[0x24C1989D0](v61, -1, -1);
    }

    (*(v57 + 8))(v9, v58);
    goto LABEL_22;
  }

  v29 = v86[0];
  strcpy(v86, "runtime_info");
  BYTE5(v86[1]) = 0;
  HIWORD(v86[1]) = -5120;
  sub_2460921F4();
  if (!*(v29 + 16) || (v30 = sub_245FCB8AC(v87), (v31 & 1) == 0))
  {

    sub_245FCB8F0(v87);
    goto LABEL_29;
  }

  sub_245F8E5C8(*(v29 + 56) + 32 * v30, v88);
  sub_245FCB8F0(v87);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v63 = sub_245FA31EC();
    v64 = v84;
    v65 = v85;
    (*(v84 + 16))(v12, v63, v85);
    v66 = sub_2460918D4();
    v67 = sub_246091FB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v87[0] = v69;
      *v68 = 136446210;
      *(v68 + 4) = sub_245F8D3C0(0x5F656D69746E7572, 0xEC0000006F666E69, v87);
      _os_log_impl(&dword_245F8A000, v66, v67, "Native dictionary has no %{public}s key.", v68, 0xCu);
      sub_245F8E6F4(v69);
      MEMORY[0x24C1989D0](v69, -1, -1);
      MEMORY[0x24C1989D0](v68, -1, -1);
    }

    (*(v64 + 8))(v12, v65);
    goto LABEL_22;
  }

  v32 = v86[0];
  strcpy(v86, "error_codes");
  HIDWORD(v86[1]) = -352321536;
  sub_2460921F4();
  if (!*(v32 + 16) || (v33 = sub_245FCB8AC(v87), (v34 & 1) == 0))
  {

    sub_245FCB8F0(v87);
    v70 = sub_245FA31EC();
    v71 = v84;
    v72 = v85;
    (*(v84 + 16))(v15, v70, v85);
    v73 = sub_2460918D4();
    v74 = sub_246091FB4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v87[0] = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v87);
      _os_log_impl(&dword_245F8A000, v73, v74, "Native dictionary has no %{public}s array...", v75, 0xCu);
      sub_245F8E6F4(v76);
      MEMORY[0x24C1989D0](v76, -1, -1);
      MEMORY[0x24C1989D0](v75, -1, -1);
    }

    (*(v71 + 8))(v15, v72);
    goto LABEL_22;
  }

  sub_245F8E5C8(*(v32 + 56) + 32 * v33, v88);
  sub_245FCB8F0(v87);

  sub_245F8E5C8(v88, v87);
  sub_245F8E624(&qword_27EE3A138, &qword_246097250);
  if (!swift_dynamicCast())
  {
    v77 = sub_245FA31EC();
    v78 = v84;
    v79 = v85;
    (*(v84 + 16))(v18, v77, v85);
    v80 = sub_2460918D4();
    v81 = sub_246091FB4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87[0] = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v87);
      _os_log_impl(&dword_245F8A000, v80, v81, "Native dictionary can't coerce %{public}s array to [String]..", v82, 0xCu);
      sub_245F8E6F4(v83);
      MEMORY[0x24C1989D0](v83, -1, -1);
      MEMORY[0x24C1989D0](v82, -1, -1);
    }

    (*(v78 + 8))(v18, v79);
    sub_245F8E6F4(v88);
LABEL_22:
    v44 = 0;
    return v44 & 1;
  }

  v35 = v86[0];
  v36 = sub_245FA31EC();
  v37 = *(v84 + 16);
  v37(v23, v36, v85);
  v38 = sub_2460918D4();
  v39 = sub_246091FA4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_245F8A000, v38, v39, "Checking error codes for automatic downsampling...", v40, 2u);
    MEMORY[0x24C1989D0](v40, -1, -1);
  }

  v41 = v85;
  v42 = *(v84 + 8);
  v43 = v42(v23, v85);
  v87[0] = 0xD00000000000001ALL;
  v87[1] = 0x800000024609F5C0;
  MEMORY[0x28223BE20](v43);
  *(&v84 - 2) = v87;
  v44 = sub_245FCB944(sub_245FCBAB8, (&v84 - 4), v35);

  v37(v21, v36, v41);
  v45 = sub_2460918D4();
  v46 = sub_246091FA4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 67240192;
    *(v47 + 4) = v44 & 1;
    _os_log_impl(&dword_245F8A000, v45, v46, "... downsampled = %{BOOL,public}d...", v47, 8u);
    MEMORY[0x24C1989D0](v47, -1, -1);
  }

  v42(v21, v85);
  sub_245F8E6F4(v88);
  return v44 & 1;
}

uint64_t sub_245FCACB8(uint64_t a1)
{
  v2 = sub_2460918F4();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v84 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v84 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v84 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v84 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v84 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v84 - v22;
  strcpy(v86, "reports");
  v86[1] = 0xE700000000000000;
  sub_2460921F4();
  if (!*(a1 + 16) || (v24 = sub_245FCB8AC(v87), (v25 & 1) == 0))
  {
    sub_245FCB8F0(v87);
    goto LABEL_19;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v24, v88);
  sub_245FCB8F0(v87);
  sub_245F8E624(&qword_27EE3A478, &unk_246097AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v48 = sub_245FA31EC();
    v49 = v84;
    v50 = v85;
    (*(v84 + 16))(v6, v48, v85);
    v51 = sub_2460918D4();
    v52 = sub_246091FB4();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v87[0] = v54;
      *v53 = 136446210;
      *(v53 + 4) = sub_245F8D3C0(0x7374726F706572, 0xE700000000000000, v87);
      _os_log_impl(&dword_245F8A000, v51, v52, "Native dictionary has no %{public}s key.", v53, 0xCu);
      sub_245F8E6F4(v54);
      MEMORY[0x24C1989D0](v54, -1, -1);
      MEMORY[0x24C1989D0](v53, -1, -1);
    }

    (*(v49 + 8))(v6, v50);
    goto LABEL_22;
  }

  v26 = v86[0];
  strcpy(v86, "report_sfm");
  BYTE3(v86[1]) = 0;
  HIDWORD(v86[1]) = -369098752;
  sub_2460921F4();
  if (!*(v26 + 16) || (v27 = sub_245FCB8AC(v87), (v28 & 1) == 0))
  {

    sub_245FCB8F0(v87);
    goto LABEL_25;
  }

  sub_245F8E5C8(*(v26 + 56) + 32 * v27, v88);
  sub_245FCB8F0(v87);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v56 = sub_245FA31EC();
    v57 = v84;
    v58 = v85;
    (*(v84 + 16))(v9, v56, v85);
    v59 = sub_2460918D4();
    v60 = sub_246091FB4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v87[0] = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_245F8D3C0(0x735F74726F706572, 0xEA00000000006D66, v87);
      _os_log_impl(&dword_245F8A000, v59, v60, "Native dictionary has no %{public}s key.", v61, 0xCu);
      sub_245F8E6F4(v62);
      MEMORY[0x24C1989D0](v62, -1, -1);
      MEMORY[0x24C1989D0](v61, -1, -1);
    }

    (*(v57 + 8))(v9, v58);
    goto LABEL_22;
  }

  v29 = v86[0];
  strcpy(v86, "runtime_info");
  BYTE5(v86[1]) = 0;
  HIWORD(v86[1]) = -5120;
  sub_2460921F4();
  if (!*(v29 + 16) || (v30 = sub_245FCB8AC(v87), (v31 & 1) == 0))
  {

    sub_245FCB8F0(v87);
    goto LABEL_29;
  }

  sub_245F8E5C8(*(v29 + 56) + 32 * v30, v88);
  sub_245FCB8F0(v87);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v63 = sub_245FA31EC();
    v64 = v84;
    v65 = v85;
    (*(v84 + 16))(v12, v63, v85);
    v66 = sub_2460918D4();
    v67 = sub_246091FB4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v87[0] = v69;
      *v68 = 136446210;
      *(v68 + 4) = sub_245F8D3C0(0x5F656D69746E7572, 0xEC0000006F666E69, v87);
      _os_log_impl(&dword_245F8A000, v66, v67, "Native dictionary has no %{public}s key.", v68, 0xCu);
      sub_245F8E6F4(v69);
      MEMORY[0x24C1989D0](v69, -1, -1);
      MEMORY[0x24C1989D0](v68, -1, -1);
    }

    (*(v64 + 8))(v12, v65);
    goto LABEL_22;
  }

  v32 = v86[0];
  strcpy(v86, "error_codes");
  HIDWORD(v86[1]) = -352321536;
  sub_2460921F4();
  if (!*(v32 + 16) || (v33 = sub_245FCB8AC(v87), (v34 & 1) == 0))
  {

    sub_245FCB8F0(v87);
    v70 = sub_245FA31EC();
    v71 = v84;
    v72 = v85;
    (*(v84 + 16))(v15, v70, v85);
    v73 = sub_2460918D4();
    v74 = sub_246091FB4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v87[0] = v76;
      *v75 = 136446210;
      *(v75 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v87);
      _os_log_impl(&dword_245F8A000, v73, v74, "Native dictionary has no %{public}s array...", v75, 0xCu);
      sub_245F8E6F4(v76);
      MEMORY[0x24C1989D0](v76, -1, -1);
      MEMORY[0x24C1989D0](v75, -1, -1);
    }

    (*(v71 + 8))(v15, v72);
    goto LABEL_22;
  }

  sub_245F8E5C8(*(v32 + 56) + 32 * v33, v88);
  sub_245FCB8F0(v87);

  sub_245F8E5C8(v88, v87);
  sub_245F8E624(&qword_27EE3A138, &qword_246097250);
  if (!swift_dynamicCast())
  {
    v77 = sub_245FA31EC();
    v78 = v84;
    v79 = v85;
    (*(v84 + 16))(v18, v77, v85);
    v80 = sub_2460918D4();
    v81 = sub_246091FB4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v87[0] = v83;
      *v82 = 136446210;
      *(v82 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v87);
      _os_log_impl(&dword_245F8A000, v80, v81, "Native dictionary can't coerce %{public}s array to [String]..", v82, 0xCu);
      sub_245F8E6F4(v83);
      MEMORY[0x24C1989D0](v83, -1, -1);
      MEMORY[0x24C1989D0](v82, -1, -1);
    }

    (*(v78 + 8))(v18, v79);
    sub_245F8E6F4(v88);
LABEL_22:
    v44 = 0;
    return v44 & 1;
  }

  v35 = v86[0];
  v36 = sub_245FA31EC();
  v37 = *(v84 + 16);
  v37(v23, v36, v85);
  v38 = sub_2460918D4();
  v39 = sub_246091FA4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_245F8A000, v38, v39, "Checking error codes for incomplete stitcking...", v40, 2u);
    MEMORY[0x24C1989D0](v40, -1, -1);
  }

  v41 = v85;
  v42 = *(v84 + 8);
  v43 = v42(v23, v85);
  v87[0] = 0xD00000000000002ALL;
  v87[1] = 0x800000024609F5E0;
  MEMORY[0x28223BE20](v43);
  *(&v84 - 2) = v87;
  v44 = sub_245FCB944(sub_245FCBBD0, (&v84 - 4), v35);

  v37(v21, v36, v41);
  v45 = sub_2460918D4();
  v46 = sub_246091FA4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 67240192;
    *(v47 + 4) = v44 & 1;
    _os_log_impl(&dword_245F8A000, v45, v46, "... has incomplete stitching = %{BOOL,public}d...", v47, 8u);
    MEMORY[0x24C1989D0](v47, -1, -1);
  }

  v42(v21, v85);
  sub_245F8E6F4(v88);
  return v44 & 1;
}

void type metadata accessor for CFURL()
{
  if (!qword_27EE3A480)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE3A480);
    }
  }
}

uint64_t sub_245FCB7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FCB850(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_245FCB8AC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2460921D4();

  return sub_245FCB9F0(a1, v5);
}

uint64_t sub_245FCB944(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_245FCB9F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_245FCBB74(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C196B60](v9, a1);
      sub_245FCB8F0(v9);
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

uint64_t sub_245FCBAD4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2460923E4() & 1;
  }
}

__n128 initializeBufferWithCopyOfBuffer for MeshBounds(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_245FCBBEC@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 61);
  return result;
}

__n128 sub_245FCBC40(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  *(v1 + 61) = *(a1 + 45);
  return result;
}

uint64_t sub_245FCBC94(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, double a5)
{
  v10 = swift_allocObject();
  sub_245FCBD0C(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_245FCBD0C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, double a5)
{
  v6 = v5;
  v69 = a4;
  v67[0] = a1;
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v68 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v67 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v67 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v67 - v21;
  sub_24608BC2C(v6 + 16);
  *(v6 + 112) = 0;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 160) = 2;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0x3FF0000000000000;
  v23 = COERCE_DOUBLE(sub_245F92DAC());
  if (v24)
  {
    v23 = 0.75;
  }

  *(v6 + 184) = v23;
  *(v6 + 192) = 258;
  *(v6 + 196) = 1058642330;
  *(v6 + 200) = sub_246020ED0(10.0);
  *(v6 + 204) = sub_246020ED0(5.0);
  *(v6 + 208) = 1036831949;
  v25 = sub_245F92DC8();
  v26 = *&v25;
  if ((v25 & 0x100000000) != 0)
  {
    v26 = 0.075;
  }

  *(v6 + 212) = v26;
  v27 = sub_245F92DE0();
  v28 = *&v27;
  if ((v27 & 0x100000000) != 0)
  {
    v28 = 7.5;
  }

  v29 = sub_246020ED0(v28);
  *(v6 + 216) = cosf(v29);
  *(v6 + 220) = 1;
  *(v6 + 224) = xmmword_246097C00;
  *(v6 + 240) = 0;
  *(v6 + 248) = xmmword_246097C10;
  sub_245FCC394(v70);
  v30 = v70[7];
  v31 = v70[8];
  *(v6 + 368) = v70[6];
  *(v6 + 384) = v30;
  v32 = v70[9];
  v33 = a2;
  *(v6 + 400) = v31;
  *(v6 + 416) = v32;
  v34 = v70[3];
  *(v6 + 304) = v70[2];
  *(v6 + 320) = v34;
  v35 = v70[5];
  *(v6 + 336) = v70[4];
  *(v6 + 352) = v35;
  v36 = v70[1];
  *(v6 + 272) = v70[0];
  *(v6 + 288) = v36;
  __asm { FMOV            V9.2S, #-1.0 }

  *(v6 + 432) = _D9;
  *(v6 + 440) = -1082130432;
  v42 = sub_245F924E0();
  v43 = *&v42;
  if ((v42 & 0x100000000) != 0)
  {
    v43 = 2.0;
  }

  *(v6 + 444) = v43;
  *(v6 + 448) = 10;
  *(v6 + 456) = 0x3FC000003E4CCCCDLL;
  *(v6 + 472) = _D9;
  *(v6 + 480) = 0;
  *(v6 + 488) = 0x41200000BF800000;
  sub_246086C34(v6 + 496);
  type metadata accessor for OCObjectCentricPoseGraph(0);
  v44 = sub_246086C74(v67[0]);
  v45 = v69;
  *(v6 + 72) = v44;
  *(v6 + 144) = v33;
  *(v6 + 120) = v45;
  v46 = *(v6 + 200);
  swift_beginAccess();
  *(v6 + 560) = v46;
  *(v6 + 564) = *(v6 + 204);
  *(v6 + 568) = 1036831949;
  *(v6 + 152) = a5;
  *(v6 + 464) = a3;
  v67[2] = a3;
  v67[1] = v33;
  if (a3)
  {

    v47 = v45;
    v48 = sub_245FA3394();
    v49 = v11[2];
    v49(v22, v48, v10);
    v50 = sub_2460918D4();
    v51 = sub_246091FC4();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_16;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_245F8A000, v50, v51, "Internal motion manager is available.", v52, 2u);
    goto LABEL_14;
  }

  v53 = v45;
  v54 = sub_245FA3394();
  v49 = v11[2];
  v49(v20, v54, v10);
  v50 = sub_2460918D4();
  v55 = sub_246091FC4();
  if (os_log_type_enabled(v50, v55))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_245F8A000, v50, v55, "Internal motion manager is not available, gyro gates not applied.", v52, 2u);
    v22 = v20;
LABEL_14:
    MEMORY[0x24C1989D0](v52, -1, -1);
    goto LABEL_16;
  }

  v22 = v20;
LABEL_16:

  v56 = v11[1];
  v56(v22, v10);
  v57 = sub_245FA3394();
  v49(v17, v57, v10);
  v58 = sub_2460918D4();
  v59 = sub_246091FC4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134349056;
    if (qword_27EE3C120 != -1)
    {
      v67[0] = v60;
      swift_once();
      v60 = v67[0];
    }

    *(v60 + 4) = *&dword_27EE3EFF8;
    v61 = v59;
    v62 = v60;
    _os_log_impl(&dword_245F8A000, v58, v61, "IMU max angular speed threshold = %{public}f", v60, 0xCu);
    MEMORY[0x24C1989D0](v62, -1, -1);
  }

  v56(v17, v10);
  v49(v68, v57, v10);
  v63 = sub_2460918D4();
  v64 = sub_246091FC4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_245F8A000, v63, v64, "Initialized capture manager", v65, 2u);
    MEMORY[0x24C1989D0](v65, -1, -1);
  }

  else
  {

    v63 = v69;
  }

  v56(v68, v10);
  return v6;
}

double sub_245FCC394(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

int *sub_245FCC3B8()
{
  if (qword_27EE3C120 != -1)
  {
    swift_once();
  }

  return &dword_27EE3EFF8;
}

uint64_t sub_245FCC408(const void *a1, __int128 *a2, char *a3, uint64_t *a4, void (*a5)(void), uint64_t a6, float a7)
{
  v8 = v7;
  v85 = a5;
  v86 = a6;
  v13 = *a2;
  v82 = a2[1];
  v83 = v13;
  v14 = a2[3];
  v80 = a2[2];
  v81 = v14;
  v15 = *(a2 + 64);
  v84 = sub_2460918F4();
  v87 = *(v84 - 8);
  v16 = v87[8];
  v17 = MEMORY[0x28223BE20](v84);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  memcpy(v93, a1, 0x191uLL);
  v25 = *a3;
  v26 = *a4;
  sub_246023B40(*(&v93[0] + 1));
  v28 = v27;
  v30 = v29;
  v31 = 1;
  v32 = swift_beginAccess();
  *(v8 + 16) = v28;
  *(v8 + 24) = v30;
  v33 = *(v8 + 464);
  if (v33)
  {
    v34 = (*(*v33 + 176))(v32);
    v31 = v35;
    v37 = v36;
    v38 = v36;
    if (v35)
    {
      v38 = -1.0;
    }

    v39 = *&v34;
  }

  else
  {
    v39 = 0.0;
    v38 = -1.0;
    v37 = 0.0;
  }

  *(v8 + 32) = v38;
  if ((*(v8 + 168) & 1) != 0 || (*(v8 + 169) & 1) != 0 || *(v8 + 128) || *(v8 + 136))
  {
    return 0;
  }

  v40 = *(**(v8 + 144) + 120);
  v79 = *(v8 + 144);
  v40();
  LOBYTE(v88[0]) = v25;
  if (sub_246023604(v88))
  {
    v77 = v93[11];
    v78 = v93[10];
    v75 = v93[13];
    v76 = v93[12];
    v41 = (a7 <= 0.6) & ~v15;
    v43 = v82;
    v42 = v83;
    v45 = v80;
    v44 = v81;
  }

  else
  {
    v41 = 0;
    v15 = 1;
    LOBYTE(v88[0]) = 1;
    v77 = v93[11];
    v78 = v93[10];
    v42 = 0uLL;
    v43 = 0uLL;
    v45 = 0uLL;
    v44 = 0uLL;
    v75 = v93[13];
    v76 = v93[12];
  }

  v91[0] = v42;
  v91[1] = v43;
  v91[2] = v45;
  v91[3] = v44;
  v92 = v15;
  swift_beginAccess();
  sub_24608A458(v41);
  swift_endAccess();
  v88[0] = *sub_246036028();
  v90 = v26;
  sub_245FCFD24();
  v46 = sub_246092184();
  swift_beginAccess();
  sub_24608A614(v46 & 1);
  swift_endAccess();
  v47 = *(v8 + 72);
  swift_beginAccess();
  v48 = *(*v47 + 184);

  v49 = (v15 & 1) != 0 ? sub_245FD0284 : sub_245FCFEAC;
  v50 = v48(v91, v49, v8, v8 + 496, v78, v77, v76, v75);
  swift_endAccess();

  swift_beginAccess();
  sub_24608A7D0(v50 & 1);
  v51 = swift_endAccess();
  v52 = v79;
  v53 = ((*(*v79 + 152))(v51) & 1) != 0 ? 0 : (*(*v52 + 168))() ^ 1;
  swift_beginAccess();
  sub_24608A988(v53 & 1);
  swift_endAccess();
  *(v8 + 472) = -1082130432;
  if (v31)
  {
    v54 = 1;
  }

  else
  {
    v55 = v37;
    *(v8 + 472) = v55;
    if (qword_27EE3C120 != -1)
    {
      swift_once();
    }

    v54 = *&dword_27EE3EFF8 > v55;
  }

  swift_beginAccess();
  sub_24608AB40(v54);
  v56 = swift_endAccess();
  v57 = *(*v8 + 448);
  v57(v88, v56);
  v58 = sub_24608BC00();
  swift_beginAccess();
  sub_24608A29C(v58 & 1);
  v59 = swift_endAccess();
  v57(v88, v59);
  if (v89 != 1)
  {
    return 0;
  }

  v60 = sub_245FA3394();
  v61 = v87[2];
  *&v83 = v61;
  if (v31)
  {
    v62 = v84;
    v61(v22, v60, v84);
    v63 = sub_2460918D4();
    v64 = sub_246091FA4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_245F8A000, v63, v64, "IMU ahead of video frame timestamp unknown.", v65, 2u);
      MEMORY[0x24C1989D0](v65, -1, -1);
    }

    v66 = v87[1];
    v66(v22, v62);
  }

  else
  {
    v62 = v84;
    v61(v24, v60, v84);

    sub_245FCFDFC(v93, v88);
    v68 = sub_2460918D4();
    v69 = sub_246091FA4();

    sub_245FCFE58(v93);
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134349312;
      *(v70 + 4) = v39 - (*v93 + *(v8 + 152));
      *(v70 + 12) = 2050;
      *(v70 + 14) = v37;
      _os_log_impl(&dword_245F8A000, v68, v69, "IMU ahead of video frame timestamp by = %{public}f with speed = %{public}f", v70, 0x16u);
      MEMORY[0x24C1989D0](v70, -1, -1);
    }

    v66 = v87[1];
    v66(v24, v62);
    *(v8 + 480) = v39;
  }

  *(v8 + 224) = *&v93[0];
  v71 = sub_245FA3394();
  (v83)(v19, v71, v62);

  v72 = sub_2460918D4();
  v73 = sub_246091FC4();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134349056;
    *(v74 + 4) = *(v8 + 224);
    _os_log_impl(&dword_245F8A000, v72, v73, "Pre-check passed at timestamp = %{public}f", v74, 0xCu);
    MEMORY[0x24C1989D0](v74, -1, -1);
  }

  v66(v19, v62);
  sub_245FCDF98(1, 1, v85, v86);
  return 1;
}

uint64_t sub_245FCCC88(int a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v39 = a1;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - v13;
  v15 = sub_245FA3394();
  v37 = v8[2];
  v38 = v15;
  v37(v14);
  v16 = sub_2460918D4();
  v17 = sub_246091FC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = v8;
    v19 = v7;
    v20 = a2;
    v21 = a3;
    v22 = v12;
    v23 = v18;
    *v18 = 0;
    _os_log_impl(&dword_245F8A000, v16, v17, "Trying manual capture...", v18, 2u);
    v24 = v23;
    v12 = v22;
    a3 = v21;
    a2 = v20;
    v7 = v19;
    v8 = v36;
    MEMORY[0x24C1989D0](v24, -1, -1);
  }

  v25 = v8[1];
  v25(v14, v7);
  if (*(v4 + 128))
  {
    v26 = *(v4 + 128);

    sub_246091AD4();

    v27 = *(v4 + 128);
  }

  *(v4 + 128) = 0;

  v28 = (*(**(v4 + 144) + 104))(1);
  v29 = (*(*v4 + 576))(v28);
  if (v29)
  {
    sub_245FCDF98(0, v39 & 1, a2, a3);
  }

  else
  {
    (v37)(v12, v38, v7);
    v30 = sub_2460918D4();
    v31 = sub_246091FB4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v12;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_245F8A000, v30, v31, "Ignoring manual capture, too frequent!", v33, 2u);
      MEMORY[0x24C1989D0](v33, -1, -1);

      v34 = v32;
    }

    else
    {

      v34 = v12;
    }

    v25(v34, v7);
  }

  return v29 & 1;
}

uint64_t sub_245FCCFB8(uint64_t a1, const void *a2, __n128 *a3)
{
  v55 = a1;
  v56 = a3;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v53 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - v18;
  memcpy(v59, a2, 0x191uLL);
  v20 = v59[400];
  v21 = sub_245FA3394();
  v22 = v5[2];
  v57 = v22;
  if (v20)
  {
    v54 = v4;
    v22(v19, v21, v4);
    v23 = sub_2460918D4();
    v24 = sub_246091FC4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245F8A000, v23, v24, "Trying to add automatic capture shot...", v25, 2u);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    v26 = v5[1];
    v27 = v54;
    v26(v19, v54);
    v28 = v58;
    if ((sub_245FCF2B0(v59) & 1) == 0)
    {
      v48 = v53;
      v57(v53, v21, v27);
      v49 = sub_2460918D4();
      v50 = sub_246091FC4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_245F8A000, v49, v50, "Shot image sharpness is not good, discard this shot!", v51, 2u);
        v52 = v51;
        v28 = v58;
        MEMORY[0x24C1989D0](v52, -1, -1);
      }

      v26(v48, v27);
      sub_245FCD520(v59, v28);
      v47 = 0;
      return v47 & 1;
    }

    v57(v11, v21, v27);
    v29 = sub_2460918D4();
    v30 = sub_246091FC4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_245F8A000, v29, v30, "Passed post-capture check, saving image...", v31, 2u);
      v32 = v31;
      v28 = v58;
      MEMORY[0x24C1989D0](v32, -1, -1);
    }

    result = (v26)(v11, v54);
    v34 = *(v28 + 96);
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      *(v28 + 96) = v36;
      sub_245FCF964();
      if (*(v28 + 193) != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v22(v17, v21, v4);
    v37 = sub_2460918D4();
    v38 = sub_246091FC4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_245F8A000, v37, v38, "Trying to add manual capture shot...", v39, 2u);
      MEMORY[0x24C1989D0](v39, -1, -1);
    }

    v40 = v5[1];
    result = v40(v17, v4);
    v28 = v58;
    v41 = *(v58 + 104);
    v35 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v35)
    {
      *(v58 + 104) = v42;
      sub_245FCF964();
      if (*(v28 + 193) != 1)
      {
LABEL_18:
        sub_245FCD520(v59, v28);
        v47 = 1;
        return v47 & 1;
      }

      v57(v14, v21, v4);
      v43 = sub_2460918D4();
      v44 = sub_246091FC4();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_245F8A000, v43, v44, "Adding the manual shot to pose graph. It must be the first hidden shot at start capturing.", v45, 2u);
        v46 = v45;
        v28 = v58;
        MEMORY[0x24C1989D0](v46, -1, -1);
      }

      v40(v14, v4);
LABEL_17:
      v47 = sub_245FCF550(v55, v59, v56);
      sub_245FCD520(v59, v28);
      return v47 & 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_245FCD520(uint64_t a1, uint64_t a2)
{
  sub_246023D7C(*(a1 + 8));
  v5 = v4;
  v7 = v6;
  swift_beginAccess();
  *(a2 + 36) = v5;
  *(a2 + 40) = v7;
  v8 = *(a2 + 488);
  *(a2 + 48) = *(a2 + 476);
  *(a2 + 52) = v8;
  v9 = *(a1 + 400);
  if (v9 == 1)
  {
    if (*(a2 + 128))
    {
      v10 = *(a2 + 128);

      sub_246091AD4();

      v11 = *(a2 + 128);
    }

    *(a2 + 128) = 0;
  }

  else
  {
    if (*(a2 + 136))
    {
      v12 = *(a2 + 136);

      sub_246091AD4();

      v13 = *(a2 + 136);
    }

    *(a2 + 136) = 0;
  }

  result = (*(**(a2 + 144) + 104))(1);
  *(a2 + 192) = v9;
  return result;
}

uint64_t sub_245FCD634(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7 = *(**(v5 + 72) + 160);

  LOBYTE(a1) = v7(a1, a2, a3, a4, a5);

  return a1 & 1;
}

uint64_t sub_245FCD6B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(**(v2 + 72) + 152);

  v5 = v4(a1);

  if ((v5 & 1) == 0)
  {
    return v5 & 1;
  }

  result = swift_beginAccess();
  v7 = *(v2 + 112);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (!v8)
  {
    *(v2 + 112) = v9;
    return v5 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FCD768()
{
  v1 = *(**(v0 + 72) + 168);

  v1(v2);
}

uint64_t sub_245FCD7D0()
{
  v1 = *(**(v0 + 72) + 176);

  v1(v2);
}

double sub_245FCD84C(char a1)
{
  result = 1.0;
  if (a1)
  {
    return *(v1 + 184);
  }

  return result;
}

uint64_t sub_245FCD85C()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    return (*(*v1 + 184))();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_245FCD8D0()
{
  v1 = sub_246091AA4();
  v47 = *(v1 - 8);
  v2 = *(v47 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v46 = &v44 - v6;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v44 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v44 - v16;
  v18 = sub_2460919F4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v48 = v0;
  v20 = *(v0 + 192);
  if (v20 != 2)
  {
    v45 = v1;
    if (v20)
    {
      *(v48 + 168) = 1;
      v26 = swift_allocObject();
      swift_weakInit();
      v54 = sub_245FD01B8;
      v55 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_245F913A4;
      v53 = &unk_2858DEB38;
      v44 = _Block_copy(&aBlock);
      v49 = MEMORY[0x277D84F90];
      sub_245FD00FC();

      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245FD0154();
      sub_2460921A4();
      v27 = sub_246091AE4();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      sub_246091AC4();

      v30 = sub_245FA3394();
      (*(v8 + 16))(v17, v30, v7);
      v31 = sub_2460918D4();
      v32 = sub_246091FB4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_245F8A000, v31, v32, "Set cooldown time for automatic shot", v33, 2u);
        v15 = v17;
LABEL_10:
        v40 = v45;
        MEMORY[0x24C1989D0](v33, -1, -1);
LABEL_13:

        (*(v8 + 8))(v15, v7);
        v41 = *(v48 + 120);
        sub_246091A84();
        v42 = v46;
        sub_246091B14();
        v43 = *(v47 + 8);
        v43(v5, v40);
        sub_246092014();

        return (v43)(v42, v40);
      }

      v15 = v17;
    }

    else
    {
      *(v48 + 169) = 1;
      v34 = swift_allocObject();
      swift_weakInit();
      v54 = sub_245FD00A0;
      v55 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_245F913A4;
      v53 = &unk_2858DEB10;
      v44 = _Block_copy(&aBlock);
      v49 = MEMORY[0x277D84F90];
      sub_245FD00FC();

      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245FD0154();
      sub_2460921A4();
      v35 = sub_246091AE4();
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      sub_246091AC4();

      v38 = sub_245FA3394();
      (*(v8 + 16))(v15, v38, v7);
      v31 = sub_2460918D4();
      v39 = sub_246091FB4();
      if (os_log_type_enabled(v31, v39))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_245F8A000, v31, v39, "Set cooldown time for manual shot", v33, 2u);
        goto LABEL_10;
      }
    }

    v40 = v45;
    goto LABEL_13;
  }

  v21 = sub_245FA3394();
  (*(v8 + 16))(v12, v21, v7);
  v22 = sub_2460918D4();
  v23 = sub_246091FB4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_245F8A000, v22, v23, "Failed to set cooldown time because last shot couldn't be added!", v24, 2u);
    MEMORY[0x24C1989D0](v24, -1, -1);
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_245FCDF98(int a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v43[1] = a4;
  v44 = a3;
  v48 = a2;
  v47 = sub_2460919E4();
  v45 = *(v47 - 8);
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = sub_246091AA4();
  v10 = *(v46 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v46);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v43 - v15;
  v17 = sub_2460919F4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = swift_allocObject();
  swift_weakInit();
  v49 = a1;
  if (a1)
  {
    v55 = sub_245FD0264;
    v56 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_245F913A4;
    v54 = &unk_2858DEB88;
    v43[0] = _Block_copy(&aBlock);
    v50 = MEMORY[0x277D84F90];
    sub_245FD00FC();

    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FD0154();
    sub_2460921A4();
    v20 = sub_246091AE4();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = sub_246091AC4();

    v24 = *(v4 + 128);
    *(v5 + 128) = v23;
  }

  else
  {
    v55 = sub_245FD025C;
    v56 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v52 = 1107296256;
    v53 = sub_245F913A4;
    v54 = &unk_2858DEB60;
    v43[0] = _Block_copy(&aBlock);
    v50 = MEMORY[0x277D84F90];
    sub_245FD00FC();

    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FD0154();
    sub_2460921A4();
    v25 = sub_246091AE4();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    v28 = sub_246091AC4();

    v29 = *(v4 + 136);
    *(v5 + 136) = v28;
  }

  swift_retain_n();

  v30 = *(v5 + 120);
  sub_246091A84();
  *v9 = 2;
  v31 = v45;
  v32 = v47;
  (*(v45 + 104))(v9, *MEMORY[0x277D85188], v47);
  MEMORY[0x24C196480](v14, v9);
  (*(v31 + 8))(v9, v32);
  v33 = *(v10 + 8);
  v34 = v14;
  v35 = v46;
  v33(v34, v46);
  sub_246092014();

  result = (v33)(v16, v35);
  *(v5 + 436) = *(v5 + 432);
  v37 = v49;
  *(v5 + 193) = v48 & 1;
  if (v37)
  {
    v38 = *(v5 + 80);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      *(v5 + 80) = v40;
LABEL_9:
      v44(v37 & 1);
      (*(**(v5 + 144) + 104))(0);
    }

    __break(1u);
  }

  else
  {
    v41 = *(v5 + 88);
    v39 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v39)
    {
      *(v5 + 88) = v42;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245FCE4BC()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_245FA3394();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Created cancel request for automatic capture", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    if (*(v6 + 128))
    {
      v11 = *(v6 + 128);

      sub_246091AD4();

      v12 = *(v6 + 128);
    }

    *(v6 + 128) = 0;

    (*(**(v6 + 144) + 104))(1);
  }

  return result;
}

uint64_t sub_245FCE6A4()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_245FA3394();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Created cancel request for manual capture", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    if (*(v6 + 136))
    {
      v11 = *(v6 + 136);

      sub_246091AD4();

      v12 = *(v6 + 136);
    }

    *(v6 + 136) = 0;

    (*(**(v6 + 144) + 104))(1);
  }

  return result;
}

BOOL sub_245FCE88C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (CVBufferCopyAttachment(*(a1 + 8), *MEMORY[0x277CE5180], 0))
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      [v12 floatValue];
      *(v2 + 488) = v13;
      v14 = sub_245FA3394();
      (*(v5 + 16))(v11, v14, v4);

      v15 = sub_2460918D4();
      v16 = sub_246091FC4();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134349056;
        *(v17 + 4) = *(v2 + 488);
        _os_log_impl(&dword_245F8A000, v15, v16, "postcheck: Focus pixel blur score = %{public}f", v17, 0xCu);
        MEMORY[0x24C1989D0](v17, -1, -1);
      }

      swift_unknownObjectRelease();
      (*(v5 + 8))(v11, v4);
      v18 = *(v2 + 488);
      return v18 >= 0.0 && v18 < 10.0;
    }

    swift_unknownObjectRelease();
  }

  *(v2 + 488) = 0;
  v20 = sub_245FA3394();
  (*(v5 + 16))(v9, v20, v4);
  v21 = sub_2460918D4();
  v22 = sub_246091FB4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_245F8A000, v21, v22, "postcheck: missing blur score in still image data, not using focus pixel blur score in post capture check.", v23, 2u);
    MEMORY[0x24C1989D0](v23, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  return 1;
}

BOOL sub_245FCEB64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v74 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v74 - v16;
  MEMORY[0x28223BE20](v15);
  v21 = &v74 - v20;
  v22 = *a1;
  v23 = *(a1 + 8);
  *(v2 + 476) = -1082130432;
  v24 = *(v2 + 464);
  if (!v24)
  {
    return 1;
  }

  v77 = v19;
  v79 = v18;

  sub_246023D7C(v23);
  v26 = v25;
  v27 = v22 - v25;
  v28 = v22 + 0.015;
  v29 = *(v2 + 224);
  if (v29 < v22 + 0.015 && v27 <= v29)
  {
    v31 = sub_245FA3394();
    (*(v5 + 16))(v21, v31, v4);
    v32 = sub_2460918D4();
    v33 = sub_246091FA4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v80 = v13;
      v35 = v34;
      *v34 = 0;
      _os_log_impl(&dword_245F8A000, v32, v33, "postcheck: IMU shot frame hit type 1 (triggering video frame time ~= shot frame time)!", v34, 2u);
      v36 = v35;
      v13 = v80;
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v5 + 8))(v21, v4);
  }

  v37 = *(v2 + 152);
  v38 = v27 + v37;
  v39 = v28 + v37;
  v81 = 0;
  v40 = (*(*v24 + 168))(&v81, v38, v28 + v37);
  if (v41)
  {
    v42 = sub_245FA3394();
    (*(v5 + 16))(v9, v42, v4);
    v43 = sub_2460918D4();
    v44 = sub_246091FB4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134349312;
      *(v45 + 4) = v38;
      *(v45 + 12) = 2050;
      *(v45 + 14) = v39;
      _os_log_impl(&dword_245F8A000, v43, v44, "postcheck: No IMU data available from %{public}f to %{public}f", v45, 0x16u);
      MEMORY[0x24C1989D0](v45, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  v47 = *&v40;
  v80 = v13;
  v48 = sub_245FA3394();
  v78 = *(v5 + 16);
  v78(v17, v48, v4);

  v49 = sub_2460918D4();
  v50 = sub_246091FA4();

  v51 = os_log_type_enabled(v49, v50);
  v76 = v48;
  if (v51)
  {
    v52 = swift_slowAlloc();
    *v52 = 134349312;
    *(v52 + 4) = *(v2 + 480) + (v38 + v39) * -0.5;
    *(v52 + 12) = 2050;
    *(v52 + 14) = v47;
    _os_log_impl(&dword_245F8A000, v49, v50, "postcheck: IMU ahead of shot frame timestamp by %{public}f with speed = %{public}f", v52, 0x16u);
    v53 = v52;
    v48 = v76;
    MEMORY[0x24C1989D0](v53, -1, -1);
  }

  v54 = v47;

  v55 = *(v5 + 8);
  v55(v17, v4);
  v56 = *(v2 + 480);
  if (v38 <= v56 && v56 < v39)
  {
    v75 = v55;
    v64 = v77;
    v78(v77, v48, v4);
    v61 = sub_2460918D4();
    v65 = sub_246091FA4();
    v66 = os_log_type_enabled(v61, v65);
    v60 = v79;
    if (!v66)
    {
      v80 = v64;
      goto LABEL_31;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_245F8A000, v61, v65, "postcheck: IMU shot frame hit type 2 (current time ~= shot frame time)!", v63, 2u);
    v80 = v64;
    goto LABEL_29;
  }

  v58 = v56 + 0.05;
  v59 = v38 <= v58 && v58 < v39;
  v60 = v79;
  if (v59)
  {
    v75 = v55;
    v78(v80, v48, v4);
    v61 = sub_2460918D4();
    v62 = sub_246091FA4();
    if (!os_log_type_enabled(v61, v62))
    {
LABEL_31:
      v48 = v76;

      v55 = v75;
      v75(v80, v4);
      goto LABEL_32;
    }

    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_245F8A000, v61, v62, "postcheck: IMU shot frame hit type 3 (predicted time ~= shot frame time)!", v63, 2u);
LABEL_29:
    MEMORY[0x24C1989D0](v63, -1, -1);
    goto LABEL_31;
  }

LABEL_32:
  v67 = v54;
  *(v2 + 476) = v67;
  v78(v60, v48, v4);
  v68 = v81;

  v69 = sub_2460918D4();
  v70 = sub_246091FA4();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134349568;
    *(v71 + 4) = *(v2 + 476);
    *(v71 + 12) = 2050;
    *(v71 + 14) = v26;
    *(v71 + 22) = 2050;
    *(v71 + 24) = v68;
    _os_log_impl(&dword_245F8A000, v69, v70, "postcheck: Max IMU angular speed = %{public}f, exposureTime = %{public}f, computed from %{public}ld samples.", v71, 0x20u);
    MEMORY[0x24C1989D0](v71, -1, -1);
  }

  v55(v60, v4);
  v72 = *(v2 + 476);
  if (v72 < 0.0)
  {

    return 0;
  }

  if (qword_27EE3C120 != -1)
  {
    swift_once();
  }

  v73 = *&dword_27EE3EFF8;

  return v72 < v73;
}

uint64_t sub_245FCF2B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FCEB64(a1);
  swift_beginAccess();
  *(v2 + 67) = v9;
  v10 = sub_245FCE88C(a1);
  swift_beginAccess();
  sub_24608AEA4(v10);
  v11 = swift_endAccess();
  v12 = *(*v2 + 448);
  v12(v21, v11);
  v13 = j___s6CoreOC14CaptureFactorsV023focusPixelBlurScorePostC11CheckPassedSbvg();
  swift_beginAccess();
  sub_24608ACF4(v13 & 1);
  v14 = swift_endAccess();
  v15 = (v12)(v21, v14);
  if (v22 == 1)
  {
    v16 = sub_245FA3394();
    (*(v5 + 16))(v8, v16, v4);

    v17 = sub_2460918D4();
    v18 = sub_246091FC4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      *(v19 + 4) = *(v2 + 488);
      _os_log_impl(&dword_245F8A000, v17, v18, "postCaptureCheck: focus pixel blur score = %{public}f", v19, 0xCu);
      MEMORY[0x24C1989D0](v19, -1, -1);
    }

    v15 = (*(v5 + 8))(v8, v4);
  }

  v12(v21, v15);
  return v22;
}

uint64_t sub_245FCF550(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v7 = type metadata accessor for VIOPoseNode(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091834();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for OCObjectCentricPoseNode(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  v21 = *(a2 + 128);
  v40[0] = *(a2 + 112);
  v40[1] = v21;
  v22 = *(a2 + 160);
  v40[2] = *(a2 + 144);
  v23 = *(a2 + 192);
  v37 = *(a2 + 176);
  v38 = v22;
  v39 = v23;
  v36 = *(a2 + 208);
  if (a3[4].n128_u8[0])
  {
    (*(v12 + 16))(v15, a1, v11);
    sub_24608686C(v15, v40, v10, v20, v38, v37, v39, v36);
    v24 = *(**(v3 + 72) + 144);

    v25 = v24(v10);

    v26 = type metadata accessor for VIOPoseNode;
    v27 = v10;
  }

  else
  {
    v28 = a3[3];
    v34 = a3[2];
    v35 = v28;
    v29 = *a3;
    v33 = a3[1];
    v32 = v29;
    (*(v12 + 16))(v15, a1, v11);
    sub_2460866E4(v15, v40, v19, v20, v32, v33, v34, v35, v38, v37, v39, v36);
    v30 = *(**(v3 + 72) + 136);

    v25 = v30(v19);

    v26 = type metadata accessor for OCObjectCentricPoseNode;
    v27 = v19;
  }

  sub_245FD01FC(v27, v26);
  return v25 & 1;
}

BOOL sub_245FCF844(uint64_t a1, double a2, double a3, double a4, float32x4_t a5, double a6, double a7, double a8, float32x4_t a9)
{
  v11 = vmulq_f32(a5, a5);
  v12 = vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12));
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v11.f32, *v11.f32)));
  v13 = vmulq_n_f32(a5, vmul_f32(*v11.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v14 = vmulq_f32(a9, a9);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_f32(v13, vmulq_n_f32(a9, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]));
  v17 = sub_246021418(v16.f32[2] + vaddv_f32(*v16.f32), -1.0, 1.0);
  v18 = acosf(v17);
  result = 0;
  v20 = vsubq_f32(a5, a9);
  v21 = vmulq_f32(v20, v20);
  v22 = sqrtf(vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL))));
  *a1 = v18;
  *(a1 + 4) = 0;
  *(a1 + 8) = v22;
  *(a1 + 12) = 0;
  if (*(v9 + 200) >= v18)
  {
    return v22 <= 0.1 || *(v9 + 204) >= v18;
  }

  return result;
}

uint64_t sub_245FCF964()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = v13 / v9;
  swift_beginAccess();
  *(v0 + 56) = v14;
  v15 = sub_245FA3394();
  (*(v2 + 16))(v6, v15, v1);

  v16 = sub_2460918D4();
  v17 = sub_246091FC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = *(v0 + 88);
    *(v18 + 4) = *(v0 + 80);
    v20 = *(v0 + 104);
    *(v18 + 14) = *(v0 + 96);
    *v18 = 134350336;
    *(v18 + 24) = v19;
    *(v18 + 12) = 2050;
    *(v18 + 22) = 2050;
    *(v18 + 32) = 2050;
    *(v18 + 34) = v20;

    *(v18 + 42) = 2050;
    (*(*v0 + 448))(v22, v21);
    *(v18 + 44) = v23;
    *(v18 + 52) = 2050;
    *(v18 + 54) = v9;
    _os_log_impl(&dword_245F8A000, v16, v17, "CaptureStats: Automatic shots attempted = %{public}ld and captured = %{public}ld | Manual shots attempted = %{public}ld and captured = %{public}ld | Shot acceptance rate = %{public}f with attempt count = %{public}ld", v18, 0x3Eu);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  else
  {
  }

  return (*(v2 + 8))(v6, v1);
}

uint64_t sub_245FCFBF8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 112) = a1;
  return result;
}

uint64_t sub_245FCFC38()
{
  result = sub_245F924F8();
  if ((result & 0x100000000) != 0)
  {
    v1 = 1051931443;
  }

  else
  {
    v1 = result;
  }

  dword_27EE3EFF8 = v1;
  return result;
}

uint64_t sub_245FCFC68()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  v4 = *(v0 + 144);

  v5 = *(v0 + 240);

  v6 = *(v0 + 384);
  v13[6] = *(v0 + 368);
  v13[7] = v6;
  v7 = *(v0 + 416);
  v13[8] = *(v0 + 400);
  v13[9] = v7;
  v8 = *(v0 + 320);
  v13[2] = *(v0 + 304);
  v13[3] = v8;
  v9 = *(v0 + 352);
  v13[4] = *(v0 + 336);
  v13[5] = v9;
  v10 = *(v0 + 288);
  v13[0] = *(v0 + 272);
  v13[1] = v10;
  sub_245FCFEB0(v13);
  v11 = *(v0 + 464);

  return v0;
}

uint64_t sub_245FCFCF0()
{
  sub_245FCFC68();

  return swift_deallocClassInstance();
}

unint64_t sub_245FCFD24()
{
  result = qword_27EE3AB40;
  if (!qword_27EE3AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB40);
  }

  return result;
}

BOOL sub_245FCFD78(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  result = 0;
  v12 = vmlaq_f32(vmulq_f32(a2, 0), 0, a3);
  __asm { FMOV            V1.4S, #-1.0 }

  v18 = vmulq_f32(vmlaq_f32(vmlaq_f32(v12, _Q1, a4), 0, a5), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(a6, 0), 0, a7), _Q1, a8), 0, a9));
  _Q1.f32[0] = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)));
  v19 = vsubq_f32(a5, a9);
  v20 = vmulq_f32(v19, v19);
  v21 = sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))));
  *(a1 + 16) = _Q1.i32[0];
  *(a1 + 20) = 0;
  *(a1 + 24) = v21;
  *(a1 + 28) = 0;
  if (_Q1.f32[0] >= *(v9 + 216))
  {
    return *(v9 + 212) >= v21;
  }

  return result;
}

uint64_t sub_245FCFEB0(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A488, &qword_246097C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245FCFF3C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_245FCFF54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_245FCFF80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
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

uint64_t sub_245FCFFDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_245FD0068()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245FD00A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 169) = 0;
  }

  return result;
}

uint64_t sub_245FD00E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_245FD00FC()
{
  result = qword_27EE3A380;
  if (!qword_27EE3A380)
  {
    sub_2460919F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A380);
  }

  return result;
}

unint64_t sub_245FD0154()
{
  result = qword_27EE3A390;
  if (!qword_27EE3A390)
  {
    sub_245F9135C(&qword_27EE39F38, &qword_246096680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A390);
  }

  return result;
}

uint64_t sub_245FD01B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 168) = 0;
  }

  return result;
}

uint64_t sub_245FD01FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_245FD0288()
{
  result = sub_245FFBCC0(&unk_2858DEBB0);
  qword_27EE3C138 = result;
  return result;
}

unint64_t sub_245FD02B0()
{
  result = sub_245FFBDAC(&unk_2858DECC0, &qword_27EE3A608, &qword_246098468);
  qword_27EE3C148 = result;
  return result;
}

uint64_t sub_245FD02E8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v78) = a5;
  v77 = a4;
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v70.i8[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = 0xE000000000000000;
  v99 = 0;
  v100 = 0xE000000000000000;
  sub_245FFE868(a1, v12, type metadata accessor for PhotogrammetrySession.Request);
  v14 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if ((*(*(v14 - 8) + 48))(v12, 3, v14))
  {
    v15 = 0;
    LODWORD(v76) = 1;
    goto LABEL_21;
  }

  v16 = a3;
  v17 = v12[*(v14 + 48)];
  v18 = &v12[*(v14 + 64)];
  v19 = *(v18 + 7);
  v96 = *(v18 + 6);
  v97 = v19;
  v98 = v18[128];
  v20 = *(v18 + 3);
  v92 = *(v18 + 2);
  v93 = v20;
  v21 = *(v18 + 5);
  v94 = *(v18 + 4);
  v95 = v21;
  v22 = *(v18 + 1);
  v90 = *v18;
  v91 = v22;
  MEMORY[0x24C196640](0x6C206C6961746564, 0xEE00203A6C657665);
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v23 = 0x6D756964656D2ELL;
        v24 = 0xE700000000000000;
      }

      else
      {
        v23 = 0x6C6C75662ELL;
        v24 = 0xE500000000000000;
      }

      goto LABEL_16;
    }

    v23 = 0x646563756465722ELL;
LABEL_13:
    v24 = 0xE800000000000000;
    goto LABEL_16;
  }

  if (v17 <= 4)
  {
    if (v17 != 3)
    {
      v23 = 2002874926;
      v24 = 0xE400000000000000;
      goto LABEL_16;
    }

    v23 = 0x776569766572702ELL;
    goto LABEL_13;
  }

  if (v17 != 5)
  {
    MEMORY[0x24C196640](0x6D6F747375632ELL, 0xE700000000000000);
    v25 = 0;
    goto LABEL_17;
  }

  v23 = 0x656C69626F6D2ELL;
  v24 = 0xE700000000000000;
LABEL_16:
  MEMORY[0x24C196640](v23, v24);
  v25 = 1;
LABEL_17:
  a3 = v16;
  MEMORY[0x24C196640](0x74656D6F6567202CLL, 0xED00007B203A7972);
  v87 = v96;
  v88 = v97;
  v89 = v98;
  v83 = v92;
  v84 = v93;
  v85 = v94;
  v86 = v95;
  v81 = v90;
  v82 = v91;
  if (sub_245F97DBC(&v81) == 1)
  {
    MEMORY[0x24C196640](7104878, 0xE300000000000000);
  }

  else
  {
    v74 = v86;
    v75 = v85;
    v72 = v88;
    v73 = v87;
    v26 = sub_246021244(v81, v82, v83, v84);
    v28 = v27;
    v75.i64[0] = sub_246021244(v75, v74, v73, v72);
    v74.i64[0] = v29;
    v79 = v99;
    v80 = v100;

    MEMORY[0x24C196640](0xD000000000000019, 0x80000002460A0D20);

    MEMORY[0x24C196640](v26, v28);

    MEMORY[0x24C196640](32, 0xE100000000000000);

    MEMORY[0x24C196640](0x6E617254746F6F72, 0xEF203A6D726F6673);

    MEMORY[0x24C196640](v75.i64[0], v74.i64[0]);

    v99 = v79;
    v100 = v80;
  }

  LODWORD(v76) = v25;
  MEMORY[0x24C196640](125, 0xE100000000000000);
  v30 = sub_246091704();
  (*(*(v30 - 8) + 8))(v12, v30);
  v15 = v99;
  v13 = v100;
LABEL_21:
  v90.i64[0] = v15;
  v90.i64[1] = v13;

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A0BD0);

  v31 = (v6 & 1) == 0;
  if (v6)
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (v31)
  {
    v33 = 0xE500000000000000;
  }

  else
  {
    v33 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v32, v33);

  v34 = 0xE000000000000000;
  v35 = 0x726564726F6E752ELL;
  if (v8)
  {
    v35 = 0;
  }

  else
  {
    v34 = 0xEA00000000006465;
  }

  if (v8 == 1)
  {
    v36 = 0x746E65757165732ELL;
  }

  else
  {
    v36 = v35;
  }

  if (v8 == 1)
  {
    v37 = 0xEB000000006C6169;
  }

  else
  {
    v37 = v34;
  }

  MEMORY[0x24C196640](0xD000000000000012, 0x80000002460A0BF0);

  MEMORY[0x24C196640](v36, v37);

  v38 = 0xE700000000000000;
  v39 = 0x6C616D726F6E2ELL;
  if (a3)
  {
    v39 = 0;
    v38 = 0xE000000000000000;
  }

  if (a3 == 1)
  {
    v40 = 0x686769682ELL;
  }

  else
  {
    v40 = v39;
  }

  if (a3 == 1)
  {
    v41 = 0xE500000000000000;
  }

  else
  {
    v41 = v38;
  }

  MEMORY[0x24C196640](0xD000000000000016, 0x80000002460A0C10);

  MEMORY[0x24C196640](v40, v41);

  v42 = v78;
  if (v78)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v78)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x24C196640](0xD000000000000015, 0x80000002460A0C30);

  MEMORY[0x24C196640](v43, v44);

  if ((v42 & 0x100) != 0)
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if ((v42 & 0x100) != 0)
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A0C50);

  MEMORY[0x24C196640](v45, v46);

  result = v90.i64[0];
  v48 = v76;
  if (!v77)
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    v73.i64[0] = v90.i64[1];
    v72.i64[0] = v90.i64[0];
    MaxPolyCount = CPGOutputModelOptionsGetMaxPolyCount();
    v90.i64[0] = 0;
    v90.i64[1] = 0xE000000000000000;
    sub_246092284();

    strcpy(v90.i8, "maxPolyCount: ");
    v90.i8[15] = -18;
    v81.i64[0] = MaxPolyCount;
    v50 = sub_2460923D4();
    MEMORY[0x24C196640](v50);

    v71 = v90;
    MaxTextureResolution = CPGOutputModelOptionsGetMaxTextureResolution();
    v90.i64[0] = 0;
    v90.i64[1] = 0xE000000000000000;
    sub_246092284();

    v90.i64[0] = 0xD000000000000013;
    v90.i64[1] = 0x80000002460A0C70;
    v81.i64[0] = MaxTextureResolution;
    v52 = sub_2460923D4();
    MEMORY[0x24C196640](v52);

    v53 = 0;
    v70 = v90;
    v90.i64[0] = 0xD000000000000021;
    v90.i64[1] = 0x80000002460A0C90;
    v76 = "xture settings: {";
    v75.i64[0] = 0x80000002460A0CE0;
    v54 = &off_2858DED90;
    v74.i64[0] = 0x80000002460A0D00;
    do
    {
      v55 = dword_2858DED30[v53 + 8];
      v57 = *(v54 - 1);
      v56 = *v54;

      TextureDestination = CPGOutputModelOptionsGetTextureDestination();
      if (TextureDestination)
      {
        v59 = 0;
      }

      else
      {
        v59 = 0xD000000000000010;
      }

      v60 = v74.i64[0];
      if (TextureDestination)
      {
        v60 = 0xE000000000000000;
      }

      if (TextureDestination == 1)
      {
        v61 = 0xD000000000000010;
      }

      else
      {
        v61 = v59;
      }

      if (TextureDestination == 1)
      {
        v62 = v75.i64[0];
      }

      else
      {
        v62 = v60;
      }

      TextureFormat = CPGOutputModelOptionsGetTextureFormat();
      v64 = 1735290926;
      if (TextureFormat)
      {
        v64 = 0;
        v65 = 0xE000000000000000;
      }

      else
      {
        v65 = 0xE400000000000000;
      }

      if (TextureFormat == 1)
      {
        v64 = 0x6765706A2ELL;
        v65 = 0xE500000000000000;
      }

      if (TextureFormat == 2)
      {
        v64 = 1920492846;
      }

      v78 = v64;
      if (TextureFormat == 2)
      {
        v66 = 0xE400000000000000;
      }

      else
      {
        v66 = v65;
      }

      CPGOutputModelOptionsGetTextureLossyCompressionQuality();
      v81 = v90;

      MEMORY[0x24C196640](v57, v56);

      MEMORY[0x24C196640](8250, 0xE200000000000000);

      MEMORY[0x24C196640](v61, v62);

      MEMORY[0x24C196640](8236, 0xE200000000000000);

      MEMORY[0x24C196640](v78, v66);

      MEMORY[0x24C196640](8236, 0xE200000000000000);

      v67 = v81;
      v81.i64[0] = 0;
      v81.i64[1] = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0xD000000000000015, v76 | 0x8000000000000000);
      sub_246091F14();
      v68 = v81;
      v81 = v67;

      MEMORY[0x24C196640](v68.i64[0], v68.i64[1]);

      v90 = v81;
      if (v53 <= 3)
      {
        MEMORY[0x24C196640](8251, 0xE200000000000000);
      }

      ++v53;
      v54 += 2;
    }

    while (v53 != 5);
    swift_arrayDestroy();
    MEMORY[0x24C196640](125, 0xE100000000000000);
    v81.i64[0] = v72.i64[0];
    v81.i64[1] = v73.i64[0];

    MEMORY[0x24C196640](8236, 0xE200000000000000);

    MEMORY[0x24C196640](v71.i64[0], v71.i64[1]);

    MEMORY[0x24C196640](8236, 0xE200000000000000);

    MEMORY[0x24C196640](v70.i64[0], v70.i64[1]);

    MEMORY[0x24C196640](8236, 0xE200000000000000);

    v69 = v90;

    MEMORY[0x24C196640](v69.i64[0], v69.i64[1]);

    return v81.i64[0];
  }

  return result;
}

uint64_t sub_245FD0F78(_BYTE *a1)
{
  LOBYTE(v3) = *a1;
  HIDWORD(v3) = a1[1];
  v4 = a1[2];
  v5 = a1[*(type metadata accessor for PhotogrammetrySession.Configuration(0) + 36)];
  sub_245FD0FEC(a1);
  return v3;
}

uint64_t sub_245FD0FEC(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v113 = &v108 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v117 = &v108 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v108 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v108 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v108 - v19;
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);
  v120 = *(a1 + 24);
  v23 = *(a1 + 32);
  LODWORD(v118) = *(a1 + 36);
  v24 = CPGOutputModelOptionsCreate();
  *(v1 + 16) = v24;
  if (!v24)
  {
    v72 = sub_245FA31EC();
    (v4[2])(v8, v72, v3);
    v73 = sub_2460918D4();
    v74 = sub_246091FB4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_245F8A000, v73, v74, "Function to create output model options returned nil", v75, 2u);
      MEMORY[0x24C1989D0](v75, -1, -1);
    }

    return (v4[1])(v8, v3);
  }

  v25 = v24;
  sub_24601EF7C(v123);
  v26 = sub_246021418(v21, v123[4], v123[3]);
  if ((LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_69;
  }

  if (v26 <= -9.2234e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v26 >= 9.2234e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27 = v26;
  v119 = v3;
  v116 = v4;
  if (v21 != v26)
  {
    v28 = sub_245FA31EC();
    (v4[2])(v20, v28, v3);
    v29 = sub_2460918D4();
    v30 = sub_246091FB4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134349312;
      *(v31 + 4) = v21;
      *(v31 + 12) = 2050;
      *(v31 + 14) = v27;
      _os_log_impl(&dword_245F8A000, v29, v30, "Clamped max poly count: %{public}ld to device limit. %{public}ld is used.", v31, 0x16u);
      v32 = v31;
      v4 = v116;
      MEMORY[0x24C1989D0](v32, -1, -1);
    }

    v3 = v119;
    v4[1](v20, v119);
  }

  if (CPGOutputModelOptionsSetMaxPolyCount())
  {
    MaxPolyCount = CPGOutputModelOptionsGetMaxPolyCount();
    v34 = sub_245FA31EC();
    (v4[2])(v18, v34, v3);
    v35 = sub_2460918D4();
    v36 = sub_246091FB4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134349312;
      *(v37 + 4) = v21;
      *(v37 + 12) = 2050;
      *(v37 + 14) = MaxPolyCount;
      _os_log_impl(&dword_245F8A000, v35, v36, "Error setting max poly count: %{public}ld to output model options for custom detail level, %{public}ld is used.", v37, 0x16u);
      v38 = v37;
      v3 = v119;
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    v4[1](v18, v3);
  }

  LOBYTE(v123[0]) = v22;
  if ((PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension.rawValue.getter() & 0x8000000000000000) == 0)
  {
    if (!CPGOutputModelOptionsSetMaxTextureResolution())
    {
LABEL_19:
      v114 = v25;
      v45 = sub_245FFBDAC(&unk_2858DEDD8, &qword_27EE3A610, &unk_246098470);
      v46 = v45;
      v47 = v45 + 64;
      v48 = 1 << *(v45 + 32);
      v49 = -1;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      v50 = v49 & *(v45 + 64);
      v51 = (v48 + 63) >> 6;
      v52 = 0;

      {
        while (1)
        {
          do
          {
            if (!v50)
            {
              v56 = v119;
              while (1)
              {
                v57 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  __break(1u);
                  goto LABEL_68;
                }

                if (v57 >= v51)
                {
                  break;
                }

                v50 = *(v47 + 8 * v57);
                ++v52;
                if (v50)
                {
                  v52 = v57;
                  goto LABEL_22;
                }
              }

              if (v118)
              {
                v112 = 0;
                v120 = 0xE300000000000000;
                v71 = 6778480;
              }

              else
              {
                v120 = 0xE400000000000000;
                v112 = 1;
                v71 = 1734701162;
              }

              v111 = v71;
              v77 = v117;
              v78 = i + 64;
              v79 = 1 << *(i + 32);
              v80 = -1;
              if (v79 < 64)
              {
                v80 = ~(-1 << v79);
              }

              v81 = v80 & *(i + 64);
              v82 = (v79 + 63) >> 6;
              v115 = (v116 + 2);
              ++v116;

              v83 = 0;
              *&v84 = 136446466;
              v110 = v84;
              v118 = i;
              while (v81)
              {
LABEL_55:
                v86 = __clz(__rbit64(v81)) | (v83 << 6);
                v87 = *(*(i + 48) + 8 * v86);
                v88 = *(*(i + 56) + 4 * v86);
                if (qword_27EE3C140 != -1)
                {
                  swift_once();
                }

                v81 &= v81 - 1;
                v89 = qword_27EE3C148;
                if (*(qword_27EE3C148 + 16))
                {
                  v90 = sub_245FF8590(v87);
                  if (v91)
                  {
                    v92 = *(*(v89 + 56) + 4 * v90);
                    if (CPGOutputModelOptionsSetTextureFormat() || CPGOutputModelOptionsSetTextureLossyCompressionQuality() || CPGOutputModelOptionsSetTextureDestination())
                    {
                      v93 = sub_245FA31EC();
                      (*v115)(v77, v93, v56);
                      v94 = v120;

                      v95 = sub_2460918D4();
                      v96 = sub_246091FB4();

                      if (os_log_type_enabled(v95, v96))
                      {
                        v97 = swift_slowAlloc();
                        v109 = swift_slowAlloc();
                        v123[0] = v109;
                        *v97 = v110;
                        PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs.init(rawValue:)(v87);
                        v121 = v122;
                        v98 = sub_246091C54();
                        v100 = sub_245F8D3C0(v98, v99, v123);

                        *(v97 + 4) = v100;
                        v77 = v117;
                        *(v97 + 12) = 2082;
                        *(v97 + 14) = sub_245F8D3C0(v111, v94, v123);
                        _os_log_impl(&dword_245F8A000, v95, v96, "Error setting texture format %{public}s to %{public}s for custom detail level!", v97, 0x16u);
                        v101 = v109;
                        swift_arrayDestroy();
                        MEMORY[0x24C1989D0](v101, -1, -1);
                        v102 = v97;
                        v56 = v119;
                        MEMORY[0x24C1989D0](v102, -1, -1);
                      }

                      (*v116)(v77, v56);
                      i = v118;
                    }
                  }
                }
              }

              while (1)
              {
                v85 = v83 + 1;
                if (__OFADD__(v83, 1))
                {
                  break;
                }

                if (v85 >= v82)
                {

                  v103 = sub_245FA31EC();
                  v104 = v113;
                  (*v115)(v113, v103, v56);
                  v105 = sub_2460918D4();
                  v106 = sub_246091FC4();
                  if (os_log_type_enabled(v105, v106))
                  {
                    v107 = swift_slowAlloc();
                    *v107 = 0;
                    _os_log_impl(&dword_245F8A000, v105, v106, "Finished populating custom detail output model option.", v107, 2u);
                    MEMORY[0x24C1989D0](v107, -1, -1);
                  }

                  return (*v116)(v104, v56);
                }

                v81 = *(v78 + 8 * v85);
                ++v83;
                if (v81)
                {
                  v83 = v85;
                  i = v118;
                  goto LABEL_55;
                }
              }

LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_22:
            v54 = __clz(__rbit64(v50));
            v50 &= v50 - 1;
            v55 = *(*(v46 + 48) + ((v52 << 9) | (8 * v54)));
            PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs.init(rawValue:)(v55);
            v121 = v120;
            v122 = v123[0];
            sub_245FFBE84();
          }

          while ((sub_246092184() & 1) == 0);
          LODWORD(v115) = swift_isUniquelyReferenced_nonNull_native();
          v123[0] = i;
          v58 = sub_245FF8590(v55);
          v60 = *(i + 16);
          v61 = (v59 & 1) == 0;
          v62 = __OFADD__(v60, v61);
          v63 = v60 + v61;
          if (v62)
          {
            goto LABEL_74;
          }

          if (*(i + 24) < v63)
          {
            break;
          }

          if (v115)
          {
            i = v123[0];
            if ((v59 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v115 = v58;
            v67 = v59;
            sub_245FFA018();
            v68 = v67;
            v58 = v115;
            i = v123[0];
            if ((v68 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

LABEL_36:
          *(*(i + 56) + 4 * v58) = 1;
        }

        v64 = v59;
        sub_245FF8700(v63, v115);
        v58 = sub_245FF8590(v55);
        if ((v64 & 1) != (v65 & 1))
        {
          goto LABEL_76;
        }

        v66 = v64;
        i = v123[0];
        if (v66)
        {
          goto LABEL_36;
        }

LABEL_38:
        *(i + 8 * (v58 >> 6) + 64) |= 1 << v58;
        *(*(i + 48) + 8 * v58) = v55;
        *(*(i + 56) + 4 * v58) = 1;
        v69 = *(i + 16);
        v62 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v62)
        {
          goto LABEL_75;
        }
      }
    }

    MaxTextureResolution = CPGOutputModelOptionsGetMaxTextureResolution();
    v40 = sub_245FA31EC();
    (v4[2])(v15, v40, v3);
    v41 = sub_2460918D4();
    v42 = sub_246091FB4();
    if (!os_log_type_enabled(v41, v42))
    {
LABEL_18:

      v4[1](v15, v3);
      goto LABEL_19;
    }

    v43 = swift_slowAlloc();
    *v43 = 134349312;
    LOBYTE(v123[0]) = v22;
    v44 = PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension.rawValue.getter();
    if ((v44 & 0x8000000000000000) == 0)
    {
      *(v43 + 4) = v44;
      *(v43 + 12) = 2050;
      *(v43 + 14) = MaxTextureResolution;
      _os_log_impl(&dword_245F8A000, v41, v42, "Error setting texture dimension: %{public}ld to output model options for custom detail level, %{public}ld is used.", v43, 0x16u);
      MEMORY[0x24C1989D0](v43, -1, -1);
      v3 = v119;
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_245FD1B40(uint64_t *a1, char a2)
{
  v57 = sub_2460918F4();
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[8];
  if (!*(v9 + 16))
  {
    v43 = 0x80000002460A06A0;
    sub_245FFCF7C();
    swift_allocError();
    v45 = 0xD000000000000025;
LABEL_23:
    *v44 = v45;
    *(v44 + 8) = v43;
    *(v44 + 16) = 5;
    return swift_willThrow();
  }

  v49 = v6;
  v47[1] = v2;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[4];
  v53 = a1[5];
  if (a2)
  {
    v14 = 34;
  }

  else
  {
    v14 = 22;
  }

  v15 = a1[6];
  v16 = a1[7];
  result = CPGDepthPointCloudCreateWithSensorConfig();
  if (!result)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000036, 0x80000002460A0660);
    v60 = v14;
    v46 = sub_2460923D4();
    MEMORY[0x24C196640](v46);

    v45 = v58;
    v43 = v59;
    sub_245FFCF7C();
    swift_allocError();
    goto LABEL_23;
  }

  v19 = *(v10 + 16);
  if (!v19)
  {
    return result;
  }

  if (v19 > *(v12 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v19 > *(v11 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 > *(v13 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v19 > *(v15 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v19 > *(v53 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v19 > *(v16 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v19 > *(v9 + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v20 = v10;
  v21 = v13;
  v22 = 0;
  v23 = v20 + 32;
  v55 = v21 + 32;
  v56 = v11 + 32;
  v53 += 32;
  v54 = v15 + 32;
  v51 = v9 + 32;
  v52 = v16 + 32;
  v24 = v12 + 32;
  v25 = v49++;
  v50 = (v25 + 2);
  *&v18 = 134349056;
  v48 = v18;
  do
  {
    v26 = *(v23 + v22);
    v27 = *(v24 + v22);
    v28 = *(v56 + v22);
    v29 = *(v55 + 4 * v22);
    v30 = *(v54 + 4 * v22);
    v31 = *(v53 + 4 * v22);
    v32 = *(v52 + 16 * v22);
    v33 = *(v51 + 16 * v22);
    v34 = result;
    if (CPGDepthPointCloudAddPoint())
    {
      v35 = sub_245FA31EC();
      (*v50)(v8, v35, v57);
      v36 = v8;
      v37 = sub_2460918D4();
      v38 = sub_246091FB4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v24;
        v40 = v23;
        v41 = swift_slowAlloc();
        *v41 = v48;
        *(v41 + 4) = v22;
        _os_log_impl(&dword_245F8A000, v37, v38, "Failed to add point %{public}ld in LiDAR point cloud", v41, 0xCu);
        v42 = v41;
        v23 = v40;
        v24 = v39;
        MEMORY[0x24C1989D0](v42, -1, -1);
      }

      v8 = v36;
      (*v49)(v36, v57);
    }

    ++v22;
    result = v34;
  }

  while (v19 != v22);
  return result;
}

void sub_245FD1F30(uint64_t a1, uint64_t a2, __int32 a3)
{
  v188.i32[0] = a3;
  v186 = a2;
  v216 = *MEMORY[0x277D85DE8];
  v185 = type metadata accessor for PhotogrammetrySample();
  v5 = *(*(v185 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v185);
  v180 = (&v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v176 = (&v168 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v182 = (&v168 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v174 = &v168 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v168 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v183 = (v168.i64 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v177 = (&v168 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = (&v168 - v21);
  v23 = sub_2460918F4();
  v189 = *(v23 - 8);
  v24 = *(v189 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v179 = &v168 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v175 = &v168 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v187 = &v168 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v178 = &v168 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v184 = &v168 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v168 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v168 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v181 = &v168 - v42;
  MEMORY[0x28223BE20](v41);
  v44 = &v168 - v43;
  v190 = a1;
  v45 = *(a1 + 8);
  if (!sub_245FC6568(v45))
  {
    sub_245FFCF7C();
    swift_allocError();
    *v54 = 0xD00000000000002DLL;
    *(v54 + 8) = 0x80000002460A0380;
    *(v54 + 16) = 5;
    swift_willThrow();
LABEL_8:
    v55 = *MEMORY[0x277D85DE8];
    return;
  }

  v171 = v23;
  v172.i64[0] = v3;
  v210 = 0;
  v46 = CPGSampleMetadataCreate();
  if (!v46 || (v47 = *(v190 + 24), v48 = sub_246091B34(), v173 = v46, v49 = v48, v50 = CPGSampleMetadataSetFromCGImageProperties(), v49, v50))
  {
    v51 = 0x80000002460A03B0;
    sub_245FFCF7C();
    swift_allocError();
    v53 = 0xD000000000000030;
LABEL_5:
    *v52 = v53;
    *(v52 + 8) = v51;
    *(v52 + 16) = 5;
LABEL_6:
    swift_willThrow();
LABEL_97:
    CPGSampleMetadataRelease();
    goto LABEL_8;
  }

  v170 = v45;
  v56 = v190;
  memcpy(v209, (v190 + 96), 0x171uLL);
  if (sub_245F97C38(v209) != 1)
  {
    if ((v209[0] & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_99;
    }

    if (CPGSampleMetadataSetCameraID())
    {
      v51 = 0x80000002460A0630;
      sub_245FFCF7C();
      swift_allocError();
      v53 = 0xD000000000000023;
      goto LABEL_5;
    }
  }

  memcpy(v208, (v56 + 96), 0x171uLL);
  if (sub_245F97C38(v208) != 1)
  {
    v168 = v208[2];
    v169 = v208[1];
    if (CPGSampleMetadataSetPrincipalPoint())
    {
      v51 = 0x80000002460A05D0;
      sub_245FFCF7C();
      swift_allocError();
      v53 = 0xD000000000000029;
      goto LABEL_5;
    }

    if (CPGSampleMetadataSetFocalLengthInPixel())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v59 = 0xD00000000000002DLL;
      *(v59 + 8) = 0x80000002460A0600;
      *(v59 + 16) = 5;
      goto LABEL_6;
    }
  }

  memcpy(v207, (v56 + 96), 0x171uLL);
  v57 = sub_245F97C38(v207);
  v58 = v172.i64[0];
  if (v57 != 1)
  {
    sub_246021188(v204, v207[4], v207[5], v207[6], v207[7]);
    v200 = v204[4];
    v201 = v204[5];
    v202 = v204[6];
    v203 = v204[7];
    v196 = v204[0];
    v197 = v204[1];
    v198 = v204[2];
    v199 = v204[3];
    if (CPGSampleMetadataSetCameraTransform())
    {
      v51 = 0x80000002460A05A0;
      sub_245FFCF7C();
      swift_allocError();
      v53 = 0xD00000000000002ALL;
      goto LABEL_5;
    }

    v56 = v190;
  }

  if ((*(v56 + 72) & 1) == 0)
  {
    *&v60 = -*(v56 + 64);
    v204[0] = vnegq_f64(vextq_s8(*(v56 + 48), *(v56 + 48), 8uLL));
    v204[1] = v60;
    if (CPGSampleMetadataSetGravity())
    {
      v51 = 0x80000002460A0570;
      sub_245FFCF7C();
      swift_allocError();
      v53 = 0xD000000000000022;
      goto LABEL_5;
    }
  }

  v61 = *(v56 + 32);
  if (v61)
  {
    v62 = *(v56 + 40);
    v63 = v61;
    if (CPGSampleMetadataSetDepthMapWithConfidence())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v64 = 0xD000000000000031;
      *(v64 + 8) = 0x80000002460A0530;
      *(v64 + 16) = 5;
      swift_willThrow();

      goto LABEL_97;
    }

    v169.i64[0] = v63;
    v65 = sub_245FA31EC();
    (*(v189 + 16))(v44, v65, v171);
    sub_245FFE868(v56, v22, type metadata accessor for PhotogrammetrySample);
    v66 = sub_2460918D4();
    v67 = sub_246091FC4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v168.i32[0] = v67;
      v69 = v68;
      *v68 = 134349056;
      v70 = *v22;
      sub_245FFEA30(v22, type metadata accessor for PhotogrammetrySample);
      *(v69 + 1) = v70;
      _os_log_impl(&dword_245F8A000, v66, v168.i8[0], "Prepared depth data map of sample %{public}ld for reconstruction.", v69, 0xCu);
      MEMORY[0x24C1989D0](v69, -1, -1);
      v71 = v169.i64[0];
    }

    else
    {
      sub_245FFEA30(v22, type metadata accessor for PhotogrammetrySample);
      v71 = v66;
      v66 = v169.i64[0];
    }

    v58 = v172.i64[0];

    (*(v189 + 8))(v44, v171);
    v56 = v190;
  }

  v72 = *(v56 + 80);
  if (v72)
  {
    v73 = v72;
    if (CPGSampleMetadataSetMaskWithCVPixelBuffer())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v74 = 0xD000000000000030;
      *(v74 + 8) = 0x80000002460A04F0;
      *(v74 + 16) = 5;
      swift_willThrow();

      goto LABEL_97;
    }
  }

  sub_245F9789C(&v211);
  if (v188.i8[0])
  {
    v75 = v189;
    if ((v215 & 1) == 0)
    {
      v191 = v211;
      v192 = v212;
      v193 = v213;
      v194 = v214;
      v76 = sub_245FA31EC();
      v77 = v171;
      (*(v75 + 16))(v37, v76, v171);
      sub_245FFE868(v190, v16, type metadata accessor for PhotogrammetrySample);
      v78 = sub_2460918D4();
      v79 = sub_246091FC4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *&v196.f64[0] = v81;
        *v80 = 136446466;
        v204[0] = v191;
        v204[1] = v192;
        v204[2] = v193;
        v204[3] = v194;
        type metadata accessor for simd_float4x4(0);
        v82 = sub_246091C54();
        v84 = sub_245F8D3C0(v82, v83, &v196);

        *(v80 + 4) = v84;
        *(v80 + 12) = 2050;
        v85 = *v16;
        sub_245FFEA30(v16, type metadata accessor for PhotogrammetrySample);
        *(v80 + 14) = v85;
        v58 = v172.i64[0];
        _os_log_impl(&dword_245F8A000, v78, v79, "Ignored setting CPG bounding box %{public}s for\nsample = %{public}ld", v80, 0x16u);
        sub_245F8E6F4(v81);
        v86 = v81;
        v75 = v189;
        MEMORY[0x24C1989D0](v86, -1, -1);
        MEMORY[0x24C1989D0](v80, -1, -1);

        (*(v75 + 8))(v37, v171);
      }

      else
      {
        sub_245FFEA30(v16, type metadata accessor for PhotogrammetrySample);

        (*(v75 + 8))(v37, v77);
      }
    }
  }

  else
  {
    v75 = v189;
    if ((v215 & 1) == 0)
    {
      *&v205[0] = 0;
      v168 = v211;
      v169 = v212;
      v172 = v213;
      v188 = v214;
      sub_246021188(v204, v211, v212, v213, v214);
      v200 = v204[4];
      v201 = v204[5];
      v202 = v204[6];
      v203 = v204[7];
      v196 = v204[0];
      v197 = v204[1];
      v198 = v204[2];
      v199 = v204[3];
      if (CPGBoundingBoxCreateFromTransform())
      {
        v87 = sub_245FA31EC();
        v88 = v171;
        (*(v75 + 16))(v40, v87, v171);
        v89 = v183;
        sub_245FFE868(v190, v183, type metadata accessor for PhotogrammetrySample);
        v90 = sub_2460918D4();
        v91 = sub_246091FB4();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v195 = v93;
          *v92 = 136446466;
          v196 = v168;
          v197 = v169;
          v198 = v172;
          v199 = v188;
          type metadata accessor for simd_float4x4(0);
          v94 = sub_246091C54();
          v95 = v75;
          v97 = sub_245F8D3C0(v94, v96, &v195);

          *(v92 + 4) = v97;
          *(v92 + 12) = 2050;
          v98 = *v183;
          sub_245FFEA30(v183, type metadata accessor for PhotogrammetrySample);
          *(v92 + 14) = v98;
          _os_log_impl(&dword_245F8A000, v90, v91, "Failed to create CPG bounding box %{public}s for\nsample = %{public}ld", v92, 0x16u);
          sub_245F8E6F4(v93);
          MEMORY[0x24C1989D0](v93, -1, -1);
          MEMORY[0x24C1989D0](v92, -1, -1);

          (*(v95 + 8))(v40, v171);
        }

        else
        {
          sub_245FFEA30(v89, type metadata accessor for PhotogrammetrySample);

          (*(v75 + 8))(v40, v88);
        }

        v136 = "CPGBoundingBoxCreateFromTransform failed";
LABEL_95:
        v51 = (v136 - 32) | 0x8000000000000000;
        sub_245FFCF7C();
        swift_allocError();
        v53 = 0xD000000000000028;
        goto LABEL_5;
      }

      if (!*&v205[0])
      {
        goto LABEL_101;
      }

      v122 = CPGSampleMetadataSetObjectBoundingBox();
      v123 = v181;
      if (v122)
      {
        v124 = sub_245FA31EC();
        v125 = v171;
        (*(v75 + 16))(v123, v124, v171);
        v126 = v177;
        sub_245FFE868(v190, v177, type metadata accessor for PhotogrammetrySample);
        v127 = sub_2460918D4();
        v128 = sub_246091FB4();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          v130 = swift_slowAlloc();
          v195 = v130;
          *v129 = 136446466;
          v196 = v168;
          v197 = v169;
          v198 = v172;
          v199 = v188;
          type metadata accessor for simd_float4x4(0);
          v131 = sub_246091C54();
          v133 = v75;
          v134 = sub_245F8D3C0(v131, v132, &v195);

          *(v129 + 4) = v134;
          *(v129 + 12) = 2050;
          v135 = *v126;
          sub_245FFEA30(v126, type metadata accessor for PhotogrammetrySample);
          *(v129 + 14) = v135;
          _os_log_impl(&dword_245F8A000, v127, v128, "Failed to set CPG bounding box %{public}s for\nsample = %{public}ld", v129, 0x16u);
          sub_245F8E6F4(v130);
          MEMORY[0x24C1989D0](v130, -1, -1);
          MEMORY[0x24C1989D0](v129, -1, -1);

          (*(v133 + 8))(v181, v171);
        }

        else
        {
          sub_245FFEA30(v126, type metadata accessor for PhotogrammetrySample);

          (*(v75 + 8))(v123, v125);
        }

        sub_245FFCF7C();
        swift_allocError();
        *v137 = 0xD00000000000002CLL;
        *(v137 + 8) = 0x80000002460A04C0;
        *(v137 + 16) = 5;
        swift_willThrow();
        CPGBoundingBoxRelease();
        goto LABEL_97;
      }

      CPGBoundingBoxRelease();
    }
  }

  v99 = v190;
  if ((*(v190 + 728) & 1) == 0)
  {
    sub_24602138C(*(v190 + 720));
    v100 = sub_246091BD4();

    v101 = CPGSampleMetadataSetTimestamp();

    if (v101)
    {
      v51 = 0x80000002460A0460;
      sub_245FFCF7C();
      swift_allocError();
      v53 = 0xD000000000000024;
      goto LABEL_5;
    }
  }

  v102 = *(v99 + 88);
  if (v102)
  {
    LOBYTE(v196.f64[0]) = 0;
    v103 = v102;
    sub_24602335C(&v196, v204);
    v206 = v204[4].f64[0];
    v205[2] = v204[2];
    v205[3] = v204[3];
    v205[0] = v204[0];
    v205[1] = v204[1];
    sub_245FD1B40(v204, SLOBYTE(v196.f64[0]));
    if (v58)
    {

      sub_245FFEA90(v205);
      goto LABEL_97;
    }

    v172.i64[0] = 0;
    sub_245FFEA90(v205);
    NumberOfPoints = CPGDepthPointCloudGetNumberOfPoints();
    v113 = sub_245FA31EC();
    v105 = *(v75 + 16);
    v187 = v113;
    v105(v184);
    v114 = sub_2460918D4();
    v115 = sub_246091FC4();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 134349056;
      *(v116 + 4) = NumberOfPoints;
      _os_log_impl(&dword_245F8A000, v114, v115, "Created LiDAR point cloud of %{public}llu points", v116, 0xCu);
      MEMORY[0x24C1989D0](v116, -1, -1);
    }

    v188.i64[0] = *(v189 + 8);
    (v188.i64[0])(v184, v171);
    if (NumberOfPoints)
    {
      memcpy(v204, (v190 + 96), 0x171uLL);
      if (sub_245F97C38(v204) == 1 || (LOBYTE(v204[13].f64[0]) & 1) != 0)
      {
        v117 = *MEMORY[0x277D860B8];
        v118 = *(MEMORY[0x277D860B8] + 16);
        v119 = (MEMORY[0x277D860B8] + 48);
        v120 = *(MEMORY[0x277D860B8] + 32);
      }

      else
      {
        v117 = v204[9];
        v118 = v204[10];
        v120 = v204[11];
        v119 = &v204[12];
      }

      sub_246021188(&v196, v117, v118, v120, *v119);
      if (CPGSampleMetadataSetDepthPointCloudWithExtrinsics())
      {
        sub_245FFCF7C();
        swift_allocError();
        *v138 = 0xD000000000000038;
        *(v138 + 8) = 0x80000002460A0420;
        *(v138 + 16) = 5;
        swift_willThrow();
        CPGDepthPointCloudRelease();

        goto LABEL_97;
      }

      (v105)(v178, v187, v171);
      v139 = v174;
      sub_245FFE868(v190, v174, type metadata accessor for PhotogrammetrySample);
      v140 = sub_2460918D4();
      v141 = sub_246091FC4();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        v143 = v139;
        v144 = v142;
        *v142 = 134349056;
        v145 = *v143;
        sub_245FFEA30(v143, type metadata accessor for PhotogrammetrySample);
        *(v144 + 1) = v145;
        _os_log_impl(&dword_245F8A000, v140, v141, "Successfully added LiDAR point cloud of sample %{public}ld", v144, 0xCu);
        MEMORY[0x24C1989D0](v144, -1, -1);
      }

      else
      {
        sub_245FFEA30(v139, type metadata accessor for PhotogrammetrySample);
      }

      (v188.i64[0])(v178, v171);
    }

    CPGDepthPointCloudRelease();

    v121 = v186;
  }

  else
  {
    v104 = sub_245FA31EC();
    v105 = *(v75 + 16);
    (v105)(v187, v104, v171);
    v106 = v182;
    sub_245FFE868(v99, v182, type metadata accessor for PhotogrammetrySample);
    v107 = sub_2460918D4();
    v108 = sub_246091FB4();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 134349056;
      v110 = v106;
      v111 = *v106;
      sub_245FFEA30(v110, type metadata accessor for PhotogrammetrySample);
      *(v109 + 4) = v111;
      _os_log_impl(&dword_245F8A000, v107, v108, "Sample %{public}ld missing LiDAR point cloud!", v109, 0xCu);
      MEMORY[0x24C1989D0](v109, -1, -1);
    }

    else
    {
      sub_245FFEA30(v106, type metadata accessor for PhotogrammetrySample);
    }

    v121 = v186;

    v188.i64[0] = *(v75 + 8);
    (v188.i64[0])(v187, v171);
  }

  if (v121)
  {
    v146 = *(v185 + 84);
    v187 = *(v185 + 80);
    v147 = v190;
    v148 = (v190 + v146);
    v149 = *v148;
    v150 = v105;
    v151 = *(v148 + 8);
    v152 = *(*v121 + 104);

    v153 = v151;
    v105 = v150;
    v154 = v152(v147 + v187, v149, v153);
  }

  else
  {
    v155 = v190 + *(v185 + 84);
    if (*(v155 + 8))
    {
      goto LABEL_92;
    }

    v154 = *v155;
  }

  if ((v154 & 0x8000000000000000) != 0)
  {
LABEL_92:
    if ((*v190 & 0x8000000000000000) == 0)
    {
      if (!CPGSampleCreateWithCVPixelBuffer() && v210)
      {
        goto LABEL_97;
      }

      v136 = "CPGSampleCreateWithCVPixelBuffer failed!";
      goto LABEL_95;
    }

LABEL_99:
    __break(1u);
  }

  if (!(v154 >> 31))
  {
    v156 = CPGSampleMetadataSetSegmentID();
    v157 = sub_245FA31EC();
    if (v156)
    {
      v158 = v179;
      (v105)(v179, v157, v171);
      v159 = v158;
      v160 = v180;
      sub_245FFE868(v190, v180, type metadata accessor for PhotogrammetrySample);
      v161 = sub_2460918D4();
      v162 = sub_246091FB4();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 134349312;
        *(v163 + 4) = v154;
        *(v163 + 12) = 2050;
        v164 = *v160;
        sub_245FFEA30(v160, type metadata accessor for PhotogrammetrySample);
        *(v163 + 14) = v164;
        v165 = "Failed to set static segment ID %{public}ld for sample = %{public}ld";
LABEL_89:
        _os_log_impl(&dword_245F8A000, v161, v162, v165, v163, 0x16u);
        MEMORY[0x24C1989D0](v163, -1, -1);
LABEL_91:

        (v188.i64[0])(v159, v171);
        goto LABEL_92;
      }
    }

    else
    {
      v166 = v175;
      (v105)(v175, v157, v171);
      v159 = v166;
      v160 = v176;
      sub_245FFE868(v190, v176, type metadata accessor for PhotogrammetrySample);
      v161 = sub_2460918D4();
      v162 = sub_246091FC4();
      if (os_log_type_enabled(v161, v162))
      {
        v163 = swift_slowAlloc();
        *v163 = 134349312;
        *(v163 + 4) = v154;
        *(v163 + 12) = 2050;
        v167 = *v160;
        sub_245FFEA30(v160, type metadata accessor for PhotogrammetrySample);
        *(v163 + 14) = v167;
        v165 = "Success in setting static segment ID %{public}ld for sample = %{public}ld";
        goto LABEL_89;
      }
    }

    sub_245FFEA30(v160, type metadata accessor for PhotogrammetrySample);
    goto LABEL_91;
  }

  __break(1u);
LABEL_101:
  __break(1u);
}

char *sub_245FD36E0(uint64_t a1)
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v90, (a1 + 96), 0x171uLL);
  v7 = sub_245F97C38(v90);
  v41 = v3;
  v42 = v2;
  v40 = v6;
  if (v7 == 1 || (v90[13] & 1) != 0)
  {
    v8 = *MEMORY[0x277D860B8];
    v9 = *(MEMORY[0x277D860B8] + 16);
    v10 = *(MEMORY[0x277D860B8] + 32);
    v11 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    v8 = v90[9];
    v9 = v90[10];
    v10 = v90[11];
    v11 = v90[12];
  }

  sub_246021188(v73, v8, v9, v10, v11);
  v12 = *(a1 + *(type metadata accessor for PhotogrammetrySample() + 96));
  if (v12 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_246092354())
  {
    v14 = 0;
    v45 = v12 & 0xFFFFFFFFFFFFFF8;
    v43 = MEMORY[0x277D84F90];
    v44 = i;
    while ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x24C196C20](v14, v12);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_25;
      }

LABEL_15:
      v17 = (*(*v15 + 128))();
      v70 = 0;
      sub_24602335C(&v70, &v60);
      v72 = v64.f64[0];
      v71[2] = v62;
      v71[3] = v63;
      v71[0] = v60;
      v71[1] = v61;
      v68[2] = v62;
      v68[3] = v63;
      v69 = v64.f64[0];
      v68[0] = v60;
      v68[1] = v61;
      sub_245FD1B40(v68, v70);

      v18 = sub_245FFEA90(v71);
      v89 = 0;
      v19 = *(*v15 + 152);
      (v19)(v74, v18);
      v82[0] = v74[0];
      v82[1] = v74[1];
      v82[2] = v74[2];
      sub_246021134(v82, v75);
      v50 = v75[2];
      v51 = v75[0];
      v47 = v75[3];
      v48 = v75[1];
      v49 = v75[4];
      v46 = v75[5];
      v19(v76);
      v20 = sub_246021188(&v60, v77, v78, v79, v80);
      (v19)(v81, v20);
      v84 = v48;
      v83 = v51;
      v86 = v47;
      v85 = v50;
      v88 = v46;
      v87 = v49;
      v56 = v64;
      v57 = v65;
      v58 = v66;
      v59 = v67;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      if (!CPGCameraCreateWithIntrinsicsExtrinsicsResolution())
      {
        *&v83 = 0;
        v21 = (*(*v15 + 104))();
        sub_24602138C(v21);
        v22 = sub_246091BD4();

        v56 = v73[4];
        v57 = v73[5];
        v58 = v73[6];
        v59 = v73[7];
        v52 = v73[0];
        v53 = v73[1];
        v54 = v73[2];
        v55 = v73[3];
        v23 = CPGTemporalDepthPointFrameCreateWithTimeCameraAndPointCloud();

        if (!v23)
        {
          v24 = v83;
          if (!v83)
          {
            __break(1u);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_245FF82A8(0, *(v43 + 2) + 1, 1, v43, &qword_27EE3A5C0, &qword_246098420);
          }

          v26 = *(v43 + 2);
          v25 = *(v43 + 3);
          v27 = v26 + 1;
          if (v26 >= v25 >> 1)
          {
            *&v51 = v26 + 1;
            v29 = sub_245FF82A8((v25 > 1), v26 + 1, 1, v43, &qword_27EE3A5C0, &qword_246098420);
            v27 = v51;
            v43 = v29;
          }

          v28 = v43;
          *(v43 + 2) = v27;
          *&v28[8 * v26 + 32] = v24;
        }

        CPGCameraRelease();
      }

      CPGDepthPointCloudRelease();

      ++v14;
      if (v16 == v44)
      {
        goto LABEL_29;
      }
    }

    if (v14 >= *(v45 + 16))
    {
      goto LABEL_26;
    }

    v15 = *(v12 + 8 * v14 + 32);

    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_15;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v43 = MEMORY[0x277D84F90];
LABEL_29:
  v30 = sub_245FA31EC();
  v32 = v40;
  v31 = v41;
  v33 = v42;
  (*(v41 + 16))(v40, v30, v42);
  v34 = v43;

  v35 = sub_2460918D4();
  v36 = sub_246091FC4();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349056;
    *(v37 + 4) = *(v34 + 2);

    _os_log_impl(&dword_245F8A000, v35, v36, "Create %{public}ld temporal LiDAR point frames.", v37, 0xCu);
    MEMORY[0x24C1989D0](v37, -1, -1);

    (*(v31 + 8))(v32, v33);
  }

  else
  {

    (*(v31 + 8))(v32, v33);
  }

  v38 = *MEMORY[0x277D85DE8];
  return v34;
}

void (*sub_245FD3D10(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245F8FD54;
}

uint64_t sub_245FD3DA4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_245FD3DE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD3E40(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD3ED4;
}

void sub_245FD3ED4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD3F58()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_245FD3F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD3FF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD4088;
}

void sub_245FD4088(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD410C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_245FD4148(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD41A8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD423C;
}

void sub_245FD423C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD42C0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 88);
  return result;
}

uint64_t sub_245FD42FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD435C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD43F0;
}

void sub_245FD43F0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD4474()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_245FD44B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD4510(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 104);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD45A4;
}

void sub_245FD45A4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 104) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD4634(_BYTE *a1)
{
  v1 = sub_245FD0F78(a1);
  v4 = v1 & (v3 == 0);
  if (HIDWORD(v1))
  {
    v4 = 0;
  }

  return v4 & ((v2 | ((v2 & 0x100) >> 8)) ^ 1u);
}

uint64_t sub_245FD4674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for PhotogrammetrySession.Request(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A4B8, &unk_246097ED8);
    v15 = *v3;
    v16 = sub_245FF8528(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_245FFA164();
        v21 = v26;
      }

      sub_245FFE800(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FF96F0(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_245F8E744(v9, &qword_27EE3A4B8, &unk_246097ED8);
  }

  else
  {
    sub_245FFE800(a1, v14, type metadata accessor for PhotogrammetrySession.Request);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_245FF9A30(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

unint64_t sub_245FD48C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A510, &qword_246098378);
    v5 = *v2;
    v6 = sub_245FF8590(a2);
    if (v7)
    {
      v8 = v6;
      v9 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v18 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_245FFA398();
        v11 = v18;
      }

      v12 = (*(v11 + 56) + 32 * v8);
      v13 = v12[1];
      v20 = *v12;
      v21 = v13;
      sub_245FF98C0(v8, v11);
      *v3 = v11;
    }

    else
    {
      v20 = 0uLL;
      *&v21 = 0;
      *(&v21 + 1) = 1;
    }

    return sub_245F8E744(&v20, &qword_27EE3A510, &qword_246098378);
  }

  else
  {
    v14 = *(a1 + 16);
    v20 = *a1;
    v21 = v14;
    v15 = *v2;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    result = sub_245FF9B7C(&v20, a2, v16);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_245FD49D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 2);
  v3 = a1[24];
  v4 = a1[25];
  v5 = *(a1 + 2);
  v6 = *a1 | (*(a1 + 1) << 32);
  if (v4)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  if (a2[25])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return sub_245FFBC68(v6, v5, v2, v7 | v3, *a2 | (*(a2 + 1) << 32), *(a2 + 2), *(a2 + 2), v8 | a2[24]);
}

uint64_t sub_245FD4A48(uint64_t a1, _BYTE *a2)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v27 - v10;
  MEMORY[0x28223BE20](v9);
  sub_245FD0F78(a2);
  v27[2] = 0;
  v12 = sub_246091674();
  v13 = CPGSnapshotInfoLoadFromURL();

  if (v13)
  {
    v14 = sub_245FA31EC();
    (*(v4 + 16))(v8, v14, v3);
    v15 = sub_2460918D4();
    v16 = sub_246091FB4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245F8A000, v15, v16, "Failed to load snapshot info from snapshot URL!", v17, 2u);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
LABEL_11:
    v24 = 2;
    goto LABEL_12;
  }

  v18 = CPGSessionOptionsCreate();
  v19 = CPGSfmOptionsCreate();
  if (!v18 || !v19)
  {
    v20 = sub_245FA31EC();
    (*(v4 + 16))(v11, v20, v3);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_245F8A000, v21, v22, "Failed to create CPG session options and sfm options!", v23, 2u);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    (*(v4 + 8))(v11, v3);
    CPGSfmOptionsRelease();
    CPGSessionOptionsRelease();
    goto LABEL_11;
  }

  sub_245FFCCA4();
  v24 = CPGSnapshotInfoCheckSessionOptionsCompatibility();
  CPGSfmOptionsRelease();
  CPGSessionOptionsRelease();
LABEL_12:
  CPGSnapshotInfoRelease();
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t sub_245FD4EA4()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  v5 = sub_246091674();
  v6 = CPGSnapshotInfoLoadFromURL();

  if (v6)
  {
    v7 = sub_245FA31EC();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_2460918D4();
    v9 = sub_246091FB4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = 2;
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Failed to load snapshot info from snapshot URL!", v11, 2u);
      MEMORY[0x24C1989D0](v11, -1, -1);

      (*(v1 + 8))(v4, v0);
    }

    else
    {

      (*(v1 + 8))(v4, v0);
      v10 = 2;
    }
  }

  else
  {
    v10 = CPGSnapshotInfoCheckDeviceCompatibility();
    CPGSnapshotInfoRelease();
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_245FD5098()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = 0;
  v5 = sub_246091674();
  v6 = CPGSnapshotInfoLoadFromURL();

  if (v6)
  {
    v7 = sub_245FA31EC();
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_2460918D4();
    v9 = sub_246091FB4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Failed to load snapshot info from snapshot URL!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    result = 0;
  }

  else
  {
    NumberOfSamples = CPGSnapshotInfoGetNumberOfSamples();
    CPGSnapshotInfoRelease();
    result = NumberOfSamples;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_245FD5270(_BYTE *a1)
{
  v2 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26[-v4];
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v32 = &v26[-v12];
  v29 = *(type metadata accessor for MemoryLogger() + 88);
  v29(0xD00000000000002FLL, 0x800000024609FC10);
  v13 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  sub_245F8E7A4(&a1[*(v13 + 32)], v5, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_245F8E744(v5, &qword_27EE3A498, &unk_246097EB8);
    v14 = a1;
    v15 = 0x800000024609FC40;
    sub_245FFCF7C();
    swift_allocError();
    *v16 = 0xD000000000000018;
    *(v16 + 8) = 0x800000024609FC40;
    *(v16 + 16) = 0;
    swift_willThrow();
    sub_245FFEA30(v14, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  else
  {
    v17 = v32;
    (*(v7 + 32))(v32, v5, v6);
    v28 = a1;
    v18 = sub_245FD0F78(a1);
    v27 = v19;
    v21 = v20;
    v15 = v22;
    (*(v7 + 16))(v11, v17, v6);
    v23 = v31;
    v24 = (*(v30 + 584))(v11, v18 & 0xFFFFFFFF00000001, v27, v21, v15 & 0x101);
    if (!v23)
    {
      v15 = v24;
      v29(0xD000000000000032, 0x800000024609FC60);
    }

    sub_245FFEA30(v28, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v7 + 8))(v32, v6);
  }

  return v15;
}

uint64_t sub_245FD55FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __int16 a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_245FD5680(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a5 & 0x101);
  return v13;
}

uint64_t sub_245FD5680(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v62 = a5;
  v61 = a4;
  v65 = a3;
  v60 = a2;
  v63 = a1;
  v64 = HIDWORD(a2);
  v55 = sub_246092034();
  v69 = *(v55 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v55);
  v51 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246092004();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_246091A64();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 112) = 1008981770;
  *(v5 + 120) = 0;
  v13 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  v14 = sub_246091704();
  v58 = v14;
  v57 = *(v14 - 8);
  v59 = v14 - 8;
  v56 = v57;
  v15 = *(v57 + 56);
  v15(v6 + v13, 1, 1, v14);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;
  v15(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, 1, 1, v14);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;
  v16 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  type metadata accessor for SegmentIDConverter();
  *(v6 + v16) = sub_2460251F8();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = 0;
  v54 = OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue;
  v53 = sub_245F90360();
  v52 = "guration completed";
  sub_246091A54();
  *&v66[0] = MEMORY[0x277D84F90];
  v50[2] = sub_245FFF308(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  v50[1] = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v50[3] = sub_245FFD28C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v69 + 104);
  v69 += 104;
  v50[0] = v18;
  v19 = v51;
  v20 = v55;
  v18(v51, v17, v55);
  *(v6 + v54) = sub_246092074();
  v54 = OBJC_IVAR____TtC6CoreOC9PGManager_processQueue;
  v52 = ".queues.serial.addsample";
  sub_246091A34();
  *&v66[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  (v50[0])(v19, v17, v20);
  *(v6 + v54) = sub_246092074();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleProgressBound) = 1036831949;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameRequestProgressBound) = 1063675494;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = 0;
  v21 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v22 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v22 - 8) + 56))(v6 + v21, 1, 1, v22);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) = 0;
  v23 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  sub_245F8E624(&qword_27EE3A4A8, &qword_246097EC8);
  LOBYTE(v66[0]) = 0;
  *(v6 + v23) = sub_24608FD48(v66);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_session) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap) = 0;
  v24 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  sub_245F97B40(v66);
  v25 = v66[7];
  *(v24 + 96) = v66[6];
  *(v24 + 112) = v25;
  *(v24 + 128) = v67;
  v26 = v66[3];
  *(v24 + 32) = v66[2];
  *(v24 + 48) = v26;
  v27 = v66[5];
  *(v24 + 64) = v66[4];
  *(v24 + 80) = v27;
  v28 = v66[1];
  *v24 = v66[0];
  *(v24 + 16) = v28;
  v29 = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) = MEMORY[0x277D84F90];
  v30 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  v68 = 1;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  *(v30 + 32) = 0u;
  *(v30 + 48) = 0u;
  *(v30 + 64) = 1;
  v31 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  *(v6 + v31) = sub_245FFBED8(v29);
  v32 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  *(v6 + v32) = sub_245FFC018(v29);
  v33 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  *(v6 + v33) = sub_245FFC124(v29);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests) = v29;
  v34 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  *(v6 + v34) = sub_245FFC244(v29);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated) = 0;
  v35 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  LODWORD(v69) = v60 & 1;
  *v35 = v60 & 1;
  v36 = v65;
  *(v35 + 4) = v64;
  *(v35 + 8) = v36;
  v37 = v61;
  *(v35 + 16) = v61;
  v38 = v62;
  LOBYTE(v15) = v62 & 1;
  *(v35 + 24) = v62 & 1;
  v39 = (v38 >> 8) & 1;
  *(v35 + 25) = BYTE1(v38) & 1;
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = v56;
  v42 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v43 = (*(v57 + 64) + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  (*(v41 + 32))(v44 + v42, v63, v58);
  v45 = v44 + v43;
  *v45 = v69;
  v46 = v65;
  *(v45 + 4) = v64;
  *(v45 + 8) = v46;
  *(v45 + 16) = v37;
  *(v45 + 24) = v15;
  *(v45 + 25) = v39;
  type metadata accessor for PGManager.SessionInitializer();
  v47 = swift_allocObject();
  *(v47 + 32) = 0;
  *(v47 + 16) = sub_245FFD0D8;
  *(v47 + 24) = v44;
  v48 = *(v6 + 120);
  *(v6 + 120) = v47;

  return v6;
}

uint64_t sub_245FD5F50(uint64_t a1, char *a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v104 = a6;
  v103 = a5;
  v102 = a4;
  v101 = a3;
  v115 = a2;
  v121[4] = *MEMORY[0x277D85DE8];
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v100 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v106 = &v93 - v11;
  MEMORY[0x28223BE20](v10);
  v105 = &v93 - v12;
  v116 = sub_246091704();
  v114 = *(v116 - 8);
  v13 = v114[8];
  MEMORY[0x28223BE20](v116);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2460918F4();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v98 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v108 = &v93 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v93 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v93 - v26;
  v28 = sub_245FA31EC();
  v29 = v17[2];
  v110 = v28;
  v111 = v29;
  v112 = v17 + 2;
  (v29)(v27);
  v30 = sub_2460918D4();
  v31 = sub_246091FC4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v17;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_245F8A000, v30, v31, "Initializer thunk: Starting initialization...", v33, 2u);
    v34 = v33;
    v17 = v32;
    MEMORY[0x24C1989D0](v34, -1, -1);
  }

  v36 = v17[1];
  v35 = v17 + 1;
  v113 = v36;
  v36(v27, v16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v111(v25, v110, v16);
    v62 = sub_2460918D4();
    v63 = sub_246091FB4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_245F8A000, v62, v63, "Initializer thunk: Failed to initialize since self is nil", v64, 2u);
      MEMORY[0x24C1989D0](v64, -1, -1);
    }

    v65 = v25;
LABEL_9:
    result = v113(v65, v16);
LABEL_24:
    v92 = *MEMORY[0x277D85DE8];
    return result;
  }

  v38 = Strong;
  v107 = v35;
  v39 = v16;
  v40 = v114;
  v41 = v108;
  v111(v108, v110, v39);
  v42 = v40[2];
  v43 = v116;
  v42(v15, v115, v116);
  v44 = sub_2460918D4();
  v97 = sub_246091FC4();
  v45 = os_log_type_enabled(v44, v97);
  v99 = v39;
  if (v45)
  {
    v46 = v101;
    v94 = HIDWORD(v101);
    v47 = swift_slowAlloc();
    v96 = v42;
    v48 = v47;
    v95 = swift_slowAlloc();
    v121[0] = v95;
    *v48 = 136380931;
    sub_245FFF308(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v49 = sub_2460923D4();
    v51 = v50;
    v52 = v15;
    v53 = v40[1];
    v53(v52, v116);
    v54 = sub_245F8D3C0(v49, v51, v121);

    *(v48 + 4) = v54;
    *(v48 + 12) = 2082;
    LOBYTE(v117) = v46 & 1;
    HIDWORD(v117) = v94;
    v118 = v102;
    v119 = v103;
    v120 = v104 & 0x101;
    v55 = sub_246091C54();
    v57 = sub_245F8D3C0(v55, v56, v121);
    v43 = v116;

    *(v48 + 14) = v57;
    _os_log_impl(&dword_245F8A000, v44, v97, "Backend Manager: Initializing with snapshot URL = %{private}s and configuration = %{public}s", v48, 0x16u);
    v58 = v95;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v58, -1, -1);
    v59 = v48;
    v42 = v96;
    MEMORY[0x24C1989D0](v59, -1, -1);

    v60 = v108;
    v61 = v99;
  }

  else
  {

    v67 = v15;
    v53 = v40[1];
    v53(v67, v43);
    v60 = v41;
    v61 = v39;
  }

  v113(v60, v61);
  v68 = *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);
  *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;

  v69 = v105;
  v42(v105, v115, v43);
  (v40[7])(v69, 0, 1, v43);
  v70 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
  swift_beginAccess();
  sub_245F97BAC(v69, v38 + v70, &qword_27EE3A498, &unk_246097EB8);
  swift_endAccess();
  v71 = *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples);
  *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;

  type metadata accessor for SegmentIDConverter();
  v72 = sub_2460251F8();
  v73 = *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter);
  *(v38 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter) = v72;

  v74 = v116;
  v75 = v106;
  sub_245F8E7A4(v38 + v70, v106, &qword_27EE3A498, &unk_246097EB8);
  v76 = v40[6];
  result = v76(v75, 1, v74);
  v77 = v109;
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_246090F3C();
    if (v77)
    {

      result = (v53)(v75, v74);
      goto LABEL_24;
    }

    v115 = (v114 + 1);
    v53(v75, v74);
    v114 = [objc_opt_self() defaultManager];
    v78 = v38 + v70;
    v79 = v100;
    sub_245F8E7A4(v78, v100, &qword_27EE3A498, &unk_246097EB8);
    result = v76(v79, 1, v74);
    if (result != 1)
    {
      sub_2460916F4();
      v80 = sub_246091BD4();

      v53(v79, v74);
      v117 = 0;
      v81 = v114;
      v82 = [v114 contentsOfDirectoryAtPath:v80 error:&v117];

      v83 = v117;
      v16 = v99;
      if (!v82)
      {
        v91 = v117;
        sub_2460915D4();

        swift_willThrow();

        goto LABEL_24;
      }

      v84 = sub_246091DD4();
      v85 = v83;

      v86 = *(v84 + 16);

      if (v86)
      {
        sub_245FE44C0();
      }

      else
      {
        sub_245FE356C();
        sub_245FE4A74();
        sub_245FE588C();
      }

      v87 = type metadata accessor for MemoryLogger();
      (*(v87 + 88))(0xD000000000000043, 0x80000002460A0EB0);
      v111(v98, v110, v16);
      v88 = sub_2460918D4();
      v89 = sub_246091FC4();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_245F8A000, v88, v89, "... done Initializer thunk.", v90, 2u);
        MEMORY[0x24C1989D0](v90, -1, -1);
      }

      else
      {
      }

      v65 = v98;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245FD69FC(uint64_t a1, _BYTE *a2)
{
  v39 = a1;
  v3 = sub_246091704();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  v14 = type metadata accessor for MemoryLogger();
  v15 = *(v14 + 88);
  v32[1] = v14;
  v33 = v15;
  v15(0xD00000000000003ELL, 0x800000024609FD00);
  v16 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  sub_245F8E7A4(&a2[*(v16 + 32)], v13, &qword_27EE3A498, &unk_246097EB8);
  v36 = a2;
  v17 = sub_245FD0F78(a2);
  v34 = v18;
  v20 = v19;
  v22 = v21;
  v23 = *(v38 + 16);
  v37 = v3;
  v23(v6, v39, v3);
  sub_245F8E7A4(v13, v11, &qword_27EE3A498, &unk_246097EB8);
  v24 = type metadata accessor for PGManager();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  v27 = swift_allocObject();
  v28 = v35;
  v29 = v20;
  v30 = v27;
  sub_245FD6CB8(v6, v11, v17 & 0xFFFFFFFF00000001, v34, v29, v22 & 0x101);
  if (!v28)
  {
    v33(0xD000000000000041, 0x800000024609FD40);
  }

  sub_245FFEA30(v36, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v38 + 8))(v39, v37);
  sub_245F8E744(v13, &qword_27EE3A498, &unk_246097EB8);
  return v30;
}

uint64_t sub_245FD6CB8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v7 = v6;
  v65 = a6;
  v64 = a5;
  v69 = a4;
  v63 = a3;
  v66 = a2;
  v67 = a1;
  v68 = HIDWORD(a3);
  v58 = sub_246092034();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v58);
  v57 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246092004();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_246091A64();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 112) = 1008981770;
  *(v6 + 120) = 0;
  v15 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  v16 = sub_246091704();
  v62 = v16;
  v60 = *(v16 - 8);
  v61 = v16 - 8;
  v59 = v60;
  v17 = *(v60 + 56);
  v17(v7 + v15, 1, 1, v16);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;
  v17(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, 1, 1, v16);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;
  v18 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  type metadata accessor for SegmentIDConverter();
  *(v7 + v18) = sub_2460251F8();
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = 0;
  v56 = OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue;
  v55 = sub_245F90360();
  v54 = "guration completed";
  sub_246091A54();
  *&v70[0] = MEMORY[0x277D84F90];
  v53[2] = sub_245FFF308(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  v53[1] = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v53[3] = sub_245FFD28C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v19 = *MEMORY[0x277D85260];
  v20 = *(v8 + 104);
  v53[0] = v8 + 104;
  v21 = v57;
  v22 = v58;
  v20(v57, v19, v58);
  *(v7 + v56) = sub_246092074();
  v56 = OBJC_IVAR____TtC6CoreOC9PGManager_processQueue;
  v54 = ".queues.serial.addsample";
  sub_246091A34();
  *&v70[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  v20(v21, v19, v22);
  *(v7 + v56) = sub_246092074();
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet) = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleProgressBound) = 1036831949;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameRequestProgressBound) = 1063675494;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = 0;
  v23 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v24 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v24 - 8) + 56))(v7 + v23, 1, 1, v24);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) = 0;
  v25 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  sub_245F8E624(&qword_27EE3A4A8, &qword_246097EC8);
  LOBYTE(v70[0]) = 0;
  *(v7 + v25) = sub_24608FD48(v70);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_session) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap) = 0;
  v26 = v7 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  sub_245F97B40(v70);
  v27 = v70[7];
  *(v26 + 96) = v70[6];
  *(v26 + 112) = v27;
  *(v26 + 128) = v71;
  v28 = v70[3];
  *(v26 + 32) = v70[2];
  *(v26 + 48) = v28;
  v29 = v70[5];
  *(v26 + 64) = v70[4];
  *(v26 + 80) = v29;
  v30 = v70[1];
  *v26 = v70[0];
  *(v26 + 16) = v30;
  v31 = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) = MEMORY[0x277D84F90];
  v32 = v7 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  v72 = 1;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 1;
  v33 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  *(v7 + v33) = sub_245FFBED8(v31);
  v34 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  *(v7 + v34) = sub_245FFC018(v31);
  v35 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  *(v7 + v35) = sub_245FFC124(v31);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests) = v31;
  v36 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  *(v7 + v36) = sub_245FFC244(v31);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated) = 0;
  v37 = v7 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  LODWORD(v63) = v63 & 1;
  *v37 = v63;
  v38 = v69;
  *(v37 + 4) = v68;
  *(v37 + 8) = v38;
  v39 = v64;
  *(v37 + 16) = v64;
  v40 = v65;
  LOBYTE(v22) = v65 & 1;
  *(v37 + 24) = v65 & 1;
  LODWORD(v8) = (v40 >> 8) & 1;
  *(v37 + 25) = BYTE1(v40) & 1;
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = *(sub_245F8E624(&qword_27EE3A498, &unk_246097EB8) - 8);
  v43 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v44 = v59;
  v45 = (v43 + *(v42 + 64) + *(v59 + 80)) & ~*(v59 + 80);
  v46 = (*(v60 + 64) + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v41;
  sub_245FC5914(v66, v47 + v43, &qword_27EE3A498, &unk_246097EB8);
  (*(v44 + 32))(v47 + v45, v67, v62);
  v48 = v47 + v46;
  *v48 = v63;
  v49 = v69;
  *(v48 + 4) = v68;
  *(v48 + 8) = v49;
  *(v48 + 16) = v39;
  *(v48 + 24) = v22;
  *(v48 + 25) = v8;
  type metadata accessor for PGManager.SessionInitializer();
  v50 = swift_allocObject();
  *(v50 + 32) = 0;
  *(v50 + 16) = sub_245FFF16C;
  *(v50 + 24) = v47;
  v51 = *(v7 + 120);
  *(v7 + 120) = v50;

  return v7;
}

uint64_t sub_245FD75F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
{
  v118 = a7;
  v117 = a6;
  v116 = a5;
  v115 = a4;
  v125 = a3;
  v126 = a2;
  v7 = sub_246091704();
  v133 = *(v7 - 8);
  v134 = v7;
  v8 = *(v133 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v119 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v123 = &v104 - v12;
  MEMORY[0x28223BE20](v11);
  v121 = &v104 - v13;
  v14 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v124 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v122 = &v104 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v104 - v20;
  v22 = sub_2460918F4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v114 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v120 = &v104 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v104 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v104 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v104 - v35;
  v37 = sub_245FA31EC();
  v38 = v23;
  v39 = *(v23 + 16);
  v129 = v37;
  v130 = v39;
  v131 = v23 + 16;
  v132 = v22;
  (v39)(v36);
  v40 = sub_2460918D4();
  v41 = sub_246091FC4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = v31;
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_245F8A000, v40, v41, "Initializer thunk: Starting initialization...", v43, 2u);
    v44 = v43;
    v31 = v42;
    MEMORY[0x24C1989D0](v44, -1, -1);
  }

  v45 = *(v38 + 8);
  v127 = v38 + 8;
  v128 = v45;
  v46 = v132;
  v45(v36, v132);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    sub_245F8E7A4(v126, v21, &qword_27EE3A498, &unk_246097EB8);
    v50 = v133;
    v49 = v134;
    v51 = *(v133 + 48);
    v113 = v133 + 48;
    v112 = v51;
    if (v51(v21, 1, v134) == 1)
    {
      sub_245F8E744(v21, &qword_27EE3A498, &unk_246097EB8);
      v110 = 0;
      v52 = 0xE000000000000000;
    }

    else
    {
      v110 = sub_246091604();
      v52 = v57;
      (*(v50 + 8))(v21, v49);
    }

    v130(v31, v129, v46);
    v58 = v121;
    v111 = *(v50 + 16);
    v111(v121, v125, v49);

    v59 = sub_2460918D4();
    v60 = sub_246091FC4();

    v109 = v60;
    if (os_log_type_enabled(v59, v60))
    {
      v61 = v115;
      v106 = HIDWORD(v115);
      v62 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v141 = v108;
      *v62 = 136381187;
      sub_245FFF308(&qword_27EE3A000, MEMORY[0x277CC9260]);
      v105 = v59;
      v63 = sub_2460923D4();
      v107 = v31;
      v65 = v64;
      v121 = *(v133 + 8);
      (v121)(v58, v49);
      v66 = sub_245F8D3C0(v63, v65, &v141);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2081;
      v67 = sub_245F8D3C0(v110, v52, &v141);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2082;
      v136 = v61 & 1;
      v137 = v106;
      v138 = v116;
      v139 = v117;
      v140 = v118 & 0x101;
      v68 = sub_246091C54();
      v70 = sub_245F8D3C0(v68, v69, &v141);
      v49 = v134;

      *(v62 + 24) = v70;
      v71 = v105;
      _os_log_impl(&dword_245F8A000, v105, v109, "Backend Manager: Initializing with images URL = %{private}s, snapshotURL = %{private}s and configuration = %{public}s", v62, 0x20u);
      v72 = v108;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v72, -1, -1);
      MEMORY[0x24C1989D0](v62, -1, -1);

      v73 = v107;
      v74 = v132;
    }

    else
    {

      v121 = *(v133 + 8);
      (v121)(v58, v49);
      v73 = v31;
      v74 = v46;
    }

    v128(v73, v74);
    v75 = v122;
    v76 = v125;
    v77 = v111;
    v111(v122, v125, v49);
    (*(v133 + 56))(v75, 0, 1, v49);
    v78 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
    swift_beginAccess();
    sub_245F97BAC(v75, v48 + v78, &qword_27EE3A498, &unk_246097EB8);
    swift_endAccess();
    type metadata accessor for ObjectCaptureImageFolderReader(0);
    v79 = v123;
    v77(v123, v76, v134);
    v80 = ObjectCaptureImageFolderReader.__allocating_init(url:)(v79);
    v81 = *(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);
    *(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = v80;

    v82 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
    swift_beginAccess();
    v83 = v48 + v82;
    v84 = v126;
    sub_245FFF298(v126, v83);
    swift_endAccess();
    v85 = *(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples);
    *(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;

    v86 = v124;
    v87 = v134;
    sub_245F8E7A4(v84, v124, &qword_27EE3A498, &unk_246097EB8);
    if (v112(v86, 1, v87) == 1)
    {
      sub_245F8E744(v86, &qword_27EE3A498, &unk_246097EB8);
    }

    else
    {
      v94 = v119;
      (*(v133 + 32))(v119, v86, v87);
      v95 = v135;
      sub_246090F3C();
      v135 = v95;
      if (v95)
      {
        (v121)(v94, v87);
      }

      if ((sub_246090F38(v94) & 1) == 0)
      {
        sub_245FFD204();
        v102 = swift_allocError();
        *v103 = 0;
        *(v103 + 8) = 1;
        v135 = v102;
        swift_willThrow();

        return (v121)(v94, v87);
      }

      (v121)(v94, v87);
    }

    v88 = sub_245FE31E4();
    v89 = OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData;
    *(v48 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = v88 & 1;
    v90 = v120;
    v130(v120, v129, v132);

    v91 = sub_2460918D4();
    v92 = sub_246091FC4();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 67240192;
      *(v93 + 4) = *(v48 + v89);

      _os_log_impl(&dword_245F8A000, v91, v92, "Backend Manager: ImageURL contains area mode data: %{BOOL,public}d", v93, 8u);
      MEMORY[0x24C1989D0](v93, -1, -1);
    }

    else
    {
    }

    v46 = v132;
    v128(v90, v132);
    v96 = v135;
    sub_245FE356C();
    v135 = v96;
    if (v96)
    {
    }

    v98 = type metadata accessor for MemoryLogger();
    (*(v98 + 88))(0xD00000000000004FLL, 0x80000002460A0E60);
    v130(v114, v129, v46);
    v99 = sub_2460918D4();
    v100 = sub_246091FC4();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&dword_245F8A000, v99, v100, "... done initializer thunk.", v101, 2u);
      MEMORY[0x24C1989D0](v101, -1, -1);
    }

    else
    {
    }

    v56 = v114;
  }

  else
  {
    v130(v34, v129, v46);
    v53 = sub_2460918D4();
    v54 = sub_246091FB4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_245F8A000, v53, v54, "Initializer thunk: Failed to initialize since self is nil", v55, 2u);
      MEMORY[0x24C1989D0](v55, -1, -1);
    }

    v56 = v34;
  }

  return (v128)(v56, v46);
}

uint64_t sub_245FD826C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for MemoryLogger() + 88);
  v25(0xD00000000000003CLL, 0x800000024609FD90);
  v28 = a2;
  v10 = sub_245FD0F78(a2);
  v26 = v11;
  v13 = v12;
  LOWORD(a2) = v14;
  v15 = *(v6 + 16);
  v29 = a1;
  v15(v9, a1, a3);
  sub_245F8E624(&qword_27EE3A4B0, &qword_246097ED0);
  swift_dynamicCast();
  v16 = v30;
  v17 = type metadata accessor for PGManager();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  v20 = swift_allocObject();
  v21 = a2 & 0x101;
  v22 = v27;
  sub_245FD8488(v16, v10 & 0xFFFFFFFF00000001, v26, v13, v21);
  if (!v22)
  {
    v25(0xD00000000000003FLL, 0x800000024609FDD0);
  }

  sub_245FFEA30(v28, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v6 + 8))(v29, a3);
  return v20;
}

uint64_t sub_245FD8488(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v56 = a5;
  v55 = a4;
  v54 = a3;
  v52 = a2;
  v57 = a1;
  v53 = HIDWORD(a2);
  v51 = sub_246092034();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v51);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246092004();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_246091A64();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v47[5] = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 112) = 1008981770;
  *(v5 + 120) = 0;
  v16 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  v17 = sub_246091704();
  v18 = *(*(v17 - 8) + 56);
  v18(v6 + v16, 1, 1, v17);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;
  v18(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, 1, 1, v17);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;
  v19 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  type metadata accessor for SegmentIDConverter();
  *(v6 + v19) = sub_2460251F8();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = 0;
  v50 = OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue;
  v49 = sub_245F90360();
  v48 = "guration completed";
  sub_246091A54();
  *&v58[0] = MEMORY[0x277D84F90];
  v47[3] = sub_245FFF308(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  v47[2] = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v47[4] = sub_245FFD28C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v20 = *MEMORY[0x277D85260];
  v21 = *(v7 + 104);
  v47[1] = v7 + 104;
  v22 = v51;
  v21(v10, v20, v51);
  *(v6 + v50) = sub_246092074();
  v50 = OBJC_IVAR____TtC6CoreOC9PGManager_processQueue;
  v48 = ".queues.serial.addsample";
  sub_246091A34();
  *&v58[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  v21(v10, v20, v22);
  *(v6 + v50) = sub_246092074();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleProgressBound) = 1036831949;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameRequestProgressBound) = 1063675494;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = 0;
  v23 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v24 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v24 - 8) + 56))(v6 + v23, 1, 1, v24);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) = 0;
  v25 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  sub_245F8E624(&qword_27EE3A4A8, &qword_246097EC8);
  LOBYTE(v58[0]) = 0;
  *(v6 + v25) = sub_24608FD48(v58);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_session) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap) = 0;
  v26 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  sub_245F97B40(v58);
  v27 = v58[7];
  *(v26 + 96) = v58[6];
  *(v26 + 112) = v27;
  *(v26 + 128) = v59;
  v28 = v58[3];
  *(v26 + 32) = v58[2];
  *(v26 + 48) = v28;
  v29 = v58[5];
  *(v26 + 64) = v58[4];
  *(v26 + 80) = v29;
  v30 = v58[1];
  *v26 = v58[0];
  *(v26 + 16) = v30;
  v31 = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) = MEMORY[0x277D84F90];
  v32 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  v60 = 1;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0u;
  *(v32 + 64) = 1;
  v33 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  *(v6 + v33) = sub_245FFBED8(v31);
  v34 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  *(v6 + v34) = sub_245FFC018(v31);
  v35 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  *(v6 + v35) = sub_245FFC124(v31);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests) = v31;
  v36 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  *(v6 + v36) = sub_245FFC244(v31);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated) = 0;
  v37 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  LOBYTE(v7) = v52 & 1;
  *v37 = v52 & 1;
  v38 = v53;
  v39 = v54;
  *(v37 + 4) = v53;
  *(v37 + 8) = v39;
  v40 = v55;
  *(v37 + 16) = v55;
  v41 = v56;
  LOBYTE(v10) = v56 & 1;
  *(v37 + 24) = v56 & 1;
  LODWORD(v21) = (v41 >> 8) & 1;
  *(v37 + 25) = BYTE1(v41) & 1;
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v7;
  *(v43 + 28) = v38;
  *(v43 + 32) = v39;
  *(v43 + 40) = v40;
  *(v43 + 48) = v10;
  *(v43 + 49) = v21;
  *(v43 + 56) = v57;
  type metadata accessor for PGManager.SessionInitializer();
  v44 = swift_allocObject();
  *(v44 + 32) = 0;
  *(v44 + 16) = sub_245FFEFA4;
  *(v44 + 24) = v43;
  v45 = *(v6 + 120);
  *(v6 + 120) = v44;

  return v6;
}

uint64_t sub_245FD8C80(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v68 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  v63 = a2;
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = v61 - v8;
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v67 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v61 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v61 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v61 - v20;
  v22 = sub_245FA31EC();
  v23 = v10[2];
  v71 = v22;
  v72 = v23;
  (v23)(v21);
  v24 = sub_2460918D4();
  v25 = sub_246091FC4();
  v26 = os_log_type_enabled(v24, v25);
  v73 = v9;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_245F8A000, v24, v25, "Initializer thunk: Starting initialization...", v27, 2u);
    v28 = v27;
    v9 = v73;
    MEMORY[0x24C1989D0](v28, -1, -1);
  }

  v29 = v10[1];
  v29(v21, v9);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v72(v16, v71, v9);
    v32 = sub_2460918D4();
    v33 = sub_246091FC4();
    v34 = os_log_type_enabled(v32, v33);
    v61[1] = v10 + 1;
    v62 = v29;
    if (v34)
    {
      v35 = v63;
      v61[0] = HIDWORD(v63);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79 = v37;
      *v36 = 136446210;
      v74 = v35 & 1;
      v75 = v61[0];
      v76 = v64;
      v77 = v65;
      v78 = v66 & 0x101;
      v38 = sub_246091C54();
      v40 = sub_245F8D3C0(v38, v39, &v79);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_245F8A000, v32, v33, "Backend Manager: Initializing from source and configuration = %{public}s", v36, 0xCu);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      MEMORY[0x24C1989D0](v36, -1, -1);

      v62(v16, v73);
    }

    else
    {

      v29(v16, v9);
    }

    v47 = *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples);
    *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = v68;

    v48 = sub_246091704();
    v49 = *(*(v48 - 8) + 56);
    v50 = v69;
    v49(v69, 1, 1, v48);
    v51 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
    swift_beginAccess();
    sub_245F97BAC(v50, v31 + v51, &qword_27EE3A498, &unk_246097EB8);
    swift_endAccess();
    v52 = *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);
    *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;

    v49(v50, 1, 1, v48);
    v53 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
    swift_beginAccess();
    sub_245F97BAC(v50, v31 + v53, &qword_27EE3A498, &unk_246097EB8);
    swift_endAccess();
    type metadata accessor for SegmentIDConverter();
    v54 = sub_2460251F8();
    v55 = *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter);
    *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter) = v54;

    v56 = v70;
    sub_245FE356C();
    if (v56)
    {
    }

    v57 = type metadata accessor for MemoryLogger();
    (*(v57 + 88))(0xD00000000000003DLL, 0x80000002460A0E20);
    v19 = v67;
    v9 = v73;
    v72(v67, v71, v73);
    v58 = sub_2460918D4();
    v59 = sub_246091FC4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_245F8A000, v58, v59, "... done initializer thunk.", v60, 2u);
      v19 = v67;
      MEMORY[0x24C1989D0](v60, -1, -1);
    }

    else
    {
    }

    v29 = v62;
  }

  else
  {
    v72(v19, v71, v9);
    v41 = sub_2460918D4();
    v42 = sub_246091FB4();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v29;
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_245F8A000, v41, v42, "Initializer thunk: Failed to initialize since self is nil", v44, 2u);
      v45 = v73;
      MEMORY[0x24C1989D0](v44, -1, -1);

      return v43(v19, v45);
    }
  }

  return (v29)(v19, v9);
}

void *sub_245FD934C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for MemoryLogger() + 88);
  v7(0xD00000000000001ELL, 0x800000024609FE10);
  v8 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  if (*(v1 + v8) && (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) & 1) == 0)
  {
    v9 = sub_245FA31EC();
    (*(v3 + 16))(v6, v9, v2);
    v10 = sub_2460918D4();
    v11 = sub_246091FB4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_245F8A000, v10, v11, "Backend Managercd .. deinit: user did not call close, we do an internal call.", v12, 2u);
      MEMORY[0x24C1989D0](v12, -1, -1);
    }

    v13 = (*(v3 + 8))(v6, v2);
    (*(*v1 + 704))(v13);
  }

  v7(0xD000000000000021, 0x800000024609FE30);
  sub_245F91E84((v1 + 2));
  sub_245F91E84((v1 + 4));
  sub_245F91E84((v1 + 6));
  sub_245F91E84((v1 + 8));
  sub_245F91E84((v1 + 10));
  sub_245F91E84((v1 + 12));
  v14 = v1[15];

  sub_245F8E744(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL, &qword_27EE3A498, &unk_246097EB8);
  v15 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader);

  sub_245F8E744(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, &qword_27EE3A498, &unk_246097EB8);
  v16 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples);

  v17 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter);

  v18 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet);

  sub_245F8E744(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest, &qword_27EE3A4B8, &unk_246097ED8);
  v19 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled);

  v20 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud);

  v21 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample);

  v22 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample);

  v23 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample);

  v24 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests);

  v25 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest);

  return v1;
}

uint64_t sub_245FD9704()
{
  sub_245FD934C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_245FD975C()
{
  sub_245FDE410(&v4);
  if (v0)
  {
    v1 = v4;
    v2 = v5;
    sub_245FFD204();
    swift_allocError();
    *v3 = v1;
    *(v3 + 8) = v2;
  }
}

uint64_t sub_245FD97BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091A64();
  v22 = *(v8 - 8);
  v23 = v8;
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotogrammetrySample();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v16 = swift_allocObject();
  swift_weakInit();
  sub_245FFE868(a1, &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySample);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  sub_245FFE800(&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PhotogrammetrySample);
  aBlock[4] = sub_245FFD25C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEEC0;
  v19 = _Block_copy(aBlock);
  v20 = v15;

  sub_246091A14();
  v25 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v7, v19);
  _Block_release(v19);

  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t sub_245FD9B7C(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v2 = type metadata accessor for PhotogrammetrySample();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v79 = (&v76 - v6);
  MEMORY[0x28223BE20](v5);
  v77 = (&v76 - v7);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v76 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v76 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v76 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v78 = &v76 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v76 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v28 = sub_245FA31EC();
      (*(v9 + 16))(v14, v28, v8);
      v29 = sub_2460918D4();
      v30 = sub_246091FB4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_245F8A000, v29, v30, "Skipped adding sample. Internal manager is closed!", v31, 2u);
        MEMORY[0x24C1989D0](v31, -1, -1);
      }

      else
      {
      }

      return (*(v9 + 8))(v14, v8);
    }

    sub_245FDE410(&v82);
    if (*(v27 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
    {
      v38 = sub_245FA31EC();
      (*(v9 + 16))(v17, v38, v8);
      v39 = sub_2460918D4();
      v40 = sub_246091FC4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_245F8A000, v39, v40, "Process has started, ignoring new samples.", v41, 2u);
        MEMORY[0x24C1989D0](v41, -1, -1);
      }

      else
      {
      }

      return (*(v9 + 8))(v17, v8);
    }

    v42 = v80;
    sub_245FD1F30(v80, 0, 0);
    v43 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
    swift_beginAccess();
    v44 = *(v27 + v43);
    v45 = *(v27 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle);
    v46 = CPGSessionAddSampleWithCallbacks();
    if (v46)
    {
      v47 = v46;
      v48 = v27;
      v49 = sub_245FA31EC();
      (*(v9 + 16))(v21, v49, v8);
      v50 = v79;
      sub_245FFE868(v42, v79, type metadata accessor for PhotogrammetrySample);
      v51 = sub_2460918D4();
      v52 = sub_246091FB4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 134349312;
        v54 = v50;
        v55 = *v50;
        sub_245FFEA30(v54, type metadata accessor for PhotogrammetrySample);
        *(v53 + 4) = v55;
        *(v53 + 12) = 1026;
        *(v53 + 14) = v47;
        _os_log_impl(&dword_245F8A000, v51, v52, "Failed to add sample of id = %{public}ld, with error code = %{public}d", v53, 0x12u);
        v56 = v53;
        v42 = v80;
        MEMORY[0x24C1989D0](v56, -1, -1);
      }

      else
      {
        sub_245FFEA30(v50, type metadata accessor for PhotogrammetrySample);
      }

      v59 = v21;
      v27 = v48;
    }

    else
    {
      v57 = *v42;
      swift_beginAccess();
      sub_245FACC10(v81, v57);
      swift_endAccess();
      v58 = sub_245FA31EC();
      v59 = v78;
      (*(v9 + 16))(v78, v58, v8);
      v60 = v77;
      sub_245FFE868(v42, v77, type metadata accessor for PhotogrammetrySample);
      v51 = sub_2460918D4();
      v61 = sub_246091FC4();
      if (os_log_type_enabled(v51, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 134349056;
        v63 = *v60;
        sub_245FFEA30(v60, type metadata accessor for PhotogrammetrySample);
        *(v62 + 4) = v63;
        v59 = v78;
        _os_log_impl(&dword_245F8A000, v51, v61, "Added sample of id = %{public}ld", v62, 0xCu);
        v64 = v62;
        v42 = v80;
        MEMORY[0x24C1989D0](v64, -1, -1);
      }

      else
      {
        sub_245FFEA30(v60, type metadata accessor for PhotogrammetrySample);
      }
    }

    (*(v9 + 8))(v59, v8);
    CPGSampleRelease();
    v65 = v27;
    sub_245FE5D14(v42);
    v66 = v42[1];
    Width = CVPixelBufferGetWidth(v66);
    result = CVPixelBufferGetHeight(v66);
    v68 = Width * result;
    if ((Width * result) >> 64 == (Width * result) >> 63)
    {
      if ((v68 & 0x8000000000000000) == 0)
      {
        v69 = OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
        result = swift_beginAccess();
        v70 = *(v65 + v69);
        v71 = __CFADD__(v70, v68);
        v72 = v70 + v68;
        if (!v71)
        {
          *(v65 + v69) = v72;
          v73 = OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated;
          result = swift_beginAccess();
          v74 = *(v65 + v73);
          v71 = __CFADD__(v74, 1);
          v75 = v74 + 1;
          if (!v71)
          {
            *(v65 + v73) = v75;
          }

          goto LABEL_34;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v32 = sub_245FA31EC();
  (*(v9 + 16))(v25, v32, v8);
  v33 = sub_2460918D4();
  v34 = sub_246091FB4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v82 = v36;
    *v35 = 136380675;
    *(v35 + 4) = sub_245F8D3C0(0x706D617328646461, 0xEC000000293A656CLL, &v82);
    _os_log_impl(&dword_245F8A000, v33, v34, "Backend Manager.%{private}s failed to capture the instance!", v35, 0xCu);
    sub_245F8E6F4(v36);
    MEMORY[0x24C1989D0](v36, -1, -1);
    MEMORY[0x24C1989D0](v35, -1, -1);
  }

  return (*(v9 + 8))(v25, v8);
}

uint64_t sub_245FDA6A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246091A64();
  v18 = *(v8 - 8);
  v19 = v8;
  v9 = *(v18 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = sub_245FFD2E4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEF10;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  sub_246091A14();
  v21 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v11, v7, v15);
  _Block_release(v15);

  (*(v20 + 8))(v7, v4);
  (*(v18 + 8))(v11, v19);
}

uint64_t sub_245FDA9A8(uint64_t a1, uint64_t a2)
{
  v117 = a2;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v100 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v115 = &v100 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v100 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v100 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v100 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v100 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v116 = v2;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v24 = sub_245FA31EC();
      v25 = v116;
      (*(v3 + 16))(v8, v24, v116);
      v26 = sub_2460918D4();
      v27 = sub_246091FB4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_245F8A000, v26, v27, "Update VIO camera transform exited. Backend manager is closed.", v28, 2u);
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v8, v25);
    }

    else
    {
      sub_245FDE410(v127);
      v36 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
      swift_beginAccess();
      if (*(v23 + v36))
      {
        if (*(v117 + 16))
        {
          v37 = CPGSampleCameraTransformMapCreate();
          if (v37)
          {
            v106 = v37;
            v103 = v36;
            v38 = *(v117 + 64);
            v108 = v117 + 64;
            v39 = 1 << *(v117 + 32);
            if (v39 < 64)
            {
              v40 = ~(-1 << v39);
            }

            else
            {
              v40 = -1;
            }

            v41 = v40 & v38;
            v42 = OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet;

            v113 = v42;
            result = swift_beginAccess();
            v43 = v41;
            LODWORD(v104) = 0;
            v44 = 0;
            v107 = (v39 + 63) >> 6;
            v105 = (v3 + 16);
            v45 = (v3 + 8);
            *&v46 = 134349314;
            v102 = v46;
LABEL_18:
            while (v43)
            {
              v47 = v43;
LABEL_24:
              v43 = (v47 - 1) & v47;
              v49 = *(v23 + v113);
              if (*(v49 + 16))
              {
                v50 = __clz(__rbit64(v47)) | (v44 << 6);
                v51 = *(*(v117 + 48) + 8 * v50);
                v52 = (*(v117 + 56) + (v50 << 6));
                v53 = v52[1];
                v109 = *v52;
                v110 = v53;
                v54 = v52[3];
                v111 = v52[2];
                v112 = v54;
                v55 = *(v49 + 40);
                v114 = v43;
                result = sub_2460924F4();
                v43 = v114;
                v56 = -1 << *(v49 + 32);
                v57 = result & ~v56;
                if ((*(v49 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
                {
                  v58 = ~v56;
                  while (*(*(v49 + 48) + 8 * v57) != v51)
                  {
                    v57 = (v57 + 1) & v58;
                    if (((*(v49 + 56 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
                    {
                      goto LABEL_18;
                    }
                  }

                  if (v51 < 0)
                  {
LABEL_50:
                    __break(1u);
                    return result;
                  }

                  sub_246021188(v127, v109, v110, v111, v112);
                  v123 = v127[4];
                  v124 = v127[5];
                  v125 = v127[6];
                  v126 = v127[7];
                  v119 = v127[0];
                  v120 = v127[1];
                  v121 = v127[2];
                  v122 = v127[3];
                  v59 = CPGSampleCameraTransformMapAddBySampleID();
                  v60 = sub_245FA31EC();
                  v61 = *v105;
                  if (v59)
                  {
                    v61(v16, v60, v116);
                    v62 = sub_2460918D4();
                    v63 = sub_246091FB4();
                    if (os_log_type_enabled(v62, v63))
                    {
                      v64 = swift_slowAlloc();
                      v101 = v45;
                      v65 = v64;
                      v100 = swift_slowAlloc();
                      v118 = v100;
                      *v65 = v102;
                      *(v65 + 4) = v51;
                      *(v65 + 12) = 2082;
                      v119 = v109;
                      v120 = v110;
                      v121 = v111;
                      v122 = v112;
                      type metadata accessor for simd_float4x4(0);
                      v66 = sub_246091C54();
                      v68 = sub_245F8D3C0(v66, v67, &v118);
                      *&v112.f64[0] = v62;
                      v69 = v68;

                      *(v65 + 14) = v69;
                      v70 = v63;
                      v71 = v112.f64[0];
                      _os_log_impl(&dword_245F8A000, *&v112.f64[0], v70, "Failed to update to map sample of id = %{public}ld with updated VIO transform = %{public}s", v65, 0x16u);
                      v72 = v100;
                      sub_245F8E6F4(v100);
                      MEMORY[0x24C1989D0](v72, -1, -1);
                      v73 = v65;
                      v45 = v101;
                      MEMORY[0x24C1989D0](v73, -1, -1);
                    }

                    else
                    {
                    }

                    result = (*v45)(v16, v116);
                    v43 = v114;
                  }

                  else
                  {
                    v61(v19, v60, v116);
                    v74 = sub_2460918D4();
                    v75 = sub_246091FC4();
                    if (os_log_type_enabled(v74, v75))
                    {
                      v76 = swift_slowAlloc();
                      v101 = v45;
                      v77 = v76;
                      v104 = swift_slowAlloc();
                      v118 = v104;
                      *v77 = v102;
                      *(v77 + 4) = v51;
                      *(v77 + 12) = 2082;
                      v119 = v109;
                      v120 = v110;
                      v121 = v111;
                      v122 = v112;
                      type metadata accessor for simd_float4x4(0);
                      v78 = sub_246091C54();
                      v80 = sub_245F8D3C0(v78, v79, &v118);
                      *&v112.f64[0] = v74;
                      v81 = v75;
                      v82 = v80;

                      *(v77 + 14) = v82;
                      v83 = v81;
                      v74 = *&v112.f64[0];
                      _os_log_impl(&dword_245F8A000, *&v112.f64[0], v83, "Updated to map sample of id = %{public}ld with updated VIO transform = %{public}s", v77, 0x16u);
                      v84 = v104;
                      sub_245F8E6F4(v104);
                      MEMORY[0x24C1989D0](v84, -1, -1);
                      v85 = v77;
                      v45 = v101;
                      MEMORY[0x24C1989D0](v85, -1, -1);
                    }

                    result = (*v45)(v19, v116);
                    LODWORD(v104) = 1;
                    v43 = v114;
                  }
                }
              }
            }

            while (1)
            {
              v48 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                __break(1u);
                goto LABEL_50;
              }

              if (v48 >= v107)
              {
                break;
              }

              v47 = *(v108 + 8 * v48);
              ++v44;
              if (v47)
              {
                v44 = v48;
                goto LABEL_24;
              }
            }

            if (v104)
            {
              v86 = v45;
              v87 = *(v23 + v103);
              updated = CPGSessionUpdateSampleCameraTransforms();
              v89 = sub_245FA31EC();
              v90 = *v105;
              if (updated)
              {
                v92 = v115;
                v91 = v116;
                v90(v115, v89, v116);
                v93 = sub_2460918D4();
                v94 = sub_246091FB4();
                if (os_log_type_enabled(v93, v94))
                {
                  v95 = swift_slowAlloc();
                  *v95 = 0;
                  _os_log_impl(&dword_245F8A000, v93, v94, "Failed to update the sample camera transform map", v95, 2u);
                  MEMORY[0x24C1989D0](v95, -1, -1);
                }

                (*v86)(v92, v91);
              }

              else
              {
                v96 = v116;
                v90(v13, v89, v116);
                v97 = sub_2460918D4();
                v98 = sub_246091FC4();
                if (os_log_type_enabled(v97, v98))
                {
                  v99 = swift_slowAlloc();
                  *v99 = 0;
                  _os_log_impl(&dword_245F8A000, v97, v98, "Success to update the sample camera transform map", v99, 2u);
                  MEMORY[0x24C1989D0](v99, -1, -1);
                }

                (*v86)(v13, v96);
              }
            }

            CPGSampleCameraTransformMapRelease();
          }
        }
      }
    }
  }

  else
  {
    v29 = sub_245FA31EC();
    (*(v3 + 16))(v21, v29, v2);
    v30 = sub_2460918D4();
    v31 = sub_246091FB4();
    v32 = v2;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v127[0].f64[0] = v34;
      *v33 = 136380675;
      *(v33 + 4) = sub_245F8D3C0(0xD00000000000002DLL, 0x80000002460A0DF0, v127);
      _os_log_impl(&dword_245F8A000, v30, v31, "Backend Manager.%{private}s failed to capture the instance!", v33, 0xCu);
      sub_245F8E6F4(v34);
      MEMORY[0x24C1989D0](v34, -1, -1);
      MEMORY[0x24C1989D0](v33, -1, -1);
    }

    return (*(v3 + 8))(v21, v32);
  }
}

uint64_t sub_245FDB4D8(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5;
  v26 = a4;
  v27 = a5;
  v24 = a2;
  v25 = a3;
  v8 = sub_2460919F4();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_246091A64();
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a1;
  v19 = v25;
  *(v18 + 32) = v24;
  *(v18 + 48) = v19;
  v20 = v27;
  *(v18 + 64) = v26;
  *(v18 + 80) = v20;
  aBlock[4] = sub_245FFD324;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEF60;
  v21 = _Block_copy(aBlock);
  v22 = v16;

  sub_246091A14();
  v31 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v15, v11, v21);
  _Block_release(v21);

  (*(v30 + 8))(v11, v8);
  (*(v28 + 8))(v15, v29);
}

uint64_t sub_245FDB7F0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, uint64_t a5, unint64_t a6)
{
  v78 = a4;
  v77 = a3;
  v76 = a2;
  v75 = a1;
  v74 = a6;
  v85[7] = *MEMORY[0x277D85DE8];
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v73 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v73 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v73 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v73 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v73 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v79 = v6;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v29 = sub_245FA31EC();
      v30 = v79;
      (*(v7 + 16))(v12, v29, v79);
      v31 = sub_2460918D4();
      v32 = sub_246091FB4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_245F8A000, v31, v32, "Update bounding box exited. Backend manager is closed.", v33, 2u);
        MEMORY[0x24C1989D0](v33, -1, -1);
      }

      else
      {
      }

      result = (*(v7 + 8))(v12, v30);
    }

    else
    {
      sub_245FDE410(&v81);
      v41 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
      swift_beginAccess();
      v42 = v74;
      if (*(v28 + v41) && (v74 & 0x8000000000000000) == 0 && (sub_246021E38(v75, v76, v77, v78) & 1) != 0)
      {
        v85[0] = 0;
        sub_246021188(&v81, v75, v76, v77, v78);
        if (CPGBoundingBoxCreateFromTransform())
        {
          v43 = sub_245FA31EC();
          v44 = v79;
          (*(v7 + 16))(v18, v43, v79);
          v45 = sub_2460918D4();
          v46 = sub_246091FB4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_245F8A000, v45, v46, "Failed to create bounding box from transform.", v47, 2u);
            MEMORY[0x24C1989D0](v47, -1, -1);
          }

          else
          {
          }

          result = (*(v7 + 8))(v18, v44);
        }

        else
        {
          if (v42 >> 31)
          {
            __break(1u);
          }

          v58 = *(v28 + v41);
          updated = CPGSessionUpdateBoundingBoxBySegmentID();
          v60 = sub_245FA31EC();
          v61 = *(v7 + 16);
          if (updated)
          {
            v61(v21, v60, v79);
            v62 = sub_2460918D4();
            v63 = sub_246091FB4();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&dword_245F8A000, v62, v63, "Failed to update bounding box by segment ID.", v64, 2u);
              MEMORY[0x24C1989D0](v64, -1, -1);
            }

            (*(v7 + 8))(v21, v79);
          }

          else
          {
            v65 = v79;
            v61(v24, v60, v79);
            v66 = sub_2460918D4();
            v67 = sub_246091FC4();
            if (os_log_type_enabled(v66, v67))
            {
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v80 = v69;
              *v68 = 136446466;
              v81 = v75;
              v82 = v76;
              v83 = v77;
              v84 = v78;
              type metadata accessor for simd_float4x4(0);
              v70 = sub_246091C54();
              v72 = sub_245F8D3C0(v70, v71, &v80);

              *(v68 + 4) = v72;
              *(v68 + 12) = 2050;
              *(v68 + 14) = v74;
              _os_log_impl(&dword_245F8A000, v66, v67, "Successfully updated bounding box transform = %{public}s for segmentID = %{public}ld", v68, 0x16u);
              sub_245F8E6F4(v69);
              MEMORY[0x24C1989D0](v69, -1, -1);
              MEMORY[0x24C1989D0](v68, -1, -1);
            }

            (*(v7 + 8))(v24, v65);
          }

          CPGBoundingBoxRelease();
        }
      }

      else
      {
        v48 = sub_245FA31EC();
        v49 = v79;
        (*(v7 + 16))(v15, v48, v79);
        v50 = sub_2460918D4();
        v51 = sub_246091FB4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v85[0] = v53;
          *v52 = 134349314;
          *(v52 + 4) = v42;
          *(v52 + 12) = 2082;
          v81 = v75;
          v82 = v76;
          v83 = v77;
          v84 = v78;
          type metadata accessor for simd_float4x4(0);
          v54 = sub_246091C54();
          v56 = sub_245F8D3C0(v54, v55, v85);

          *(v52 + 14) = v56;
          _os_log_impl(&dword_245F8A000, v50, v51, "Invalid argument segmentID = %{public}ld or bounding box transform = %{public}s", v52, 0x16u);
          sub_245F8E6F4(v53);
          MEMORY[0x24C1989D0](v53, -1, -1);
          MEMORY[0x24C1989D0](v52, -1, -1);
        }

        else
        {
        }

        result = (*(v7 + 8))(v15, v49);
      }
    }
  }

  else
  {
    v34 = sub_245FA31EC();
    (*(v7 + 16))(v26, v34, v6);
    v35 = sub_2460918D4();
    v36 = sub_246091FB4();
    v37 = v6;
    if (os_log_type_enabled(v35, v36))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v81.f64[0] = v39;
      *v38 = 136380675;
      *(v38 + 4) = sub_245F8D3C0(0xD00000000000003BLL, 0x80000002460A0DB0, &v81);
      _os_log_impl(&dword_245F8A000, v35, v36, "Backend Manager.%{private}s failed to capture the instance!", v38, 0xCu);
      sub_245F8E6F4(v39);
      MEMORY[0x24C1989D0](v39, -1, -1);
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    result = (*(v7 + 8))(v26, v37);
  }

  v57 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245FDC264()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v31 = *(v6 - 8);
  v32 = v6;
  v7 = *(v31 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245FA31EC();
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_2460918D4();
  v17 = sub_246091FC4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v30 = v5;
    v20 = v2;
    v21 = v1;
    v22 = v19;
    aBlock[0] = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_245F8D3C0(0x657A696C616E6966, 0xEF29287475706E49, aBlock);
    _os_log_impl(&dword_245F8A000, v16, v17, "Backend Manager.%{private}s called.", v18, 0xCu);
    sub_245F8E6F4(v22);
    v23 = v22;
    v1 = v21;
    v2 = v20;
    v5 = v30;
    MEMORY[0x24C1989D0](v23, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v24 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v25 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_245FFD334;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEF88;
  v26 = _Block_copy(aBlock);
  v27 = v24;

  sub_246091A14();
  v34 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v5, v26);
  _Block_release(v26);

  (*(v33 + 8))(v5, v2);
  (*(v31 + 8))(v9, v32);
}

uint64_t sub_245FDC6E0()
{
  v0 = type metadata accessor for PhotogrammetrySession.Output(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v52 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v52 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v52 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v21 = sub_245FA31EC();
      (*(v5 + 16))(v10, v21, v4);
      v22 = sub_2460918D4();
      v23 = sub_246091FB4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_245F8A000, v22, v23, "Finalize input exited. Backend manager is closed.", v24, 2u);
        MEMORY[0x24C1989D0](v24, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v10, v4);
    }

    else
    {
      sub_245FDE410(&v53);
      v31 = OBJC_IVAR____TtC6CoreOC9PGManager_processStarted;
      v32 = *(v20 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted);
      v33 = sub_245FA31EC();
      v34 = *(v5 + 16);
      if (v32)
      {
        v34(v13, v33, v4);
        v35 = sub_2460918D4();
        v36 = sub_246091FC4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_245F8A000, v35, v36, "Process has started, the input must have been finalized.", v37, 2u);
          MEMORY[0x24C1989D0](v37, -1, -1);
        }

        else
        {
        }

        return (*(v5 + 8))(v13, v4);
      }

      else
      {
        v34(v16, v33, v4);
        v38 = sub_2460918D4();
        v39 = sub_246091FC4();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53 = v52;
          *v40 = 136380675;
          *(v40 + 4) = sub_245F8D3C0(0x657A696C616E6966, 0xEF29287475706E49, &v53);
          _os_log_impl(&dword_245F8A000, v38, v39, "Backend Manager.%{private}s happened", v40, 0xCu);
          v41 = v52;
          sub_245F8E6F4(v52);
          MEMORY[0x24C1989D0](v41, -1, -1);
          MEMORY[0x24C1989D0](v40, -1, -1);
        }

        v42 = (*(v5 + 8))(v16, v4);
        if ((*(v20 + v31) & 1) == 0)
        {
          *(v20 + v31) = 1;
          if ((*(*v20 + 464))(v42))
          {
            v44 = v43;
            ObjectType = swift_getObjectType();
            swift_storeEnumTagMultiPayload();
            (*(v44 + 8))(v3, ObjectType, v44);
            swift_unknownObjectRelease();
            sub_245FFEA30(v3, type metadata accessor for PhotogrammetrySession.Output);
          }
        }

        v46 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
        swift_beginAccess();
        v47 = *(v20 + v46);
        v48 = *(v20 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle);
        if (CPGSessionFinalizeInput() && (*(*v20 + 536))())
        {
          v50 = v49;
          v51 = swift_getObjectType();
          (*(v50 + 8))(0, 0, 1, v51, v50);

          return swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v25 = sub_245FA31EC();
    (*(v5 + 16))(v18, v25, v4);
    v26 = sub_2460918D4();
    v27 = sub_246091FB4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53 = v29;
      *v28 = 136380675;
      *(v28 + 4) = sub_245F8D3C0(0x657A696C616E6966, 0xEF29287475706E49, &v53);
      _os_log_impl(&dword_245F8A000, v26, v27, "Backend Manager.%{private}s failed to capture the instance!", v28, 0xCu);
      sub_245F8E6F4(v29);
      MEMORY[0x24C1989D0](v29, -1, -1);
      MEMORY[0x24C1989D0](v28, -1, -1);
    }

    return (*(v5 + 8))(v18, v4);
  }
}

uint64_t sub_245FDCF18(uint64_t a1)
{
  v2 = sub_2460919F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v28 = v8;
    v29 = v7;
    v30 = v3;
    v18 = sub_245FA31EC();
    (*(v13 + 16))(v17, v18, v12);
    v19 = sub_2460918D4();
    v20 = sub_246091FC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_245F8A000, v19, v20, "process() call is queuing the work item onto the serial processing queue.", v21, 2u);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    (*(v13 + 8))(v17, v12);
    v22 = *(v31 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = a1;
    aBlock[4] = sub_245FFD37C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858DEFD8;
    v25 = _Block_copy(aBlock);
    v26 = v22;

    sub_246091A14();
    v32 = MEMORY[0x277D84F90];
    sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v11, v6, v25);
    _Block_release(v25);

    (*(v30 + 8))(v6, v2);
    (*(v28 + 8))(v11, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245FDD35C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = sub_245FA31EC();
  v25 = v4[2];
  v25(v10, v11, v3);
  v12 = sub_2460918D4();
  v13 = sub_246091FC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v11;
    v15 = a2;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_245F8A000, v12, v13, "Beginning queued processing work...", v14, 2u);
    v17 = v16;
    a2 = v15;
    v11 = v24;
    MEMORY[0x24C1989D0](v17, -1, -1);
  }

  v18 = v4[1];
  v18(v10, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_245FDD5DC(a2);
  }

  v25(v8, v11, v3);
  v19 = sub_2460918D4();
  v20 = sub_246091FC4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_245F8A000, v19, v20, "... finished queued processing work.", v21, 2u);
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  return (v18)(v8, v3);
}

uint64_t sub_245FDD5DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v32[1] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = v32 - v10;
  v12 = sub_246091AF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  LOBYTE(v17) = sub_246091B24();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v33 = a1;
  sub_245FE8EF8(a1, &v37);
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = v40;

  sub_245FDE258(v24);

  v35 = 0;
  v36 = 256;
  v25 = v2[15];
  if (!v25)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v25 + 32) == 3)
  {

    v26 = sub_245FA31EC();
    v27 = v4;
    (*(v5 + 16))(v11, v26, v4);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "The session failed to initialize, so this session cannot be used.", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v27);
    v35 = 2;
    v36 = 1;
  }

  else
  {
    sub_245FDE410(&v37);

    sub_245FDEC78(v31);

    v37 = v20;
    v38 = v21;
    v39 = v22;
    v40 = v23;
    sub_245FDF174(&v37, &v34);
  }

  return sub_245FDDBD4(&v35, v2, v33);
}

uint64_t sub_245FDDBD4(uint64_t *a1, void *a2, uint64_t a3)
{
  v69 = type metadata accessor for PhotogrammetrySession.Output(0);
  v6 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2460918F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v63 - v20;
  if (*(a1 + 9))
  {
    v22 = sub_245FA31EC();
    (*(v15 + 16))(v19, v22, v14);
    v23 = sub_2460918D4();
    v24 = sub_246091FC4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245F8A000, v23, v24, "Process work item completed.", v25, 2u);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    return (*(v15 + 8))(v19, v14);
  }

  v66 = *a1;
  LODWORD(v68) = *(a1 + 8);
  v27 = sub_245FA31EC();
  (*(v15 + 16))(v21, v27, v14);
  v28 = sub_2460918D4();
  v29 = sub_246091FB4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v71 = v10;
    v31 = a3;
    v32 = v30;
    *v30 = 0;
    _os_log_impl(&dword_245F8A000, v28, v29, "Encountered an error during the process work item... publishing it to all requests and finalizing call.", v30, 2u);
    v33 = v32;
    a3 = v31;
    v10 = v71;
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  result = (*(v15 + 8))(v21, v14);
  v34 = *(a3 + 16);
  if (v34)
  {
    v35 = v10;
    v36 = (*a2 + 464);
    v37 = *v36;
    v38 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    v64 = OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled;
    v39 = a3 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v70 = v35[9];
    v71 = v36;
    v65 = v68 & 1;
    v67 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
    v68 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    do
    {
      v41 = sub_245FFE868(v39, v13, type metadata accessor for PhotogrammetrySession.Request);
      result = v37(v41);
      v43 = v13;
      if (result)
      {
        v44 = v42;
        ObjectType = swift_getObjectType();
        v46 = v37;
        v47 = &v8[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
        sub_245FFE868(v43, v8, type metadata accessor for PhotogrammetrySession.Request);
        *v47 = v66;
        v47[8] = v65;
        v37 = v46;
        swift_storeEnumTagMultiPayload();
        v48 = ObjectType;
        v38 = v68;
        (*(v44 + 8))(v8, v48, v44);
        swift_unknownObjectRelease();
        result = sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySession.Output);
      }

      v49 = *(a2 + v38);
      v50 = __OFSUB__(v49, 1);
      v51 = v49 - 1;
      if (v50)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      *(a2 + v38) = v51;
      if (v51 < 0)
      {
        goto LABEL_27;
      }

      if (v51)
      {
        v13 = v43;
        v52 = v43;
      }

      else
      {
        v53 = *(a2 + v67);

        sub_2460900AC();

        v13 = v43;
        if ((v72[1] & 1) != 0 || *(a2 + v64) == 1)
        {
          if (v37(v54))
          {
            v56 = v55;
            v57 = swift_getObjectType();
            swift_storeEnumTagMultiPayload();
            v58 = v57;
            v38 = v68;
            (*(v56 + 8))(v8, v58, v56);
            swift_unknownObjectRelease();
            sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySession.Output);
          }

          v40 = *(a2 + v67);
          v72[0] = 0;

          sub_2460901B8(v72);

          result = sub_245FFEA30(v43, type metadata accessor for PhotogrammetrySession.Request);
          *(a2 + v64) = 0;
          goto LABEL_10;
        }

        if (v37(v54))
        {
          v60 = v59;
          v61 = swift_getObjectType();
          swift_storeEnumTagMultiPayload();
          v62 = v61;
          v38 = v68;
          (*(v60 + 8))(v8, v62, v60);
          swift_unknownObjectRelease();
          sub_245FFEA30(v8, type metadata accessor for PhotogrammetrySession.Output);
        }

        v52 = v43;
      }

      result = sub_245FFEA30(v52, type metadata accessor for PhotogrammetrySession.Request);
LABEL_10:
      v39 += v70;
      --v34;
    }

    while (v34);
  }

  return result;
}

uint64_t sub_245FDE258(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245FA31EC();
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(a1 + 16);

    _os_log_impl(&dword_245F8A000, v10, v11, "Anticipating %ld request results.", v12, 0xCu);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  else
  {
  }

  result = (*(v5 + 8))(v8, v4);
  v14 = *(a1 + 16);
  v15 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
  v16 = __OFADD__(v15, v14);
  v17 = v15 + v14;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v17;
    return sub_245FE2E78();
  }

  return result;
}

void sub_245FDE410(uint64_t *a1)
{
  v88 = a1;
  v2 = v1;
  v90 = sub_2460918F4();
  v3 = *(v90 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v90);
  v86 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v82 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v87 = &v82 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v82 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v82 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v82 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v82 - v21;
  v23 = *(v2 + 120);
  if (!v23)
  {
    __break(1u);
    goto LABEL_30;
  }

  v24 = *(v23 + 32);
  v25 = sub_245FA31EC();
  v26 = *(v3 + 16);
  if (v24 != 2)
  {
    if (v24 == 3)
    {
      v27 = v90;
      v26(v17, v25, v90);
      v28 = sub_2460918D4();
      v29 = sub_246091FB4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_245F8A000, v28, v29, "Delayed init already failed... not trying again.", v30, 2u);
        MEMORY[0x24C1989D0](v30, -1, -1);
      }

      (*(v3 + 8))(v17, v27);
      return;
    }

    v83 = v25;
    v84 = v26;
    v35 = v90;
    (v26)(v22);
    v36 = sub_2460918D4();
    v37 = sub_246091FC4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_245F8A000, v36, v37, "Running delayed init ...", v38, 2u);
      v39 = v38;
      v35 = v90;
      MEMORY[0x24C1989D0](v39, -1, -1);
    }

    v40 = *(v3 + 8);
    v85 = v3 + 8;
    v40(v22, v35);
    if (*(v2 + 120))
    {
      v41 = *(v2 + 120);

      v42 = v89;
      sub_245FE2788();
      if (v42)
      {

        v96 = v42;
        v43 = v42;
        sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
        if (swift_dynamicCast())
        {

          v44 = v94;
          v45 = v95;
          v46 = v87;
          v84(v87, v83, v35);
          v47 = sub_2460918D4();
          v48 = sub_246091FB4();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v91 = v50;
            v92 = v44;
            *v49 = 136315138;
            v93 = v45;
            v51 = sub_246091C54();
            v53 = v45;
            v54 = sub_245F8D3C0(v51, v52, &v91);

            *(v49 + 4) = v54;
            v45 = v53;
            _os_log_impl(&dword_245F8A000, v47, v48, "Error while running delayed init on process queue: %s", v49, 0xCu);
            sub_245F8E6F4(v50);
            MEMORY[0x24C1989D0](v50, -1, -1);
            MEMORY[0x24C1989D0](v49, -1, -1);

            v40(v87, v90);
          }

          else
          {

            v40(v46, v35);
          }

          v81 = v88;
          *v88 = v44;
          *(v81 + 8) = v45;
          v92 = v44;
          v93 = v45;
          sub_245FFD204();
          swift_willThrowTypedImpl();
          v80 = v96;
        }

        else
        {

          v84(v9, v83, v35);
          v61 = v42;
          v62 = sub_2460918D4();
          v63 = sub_246091FB4();

          v64 = os_log_type_enabled(v62, v63);
          v89 = v42;
          if (v64)
          {
            v65 = swift_slowAlloc();
            v87 = v40;
            v66 = v65;
            v67 = swift_slowAlloc();
            v94 = v67;
            *v66 = 136315138;
            v92 = v42;
            v68 = v42;
            v69 = sub_246091C54();
            v71 = sub_245F8D3C0(v69, v70, &v94);

            *(v66 + 4) = v71;
            _os_log_impl(&dword_245F8A000, v62, v63, "Error while running delayed init on process queue: %s", v66, 0xCu);
            sub_245F8E6F4(v67);
            v72 = v67;
            v35 = v90;
            MEMORY[0x24C1989D0](v72, -1, -1);
            v73 = v66;
            v40 = v87;
            MEMORY[0x24C1989D0](v73, -1, -1);
          }

          v40(v9, v35);
          v74 = v86;
          v84(v86, v83, v35);
          v75 = sub_2460918D4();
          v76 = sub_246091FB4();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&dword_245F8A000, v75, v76, "Using .initError...", v77, 2u);
            v78 = v77;
            v35 = v90;
            MEMORY[0x24C1989D0](v78, -1, -1);
          }

          v40(v74, v35);
          v79 = v88;
          *v88 = 2;
          *(v79 + 8) = 1;
          v94 = 2;
          v95 = 1;
          sub_245FFD204();
          swift_willThrowTypedImpl();
          v80 = v89;
        }
      }

      else
      {

        v84(v20, v83, v35);
        v55 = sub_2460918D4();
        v56 = sub_246091FC4();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = v35;
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_245F8A000, v55, v56, "... done running delayed init.", v58, 2u);
          MEMORY[0x24C1989D0](v58, -1, -1);

          v59 = v20;
          v60 = v57;
        }

        else
        {

          v59 = v20;
          v60 = v35;
        }

        v40(v59, v60);
      }

      return;
    }

LABEL_30:
    __break(1u);
    return;
  }

  v31 = v90;
  v26(v14, v25, v90);
  v32 = sub_2460918D4();
  v33 = sub_246091FC4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_245F8A000, v32, v33, "Delayed init already run... skipping.", v34, 2u);
    MEMORY[0x24C1989D0](v34, -1, -1);
  }

  (*(v3 + 8))(v14, v31);
}