void re::internal::TriangleDecimator::updateEdgeData(re::internal::TriangleDecimator *this, unsigned int a2)
{
  v9 = this;
  v74 = *MEMORY[0x1E69E9840];
  re::GeomConnectivityManifold::edgeVertices(this, a2, &v60);
  isBoundaryVertex = v60;
  v11 = *(v9 + 45);
  if (v11 <= v60)
  {
    *v62 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v57 = 136315906;
    *&v57[4] = "operator[]";
    *&v57[12] = 1024;
    *&v57[14] = 789;
    *&v57[18] = 2048;
    *&v57[20] = isBoundaryVertex;
    *&v57[28] = 2048;
    *&v57[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_48;
  }

  v2 = v61;
  if (v11 <= v61)
  {
LABEL_48:
    *v62 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v57 = 136315906;
    *&v57[4] = "operator[]";
    *&v57[12] = 1024;
    *&v57[14] = 789;
    *&v57[18] = 2048;
    *&v57[20] = v2;
    *&v57[28] = 2048;
    *&v57[30] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_49;
  }

  v3 = v62;
  v12 = *(v9 + 47);
  v13 = (v12 + 80 * v60);
  v14 = (v12 + 80 * v61);
  *v57 = vaddq_f64(*v13, *v14);
  *&v57[16] = vaddq_f64(v13[1], v14[1]);
  *&v57[32] = vaddq_f64(v13[2], v14[2]);
  v58 = vaddq_f64(v13[3], v14[3]);
  v59 = vaddq_f64(v13[4], v14[4]);
  v11 = *(v9 + 40);
  if (v11 <= v60)
  {
LABEL_49:
    v54[0] = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *(v3 + 4) = "operator[]";
    v63 = 1024;
    *(v3 + 14) = 789;
    v65 = 2048;
    *(v3 + 20) = isBoundaryVertex;
    v67 = 2048;
    *(v3 + 30) = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_50;
  }

  if (v11 <= v61)
  {
LABEL_50:
    v54[0] = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *(v3 + 4) = "operator[]";
    v63 = 1024;
    *(v3 + 14) = 789;
    v65 = 2048;
    *(v3 + 20) = v2;
    v67 = 2048;
    *(v3 + 30) = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_51;
  }

  v15 = *(v9 + 42);
  v11 = (v15 + 16 * v60);
  v16 = (v15 + 16 * v61);
  v17.i64[0] = 0x3F0000003F000000;
  v17.i64[1] = 0x3F0000003F000000;
  v55 = vmulq_f32(vaddq_f32(*v11, *v16), v17);
  v54[0] = v57;
  v54[1] = v11;
  v54[2] = v16;
  v54[3] = &v55;
  v4 = a2;
  v5 = *(v9 + 55);
  if (v5 <= a2)
  {
LABEL_51:
    v56 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *(v3 + 4) = "operator[]";
    v63 = 1024;
    *(v3 + 14) = 789;
    v65 = 2048;
    *(v3 + 20) = v4;
    v67 = 2048;
    *(v3 + 30) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_52;
  }

  v18 = *(v9 + 57) + 32 * a2;
  v19 = vsubq_f32(*v16, *v11);
  v20 = vmulq_f32(v19, v19);
  if (fabsf(v20.f32[2] + vaddv_f32(*v20.f32)) >= 1.0e-10)
  {
    goto LABEL_9;
  }

  *v18 = *v11;
  v11 = *(v9 + 55);
  v21 = 0.0;
  if (v11 <= v4)
  {
    v56 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    v9 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *&v62[4] = "operator[]";
    v63 = 1024;
    v64 = 789;
    v65 = 2048;
    v66 = v4;
    v67 = 2048;
    v68 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    isBoundaryVertex = re::GeomConnectivityManifold::isBoundaryVertex(v9, isBoundaryVertex);
    v22 = re::GeomConnectivityManifold::isBoundaryVertex(v9, v61);
    v6 = v60;
    v5 = *(v9 + 50);
    if (v5 > v60)
    {
      v7 = v61;
      if (v5 > v61)
      {
        v31 = *(v9 + 52);
        v32 = *(v31 + v60);
        v33 = *(v31 + v61);
        if (v32 && !v33)
        {
          goto LABEL_13;
        }

        if (!v33 || v32)
        {
          if (((isBoundaryVertex ^ 1 | v22) & 1) == 0)
          {
LABEL_13:
            v34 = v11->i64[0];
            v35 = v11->i64[1];
            goto LABEL_17;
          }

          if ((v22 ^ 1 | isBoundaryVertex))
          {
            if (v33)
            {
              v36 = v32 == 0;
            }

            else
            {
              v36 = 1;
            }

            v37 = v36;
            if (isBoundaryVertex ^ 1 | v22 ^ 1) == 1 && (v37)
            {
              isBoundaryVertex = *(v9 + 55);
              if (isBoundaryVertex <= v4)
              {
                goto LABEL_55;
              }

              v38 = *(*(v9 + 57) + 32 * v4 + 16);
              *&v38 = v38;
              *&v38 = fabsf(*&v38);
              LODWORD(v23.f64[0]) = 925353388;
              if (*&v38 >= 0.00001)
              {
                v51 = *(v9 + 150);
                if (v51 == 1)
                {
                  re::internal::Quadric::computeOptimalPositionAlongEdge(v57, v11, v16, &v69, v38, v23, v24, v25, v26.f64[0], v27, v28);
                }

                else if (v51)
                {
                  v34 = re::internal::TriangleDecimator::updateEdgeData::$_0::operator()(v54);
                }

                else
                {
                  v69 = 0u;
                  v52 = re::internal::Quadric::optimalPositionConditionNumberTest(v57, &v69, 0, v23.f64[0], v24, v25, v26, v27.f64[0], v28);
                  v53 = &v55;
                  if (v52)
                  {
                    v53 = &v69;
                  }

                  v34 = v53->i64[0];
                  v35 = v53->i64[1];
                }
              }

              else if (*(v9 + 151) == 1)
              {
                re::internal::TriangleDecimator::computeCentroidOfVertexPairOneRing(v9, &v60);
              }

              else
              {
                v35 = v55.i64[1];
                v34 = v55.i64[0];
              }
            }

            else
            {
              v39 = vcvtq_f64_f32(vsub_f32(*v16->f32, *v11->f32));
              LODWORD(v23.f64[0]) = v11->i32[2];
              v25.f64[0] = (v16->f32[2] - *v23.f64);
              v40.f64[0] = *&v57[8];
              v28.f64[0] = *&v57[16];
              v29.f64[0] = *&v57[40];
              v40.f64[1] = *&v57[32];
              v30.f64[0] = v58.f64[1];
              v41 = vmulq_f64(v25, v28);
              v28.f64[1] = *&v57[40];
              v42 = vaddq_f64(vzip1q_s64(v41, vmulq_f64(v25, v29)), vpaddq_f64(vmulq_f64(v39, *v57), vmulq_f64(v39, v40)));
              v43 = vmulq_f64(v25, v30);
              v43.f64[0] = v43.f64[0] + vaddvq_f64(vmulq_f64(v39, v28));
              v44 = -(vmulq_f64(v25, v43).f64[0] + vaddvq_f64(vmulq_f64(v39, v42)));
              v45 = v44;
              v46 = fabsf(v45);
              v47 = 0.5;
              if (v46 < 0.00001 || (v48.f64[0] = *&v57[24], v30.f64[0] = v59.f64[0], v48.f64[1] = v58.f64[0], v23.f64[0] = *v23.f64, v49 = vaddvq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v23, v43), vmulq_f64(v25, v30)), vpaddq_f64(vmulq_f64(vcvtq_f64_f32(*v11->f32), v42), vmulq_f64(v39, v48)))) / v44, v47 = 0.0, v49 < 0.0) || (v47 = 1.0, v49 > 1.0))
              {
                v49 = v47;
              }

              v50 = vaddq_f32(vmulq_n_f32(*v11, 1.0 - v49), vmulq_n_f32(*v16, v49));
              v35 = v50.i64[1];
              v34 = v50.i64[0];
            }

            goto LABEL_17;
          }
        }

        v34 = v16->i64[0];
        v35 = v16->i64[1];
LABEL_17:
        *v18 = v34;
        *(v18 + 8) = v35;
        v11 = *(v9 + 55);
        if (v11 > v4)
        {
          v21 = v59.f64[1] + *&v57[32] * *(&v34 + 1) * *(&v34 + 1) + *v57 * *&v34 * *&v34 + v58.f64[1] * *&v35 * *&v35 + (*&v57[16] * *&v34 * *&v35 + *&v57[8] * *&v34 * *(&v34 + 1) + *&v57[40] * *(&v34 + 1) * *&v35 + *&v57[24] * *&v34 + v58.f64[0] * *(&v34 + 1) + v59.f64[0] * *&v35) * 2.0;
          goto LABEL_19;
        }

        goto LABEL_54;
      }

LABEL_53:
      v56 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *(v3 + 4) = "operator[]";
      v63 = 1024;
      *(v3 + 14) = 789;
      v65 = 2048;
      *(v3 + 20) = v7;
      v67 = 2048;
      *(v3 + 30) = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_54:
      v56 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *(v3 + 4) = "operator[]";
      v63 = 1024;
      *(v3 + 14) = 789;
      v65 = 2048;
      *(v3 + 20) = v4;
      v67 = 2048;
      *(v3 + 30) = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_55:
      v56 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v69 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v62 = 136315906;
      *(v3 + 4) = "operator[]";
      v63 = 1024;
      *(v3 + 14) = 789;
      v65 = 2048;
      *(v3 + 20) = v4;
      v67 = 2048;
      *(v3 + 30) = isBoundaryVertex;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_52:
    v56 = 0;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v69 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v62 = 136315906;
    *(v3 + 4) = "operator[]";
    v63 = 1024;
    *(v3 + 14) = 789;
    v65 = 2048;
    *(v3 + 20) = v6;
    v67 = 2048;
    *(v3 + 30) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

LABEL_19:
  *(*(v9 + 57) + 32 * v4 + 16) = v21;
}

uint64_t re::DynamicArray<re::internal::Quadric>::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 80 * a2;
}

double re::internal::TriangleDecimator::faceArea(re::internal::TriangleDecimator *this, unsigned int a2)
{
  if (*(this + 3) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_7;
  }

  v2 = (*(this + 5) + 16 * a2);
  v3 = *v2;
  v4 = *(this + 40);
  if (v4 <= v3)
  {
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  v5 = v2[1];
  if (v4 <= v5)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = v2[2];
  if (v4 <= v6)
  {
    goto LABEL_9;
  }

  v7 = *(this + 42);
  v8 = *(v7 + 16 * v3);
  v9 = vsubq_f32(*(v7 + 16 * v6), v8);
  v10 = vsubq_f32(*(v7 + 16 * v5), v8);
  v11 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vnegq_f32(v9)), v10, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v12 = vmulq_f32(v11, v11);
  return sqrtf(v12.f32[1] + (v12.f32[2] + v12.f32[0])) * 0.5;
}

uint64_t re::internal::TriangleDecimator::checkForFlip(re::GeomConnectivityManifold *a1, unsigned int a2, unsigned int a3, float32x4_t *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v33 = 0;
  re::GeomConnectivityManifold::fetchVertexIncidentFaces(a1, a2, v31);
  v8 = *(a1 + 40);
  if (v8 <= a2)
  {
    goto LABEL_31;
  }

  if (v32)
  {
    v9 = *(a1 + 42);
    v10 = *(a1 + 3);
    v11 = 0xFFFFFFFFLL;
    v12 = 0xFFFFFFFFLL;
    v13 = v34;
    v14 = *a4;
    v15 = a3;
    while (1)
    {
      v16 = *v13;
      if (v10 <= v16)
      {
        break;
      }

      v17 = 0;
      v36 = *(*(a1 + 5) + 16 * v16);
      while (*(&v36 + v17) != a2)
      {
        if (++v17 == 3)
        {
          goto LABEL_16;
        }
      }

      if (v17 == 2)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17 + 1;
      }

      v11 = *(&v36 + v18);
      if (v17)
      {
        v19 = (v17 - 1);
      }

      else
      {
        v19 = 2;
      }

      v12 = *(&v36 + v19);
LABEL_16:
      if (v11 != v15 && v12 != v15)
      {
        if (v8 <= v11)
        {
          goto LABEL_29;
        }

        if (v8 <= v12)
        {
          goto LABEL_30;
        }

        v20 = *(v9 + 16 * v11);
        v21 = *(v9 + 16 * a2);
        v22 = *(v9 + 16 * v12);
        v23 = vsubq_f32(v20, v21);
        v24 = vsubq_f32(v22, v21);
        v25 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v24, v24), v24, 0xCuLL), vnegq_f32(v23)), v24, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
        v26 = vsubq_f32(v20, v14);
        v27 = vsubq_f32(v22, v14);
        v28 = vmulq_f32(v25, vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL), vnegq_f32(v26)), v27, vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL)));
        if ((v28.f32[1] + (v28.f32[2] + v28.f32[0])) <= 0.0)
        {
          v29 = 0;
          goto LABEL_24;
        }
      }

      if (++v13 == &v34[v32])
      {
        goto LABEL_22;
      }
    }

    v35 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 797;
    v41 = 2048;
    v42 = v16;
    v43 = 2048;
    v44 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_29:
    v35 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = v11;
    v43 = 2048;
    v44 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_30:
    v35 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = v12;
    v43 = 2048;
    v44 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_31:
    *&v36 = 0;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v37 = 136315906;
    v38 = "operator[]";
    v39 = 1024;
    v40 = 789;
    v41 = 2048;
    v42 = a2;
    v43 = 2048;
    v44 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_22:
  v29 = 1;
LABEL_24:
  if (v31[0] && v34)
  {
    (*(*v31[0] + 40))();
  }

  return v29;
}

uint64_t re::internal::TriangleDecimator::decimateOneEdge(re::internal::TriangleDecimator *this)
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = *(this + 67);
  if (!v3)
  {
    return 0;
  }

  v4 = this;
  v5 = v65;
  v6 = *(this + 69);
  *v54 = *v6;
  v55 = *(v6 + 16);
  if (v3 == 1)
  {
    *(this + 67) = 0;
    ++*(this + 136);
    goto LABEL_13;
  }

  v7 = v3 - 1;
  if (v3 <= v7)
  {
LABEL_97:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v7;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_98;
  }

  v8 = (v6 + 24 * v7);
  v9 = *v8;
  *(v6 + 16) = *(v8 + 2);
  *v6 = v9;
  v10 = *(this + 67);
  if (!v10)
  {
LABEL_98:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = 0;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_99;
  }

  v3 = **(this + 69);
  v1 = *(this + 72);
  if (v1 <= v3)
  {
LABEL_99:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v3;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_100;
  }

  *(*(this + 74) + 4 * v3) = 0;
  if (v10 < v7)
  {
    if (*(this + 66) < v7)
    {
      re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(this + 65, v7);
    }

    goto LABEL_11;
  }

  if (v10 > v7)
  {
LABEL_11:
    *(v4 + 67) = v7;
    ++*(v4 + 136);
  }

  re::internal::IndexedPriorityQueue::rebalance(v4 + 65, 0);
LABEL_13:
  v2 = v54[0];
  v7 = *(v4 + 72);
  if (v7 <= v54[0])
  {
LABEL_93:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v2;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_94:
    *v67 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    *&v59[12] = 1024;
    *&v59[14] = 797;
    *&v59[18] = 2048;
    *&v59[20] = v3;
    v60 = 2048;
    *v61 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_95:
    *v67 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    *&v59[12] = 1024;
    *&v59[14] = 797;
    *&v59[18] = 2048;
    *&v59[20] = v5;
    v60 = 2048;
    *v61 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_96:
    *v67 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v59 = 136315906;
    *&v59[4] = "operator[]";
    *&v59[12] = 1024;
    *&v59[14] = 789;
    *&v59[18] = 2048;
    *&v59[20] = v3;
    v60 = 2048;
    *v61 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_97;
  }

  *(*(v4 + 74) + 4 * v54[0]) = -1;
  if (!re::GeomConnectivityManifold::isCollapseEdgeSafe(v4, v2))
  {
    return 0;
  }

  LODWORD(v11) = re::GeomConnectivityManifold::isBoundaryEdge(v4, v2);
  re::GeomConnectivityManifold::edgeVertices(v4, v2, &v57);
  if (*(v4 + 628) == 1)
  {
    v3 = v57;
    v7 = *(v4 + 40);
    if (v7 <= v57)
    {
LABEL_101:
      *v59 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v65[0].i32[0] = 136315906;
      *(v65[0].i64 + 4) = "operator[]";
      v65[0].i16[6] = 1024;
      *(&v65[0].i32[3] + 2) = 789;
      v65[1].i16[1] = 2048;
      *(v5 + 20) = v3;
      v65[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_102;
    }

    v1 = v58;
    if (v7 <= v58)
    {
LABEL_102:
      *v59 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v65[0].i32[0] = 136315906;
      *(v65[0].i64 + 4) = "operator[]";
      v65[0].i16[6] = 1024;
      *(&v65[0].i32[3] + 2) = 789;
      v65[1].i16[1] = 2048;
      *(v5 + 20) = v1;
      v65[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_103:
      *v59 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v65[0].i32[0] = 136315906;
      *(v65[0].i64 + 4) = "operator[]";
      v65[0].i16[6] = 1024;
      *(&v65[0].i32[3] + 2) = 789;
      v65[1].i16[1] = 2048;
      *(v5 + 20) = v3;
      v65[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_104:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v59 = 136315906;
      *&v59[4] = "operator[]";
      *&v59[12] = 1024;
      *&v59[14] = 789;
      *&v59[18] = 2048;
      *&v59[20] = v3;
      v60 = 2048;
      *v61 = v5;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_105;
    }

    v12 = vsubq_f32(*(*(v4 + 42) + 16 * v57), *(*(v4 + 42) + 16 * v58));
    v13 = vmulq_f32(v12, v12);
    if ((v13.f32[2] + vaddv_f32(*v13.f32)) > (*(v4 + 158) * *(v4 + 158)))
    {
      return 0;
    }
  }

  if (*(v4 + 617) == 1)
  {
    v3 = v57;
    v7 = *(v4 + 50);
    if (v7 <= v57)
    {
      goto LABEL_103;
    }

    v14 = *(v4 + 52);
    if (*(v14 + v57))
    {
      v3 = v58;
      if (v7 <= v58)
      {
LABEL_105:
        *v59 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v65[0].i32[0] = 136315906;
        *(v65[0].i64 + 4) = "operator[]";
        v65[0].i16[6] = 1024;
        *(&v65[0].i32[3] + 2) = 789;
        v65[1].i16[1] = 2048;
        *(v5 + 20) = v3;
        v65[1].i16[6] = 2048;
        *(v5 + 30) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_106:
        *v59 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v65[0].i32[0] = 136315906;
        *(v65[0].i64 + 4) = "operator[]";
        v65[0].i16[6] = 1024;
        *(&v65[0].i32[3] + 2) = 797;
        v65[1].i16[1] = 2048;
        *(v5 + 20) = v2;
        v65[1].i16[6] = 2048;
        *(v5 + 30) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_107;
      }

      if (*(v14 + v58))
      {
        return 0;
      }
    }
  }

  v7 = *(v4 + 55);
  if (v7 <= v2)
  {
LABEL_100:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v2;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_101;
  }

  v1 = *(v4 + 57) + 32 * v2;
  if (*(v4 + 608))
  {
    if (!*(v4 + 617))
    {
      goto LABEL_68;
    }
  }

  else
  {
    if (!re::internal::TriangleDecimator::checkForFlip(v4, v57, v58, (*(v4 + 57) + 32 * v2)) || !re::internal::TriangleDecimator::checkForFlip(v4, v58, v57, v1))
    {
      return 0;
    }

    if ((*(v4 + 617) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v7 = *(v4 + 28);
  if (v7 <= v2)
  {
    goto LABEL_106;
  }

  v7 = *(*(v4 + 30) + 4 * v2);
  v3 = *(v4 + 8);
  if (v3 <= v7)
  {
LABEL_107:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 797;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v7;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_108:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v3;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_109;
  }

  v15 = *(*(v4 + 10) + 4 * v7);
  if ((v15 & 0x40000000) != 0)
  {
    v16 = -1;
    v17 = 1;
  }

  else
  {
    v16 = v15 & 0xFFFFFFF;
    v15 = re::GeomConnectivityManifold::faceVertexDualHalfEdge(v4, v15 & 0xFFFFFFF, (v15 >> 28) & 3);
    v17 = 2;
  }

  v3 = v15 & 0xFFFFFFF;
  v64[0] = v15 & 0xFFFFFFF;
  v64[1] = v16;
  v7 = *(v4 + 94);
  if (v7 <= v3)
  {
    goto LABEL_108;
  }

  v53 = v15 & 0xFFFFFFF;
  v3 = *(*(v4 + 96) + 4 * v3);
  v7 = *(v4 + 99);
  if (v7 <= v3)
  {
LABEL_109:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v3;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_110:
    *v59 = 0;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v74 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v65[0].i32[0] = 136315906;
    *(v65[0].i64 + 4) = "operator[]";
    v65[0].i16[6] = 1024;
    *(&v65[0].i32[3] + 2) = 789;
    v65[1].i16[1] = 2048;
    *(v5 + 20) = v7;
    v65[1].i16[6] = 2048;
    *(v5 + 30) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_111;
  }

  if (*(*(v4 + 101) + 16 * v3 + 4) == 0.0)
  {
    return 0;
  }

  v51 = v3;
  v50 = v11;
  v20 = 0;
  v21 = 4 * v17;
  v22 = 0.0;
  do
  {
    v22 = v22 - re::internal::TriangleDecimator::faceArea(v4, v64[v20 / 4]);
    v20 += 4;
  }

  while (v21 != v20);
  v23 = &v62;
  v49 = v2;
  re::GeomConnectivityManifold::edgeVertices(v4, v2, &v62);
  *&v61[2] = 0;
  v24 = 1;
  memset(v59, 0, sizeof(v59));
  v7 = v66;
  v25 = 0.5;
  v26 = v53;
  do
  {
    v52 = v24;
    re::GeomConnectivityManifold::fetchVertexIncidentFaces(v4, *v23, v59);
    if (*&v59[16])
    {
      v2 = *&v61[2];
      v11 = *&v61[2] + 4 * *&v59[16];
      while (1)
      {
        v5 = *v2;
        if (v5 != v26 && v5 != v16)
        {
          break;
        }

LABEL_57:
        v2 += 4;
        if (v2 == v11)
        {
          goto LABEL_58;
        }
      }

      v28 = *v23;
      memset(v65, 0, sizeof(v65));
      v3 = *(v4 + 3);
      if (v3 > v5)
      {
        v29 = 0;
        *v66 = *(*(v4 + 5) + 16 * v5);
        v30 = v65;
        while (1)
        {
          v31 = v66[v29];
          v32 = v1;
          if (v31 != v28)
          {
            v33 = *(v4 + 40);
            if (v33 <= v31)
            {
              v56 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              v4 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v67 = 136315906;
              *&v67[4] = "operator[]";
              v68 = 1024;
              v69 = 797;
              v70 = 2048;
              v71 = v31;
              v72 = 2048;
              v73 = v33;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_63:
              *(v38 + 4) = 0;
              goto LABEL_64;
            }

            v32 = (*(v4 + 42) + 16 * v31);
          }

          *v30++ = *v32;
          if (++v29 == 3)
          {
            v34 = vsubq_f32(v65[2], v65[0]);
            v35 = vsubq_f32(v65[1], v65[0]);
            v36 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL), vnegq_f32(v34)), v35, vextq_s8(vuzp1q_s32(v34, v34), v34, 0xCuLL));
            v37 = vmulq_f32(v36, v36);
            v22 = v22 + sqrtf(v37.f32[1] + (v37.f32[2] + v37.f32[0])) * 0.5 - re::internal::TriangleDecimator::faceArea(v4, v5);
            v26 = v53;
            goto LABEL_57;
          }
        }
      }

      *v66 = 0;
      v77 = 0uLL;
      v78 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v74 = 0uLL;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v67 = 136315906;
      *&v67[4] = "operator[]";
      v68 = 1024;
      v69 = 797;
      v70 = 2048;
      v71 = v5;
      v72 = 2048;
      v73 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_93;
    }

LABEL_58:
    v24 = 0;
    v23 = &v63;
  }

  while ((v52 & 1) != 0);
  v7 = *(v4 + 99);
  v3 = v51;
  if (v7 <= v51)
  {
    goto LABEL_112;
  }

  v38 = *(v4 + 101) + 16 * v51;
  v39 = v22 + *(v38 + 8);
  v22 = fabs(v39);
  v25 = *(v38 + 4);
  v5 = v65;
  LODWORD(v11) = v50;
  v2 = v49;
  if (v22 >= v25)
  {
    goto LABEL_63;
  }

  *(v38 + 8) = v39;
LABEL_64:
  if (*v59 && *&v61[2])
  {
    (*(**v59 + 40))(*v59, *&v61[2]);
  }

  if (v22 >= v25)
  {
    return 0;
  }

LABEL_68:
  v66[0] = 0;
  re::GeomConnectivityManifold::collapseEdgeWithoutSafetyCheck(v4, v2, v66);
  if (re::GeomConnectivityManifold::isValidVertex(v4, v66[0]))
  {
    if (v66[0] == v57)
    {
      v40 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v58);
      v41 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v57);
      re::internal::Quadric::operator+=(v41, v40);
      v42 = re::DynamicArray<unsigned char>::operator[](v4 + 384, v58);
      v43 = v57;
    }

    else
    {
      v44 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v57);
      v45 = re::DynamicArray<re::internal::Quadric>::operator[](v4 + 344, v58);
      re::internal::Quadric::operator+=(v45, v44);
      v42 = re::DynamicArray<unsigned char>::operator[](v4 + 384, v57);
      v43 = v58;
    }

    v7 = v43;
    v3 = *(v4 + 50);
    if (v3 <= v43)
    {
      goto LABEL_110;
    }

    *(*(v4 + 52) + v43) |= *v42;
    v3 = v66[0];
    v7 = *(v4 + 40);
    if (v7 <= v66[0])
    {
LABEL_111:
      *v59 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v65[0].i32[0] = 136315906;
      *(v65[0].i64 + 4) = "operator[]";
      v65[0].i16[6] = 1024;
      *(&v65[0].i32[3] + 2) = 789;
      v65[1].i16[1] = 2048;
      *(v5 + 20) = v3;
      v65[1].i16[6] = 2048;
      *(v5 + 30) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_112:
      *v67 = 0;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v65[0].i32[0] = 136315906;
      *(v65[0].i64 + 4) = "operator[]";
      v65[0].i16[6] = 1024;
      *(&v65[0].i32[3] + 2) = 789;
      v65[1].i16[1] = 2048;
      *(v65[1].i64 + 4) = v3;
      v65[1].i16[6] = 2048;
      *(&v65[1].i64[1] + 6) = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(v4 + 42) + 16 * v66[0]) = *v1;
    v65[2].i64[0] = 0;
    memset(v65, 0, 28);
    re::GeomConnectivityManifold::fetchVertexIncidentEdges(v4, v3, v65);
    if (v65[1].i64[0])
    {
      v7 = v65[2].u64[0];
      v1 = 4 * v65[1].i64[0];
      while (1)
      {
        v3 = *v7;
        re::internal::TriangleDecimator::updateEdgeData(v4, *v7);
        v5 = *(v4 + 72);
        if (v5 <= v3)
        {
          goto LABEL_94;
        }

        v5 = *(*(v4 + 74) + 4 * v3);
        if (v5 != -1)
        {
          break;
        }

        if ((*(v4 + 640) & 1) == 0)
        {
          v5 = *(v4 + 55);
          if (v5 <= v3)
          {
            goto LABEL_104;
          }

          *&v54[2] = *(*(v4 + 57) + 32 * v3 + 16);
          LODWORD(v74) = v3;
          *(&v74 + 1) = *&v54[2];
          *&v75 = 0;
          v47 = (v4 + 520);
          v48 = &v74;
LABEL_84:
          re::internal::IndexedPriorityQueue::pushOrChangeCost(v47, v48);
        }

        v7 += 4;
        v1 -= 4;
        if (!v1)
        {
          goto LABEL_86;
        }
      }

      v2 = *(v4 + 67);
      if (v2 <= v5)
      {
        goto LABEL_95;
      }

      v46 = *(v4 + 69) + 24 * v5;
      *v54 = *v46;
      v55 = *(v46 + 16);
      v5 = *(v4 + 55);
      if (v5 <= v3)
      {
        goto LABEL_96;
      }

      *&v54[2] = *(*(v4 + 57) + 32 * v3 + 16);
      v55 = v55 + 1.0;
      v47 = (v4 + 520);
      v48 = v54;
      goto LABEL_84;
    }

LABEL_86:
    if (v65[0].i64[0] && v65[2].i64[0])
    {
      (*(*v65[0].i64[0] + 40))(v65[0].i64[0], v65[2].i64[0]);
    }
  }

  if (v11)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t re::GeomConnectivityManifold::isBoundaryEdge(re::GeomConnectivityManifold *this, unsigned int a2)
{
  if (*(this + 28) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 30) + 4 * a2);
  if (*(this + 8) <= v2)
  {
    goto LABEL_5;
  }

  return (*(*(this + 10) + 4 * v2) >> 30) & 1;
}

float64x2_t re::internal::Quadric::operator+=(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  *a1 = vaddq_f64(*a2, *a1);
  a1[1] = vaddq_f64(a2[1], v2);
  v3 = a1[3];
  a1[2] = vaddq_f64(a2[2], a1[2]);
  a1[3] = vaddq_f64(a2[3], v3);
  result = vaddq_f64(a2[4], a1[4]);
  a1[4] = result;
  return result;
}

void *re::internal::IndexedPriorityQueue::pushOrChangeCost(void *this, unsigned int *a2)
{
  v2 = *a2;
  if (this[7] <= v2)
  {
LABEL_23:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = this;
  v5 = *(this[9] + 4 * v2);
  if (v5 == -1)
  {

    return re::internal::IndexedPriorityQueue::push(this, a2);
  }

  else
  {
    if (this[2] <= v5)
    {
      goto LABEL_24;
    }

    v6 = this[4] + 24 * v5;
    v7 = *(v6 + 8);
    v8 = *(a2 + 1);
    if ((v7 - v8) * (v7 - v8) <= 1.0e-12)
    {
      v7 = *(v6 + 16);
      v8 = *(a2 + 2);
    }

    if (v7 <= v8)
    {
      if (v7 < v8)
      {
        v15 = *a2;
        *(v6 + 16) = *(a2 + 2);
        *v6 = v15;

        return re::internal::IndexedPriorityQueue::rebalance(this, v5);
      }
    }

    else
    {
      v9 = *a2;
      *(v6 + 16) = *(a2 + 2);
      *v6 = v9;
      if (v5)
      {
        while (1)
        {
          v10 = v5 - 1;
          v11 = (v5 - 1) >> 1;
          if (v4[2] <= v11)
          {
            break;
          }

          v12 = v4[4] + 24 * v11;
          v13 = *(v12 + 8);
          v14 = *(a2 + 1);
          if ((v13 - v14) * (v13 - v14) <= 1.0e-12)
          {
            v13 = *(v12 + 16);
            v14 = *(a2 + 2);
          }

          if (v13 > v14)
          {
            this = re::internal::IndexedPriorityQueue::swap(v4, v5, v10 >> 1);
            LODWORD(v5) = v10 >> 1;
            if (v10 >= 2)
            {
              continue;
            }
          }

          return this;
        }

        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_23;
      }
    }
  }

  return this;
}

void *re::internal::TriangleDecimator::computeQuadrics(void *this)
{
  v4 = this;
  v127 = *MEMORY[0x1E69E9840];
  v5 = *this;
  v6 = this[45];
  if (v6 >= v5)
  {
    if (v6 <= v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (this[44] < v5)
    {
      this = re::DynamicArray<re::internal::Quadric>::setCapacity(this + 43, v5);
      v6 = *(v4 + 360);
    }

    v7 = v5 - v6;
    if (v5 > v6)
    {
      v8 = 80 * v6;
      do
      {
        v9 = (*(v4 + 376) + v8);
        v9[3] = 0uLL;
        v9[4] = 0uLL;
        v9[1] = 0uLL;
        v9[2] = 0uLL;
        *v9 = 0uLL;
        v8 += 80;
        --v7;
      }

      while (v7);
    }
  }

  *(v4 + 360) = v5;
  ++*(v4 + 368);
  v6 = v5;
LABEL_10:
  v111 = 0;
  v108[1] = 0;
  v109 = 0;
  v108[0] = 0;
  v110 = 0;
  if (v5)
  {
    v10 = 0;
    v102 = v5;
    do
    {
      if (v6 <= v10)
      {
        goto LABEL_79;
      }

      v11 = (*(v4 + 376) + 80 * v10);
      v11[3] = 0u;
      v11[4] = 0u;
      v11[1] = 0u;
      v11[2] = 0u;
      *v11 = 0u;
      re::GeomConnectivityManifold::fetchVertexIncidentFaces(v4, v10, v108);
      v12 = v109;
      if (v109)
      {
        v13 = 0;
        v14 = 0;
        v106 = 0u;
        v107 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        while (1)
        {
          v6 = *(v111 + 4 * v13);
          v15 = *(v4 + 24);
          if (v15 <= v6)
          {
            break;
          }

          v16 = (*(v4 + 40) + 16 * v6);
          v15 = *v16;
          v3 = *(v4 + 320);
          if (v3 <= v15)
          {
            goto LABEL_69;
          }

          v1 = v16[1];
          if (v3 <= v1)
          {
            goto LABEL_70;
          }

          v2 = v16[2];
          if (v3 <= v2)
          {
            goto LABEL_71;
          }

          v17 = *(v4 + 336);
          v18 = *(v17 + 16 * v15);
          v19 = vsubq_f32(*(v17 + 16 * v1), v18);
          v20 = vsubq_f32(*(v17 + 16 * v2), v18);
          v21 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v20, v20), v20, 0xCuLL), vnegq_f32(v19)), v20, vextq_s8(vuzp1q_s32(v19, v19), v19, 0xCuLL));
          v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
          if ((*(v4 + 616) & 1) == 0)
          {
            v23 = vmulq_f32(v21, v21);
            v24 = v23.f32[1] + (v23.f32[2] + v23.f32[0]);
            if (v24 > 0.0)
            {
              v25 = v24;
              v26 = vrsqrte_f32(LODWORD(v24));
              v27 = vmul_f32(v26, vrsqrts_f32(LODWORD(v25), vmul_f32(v26, v26)));
              v22 = vmulq_n_f32(v22, vmul_f32(v27, vrsqrts_f32(LODWORD(v25), vmul_f32(v27, v27))).f32[0]);
            }
          }

          v15 = *(v4 + 360);
          if (v15 <= v10)
          {
            goto LABEL_72;
          }

          v28 = vmulq_f32(v18, v22);
          v28.f32[0] = v28.f32[2] + vaddv_f32(*v28.f32);
          v29 = (*(v4 + 376) + 80 * v10);
          v30 = vdup_laneq_s32(v22, 2);
          v31.i32[0] = v30.i32[0];
          v31.f32[1] = -v28.f32[0];
          v32 = vaddq_f64(v29[1], vcvtq_f64_f32(vmul_n_f32(v31, v22.f32[0])));
          *v29 = vaddq_f64(*v29, vcvtq_f64_f32(vmul_n_f32(*v22.f32, v22.f32[0])));
          v29[1] = v32;
          v33 = vextq_s8(v22, v22, 4uLL).u64[0];
          v34 = vaddq_f64(v29[2], vcvtq_f64_f32(vmul_lane_f32(v33, *v22.f32, 1)));
          HIDWORD(v32.f64[0]) = v30.i32[1];
          *v32.f64 = -v28.f32[0];
          v35 = vaddq_f64(v29[3], vcvtq_f64_f32(vmul_f32(v33, *&v32.f64[0])));
          v29[2] = v34;
          v29[3] = v35;
          v30.i32[1] = v28.i32[0];
          HIDWORD(v34.f64[0]) = v28.i32[0];
          *v34.f64 = -v28.f32[0];
          v29[4] = vaddq_f64(v29[4], vcvtq_f64_f32(vmul_f32(v30, *&v34.f64[0])));
          if (v12 <= v13)
          {
            goto LABEL_73;
          }

          if (re::GeomConnectivityManifold::isBoundaryFace(v4, v6) && re::GeomConnectivityManifold::isBoundaryVertex(v4, v10))
          {
            v15 = v109;
            if (v109 <= v13)
            {
              goto LABEL_74;
            }

            v15 = *(v111 + 4 * v13);
            v6 = *(v4 + 24);
            if (v6 <= v15)
            {
              goto LABEL_75;
            }

            v36 = 0;
            v113 = *(*(v4 + 40) + 16 * v15);
            LODWORD(v6) = -1;
            LODWORD(v13) = -1;
            do
            {
              v37 = *(&v113 + v36);
              if (v6 == -1)
              {
                v38 = *(&v113 + v36);
              }

              else
              {
                v38 = v6;
              }

              if (v6 == -1 || v10 == v37)
              {
                v13 = v13;
              }

              else
              {
                v13 = v37;
              }

              if (v10 == v37)
              {
                v6 = v6;
              }

              else
              {
                v6 = v38;
              }

              v36 += 4;
            }

            while (v36 != 12);
            v12 = *(v4 + 320);
            if (v12 <= v10)
            {
              goto LABEL_76;
            }

            if (v12 <= v6)
            {
              goto LABEL_77;
            }

            if (v12 <= v13)
            {
              goto LABEL_78;
            }

            v40 = *(v4 + 336);
            isBoundaryVertex = re::GeomConnectivityManifold::isBoundaryVertex(v4, v6);
            v42 = re::GeomConnectivityManifold::isBoundaryVertex(v4, v13);
            if (isBoundaryVertex & 1) != 0 || (v43 = 0uLL, v44 = 0uLL, v45 = 0uLL, v46 = 0uLL, v47 = 0uLL, (v42))
            {
              v48 = *(v40 + 16 * v10);
              v49 = vsubq_f32(*(v40 + 16 * v6), v48);
              v50 = vsubq_f32(*(v40 + 16 * v13), v48);
              v51 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
              v52 = vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL);
              v53 = vnegq_f32(v49);
              v54 = vmlaq_f32(vmulq_f32(v52, v53), v50, v51);
              v55 = vmulq_f32(v54, v54);
              v56 = v55.f32[1] + (v55.f32[2] + v55.f32[0]);
              v57 = 0uLL;
              v58 = 0uLL;
              if (v56 > 0.0)
              {
                v59 = v56;
                v60 = vrsqrte_f32(LODWORD(v56));
                v61 = vmul_f32(v60, vrsqrts_f32(LODWORD(v59), vmul_f32(v60, v60)));
                v58 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v54, v54), v54, 0xCuLL), vmul_f32(v61, vrsqrts_f32(LODWORD(v59), vmul_f32(v61, v61))).f32[0]);
              }

              v62 = vaddq_f32(v48, v58);
              v63 = 0uLL;
              v64 = 0uLL;
              v65 = 0uLL;
              v66 = 0uLL;
              if (isBoundaryVertex)
              {
                v67 = vsubq_f32(v62, v48);
                v68 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), v53), v67, v51);
                v69 = vmulq_f32(v68, v68);
                v70 = v69.f32[1] + (v69.f32[2] + v69.f32[0]);
                v71 = 0uLL;
                if (v70 > 0.0)
                {
                  v72 = v70;
                  v73 = vrsqrte_f32(LODWORD(v70));
                  v74 = vmul_f32(v73, vrsqrts_f32(LODWORD(v72), vmul_f32(v73, v73)));
                  v71 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vmul_f32(v74, vrsqrts_f32(LODWORD(v72), vmul_f32(v74, v74))).f32[0]);
                }

                v75 = vmulq_f32(v48, v71);
                v76 = v75.f32[2] + vaddv_f32(*v75.f32);
                v57.f64[0] = vmulq_f32(v71, v71).f32[0];
                v77.f32[0] = vmuls_lane_f32(v71.f32[0], v71, 2);
                v77.f32[1] = -v76 * v71.f32[0];
                v64.f64[0] = vmuls_lane_f32(v71.f32[1], *v71.f32, 1);
                v78 = vmuls_lane_f32(v71.f32[1], v71, 2);
                v79 = vmuls_lane_f32(v76, *v71.f32, 1);
                v80 = vmuls_lane_f32(v71.f32[2], v71, 2);
                v81 = vmuls_lane_f32(v76, v71, 2);
                v82 = (v76 * v76);
                v83 = vmuls_lane_f32(v71.f32[0], *v71.f32, 1) + 0.0;
                v63 = vaddq_f64(vcvtq_f64_f32(v77), 0);
                v84 = v78 + 0.0;
                v65.f64[0] = 0.0 - v79;
                v66.f64[0] = 0.0 - v81;
                v57.f64[1] = v83;
                v64.f64[1] = v84;
                v65.f64[1] = v80;
                v66.f64[1] = v82;
              }

              if (v42)
              {
                v85 = vsubq_f32(v62, v48);
                v86 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v85, v85), v85, 0xCuLL), vnegq_f32(v50)), v85, v52);
                v87 = vmulq_f32(v86, v86);
                v88 = v87.f32[1] + (v87.f32[2] + v87.f32[0]);
                v89 = 0uLL;
                if (v88 > 0.0)
                {
                  v90 = vextq_s8(vuzp1q_s32(v86, v86), v86, 0xCuLL);
                  v91 = v88;
                  v92 = vrsqrte_f32(LODWORD(v88));
                  v93 = vmul_f32(v92, vrsqrts_f32(LODWORD(v91), vmul_f32(v92, v92)));
                  v89 = vmulq_n_f32(v90, vmul_f32(v93, vrsqrts_f32(LODWORD(v91), vmul_f32(v93, v93))).f32[0]);
                }

                v94 = vmulq_f32(v48, v89);
                v94.f32[0] = v94.f32[2] + vaddv_f32(*v94.f32);
                v95 = vdup_laneq_s32(v89, 2);
                v96 = vextq_s8(v89, v89, 4uLL).u64[0];
                v97.i32[1] = v95.i32[1];
                v97.f32[0] = -v94.f32[0];
                v95.i32[1] = v94.i32[0];
                v57 = vaddq_f64(v57, vcvtq_f64_f32(vmul_n_f32(*v89.f32, v89.f32[0])));
                v63 = vaddq_f64(v63, vcvtq_f64_f32(vmul_n_f32(__PAIR64__(-v94.f32[0], v95.u32[0]), v89.f32[0])));
                v64 = vaddq_f64(v64, vcvtq_f64_f32(vmul_lane_f32(v96, *v89.f32, 1)));
                v65 = vaddq_f64(v65, vcvtq_f64_f32(vmul_f32(v96, v97)));
                v66 = vaddq_f64(v66, vcvtq_f64_f32(vmul_f32(v95, __PAIR64__(v94.u32[0], -v94.f32[0]))));
              }

              v98 = *(v4 + 612);
              v43 = vmulq_n_f64(v57, v98);
              v44 = vmulq_n_f64(v63, v98);
              v45 = vmulq_n_f64(v64, v98);
              v46 = vmulq_n_f64(v65, v98);
              v47 = vmulq_n_f64(v66, v98);
            }

            v105 = vaddq_f64(v105, v45);
            v103 = vaddq_f64(v103, v44);
            v104 = vaddq_f64(v104, v46);
            v106 = vaddq_f64(v106, v47);
            v107 = vaddq_f64(v107, v43);
          }

          v12 = v109;
          v13 = ++v14;
          if (v109 <= v14)
          {
            goto LABEL_62;
          }
        }

        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 797;
        v118 = 2048;
        v119 = v6;
        v120 = 2048;
        v121 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_69:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 797;
        v118 = 2048;
        v119 = v15;
        v120 = 2048;
        v121 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_70:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 797;
        v118 = 2048;
        v119 = v1;
        v120 = 2048;
        v121 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_71:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 797;
        v118 = 2048;
        v119 = v2;
        v120 = 2048;
        v121 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_72:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v10;
        v120 = 2048;
        v121 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_73:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v13;
        v120 = 2048;
        v121 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_74:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v13;
        v120 = 2048;
        v121 = v15;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_75:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 797;
        v118 = 2048;
        v119 = v15;
        v120 = 2048;
        v121 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_76:
        v112 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v10;
        v120 = 2048;
        v121 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_77:
        v112 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v6;
        v120 = 2048;
        v121 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_78:
        v112 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v13;
        v120 = 2048;
        v121 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_79:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v10;
        v120 = 2048;
        v121 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_80:
        *&v113 = 0;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v122 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v114 = 136315906;
        v115 = "operator[]";
        v116 = 1024;
        v117 = 789;
        v118 = 2048;
        v119 = v10;
        v120 = 2048;
        v121 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v106 = 0u;
      v107 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
LABEL_62:
      v6 = *(v4 + 360);
      if (v6 <= v10)
      {
        goto LABEL_80;
      }

      v99 = (*(v4 + 376) + 80 * v10);
      v100 = vaddq_f64(v103, v99[1]);
      *v99 = vaddq_f64(v107, *v99);
      v99[1] = v100;
      v101 = vaddq_f64(v104, v99[3]);
      v99[2] = vaddq_f64(v105, v99[2]);
      v99[3] = v101;
      v99[4] = vaddq_f64(v106, v99[4]);
      ++v10;
    }

    while (v10 != v102);
    this = v108[0];
    if (v108[0])
    {
      if (v111)
      {
        return (*(*v108[0] + 40))();
      }
    }
  }

  return this;
}

uint64_t re::GeomConnectivityManifold::isBoundaryVertex(re::GeomConnectivityManifold *this, unsigned int a2)
{
  if (*(this + 18) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v2 = *(*(this + 20) + 4 * a2);
  if (*(this + 8) <= v2)
  {
    goto LABEL_5;
  }

  return (*(*(this + 10) + 4 * v2) >> 30) & 1;
}

unint64_t re::internal::TriangleDecimator::initializeQueue(uint64_t a1, unint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 224);
  v5 = v4;
  v23.__x_[0] = v4;
  v6 = 1;
  v7 = v4;
  do
  {
    v7 = v6 + 1812433253 * (v7 ^ (v7 >> 30));
    v23.__x_[v6++] = v7;
  }

  while (v6 != 624);
  v23.__i_ = 0;
  *(a1 + 536) = 0;
  ++*(a1 + 544);
  if (*(a1 + 528) < v4)
  {
    re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 520), v4);
  }

  *(a1 + 576) = 0;
  ++*(a1 + 584);
  result = re::DynamicArray<unsigned int>::resize((a1 + 560), v4, &re::kInvalidMeshIndex);
  v9 = *(a1 + 440);
  if (v9 >= v4)
  {
    if (v9 <= v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (*(a1 + 432) < v4)
    {
      result = re::DynamicArray<re::internal::TriangleDecimator::EdgeData>::setCapacity((a1 + 424), v4);
      v9 = *(a1 + 440);
    }

    v10 = v4 - v9;
    if (v4 > v9 && v10 >= 1)
    {
      v11 = (*(a1 + 456) + 32 * v9);
      v12 = v10 + 1;
      do
      {
        *v11 = 0;
        v11[1] = 0;
        v11[2] = 0;
        v11 += 4;
        --v12;
      }

      while (v12 > 1);
    }
  }

  *(a1 + 440) = v4;
  ++*(a1 + 448);
LABEL_15:
  if (a2)
  {
    result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a2, 0);
    if (result < v4)
    {
      v13 = result;
      while (1)
      {
        re::internal::TriangleDecimator::updateEdgeData(a1, v13);
        v14 = v13;
        v15 = *(a1 + 440);
        if (v15 <= v13)
        {
          break;
        }

        v16 = *(*(a1 + 456) + 32 * v13 + 16);
        v17 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23);
        v18 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23);
        LODWORD(v33) = v13;
        *(&v33 + 1) = v16;
        *&v34 = (v17 + v18 * 4294967300.0) * 5.42101086e-20 + 0.0;
        re::internal::IndexedPriorityQueue::push((a1 + 520), &v33);
        result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a2, v13 + 1);
        v13 = result;
        if (result >= v5)
        {
          return result;
        }
      }

      v24 = 0;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v25 = 136315906;
      v26 = "operator[]";
      v27 = 1024;
      v28 = 789;
      v29 = 2048;
      v30 = v13;
      v31 = 2048;
      v32 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_27;
    }
  }

  else if (v4)
  {
    a2 = 0;
    for (i = 16; ; i += 32)
    {
      re::internal::TriangleDecimator::updateEdgeData(a1, a2);
      v14 = *(a1 + 440);
      if (v14 <= a2)
      {
        break;
      }

      v20 = *(*(a1 + 456) + i);
      v21 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23);
      v22 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23);
      LODWORD(v33) = a2;
      *(&v33 + 1) = v20;
      *&v34 = (v21 + v22 * 4294967300.0) * 5.42101086e-20 + 0.0;
      result = re::internal::IndexedPriorityQueue::push((a1 + 520), &v33);
      if (v5 == ++a2)
      {
        return result;
      }
    }

LABEL_27:
    v24 = 0;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v25 = 136315906;
    v26 = "operator[]";
    v27 = 1024;
    v28 = 789;
    v29 = 2048;
    v30 = a2;
    v31 = 2048;
    v32 = v14;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::internal::IndexedPriorityQueue::push(void *this, unsigned int *a2)
{
  v3 = this;
  v4 = this[1];
  v5 = this[2];
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*this)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        this = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(this, v10);
      }

      else
      {
        this = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = v3[2];
  }

  v11 = v3[4] + 24 * v5;
  v12 = *a2;
  *(v11 + 16) = *(a2 + 2);
  *v11 = v12;
  v13 = v3[2] + 1;
  v3[2] = v13;
  ++*(v3 + 6);
  v14 = *a2;
  if (v3[7] <= v14)
  {
    goto LABEL_23;
  }

  v15 = v13 - 1;
  *(v3[9] + 4 * v14) = v13 - 1;
  if (v13 != 1)
  {
    while (1)
    {
      v16 = v15 - 1;
      v17 = (v15 - 1) >> 1;
      v18 = v3[2];
      if (v18 <= v17)
      {
        break;
      }

      if (v18 <= v15)
      {
        goto LABEL_22;
      }

      v19 = v3[4];
      v20 = v19 + 24 * v17;
      v21 = v19 + 24 * v15;
      v22 = *(v20 + 8);
      v23 = *(v21 + 8);
      if ((v22 - v23) * (v22 - v23) <= 1.0e-12)
      {
        v22 = *(v20 + 16);
        v23 = *(v21 + 16);
      }

      if (v22 > v23)
      {
        this = re::internal::IndexedPriorityQueue::swap(v3, v15, v16 >> 1);
        v15 = v16 >> 1;
        if (v16 > 1)
        {
          continue;
        }
      }

      return this;
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_22:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

uint64_t re::internal::TriangleDecimator::clear(uint64_t this)
{
  *this = 0;
  *(this + 24) = 0;
  ++*(this + 32);
  *(this + 64) = 0;
  ++*(this + 72);
  *(this + 104) = 0;
  ++*(this + 112);
  *(this + 144) = 0;
  ++*(this + 152);
  *(this + 184) = 0;
  ++*(this + 192);
  *(this + 224) = 0;
  ++*(this + 232);
  *(this + 320) = 0;
  ++*(this + 328);
  *(this + 360) = 0;
  ++*(this + 368);
  *(this + 400) = 0;
  ++*(this + 408);
  *(this + 440) = 0;
  ++*(this + 448);
  *(this + 536) = 0;
  ++*(this + 544);
  *(this + 576) = 0;
  ++*(this + 584);
  v1 = *(this + 720);
  *(this + 712) = 0;
  *(this + 720) = v1 + 2;
  *(this + 644) = 0;
  *(this + 640) = 0;
  return this;
}

unint64_t re::internal::TriangleDecimator::setMesh(re::internal::TriangleDecimator *this, const re::GeomMesh *a2)
{
  re::internal::TriangleDecimator::clear(this);
  re::internal::TriangleDecimator::convertMeshToCombinatorialMap(this, a2, v4);
  re::internal::TriangleDecimator::findCornerVertices(this, this + 384);
  re::internal::TriangleDecimator::computeQuadrics(this);
  result = re::internal::TriangleDecimator::initializeQueue(this, 0);
  *(this + 161) = *(this + 3);
  return result;
}

uint64_t re::internal::TriangleDecimator::decimateTo(re::internal::TriangleDecimator *this, unsigned int a2)
{
  for (result = *(this + 161); result > a2 && *(this + 134); *(this + 161) = result)
  {
    result = *(this + 161) - re::internal::TriangleDecimator::decimateOneEdge(this);
  }

  return result;
}

double re::internal::Quadric::computeOptimalPositionAlongEdge(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float *a4, double a5, float64x2_t a6, double a7, float64x2_t a8, double a9, float64x2_t a10, float64x2_t a11)
{
  v12 = vcvtq_f64_f32(vsub_f32(*a3, *a2));
  LODWORD(a6.f64[0]) = a2[1].i32[0];
  a8.f64[0] = (a3[1].f32[0] - *a6.f64);
  a10.f64[0] = *(a1 + 16);
  a11.f64[0] = *(a1 + 40);
  *&v13.f64[0] = vdupq_laneq_s64(*a1, 1).u64[0];
  v13.f64[1] = *(a1 + 32);
  v11.f64[0] = *(a1 + 56);
  v14 = vmulq_f64(a8, a10);
  a10.f64[1] = a11.f64[0];
  v15 = vaddq_f64(vzip1q_s64(v14, vmulq_f64(a8, a11)), vpaddq_f64(vmulq_f64(v12, *a1), vmulq_f64(v12, v13)));
  v16 = vmulq_f64(v12, a10);
  v16.f64[0] = vmulq_f64(a8, v11).f64[0] + vaddvq_f64(v16);
  v17 = -(vmulq_f64(a8, v16).f64[0] + vaddvq_f64(vmulq_f64(v12, v15)));
  *v13.f64 = v17;
  v18 = fabsf(*v13.f64);
  v19 = 0.5;
  if (v18 < 0.00001 || (v20.f64[0] = *(a1 + 24), v11.f64[0] = *(a1 + 64), v20.f64[1] = *(a1 + 48), a6.f64[0] = *a6.f64, v21 = vaddvq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(a6, v16), vmulq_f64(a8, v11)), vpaddq_f64(vmulq_f64(vcvtq_f64_f32(*a2), v15), vmulq_f64(v12, v20)))) / v17, *a4 = v21, v19 = 0.0, v21 < 0.0) || (v19 = 1.0, v21 > 1.0))
  {
    *a4 = v19;
    v21 = v19;
  }

  *&result = vaddq_f32(vmulq_n_f32(*a2->f32, 1.0 - v21), vmulq_n_f32(*a3->f32, v21)).u64[0];
  return result;
}

uint64_t re::internal::TriangleDecimator::updateEdgeData(unsigned int)::$_0::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v5 = v1[1];
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  *&v8 = v1[2];
  v9 = *(*a1 + 48);
  v10 = *(*a1 + 56);
  *&v11 = v7 * v5 * v5 + v4 * v2 * v2 + v10 * *&v8 * *&v8;
  v13 = *(*a1 + 16);
  v12 = *(*a1 + 24);
  v14 = v13 * v2 * *&v8 + v3 * v2 * v5 + v6 * v5 * *&v8 + v12 * v2 + v9 * v5;
  v16 = *(*a1 + 64);
  v15 = *(*a1 + 72);
  v17 = *&v15 + *&v11 + (v14 + v16 * *&v8) * 2.0;
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v8.i32[0] = *v18;
  v11.i32[0] = v18[1];
  v20.i32[0] = v18[2];
  v8.i32[1] = *v19;
  v21 = vcvtq_f64_f32(v8);
  v11.i32[1] = v19[1];
  v22 = vcvtq_f64_f32(v11);
  v23 = vmlaq_f64(vmulq_f64(vmulq_n_f64(v22, v7), v22), v21, vmulq_n_f64(v21, v4));
  v20.i32[1] = v19[2];
  v24 = vcvtq_f64_f32(v20);
  v25 = vmlaq_f64(v23, v24, vmulq_n_f64(v24, v10));
  v26 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(vmlaq_f64(vmulq_f64(vmulq_n_f64(v21, v13), v24), v22, vmulq_n_f64(v21, v3)), v24, vmulq_n_f64(v22, v6)), v21, v12), v22, v9), v24, v16);
  __asm { FMOV            V0.2D, #2.0 }

  v32 = vaddq_f64(vdupq_lane_s64(v15, 0), vmlaq_f64(v25, _Q0, v26));
  v33 = 24;
  v34 = 8;
  if (v17 >= v32.f64[1])
  {
    v34 = 24;
  }

  if (v32.f64[0] < v32.f64[1])
  {
    v33 = 16;
  }

  if (v17 < v32.f64[0])
  {
    v33 = v34;
  }

  return **(a1 + v33);
}

uint64_t re::internal::Quadric::optimalPositionConditionNumberTest(double *a1, float32x2_t *a2, float64x2_t a3, double a4, double a5, float64x2_t a6, float64x2_t a7, double a8, float64x2_t a9)
{
  v9 = *a1;
  v10 = a1[1];
  v12 = a1[4];
  v11 = a1[5];
  v13 = *a1 * v12;
  v14 = a1[7];
  v15 = a1[2];
  v16 = v10 * v11 * v15 + v13 * v14 + v10 * v15 * v11 + -(*a1 * v11) * v11 + -(v10 * v10) * v14 + -(v15 * v12) * v15;
  v17 = 0;
  if (v16 > 0.0)
  {
    v18 = 1.0 / v16;
    v19.f64[0] = (v12 * v14 - v11 * v11) * (1.0 / v16);
    v20.f64[0] = (v14 * -v10 + v15 * v11) * v18;
    a3.f64[0] = (v10 * v11 + -v15 * v12) * v18;
    v21 = (v9 * v14 + -v15 * v15) * v18;
    a7.f64[0] = (v10 * v15 - *a1 * v11) * v18;
    a6.f64[0] = (v13 + -v10 * v10) * v18;
    v22 = fabs(v10);
    v23 = fabs(v15);
    v24 = fabs(v9) + v22 + v23;
    v25 = fabs(v11);
    v26 = fabs(v12) + v22 + v25;
    if (v24 < v26)
    {
      v24 = v26;
    }

    v27 = fabs(v14) + v25 + v23;
    if (v24 >= v27)
    {
      v27 = v24;
    }

    v28 = fabs(v20.f64[0]);
    v29 = fabs(a3.f64[0]);
    v30 = v29 + fabs(v19.f64[0]) + v28;
    v31 = fabs(a7.f64[0]);
    v32 = v31 + v28 + fabs(v21);
    if (v30 < v32)
    {
      v30 = v32;
    }

    v33 = fabs(a6.f64[0]) + v29 + v31;
    if (v30 < v33)
    {
      v30 = v33;
    }

    v34 = v27 * v30;
    if (v34 > 0.0 && 1.0 / v34 >= 0.000001)
    {
      v19.f64[1] = v20.f64[0];
      v20.f64[1] = v21;
      v35.f64[0] = a1[3];
      a9.f64[0] = a1[8];
      v35.f64[1] = a1[6];
      v36 = vmulq_f64(a3, a9);
      a3.f64[1] = a7.f64[0];
      *a2 = vneg_f32(vcvt_f32_f64(vaddq_f64(vzip1q_s64(v36, vmulq_f64(a7, a9)), vpaddq_f64(vmulq_f64(v19, v35), vmulq_f64(v20, v35)))));
      v37 = vmulq_f64(a6, a9).f64[0] + vaddvq_f64(vmulq_f64(a3, v35));
      a2[1].f32[0] = -v37;
      return 1;
    }
  }

  return v17;
}

void *re::internal::IndexedPriorityQueue::rebalance(void *this, unsigned int a2)
{
  v2 = this;
  for (i = a2; ; a2 = i)
  {
    v4 = (2 * a2) | 1;
    v5 = v2[2];
    if (v4 < v5)
    {
      if (v5 <= v4)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_21:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_22:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_23:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v5 <= a2)
      {
        goto LABEL_22;
      }

      v6 = v2[4];
      v7 = v6 + 24 * v4;
      v8 = v6 + 24 * a2;
      v9 = *(v7 + 8);
      v10 = *(v8 + 8);
      if ((v9 - v10) * (v9 - v10) <= 1.0e-12)
      {
        v9 = *(v7 + 16);
        v10 = *(v8 + 16);
      }

      if (v9 >= v10)
      {
        i = a2;
      }

      else
      {
        i = (2 * a2) | 1;
      }
    }

    v11 = 2 * a2 + 2;
    if (v11 < v5)
    {
      if (v5 <= v11)
      {
        goto LABEL_21;
      }

      if (v5 <= i)
      {
        goto LABEL_23;
      }

      v12 = v2[4];
      v13 = v12 + 24 * v11;
      v14 = v12 + 24 * i;
      v15 = *(v13 + 8);
      v16 = *(v14 + 8);
      if ((v15 - v16) * (v15 - v16) <= 1.0e-12)
      {
        v15 = *(v13 + 16);
        v16 = *(v14 + 16);
      }

      if (v15 < v16)
      {
        i = 2 * a2 + 2;
      }
    }

    if (i == a2)
    {
      break;
    }

    this = re::internal::IndexedPriorityQueue::swap(v2, a2, i);
  }

  return this;
}

void *re::internal::IndexedPriorityQueue::swap(void *this, unsigned int a2, unsigned int a3)
{
  v3 = this[2];
  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= a3)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v4 = this[4];
  v5 = (v4 + 24 * a2);
  v6 = (v4 + 24 * a3);
  v7 = *(v5 + 2);
  v8 = *v5;
  v9 = *(v6 + 2);
  *v5 = *v6;
  *(v5 + 2) = v9;
  *v6 = v8;
  *(v6 + 2) = v7;
  v10 = this[2];
  if (v10 <= a2)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v11 = this[4];
  v12 = *(v11 + 24 * a2);
  v13 = this[7];
  if (v13 <= v12)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v14 = this[9];
  *(v14 + 4 * v12) = a2;
  if (v10 <= a3)
  {
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v15 = *(v11 + 24 * a3);
  if (v13 <= v15)
  {
    goto LABEL_13;
  }

  *(v14 + 4 * v15) = a3;
  return this;
}

uint64_t re::DynamicArray<re::GeomCell4>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::GeomCell4>::copy(a1, a2);
      }

      else
      {
        *(a1 + 16) = 0;
      }

      ++*(a1 + 24);
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::BlendNode>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::GeomCell4>::copy(a1, a2);
    }
  }

  return a1;
}

void *re::DynamicArray<re::internal::TriangleDecimator::ComponentAreaPreservationData>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 16 * a2, 8);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 16 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 16 * a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::TriangleDecimator::ComponentAreaPreservationData>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v10->i32[0]);
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = *(a2 - 1);
LABEL_105:
        *(a2 - 1) = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = v10 + 1;
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v87, v88);
            if (result)
            {
              v89 = *v86;
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v89, *(&v10->u32[-1] + v90));
                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = v86 + 1;
            v85 += 4;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v9;
          v119 = v9[1];
          v9 = v82;
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v119, v120);
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
              result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v121, *(v123 - 2));
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v9[v94];
            if (2 * v92 + 2 < v11 && re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, v95[1]))
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v9[v93];
            result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, *v96);
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v9[v99];
                v100 = 2 * v94 + 2;
                if (v100 < v11 && re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, v95[1]))
                {
                  ++v95;
                  v99 = v100;
                }

                result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v95, v97);
                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v109 - 1), v110);
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v127;
          }

          else
          {
            *v106 = *v101;
            *v101 = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v9[v113 >> 1];
              result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v115, *v106);
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v9[v114];
                  result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v115, v116);
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      v17 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(v13, *v9, v9[v12]);
      v18 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), *v9);
      if (v17)
      {
        v19 = v9[v12];
        if (v18)
        {
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v19;
        }

        else
        {
          v9[v12] = *v9;
          *v9 = v19;
          if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v19))
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v9, v9[v12]))
        {
          v23 = v9[v12];
          v9[v12] = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    v14 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(v13, v9[v12], *v9);
    v15 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v9[v12]);
    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = *(a2 - 1);
        *(a2 - 1) = v16;
      }

      else
      {
        *v9 = v9[v12];
        v9[v12] = v16;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v16))
        {
          v24 = v9[v12];
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9[v12];
      v9[v12] = *(a2 - 1);
      *(a2 - 1) = v20;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v12], *v9))
      {
        v21 = *v9;
        *v9 = v9[v12];
        v9[v12] = v21;
      }
    }

    v25 = v12 - 1;
    v26 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v12 - 1], v9[1]);
    v27 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 2), v9[v12 - 1]);
    if (v26)
    {
      v28 = v9[1];
      if (v27)
      {
        v9[1] = *(a2 - 2);
        *(a2 - 2) = v28;
      }

      else
      {
        v9[1] = v9[v25];
        v9[v25] = v28;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 2), v28))
        {
          v32 = v9[v25];
          v9[v25] = *(a2 - 2);
          *(a2 - 2) = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9[v25];
      v9[v25] = *(a2 - 2);
      *(a2 - 2) = v29;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v25], v9[1]))
      {
        v30 = v9[1];
        v9[1] = v9[v25];
        v9[v25] = v30;
      }
    }

    v33 = v12 + 1;
    v34 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v12 + 1], v9[2]);
    v35 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 3), v9[v12 + 1]);
    if (v34)
    {
      v36 = v9[2];
      if (v35)
      {
        v9[2] = *(a2 - 3);
        *(a2 - 3) = v36;
      }

      else
      {
        v9[2] = v9[v33];
        v9[v33] = v36;
        if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 3), v36))
        {
          v39 = v9[v33];
          v9[v33] = *(a2 - 3);
          *(a2 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9[v33];
      v9[v33] = *(a2 - 3);
      *(a2 - 3) = v37;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v33], v9[2]))
      {
        v38 = v9[2];
        v9[2] = v9[v33];
        v9[v33] = v38;
      }
    }

    v40 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v12], v9[v25]);
    v41 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v33], v9[v12]);
    if (!v40)
    {
      v43 = v9[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v9[v33];
      v9[v12] = v44;
      v9[v33] = v43;
      v45 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v44, v9[v25]);
      v43 = v9[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9[v25];
      v9[v25] = v43;
      v9[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9[v25];
    if (v41)
    {
      v9[v25] = v9[v33];
      v9[v33] = v42;
      v43 = v9[v12];
    }

    else
    {
      v9[v25] = v9[v12];
      v9[v12] = v42;
      v47 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9[v33], v42);
      v43 = v9[v12];
      if (v47)
      {
        v46 = v9[v33];
        v9[v12] = v46;
        v9[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    v9[v12] = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    if ((a5 & 1) != 0 || (v50 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(v9 - 1), *v9), v49 = *v9, v50))
    {
      v51 = 0;
        ;
      }

      v53 = &v9[v51];
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }

        while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v56, v49));
      }

      else
      {
        do
        {
          v55 = *--v54;
        }

        while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v55, v49));
      }

      if (v53 >= v54)
      {
        v62 = v53 - 1;
      }

      else
      {
        v57 = &v9[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          while (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v60, v49));
          do
          {
            v61 = *--v58;
          }

          while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v61, v49));
        }

        while (v57 < v58);
        v62 = v57 - 1;
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = *v62;
      }

      *v62 = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v63 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *>(v9, v62, a3);
      v10 = (v62 + 1);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *>((v62 + 1), a2, a3);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        result = std::__introsort<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,false>(v9, v62, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v62 + 1);
      }
    }

    else
    {
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v9, *(a2 - 1));
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v64);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v9 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 4);
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v10->i32[0]);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v67);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v69));
        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
          result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v49, v70);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {

      return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], a2 - 1, a3);
    }

    if (v11 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(v10, v10 + 1, &v10[1], &v10[1] + 1, a3);
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v10[1].u32[1]);
      if (!result)
      {
        return result;
      }

      v72 = v10[1].u32[1];
      v10[1].i32[1] = *(a2 - 1);
      *(a2 - 1) = v72;
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v10[1].u32[1], v10[1].u32[0]);
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v73, v75);
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->i32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  v80 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v10->u32[1], v10->i32[0]);
  result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v10->u32[1]);
  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->u32[1];
    v10->i32[1] = *(a2 - 1);
    *(a2 - 1) = v118;
    v78 = v10->i32[0];
    v76 = v10->u32[1];
LABEL_166:
    result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v76, v78);
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->i32[0];
  if (result)
  {
    v10->i32[0] = *(a2 - 1);
    *(a2 - 1) = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v81);
    if (result)
    {
      v79 = v10->u32[1];
      v10->i32[1] = *(a2 - 1);
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 752);
  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 768) + 4 * a2) < *(*(a1 + 768) + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t *a5)
{
  v10 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a2, *a1);
  v11 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a5, *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *>(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v6 = (a2 - a1) >> 2;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 4), *a1);
        v16 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), *(a1 + 4));
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = *(a1 + 4);
          *(a1 + 4) = v17;
          if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), v17))
          {
            return 1;
          }

          v7 = *(a1 + 4);
          *(a1 + 4) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = *(a1 + 4);
        *(a1 + 4) = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = *(a1 + 4);
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), a2 - 1, a3);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)::$_0 &,unsigned int *,0>(a1, (a1 + 4), (a1 + 8), (a1 + 12), a3);
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), *(a1 + 12)))
        {
          return 1;
        }

        v8 = *(a1 + 12);
        *(a1 + 12) = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 12), *(a1 + 8)))
        {
          return 1;
        }

        v10 = *(a1 + 8);
        v9 = *(a1 + 12);
        v11 = *(a1 + 4);
        *(a1 + 8) = v9;
        *(a1 + 12) = v10;
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v9, v11))
        {
          return 1;
        }

        v13 = *(a1 + 4);
        v12 = *(a1 + 8);
        v14 = *a1;
        *(a1 + 4) = v12;
        *(a1 + 8) = v13;
        break;
      default:
        goto LABEL_17;
    }

    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v12, v14))
    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v18 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 4), *a1);
  v19 = (a1 + 8);
  v20 = re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *(a1 + 8), *(a1 + 4));
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = *(a1 + 8);
      *(a1 + 8) = v21;
    }

    else
    {
      v26 = *(a1 + 8);
      *a1 = *(a1 + 4);
      *(a1 + 4) = v21;
      if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v26, v21))
      {
        *(a1 + 4) = vrev64_s32(*(a1 + 4));
      }
    }
  }

  else if (v20)
  {
    v24 = *(a1 + 4);
    v23 = *(a1 + 8);
    v25 = *a1;
    *(a1 + 4) = v23;
    *(a1 + 8) = v24;
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v23, v25))
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = (a1 + 12);
  if ((a1 + 12) == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    if (re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, *v27, *v19))
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 12) = *(a1 + v31 + 8);
        if (v31 == -8)
        {
          break;
        }

        v31 -= 4;
        if (!re::internal::TriangleDecimator::findSmallConnectedComponents(re::DynamicArray<BOOL> &)const::$_0::operator()(*a3, v30, *(v32 + 4)))
        {
          v33 = (a1 + v31 + 12);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 4;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

void *re::DynamicArray<re::internal::Quadric>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v4)
      {
        result = re::DynamicArray<re::internal::Quadric>::setCapacity(v4, a2);
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 80 * a2, 8);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 80 * a2, *(*v4 + 8));
          result = _os_crash();
          __break(1u);
          return result;
        }

        v6 = result;
        if (!v4[1])
        {
          goto LABEL_14;
        }
      }

      else
      {
        v6 = 0;
        if (!v2)
        {
LABEL_14:
          v4[4] = v6;
          v4[1] = a2;
          return result;
        }
      }

      v7 = v4[4];
      v8 = v4[2];
      if (v8)
      {
        v9 = (v7 + 80 * v8);
        v10 = v6;
        v11 = v4[4];
        do
        {
          *v10 = *v11;
          v10[1] = v11[1];
          v10[2] = v11[2];
          v10[3] = v11[3];
          v10[4] = v11[4];
          v11 += 5;
          v10 += 5;
        }

        while (v11 != v9);
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_14;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::TriangleDecimator::EdgeData>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 32 * a2, 16);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 32 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 32 * a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::internal::TriangleDecimator::EdgeData>::setCapacity(v4, a2);
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void *re::DynamicOverflowArray<unsigned long long,3ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

BOOL re::snapshot::DecoderOPACK::field<1,re::Vector3<float>>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::internal::opack::decode<float,3>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,re::Vector3<float>>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    re::internal::opack::decode<float,3>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

unsigned int *re::snapshotMapFields<re::snapshot::EncoderOPACK>(re::snapshot::EncoderOPACK *this, char *a2)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 9;
  }

  re::internal::opack::encode<float,3>(this, a2);
  v6 = *(this + 4);
  if (v6 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 2);
  }

  else
  {
    v7 = *(this + 1);
    *(this + 4) = v6 + 1;
    *(v7 + v6) = 10;
  }

  return re::internal::opack::encode<float,3>(this, a2 + 16);
}

void *re::allocInfo_AABB(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_422, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_422))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6CF0, "AABB");
    __cxa_guard_release(&_MergedGlobals_422);
  }

  return &unk_1EE1B6CF0;
}

void re::initInfo_AABB(re *this, re::IntrospectionBase *a2)
{
  v13[0] = 4001984;
  v13[1] = "AABB";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1B6CB0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6CB0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_Vector3F(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "min";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B6CC8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "max";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B6CD0 = v11;
      __cxa_guard_release(&qword_1EE1B6CB0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B6CC8;
  *(this + 9) = re::internal::defaultConstruct<re::AABB>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AABB>;
  *(this + 13) = re::internal::defaultConstructV2<re::AABB>;
  *(this + 14) = re::internal::defaultDestructV2<re::AABB>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v12 = v14;
}

float32x4_t re::internal::defaultConstruct<re::AABB>(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *a3 = vnegq_f32(result);
  a3[1] = result;
  return result;
}

float32x4_t re::internal::defaultConstructV2<re::AABB>(float32x4_t *a1)
{
  result.i64[0] = 0x7F0000007FLL;
  result.i64[1] = 0x7F0000007FLL;
  *a1 = vnegq_f32(result);
  a1[1] = result;
  return result;
}

void *re::allocInfo_RayF(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6CB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6CB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6D80, "RayF");
    __cxa_guard_release(&qword_1EE1B6CB8);
  }

  return &unk_1EE1B6D80;
}

void re::initInfo_RayF(re *this, re::IntrospectionBase *a2)
{
  v17[0] = 5079800;
  v17[1] = "RayF";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1B6CC0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6CC0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_Vector3F(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "origin";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B6CD8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "direction";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1000000002;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B6CE0 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "length";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1B6CE8 = v15;
      __cxa_guard_release(&qword_1EE1B6CC0);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 16;
  *(this + 14) = 1;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1B6CD8;
  *(this + 9) = re::internal::defaultConstruct<re::RayF>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::RayF>;
  *(this + 13) = re::internal::defaultConstructV2<re::RayF>;
  *(this + 14) = re::internal::defaultDestructV2<re::RayF>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v16 = v18;
}

double re::internal::defaultConstruct<re::RayF>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RayF>(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

float32x4_t *re::computeAABB@<X0>(re *this@<X0>, float32x4_t *a2@<X8>)
{
  v4 = a2;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v5);
  *a2 = v14;
  a2[1] = v5;
  result = re::GeomMesh::accessVertexPositions(this);
  v8 = *(this + 4);
  if (v8)
  {
    v9.i64[0] = 0x7F0000007FLL;
    v9.i64[1] = 0x7F0000007FLL;
    v10 = v14;
    if (v7)
    {
      v10 = vnegq_f32(v9);
      v11 = v8 - 1;
      v12 = v7;
      while (1)
      {
        v13 = *result;
        v10.i32[3] = 0;
        v13.i32[3] = 0;
        v10 = vminnmq_f32(v10, v13);
        v9.i32[3] = 0;
        v9 = vmaxnmq_f32(v9, v13);
        if (!v11)
        {
          break;
        }

        --v11;
        ++result;
        if (!--v12)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      *v4 = v10;
      v4[1] = v9;
      v4 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      result = _os_crash_msg();
      __break(1u);
    }

    *v4 = v10;
    v4[1] = v9;
  }

  return result;
}

uint64_t re::computeOrientedBoundingBox@<X0>(re *this@<X0>, _OWORD *a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(this + 4);
  v19 = 0;
  v16[1] = 0;
  v17 = 0;
  v16[0] = 0;
  v18 = 0;
  re::DynamicArray<re::Vector3<float>>::resize(v16, v6);
  v7 = re::GeomMesh::accessVertexPositions(this);
  if (v6)
  {
    v9 = 0;
    v10 = v8;
    do
    {
      if (v9 == v8)
      {
        v20 = 0;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        v24 = 613;
        v25 = 2048;
        v26 = v10;
        v27 = 2048;
        v28 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_11:
        v20 = 0;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v21 = 136315906;
        v22 = "operator[]";
        v23 = 1024;
        v24 = 789;
        v25 = 2048;
        v26 = v9;
        v27 = 2048;
        v28 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v3 = v17;
      if (v17 <= v9)
      {
        goto LABEL_11;
      }

      *(v19 + 16 * v9) = *(v7 + 16 * v9);
      ++v9;
    }

    while (v9 != v6);
  }

  *&v11 = MEMORY[0x1E69070C0](v17, v19);
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  a2[3] = v14;
  result = v16[0];
  if (v16[0])
  {
    if (v19)
    {
      return (*(*v16[0] + 40))();
    }
  }

  return result;
}

float32x2_t *re::transform(re::GeomMesh *a1, float32x4_t *a2)
{
  v4 = re::GeomMesh::modifyVertexPositions(a1);
  v6 = v5;
  if (v5)
  {
    do
    {
      *v4->f32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*v4->f32)), a2[1], *v4, 1), a2[2], *v4->f32, 2);
      v4 += 2;
      --v6;
    }

    while (v6);
  }
}

{
  v4 = a2[1];
  v5 = a2[2];
  v11[0] = *a2;
  v11[1] = v4;
  v11[2] = v5;
  v6 = re::GeomMesh::modifyVertexPositions(a1);
  v8 = v7;
  if (v7)
  {
    do
    {
      v9 = vaddq_f32(a2[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a2, COERCE_FLOAT(*v6->f32)), a2[1], *v6, 1), a2[2], *v6->f32, 2));
      *v6->f32 = vdivq_f32(v9, vdupq_laneq_s32(v9, 3));
      v6 += 2;
      --v8;
    }

    while (v8);
  }
}

double re::anonymous namespace::transformMeshTangents(uint64_t a1, float32x4_t *a2)
{
  v4 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexTangent");
  if (v4 && *(v4 + 17) == 7)
  {
    v5 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexTangent");
    v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v5);
    v12 = v6;
  }

  v7 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexBitangent");
  if (v7)
  {
    if (*(v7 + 17) == 7)
    {
      v9 = re::internal::GeomAttributeManager::attributeByName((a1 + 64), "vertexBitangent");
      v11 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v9);
      v12 = v10;
    }
  }

  return result;
}

float32x2_t *re::anonymous namespace::transformMeshNormals(float32x2_t *result, uint64_t a2)
{
  v2.columns[1] = *(a2 + 16);
  v2.columns[2] = *(a2 + 32);
  v3 = vmulq_f32(*a2, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v2.columns[2], v2.columns[2], 0xCuLL), v2.columns[2], 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v2.columns[1], v2.columns[1]), v2.columns[1], 0xCuLL))), vextq_s8(vuzp1q_s32(v2.columns[2], v2.columns[2]), v2.columns[2], 0xCuLL), vextq_s8(vextq_s8(v2.columns[1], v2.columns[1], 0xCuLL), v2.columns[1], 8uLL)));
  if (fabsf(v3.f32[2] + vaddv_f32(*v3.f32)) >= 1.0e-15)
  {
    v4 = result;
    v2.columns[0] = *a2;
    v17 = __invert_f3(v2);
    v15 = v17.columns[2];
    v16 = v17.columns[0];
    v14 = v17.columns[1];
    result = re::internal::GeomAttributeManager::attributeByName(&v4[8], "vertexNormal");
    if (result)
    {
      if (result[2].i8[1] == 7)
      {
        v5 = re::internal::GeomAttributeManager::attributeByName(&v4[8], "vertexNormal");
        result = re::GeomAttribute::modifyValues<re::Vector3<float>>(v5);
        v7 = v6;
        if (v6)
        {
          v8 = vzip1q_s32(v16, v14);
          v8.i32[2] = v15.i32[0];
          v9 = vzip2q_s32(vzip1q_s32(v16, v15), vdupq_lane_s32(*v14.i8, 1));
          v10 = vzip2q_s32(v16, v14);
          v10.i32[2] = v15.i32[2];
          do
          {
            v11 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*result->f32)), v9, *result, 1), v10, *result->f32, 2);
            v12 = vmulq_f32(v11, v11);
            *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
            *v12.f32 = vrsqrte_f32(v13);
            *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
            *result->f32 = vmulq_n_f32(v11, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
            result += 2;
            --v7;
          }

          while (v7);
        }
      }
    }
  }

  return result;
}

uint64_t re::computeVertexFaceConnectivity(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3;
  v8 = a1;
  v43 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 16);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  LODWORD(v38) = 0;
  re::DynamicArray<unsigned int>::resize(a3, v9, &v38);
  v10 = *(v8 + 40);
  v11 = v10;
  if (!v10)
  {
    v13 = 0;
    goto LABEL_13;
  }

  v12 = 0;
  v13 = 0;
  v14 = *(v8 + 56);
  v4 = *(v6 + 16);
  do
  {
    if (v12 == v10)
    {
      goto LABEL_41;
    }

    v15 = 0;
    *v33 = *(v14 + 16 * v12);
    v16 = *(v6 + 32);
    if (*&v33[12] == -1)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    v13 = (v13 + v17);
    do
    {
      v3 = *&v33[4 * v15];
      if (v4 <= v3)
      {
        *&v29 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v30 = 136315906;
        *&v30[4] = "operator[]";
        *&v30[12] = 1024;
        *&v30[14] = 789;
        *&v30[18] = 2048;
        *&v30[20] = v3;
        v31 = 2048;
        *v32 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v33 = 136315906;
        *&v33[4] = "operator[]";
        *&v33[12] = 1024;
        *&v33[14] = 789;
        v34 = 2048;
        v35 = v9;
        v36 = 2048;
        v37 = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_40:
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v33 = 136315906;
        *&v33[4] = "operator[]";
        *&v33[12] = 1024;
        *&v33[14] = 789;
        v34 = 2048;
        v35 = v3;
        v36 = 2048;
        v37 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        *v33 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v30 = 136315906;
        *&v30[4] = "operator[]";
        *&v30[12] = 1024;
        *&v30[14] = 797;
        *&v30[18] = 2048;
        *&v30[20] = v10;
        v31 = 2048;
        *v32 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        *&v29 = 0;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v33 = 136315906;
        *&v33[4] = "operator[]";
        *&v33[12] = 1024;
        *&v33[14] = 797;
        v34 = 2048;
        v35 = v13;
        v36 = 2048;
        v37 = v13;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_43;
      }

      ++*(v16 + 4 * v3);
      ++v15;
    }

    while (v17 != v15);
    ++v12;
  }

  while (v12 != v10);
LABEL_13:
  *&v32[2] = 0;
  memset(v30, 0, sizeof(v30));
  if (v9)
  {
    re::DynamicArray<float>::resize(v30, v9);
    v4 = *&v30[16];
    if (!*&v30[16])
    {
      goto LABEL_46;
    }

    v18 = *&v32[2];
    **&v32[2] = 0;
    if (v9 != 1)
    {
      v5 = 0;
      v10 = *(v6 + 16);
      if (v10 <= 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = *(v6 + 16);
      }

      v19 = v18 + 4;
      v20 = (*(v6 + 32) + 4);
      while (v10 != v5)
      {
        if (v4 - 1 == v5)
        {
          goto LABEL_44;
        }

        v21 = *(v20 - 1);
        *(v19 + 4 * v5) = v21;
        if (v3 - 1 == v5)
        {
          goto LABEL_45;
        }

        *v20++ += v21;
        if (v9 - 1 == ++v5)
        {
          goto LABEL_24;
        }
      }

LABEL_43:
      *&v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v33 = 136315906;
      *&v33[4] = "operator[]";
      *&v33[12] = 1024;
      *&v33[14] = 789;
      v34 = 2048;
      v35 = v5;
      v36 = 2048;
      v37 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_44:
      *&v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v33 = 136315906;
      *&v33[4] = "operator[]";
      *&v33[12] = 1024;
      *&v33[14] = 789;
      v34 = 2048;
      v35 = v4;
      v36 = 2048;
      v37 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_45:
      *&v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v33 = 136315906;
      *&v33[4] = "operator[]";
      *&v33[12] = 1024;
      *&v33[14] = 789;
      v34 = 2048;
      v35 = v3;
      v36 = 2048;
      v37 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_46:
      *&v29 = 0;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v33 = 136315906;
      *&v33[4] = "operator[]";
      *&v33[12] = 1024;
      *&v33[14] = 789;
      v34 = 2048;
      v35 = 0;
      v36 = 2048;
      v37 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

LABEL_24:
  re::DynamicArray<float>::resize(a2, v13);
  if (v11)
  {
    v22 = 0;
    v13 = *(v8 + 40);
    v23 = *(v8 + 56);
    v8 = *&v30[16];
    while (v22 != v13)
    {
      v24 = 0;
      v29 = *(v23 + 16 * v22);
      v25 = *&v32[2];
      v6 = *(a2 + 16);
      v26 = *(a2 + 32);
      if (HIDWORD(v29) == -1)
      {
        v27 = 3;
      }

      else
      {
        v27 = 4;
      }

      do
      {
        v9 = *&v30[4 * v24 - 16];
        if (v8 <= v9)
        {
          goto LABEL_39;
        }

        v3 = *(v25 + 4 * v9);
        *(v25 + 4 * v9) = v3 + 1;
        if (v6 <= v3)
        {
          goto LABEL_40;
        }

        *(v26 + 4 * v3) = v22;
        ++v24;
      }

      while (v27 != v24);
      if (++v22 == v11)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_42;
  }

LABEL_34:
  result = *v30;
  if (*v30)
  {
    if (*&v32[2])
    {
      return (*(**v30 + 40))();
    }
  }

  return result;
}

uint64_t re::mergeContinuousFaceVaryingAttributeValues(re *this, re::GeomMesh *a2, const char *a3, double a4)
{
  v9 = this;
  v10 = v318;
  v337 = *MEMORY[0x1E69E9840];
  v11 = re::internal::GeomAttributeManager::attributeByName((this + 64), a2);
  v13 = v11;
  v14 = v11[17];
  if (v14 <= 5)
  {
    if (v14 != 4)
    {
      if (v14 != 5)
      {
LABEL_700:
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) The attribute is not a continuous (float or vector) type.", "!Unreachable code", "mergeContinuousFaceVaryingAttributeValues", 564);
        _os_crash();
        __break(1u);
LABEL_701:
        re::internal::assertLog(4, v35, "assertion failure: '%s' (%s:line %i) k-d tree failed to build.", "!Unreachable code", "computeRepresentativeValuesAndReducedIndicesContinuous", 245);
        _os_crash();
        __break(1u);
LABEL_702:
        *v327 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 621;
        *&v318[18] = 2048;
        *&v318[20] = 0;
        v319 = 2048;
        *v320 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_703:
        *v327 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 621;
        *&v318[18] = 2048;
        *&v318[20] = 0;
        v319 = 2048;
        *v320 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_704;
      }

      result = (*(*v11 + 16))(v11);
      if (!result)
      {
        return result;
      }

      v311 = 0;
      v308 = 0;
      v309 = 0;
      v306 = 0;
      v307 = 0;
      v310 = 0;
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v16 = (*(*v13 + 16))(v13);
      if (v16)
      {
        v19 = re::GeomAttribute::accessValues<int>(v13);
        if (!v20)
        {
          goto LABEL_694;
        }

        v4 = v19;
      }

      else
      {
        v4 = 0;
      }

      v326 = 0;
      v10 = v16;
      *(&v324 + 1) = v16;
      memset(v325, 0, 28);
      *&v324 = v4;
      v317 = 0;
      v314 = 0;
      v315 = 0;
      v313 = 0;
      v316 = 0;
      re::DynamicArray<float>::resize(&v313, v16);
      if (v16)
      {
        v28 = 0;
        v29 = v315;
        v59 = v317;
        do
        {
          if (v29 <= v28)
          {
            goto LABEL_614;
          }

          v59[v28] = v28;
          ++v28;
        }

        while (v16 != v28);
        v60 = 0;
        *&v325[1] = 0;
        ++DWORD2(v325[1]);
        if (*(&v325[0] + 1) < v16)
        {
          re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v325, v16);
          v60 = *&v325[1];
        }

        v61 = v16 - v60;
        if (v16 > v60 && v61 >= 1)
        {
          v62 = &v326[3 * v60];
          v63 = v61 + 1;
          do
          {
            *v62 = 0;
            v62[1] = 0;
            *(v62 + 4) = -1;
            *(v62 + 20) = 0;
            v62 += 3;
            --v63;
          }

          while (v63 > 1);
        }

        *&v325[1] = v16;
      }

      else
      {
        *&v325[1] = 0;
      }

      ++DWORD2(v325[1]);
      if (*(&v324 + 1))
      {
        LODWORD(v332) = 0;
        re::internal::GeomKDTree<double>::buildHelper(&v324, 0, v16, &v313, &v332);
      }

      if (v313 && v317)
      {
        (*(*v313 + 40))();
      }

      v309 = 0;
      ++v310;
      v304 = 0;
      ++v305;
      re::DynamicArray<unsigned int>::resize(&v307, v16, &re::kInvalidMeshIndex);
      LOBYTE(v332) = 0;
      re::DynamicArray<unsigned char>::resize(&v302, v16, &v332);
      v317 = 0;
      v314 = 0;
      v315 = 0;
      v313 = 0;
      v316 = 0;
      if (v16)
      {
        v16 = 0;
        v29 = 1;
        do
        {
          v28 = v309;
          if (v309 <= v16)
          {
            goto LABEL_625;
          }

          if (*(v311 + 4 * v16) == -1)
          {
            v315 = 0;
            v316 += 2;
            v100 = *&v325[1];
            if (*&v325[1] && (re::internal::GeomKDTree<double>::findWithinRadiusHelper(&v324, v326, (v4 + 8 * v16), &v313, a4), v100 = v315, v315))
            {
              v101 = 0;
              v102 = *v317;
            }

            else
            {
              v101 = 1;
              v102 = v16;
            }

            v28 = v309;
            if (v309 <= v16)
            {
              goto LABEL_663;
            }

            *(v311 + 4 * v16) = v102;
            v28 = v304;
            if (v304 <= v16)
            {
              goto LABEL_667;
            }

            v306[v16] = 1;
            if ((v101 & 1) == 0)
            {
              v103 = 0;
              v40 = v315;
              v104 = v317;
              v6 = v309;
              v105 = v311;
              do
              {
                if (v40 == v103)
                {
                  goto LABEL_506;
                }

                v5 = v104[v103];
                if (v6 <= v5)
                {
                  goto LABEL_510;
                }

                *(v105 + 4 * v5) = v16;
                ++v103;
              }

              while (v100 != v103);
            }
          }

          ++v16;
        }

        while (v16 != v10);
        if (v313 && v317)
        {
          (*(*v313 + 40))();
        }
      }

      if (*&v325[0] && v326)
      {
        (*(**&v325[0] + 40))();
      }

      *&v325[1] = 0;
      *&v325[0] = 0;
      v324 = 0uLL;
      DWORD2(v325[0]) = 0;
      v317 = 0;
      v314 = 0;
      v315 = 0;
      v313 = 0;
      v316 = 0;
      v106 = (*(*v13 + 16))(v13);
      v107 = v106;
      if (v106)
      {
        v4 = v304;
        if (v304 <= v106 - 1)
        {
          goto LABEL_699;
        }

        LODWORD(v108) = 0;
        v109 = v306;
        v4 = v106;
        v110 = v106;
        do
        {
          v111 = *v109++;
          v108 = (v108 + v111);
          --v110;
        }

        while (v110);
      }

      else
      {
        v4 = 0;
        v108 = 0;
      }

      v10 = re::GeomAttribute::accessValues<int>(v13);
      LODWORD(v28) = v182;
      re::DynamicArray<double>::resize(&v324, v108);
      re::DynamicArray<unsigned int>::resize(&v313, v4, &re::kInvalidMeshIndex);
      if (v107)
      {
        v29 = 0;
        v184 = 0;
        v16 = v304;
        v185 = v306;
        v6 = v315;
        v186 = v317;
        v28 = v28;
        v7 = *&v325[0];
        v187 = *&v325[1];
        do
        {
          if (v16 == v29)
          {
            goto LABEL_617;
          }

          if (v185[v29])
          {
            if (v6 <= v29)
            {
              goto LABEL_644;
            }

            v186[v29] = v184;
            if (v29 >= v28)
            {
              goto LABEL_648;
            }

            v5 = v184;
            if (v7 <= v184)
            {
              goto LABEL_652;
            }

            *(v187 + 8 * v184++) = *(v10 + 8 * v29);
          }

          ++v29;
        }

        while (v4 != v29);
        v10 = 0;
        v188 = v306;
        v28 = v309;
        v189 = v311;
        v29 = v315;
        v190 = v317;
        do
        {
          if (v16 == v10)
          {
            goto LABEL_629;
          }

          if (!v188[v10])
          {
            if (v28 <= v10)
            {
              goto LABEL_671;
            }

            v6 = *(v189 + 4 * v10);
            if (v29 <= v6)
            {
              goto LABEL_675;
            }

            if (v29 <= v10)
            {
              goto LABEL_679;
            }

            v190[v10] = v190[v6];
          }

          ++v10;
        }

        while (v4 != v10);
      }

      v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v183);
      v4 = *&v325[0];
      v6 = *(v10 + 24);
      v16 = v6;
      *&v323[2] = 0;
      memset(v321, 0, sizeof(v321));
      re::DynamicArray<re::GeomCell4>::resize(v321, v6);
      if (v6)
      {
        v191 = 0;
        v29 = *&v321[16];
        v192 = *&v323[2];
        v28 = *(v10 + 24);
        v193 = *(v10 + 40);
        v7 = v315;
        do
        {
          if (v191 == v29)
          {
            goto LABEL_635;
          }

          if (v191 == v28)
          {
            goto LABEL_639;
          }

          v194 = 0;
          *v327 = *(v193 + 16 * v191);
          v195 = v317;
          if (*&v327[12] == -1)
          {
            v196 = 3;
          }

          else
          {
            v196 = 4;
          }

          do
          {
            v5 = *&v327[4 * v194];
            if (v7 <= v5)
            {
              goto LABEL_440;
            }

            *(v192 + 4 * v194++) = v195[v5];
          }

          while (v196 != v194);
          ++v191;
          v192 += 16;
        }

        while (v191 != v6);
      }

      if (*(v10 + 48))
      {
        v197 = *(v10 + 60) == 0;
      }

      else
      {
        v197 = 1;
      }

      if (v197 && *(v9 + 10) == v6)
      {
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321);
        goto LABEL_590;
      }

      *&v320[2] = 0;
      memset(v318, 0, sizeof(v318));
      re::DynamicArray<unsigned int>::resize(v318, v6, &re::kInvalidMeshIndex);
      v200 = *(v10 + 60);
      if (v200 == 2)
      {
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v299, v10 + 64);
        LOBYTE(v298) = 2;
        v259 = *(v10 + 60);
        if (!*(v10 + 60))
        {
LABEL_500:
          v260 = *(v10 + 64);
          LOBYTE(v295) = 0;
          LODWORD(v296) = v260;
LABEL_586:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v298, &v295) & 1) == 0)
          {
            v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v293);
            v292 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v291);
            v16 = v292;
            v29 = *&v318[16];
            if (*&v318[16] <= v292)
            {
              goto LABEL_684;
            }

            *(*&v320[2] + 4 * v292) = HIDWORD(v10);
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v298);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v295, v293);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v298, v294);
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321, v318);
          if (*v318 && *&v320[2])
          {
            (*(**v318 + 40))();
          }

LABEL_590:
          if ((*(*v13 + 16))(v13))
          {
            if (!*(v13 + 5))
            {
              goto LABEL_689;
            }

            v9 = *(v13 + 7);
            if ((*(*v13 + 16))(v13))
            {
              goto LABEL_593;
            }
          }

LABEL_704:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 621;
          *&v318[18] = 2048;
          *&v318[20] = 0;
          v319 = 2048;
          *v320 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_705;
        }

        if (v259 == 2)
        {
          LOBYTE(v295) = 2;
          v296 = v10 + 64;
          v297 = xmmword_1E3049610;
          goto LABEL_586;
        }

        if (v259 != 1)
        {
          goto LABEL_714;
        }

        v249 = *(v10 + 48);
      }

      else
      {
        if (v200 != 1)
        {
          if (*(v10 + 60))
          {
            goto LABEL_709;
          }

          LOBYTE(v298) = 0;
          LODWORD(v299) = 0;
          goto LABEL_500;
        }

        v249 = *(v10 + 48);
        if (v249)
        {
          v250 = *(v10 + 96);
          v251 = *(v10 + 52);
          v252 = *(v10 + 80);
          v253 = v250 + 4 * v252;
          LOBYTE(v298) = 1;
          if (v250)
          {
            v254 = v250 + 4 * v251;
            if (v252 != v251)
            {
              v254 -= 4;
              v255 = 4 * v252 - 4 * v251;
              do
              {
                v257 = *(v254 + 4);
                v254 += 4;
                v256 = v257;
                if (!v255)
                {
                  break;
                }

                v255 -= 4;
              }

              while (v256 == -1);
            }
          }

          else
          {
            v254 = 0;
          }

          v299 = v250;
          v300 = v254;
          v301 = v253;
        }

        else
        {
          LOBYTE(v298) = 1;
          v300 = 0;
          v301 = 0;
          v299 = 0;
        }
      }

      if (v249)
      {
        v289 = *(v10 + 96);
        v290 = v289 + 4 * *(v10 + 80);
        LOBYTE(v295) = 1;
        v296 = v289;
        *&v297 = v290;
        *(&v297 + 1) = v290;
      }

      else
      {
        LOBYTE(v295) = 1;
        v297 = 0uLL;
        v296 = 0;
      }

      goto LABEL_586;
    }

    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v311 = 0;
    v308 = 0;
    v309 = 0;
    v306 = 0;
    v307 = 0;
    v310 = 0;
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v16 = (*(*v13 + 16))(v13);
    if (v16)
    {
      v26 = re::GeomAttribute::accessValues<int>(v13);
      if (!v27)
      {
        goto LABEL_692;
      }

      v4 = v26;
    }

    else
    {
      v4 = 0;
    }

    v326 = 0;
    v10 = v16;
    *(&v324 + 1) = v16;
    memset(v325, 0, 28);
    *&v324 = v4;
    v317 = 0;
    v314 = 0;
    v315 = 0;
    v313 = 0;
    v316 = 0;
    re::DynamicArray<float>::resize(&v313, v16);
    if (v16)
    {
      v28 = 0;
      v29 = v315;
      v49 = v317;
      do
      {
        if (v29 <= v28)
        {
          goto LABEL_612;
        }

        v49[v28] = v28;
        ++v28;
      }

      while (v16 != v28);
      v50 = 0;
      *&v325[1] = 0;
      ++DWORD2(v325[1]);
      if (*(&v325[0] + 1) < v16)
      {
        re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v325, v16);
        v50 = *&v325[1];
      }

      v51 = v16 - v50;
      if (v16 > v50 && v51 >= 1)
      {
        v52 = &v326[3 * v50];
        v53 = v51 + 1;
        do
        {
          *v52 = 0;
          v52[1] = 0;
          *(v52 + 4) = -1;
          *(v52 + 20) = 0;
          v52 += 3;
          --v53;
        }

        while (v53 > 1);
      }

      *&v325[1] = v16;
    }

    else
    {
      *&v325[1] = 0;
    }

    ++DWORD2(v325[1]);
    if (*(&v324 + 1))
    {
      LODWORD(v332) = 0;
      re::internal::GeomKDTree<float>::buildHelper(&v324, 0, v16, &v313, &v332);
    }

    if (v313 && v317)
    {
      (*(*v313 + 40))();
    }

    v309 = 0;
    ++v310;
    v304 = 0;
    ++v305;
    re::DynamicArray<unsigned int>::resize(&v307, v16, &re::kInvalidMeshIndex);
    LOBYTE(v332) = 0;
    re::DynamicArray<unsigned char>::resize(&v302, v16, &v332);
    v317 = 0;
    v314 = 0;
    v315 = 0;
    v313 = 0;
    v316 = 0;
    if (v16)
    {
      v16 = 0;
      v29 = 1;
      do
      {
        v28 = v309;
        if (v309 <= v16)
        {
          goto LABEL_623;
        }

        if (*(v311 + 4 * v16) == -1)
        {
          v315 = 0;
          v316 += 2;
          v76 = *&v325[1];
          if (*&v325[1] && (re::internal::GeomKDTree<float>::findWithinRadiusHelper(&v324, v326, (v4 + 4 * v16), &v313, a4), v76 = v315, v315))
          {
            v77 = 0;
            v78 = *v317;
          }

          else
          {
            v77 = 1;
            v78 = v16;
          }

          v28 = v309;
          if (v309 <= v16)
          {
            goto LABEL_661;
          }

          *(v311 + 4 * v16) = v78;
          v28 = v304;
          if (v304 <= v16)
          {
            goto LABEL_665;
          }

          v306[v16] = 1;
          if ((v77 & 1) == 0)
          {
            v79 = 0;
            v40 = v315;
            v80 = v317;
            v6 = v309;
            v81 = v311;
            do
            {
              if (v40 == v79)
              {
                goto LABEL_504;
              }

              v5 = v80[v79];
              if (v6 <= v5)
              {
                goto LABEL_508;
              }

              *(v81 + 4 * v5) = v16;
              ++v79;
            }

            while (v76 != v79);
          }
        }

        ++v16;
      }

      while (v16 != v10);
      if (v313 && v317)
      {
        (*(*v313 + 40))();
      }
    }

    if (*&v325[0] && v326)
    {
      (*(**&v325[0] + 40))();
    }

    *&v325[1] = 0;
    *&v325[0] = 0;
    v324 = 0uLL;
    DWORD2(v325[0]) = 0;
    v317 = 0;
    v314 = 0;
    v315 = 0;
    v313 = 0;
    v316 = 0;
    v82 = (*(*v13 + 16))(v13);
    v83 = v82;
    if (v82)
    {
      v4 = v304;
      if (v304 <= v82 - 1)
      {
        goto LABEL_697;
      }

      LODWORD(v84) = 0;
      v85 = v306;
      v4 = v82;
      v86 = v82;
      do
      {
        v87 = *v85++;
        v84 = (v84 + v87);
        --v86;
      }

      while (v86);
    }

    else
    {
      v4 = 0;
      v84 = 0;
    }

    v10 = re::GeomAttribute::accessValues<int>(v13);
    LODWORD(v28) = v146;
    re::DynamicArray<float>::resize(&v324, v84);
    re::DynamicArray<unsigned int>::resize(&v313, v4, &re::kInvalidMeshIndex);
    if (v83)
    {
      v29 = 0;
      v148 = 0;
      v16 = v304;
      v149 = v306;
      v6 = v315;
      v150 = v317;
      v28 = v28;
      v7 = *&v325[0];
      v151 = *&v325[1];
      do
      {
        if (v16 == v29)
        {
          goto LABEL_616;
        }

        if (v149[v29])
        {
          if (v6 <= v29)
          {
            goto LABEL_643;
          }

          v150[v29] = v148;
          if (v29 >= v28)
          {
            goto LABEL_647;
          }

          v5 = v148;
          if (v7 <= v148)
          {
            goto LABEL_651;
          }

          *(v151 + 4 * v148++) = *(v10 + 4 * v29);
        }

        ++v29;
      }

      while (v4 != v29);
      v10 = 0;
      v152 = v306;
      v28 = v309;
      v153 = v311;
      v29 = v315;
      v154 = v317;
      do
      {
        if (v16 == v10)
        {
          goto LABEL_628;
        }

        if (!v152[v10])
        {
          if (v28 <= v10)
          {
            goto LABEL_670;
          }

          v6 = *(v153 + 4 * v10);
          if (v29 <= v6)
          {
            goto LABEL_674;
          }

          if (v29 <= v10)
          {
            goto LABEL_678;
          }

          v154[v10] = v154[v6];
        }

        ++v10;
      }

      while (v4 != v10);
    }

    v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v147);
    v4 = *&v325[0];
    v6 = *(v10 + 24);
    v16 = v6;
    *&v323[2] = 0;
    memset(v321, 0, sizeof(v321));
    re::DynamicArray<re::GeomCell4>::resize(v321, v6);
    if (v6)
    {
      v155 = 0;
      v29 = *&v321[16];
      v156 = *&v323[2];
      v28 = *(v10 + 24);
      v157 = *(v10 + 40);
      v7 = v315;
      do
      {
        if (v155 == v29)
        {
          goto LABEL_634;
        }

        if (v155 == v28)
        {
          goto LABEL_638;
        }

        v158 = 0;
        *v327 = *(v157 + 16 * v155);
        v159 = v317;
        if (*&v327[12] == -1)
        {
          v160 = 3;
        }

        else
        {
          v160 = 4;
        }

        do
        {
          v5 = *&v327[4 * v158];
          if (v7 <= v5)
          {
            goto LABEL_439;
          }

          *(v156 + 4 * v158++) = v159[v5];
        }

        while (v160 != v158);
        ++v155;
        v156 += 16;
      }

      while (v155 != v6);
    }

    if (*(v10 + 48))
    {
      v161 = *(v10 + 60) == 0;
    }

    else
    {
      v161 = 1;
    }

    if (v161 && *(v9 + 10) == v6)
    {
      re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321);
      goto LABEL_575;
    }

    *&v320[2] = 0;
    memset(v318, 0, sizeof(v318));
    re::DynamicArray<unsigned int>::resize(v318, v6, &re::kInvalidMeshIndex);
    v164 = *(v10 + 60);
    if (v164 == 2)
    {
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v299, v10 + 64);
      LOBYTE(v298) = 2;
      v247 = *(v10 + 60);
      if (!*(v10 + 60))
      {
LABEL_488:
        v248 = *(v10 + 64);
        LOBYTE(v295) = 0;
        LODWORD(v296) = v248;
LABEL_571:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v298, &v295) & 1) == 0)
        {
          v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v287);
          v286 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v285);
          v16 = v286;
          v29 = *&v318[16];
          if (*&v318[16] <= v286)
          {
            goto LABEL_683;
          }

          *(*&v320[2] + 4 * v286) = HIDWORD(v10);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v298);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v295, v287);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v298, v288);
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321, v318);
        if (*v318 && *&v320[2])
        {
          (*(**v318 + 40))();
        }

LABEL_575:
        if ((*(*v13 + 16))(v13))
        {
          if (!*(v13 + 5))
          {
            goto LABEL_688;
          }

          v9 = *(v13 + 7);
          if ((*(*v13 + 16))(v13))
          {
            v269 = *&v325[1];
            v270 = 4 * v4;
            goto LABEL_594;
          }
        }

        goto LABEL_703;
      }

      if (v247 == 2)
      {
        LOBYTE(v295) = 2;
        v296 = v10 + 64;
        v297 = xmmword_1E3049610;
        goto LABEL_571;
      }

      if (v247 != 1)
      {
        goto LABEL_713;
      }

      v234 = *(v10 + 48);
    }

    else
    {
      if (v164 != 1)
      {
        if (*(v10 + 60))
        {
          goto LABEL_707;
        }

        LOBYTE(v298) = 0;
        LODWORD(v299) = 0;
        goto LABEL_488;
      }

      v234 = *(v10 + 48);
      if (v234)
      {
        v235 = *(v10 + 96);
        v236 = *(v10 + 52);
        v237 = *(v10 + 80);
        v238 = v235 + 4 * v237;
        LOBYTE(v298) = 1;
        if (v235)
        {
          v239 = v235 + 4 * v236;
          if (v237 != v236)
          {
            v239 -= 4;
            v240 = 4 * v237 - 4 * v236;
            do
            {
              v242 = *(v239 + 4);
              v239 += 4;
              v241 = v242;
              if (!v240)
              {
                break;
              }

              v240 -= 4;
            }

            while (v241 == -1);
          }
        }

        else
        {
          v239 = 0;
        }

        v299 = v235;
        v300 = v239;
        v301 = v238;
      }

      else
      {
        LOBYTE(v298) = 1;
        v300 = 0;
        v301 = 0;
        v299 = 0;
      }
    }

    if (v234)
    {
      v283 = *(v10 + 96);
      v284 = v283 + 4 * *(v10 + 80);
      LOBYTE(v295) = 1;
      v296 = v283;
      *&v297 = v284;
      *(&v297 + 1) = v284;
    }

    else
    {
      LOBYTE(v295) = 1;
      v297 = 0uLL;
      v296 = 0;
    }

    goto LABEL_571;
  }

  if (v14 == 6)
  {
    result = (*(*v11 + 16))(v11);
    if (!result)
    {
      return result;
    }

    v311 = 0;
    v308 = 0;
    v309 = 0;
    v306 = 0;
    v307 = 0;
    v310 = 0;
    v303 = 0;
    v304 = 0;
    v302 = 0;
    v305 = 0;
    v16 = (*(*v13 + 16))(v13);
    if (v16)
    {
      v21 = re::GeomAttribute::accessValues<int>(v13);
      if (!v22)
      {
        goto LABEL_690;
      }

      v4 = v21;
    }

    else
    {
      v4 = 0;
    }

    v326 = 0;
    v10 = v16;
    *(&v324 + 1) = v16;
    memset(v325, 0, 28);
    *&v324 = v4;
    v317 = 0;
    v314 = 0;
    v315 = 0;
    v313 = 0;
    v316 = 0;
    re::DynamicArray<float>::resize(&v313, v16);
    if (!v16)
    {
      *&v325[1] = 0;
      goto LABEL_105;
    }

    v28 = 0;
    v29 = v315;
    v30 = v317;
    while (v29 > v28)
    {
      v30[v28] = v28;
      if (v16 == ++v28)
      {
        v31 = 0;
        *&v325[1] = 0;
        ++DWORD2(v325[1]);
        if (*(&v325[0] + 1) < v16)
        {
          re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v325, v16);
          v31 = *&v325[1];
        }

        v32 = v16 - v31;
        if (v16 > v31 && v32 >= 1)
        {
          v33 = &v326[3 * v31];
          v34 = v32 + 1;
          do
          {
            *v33 = 0;
            v33[1] = 0;
            *(v33 + 4) = -1;
            *(v33 + 20) = 0;
            v33 += 3;
            --v34;
          }

          while (v34 > 1);
        }

        *&v325[1] = v16;
LABEL_105:
        ++DWORD2(v325[1]);
        if (*(&v324 + 1))
        {
          LODWORD(v332) = 0;
          re::internal::GeomKDTree<re::Vector2<float>>::buildHelper(&v324, 0, v16, &v313, &v332);
        }

        if (v313 && v317)
        {
          (*(*v313 + 40))();
        }

        v309 = 0;
        ++v310;
        v304 = 0;
        ++v305;
        re::DynamicArray<unsigned int>::resize(&v307, v16, &re::kInvalidMeshIndex);
        LOBYTE(v332) = 0;
        re::DynamicArray<unsigned char>::resize(&v302, v16, &v332);
        v317 = 0;
        v314 = 0;
        v315 = 0;
        v313 = 0;
        v316 = 0;
        if (v16)
        {
          v16 = 0;
          v29 = 1;
          while (1)
          {
            v28 = v309;
            if (v309 <= v16)
            {
              goto LABEL_622;
            }

            if (*(v311 + 4 * v16) == -1)
            {
              v315 = 0;
              v316 += 2;
              v64 = *&v325[1];
              if (*&v325[1] && (re::internal::GeomKDTree<re::Vector2<float>>::findWithinRadiusHelper(&v324, v326, (v4 + 8 * v16), &v313, a4), v64 = v315, v315))
              {
                v65 = 0;
                v66 = *v317;
              }

              else
              {
                v65 = 1;
                v66 = v16;
              }

              v28 = v309;
              if (v309 <= v16)
              {
                goto LABEL_660;
              }

              *(v311 + 4 * v16) = v66;
              v28 = v304;
              if (v304 <= v16)
              {
                goto LABEL_664;
              }

              v306[v16] = 1;
              if ((v65 & 1) == 0)
              {
                break;
              }
            }

LABEL_125:
            if (++v16 == v10)
            {
              if (v313 && v317)
              {
                (*(*v313 + 40))();
              }

              goto LABEL_129;
            }
          }

          v67 = 0;
          v40 = v315;
          v68 = v317;
          v6 = v309;
          v69 = v311;
          while (v40 != v67)
          {
            v5 = v68[v67];
            if (v6 <= v5)
            {
              goto LABEL_507;
            }

            *(v69 + 4 * v5) = v16;
            if (v64 == ++v67)
            {
              goto LABEL_125;
            }
          }

LABEL_503:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v40;
          v322 = 2048;
          *v323 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_504:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v40;
          v322 = 2048;
          *v323 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_505:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v40;
          v322 = 2048;
          *v323 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_506:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v40;
          v322 = 2048;
          *v323 = v40;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_507:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v5;
          v322 = 2048;
          *v323 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_508:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v5;
          v322 = 2048;
          *v323 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_509:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v5;
          v322 = 2048;
          *v323 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_510:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          v13 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v5;
          v322 = 2048;
          *v323 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_511:
          LOBYTE(v298) = 1;
          v300 = 0;
          v301 = 0;
          v299 = 0;
LABEL_523:
          if (v201)
          {
            v261 = *(v10 + 96);
            v262 = v261 + 4 * *(v10 + 80);
            LOBYTE(v295) = 1;
            v296 = v261;
            *&v297 = v262;
            *(&v297 + 1) = v262;
          }

          else
          {
            LOBYTE(v295) = 1;
            v297 = 0uLL;
            v296 = 0;
          }

LABEL_528:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v298, &v295) & 1) == 0)
          {
            v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v265);
            v264 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v263);
            v16 = v264;
            v29 = *&v318[16];
            if (*&v318[16] <= v264)
            {
              goto LABEL_680;
            }

            *(*&v320[2] + 4 * v264) = HIDWORD(v10);
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v298);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v295, v265);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v298, v266);
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321, v318);
          if (*v318 && *&v320[2])
          {
            (*(**v318 + 40))(*v318, *&v320[2]);
          }

LABEL_532:
          v267 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v13);
          if (v268)
          {
            v269 = *&v325[1];
            v270 = 16 * v4;
            goto LABEL_595;
          }

LABEL_685:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 621;
          *&v318[18] = 2048;
          *&v318[20] = 0;
          v319 = 2048;
          *v320 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_686:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = 0;
          v319 = 2048;
          *v320 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_687:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = 0;
          v319 = 2048;
          *v320 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_688:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = 0;
          v319 = 2048;
          *v320 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_689:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = 0;
          v319 = 2048;
          *v320 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_690:
          v313 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v324) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v324) = 1024;
          *(v10 + 110) = 613;
          WORD1(v325[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v325[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_691:
          v313 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v324) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v324) = 1024;
          *(v10 + 110) = 613;
          WORD1(v325[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v325[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_692:
          v313 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v324) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v324) = 1024;
          *(v10 + 110) = 613;
          WORD1(v325[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v325[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_693:
          v313 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v324) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v324) = 1024;
          *(v10 + 110) = 613;
          WORD1(v325[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v325[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_694:
          v313 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v324) = 136315906;
          *(v10 + 100) = "operator[]";
          WORD6(v324) = 1024;
          *(v10 + 110) = 613;
          WORD1(v325[0]) = 2048;
          *(v10 + 116) = 0;
          WORD6(v325[0]) = 2048;
          *(v10 + 126) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_695:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v4;
          v322 = 2048;
          *v323 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_696:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v4;
          v322 = 2048;
          *v323 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_697:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v4;
          v322 = 2048;
          *v323 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_698:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v4;
          v322 = 2048;
          *v323 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_699:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v4;
          v322 = 2048;
          *v323 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_129:
        if (*&v325[0] && v326)
        {
          (*(**&v325[0] + 40))();
        }

        *&v325[1] = 0;
        *&v325[0] = 0;
        v324 = 0uLL;
        DWORD2(v325[0]) = 0;
        v317 = 0;
        v314 = 0;
        v315 = 0;
        v313 = 0;
        v316 = 0;
        v70 = (*(*v13 + 16))(v13);
        v71 = v70;
        if (v70)
        {
          v4 = v304;
          if (v304 <= v70 - 1)
          {
            goto LABEL_696;
          }

          LODWORD(v72) = 0;
          v73 = v306;
          v4 = v70;
          v74 = v70;
          do
          {
            v75 = *v73++;
            v72 = (v72 + v75);
            --v74;
          }

          while (v74);
        }

        else
        {
          v4 = 0;
          v72 = 0;
        }

        v10 = re::GeomAttribute::accessValues<int>(v13);
        v130 = v129;
        re::DynamicArray<unsigned long>::resize(&v324, v72);
        re::DynamicArray<unsigned int>::resize(&v313, v4, &re::kInvalidMeshIndex);
        if (v71)
        {
          v16 = 0;
          v132 = 0;
          v29 = v130;
          do
          {
            v28 = v304;
            if (v304 <= v16)
            {
              goto LABEL_618;
            }

            if (v306[v16])
            {
              v28 = v315;
              if (v315 <= v16)
              {
                goto LABEL_645;
              }

              v317[v16] = v132;
              if (v16 >= v29)
              {
                goto LABEL_649;
              }

              v28 = v132;
              v5 = *&v325[0];
              if (*&v325[0] <= v132)
              {
                goto LABEL_653;
              }

              *(*&v325[1] + 8 * v132++) = *(v10 + 8 * v16);
            }

            ++v16;
          }

          while (v4 != v16);
          v10 = 0;
          v29 = v304;
          v133 = v306;
          v28 = v309;
          v134 = v311;
          v16 = v315;
          v135 = v317;
          while (v29 != v10)
          {
            if (!v133[v10])
            {
              if (v28 <= v10)
              {
                goto LABEL_668;
              }

              v6 = *(v134 + 4 * v10);
              if (v16 <= v6)
              {
                goto LABEL_672;
              }

              if (v16 <= v10)
              {
                goto LABEL_676;
              }

              v135[v10] = v135[v6];
            }

            if (v4 == ++v10)
            {
              goto LABEL_294;
            }
          }

LABEL_626:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v29;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_627:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v29;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_628:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_629:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_630:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = v29;
          v319 = 2048;
          *v320 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_631:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 797;
          *&v318[18] = 2048;
          *&v318[20] = v28;
          v319 = 2048;
          *v320 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_632:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = v29;
          v319 = 2048;
          *v320 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_633:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = v29;
          v319 = 2048;
          *v320 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_634:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = v29;
          v319 = 2048;
          *v320 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_635:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 789;
          *&v318[18] = 2048;
          *&v318[20] = v29;
          v319 = 2048;
          *v320 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_636:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 797;
          *&v318[18] = 2048;
          *&v318[20] = v28;
          v319 = 2048;
          *v320 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_637:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 797;
          *&v318[18] = 2048;
          *&v318[20] = v28;
          v319 = 2048;
          *v320 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_638:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 797;
          *&v318[18] = 2048;
          *&v318[20] = v28;
          v319 = 2048;
          *v320 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_639:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 797;
          *&v318[18] = 2048;
          *&v318[20] = v28;
          v319 = 2048;
          *v320 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_640:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_641:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 613;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_642:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v28;
          v322 = 2048;
          *v323 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_643:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v29;
          v322 = 2048;
          *v323 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_644:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v29;
          v322 = 2048;
          *v323 = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_645:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_646:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_647:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 613;
          *&v321[18] = 2048;
          *&v321[20] = v29;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_648:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 613;
          *&v321[18] = 2048;
          *&v321[20] = v29;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_649:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 613;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_650:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 613;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_651:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v5;
          v322 = 2048;
          *v323 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_652:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v5;
          v322 = 2048;
          *v323 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_653:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v28;
          v322 = 2048;
          *v323 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_654:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v28;
          v322 = 2048;
          *v323 = v5;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_655:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_656:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_657:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_658:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v6;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_659:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_660:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_661:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_662:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_663:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_664:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_665:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_666:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_667:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v16;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_668:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_669:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_670:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_671:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 797;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v28;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_672:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v6;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_673:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v6;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_674:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v6;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_675:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v6;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_676:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_677:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_678:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_679:
          *v318 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v321 = 136315906;
          *&v321[4] = "operator[]";
          *&v321[12] = 1024;
          *&v321[14] = 789;
          *&v321[18] = 2048;
          *&v321[20] = v10;
          v322 = 2048;
          *v323 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_680:
          v312 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v327 = 136315906;
          *&v327[4] = "operator[]";
          *&v327[12] = 1024;
          *&v327[14] = 789;
          v328 = 2048;
          v329 = v16;
          v330 = 2048;
          v331 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_681:
          v312 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v327 = 136315906;
          *&v327[4] = "operator[]";
          *&v327[12] = 1024;
          *&v327[14] = 789;
          v328 = 2048;
          v329 = v16;
          v330 = 2048;
          v331 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_682:
          v312 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v327 = 136315906;
          *&v327[4] = "operator[]";
          *&v327[12] = 1024;
          *&v327[14] = 789;
          v328 = 2048;
          v329 = v16;
          v330 = 2048;
          v331 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_683:
          v312 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v327 = 136315906;
          *&v327[4] = "operator[]";
          *&v327[12] = 1024;
          *&v327[14] = 789;
          v328 = 2048;
          v329 = v16;
          v330 = 2048;
          v331 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_684:
          v312 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v327 = 136315906;
          *&v327[4] = "operator[]";
          *&v327[12] = 1024;
          *&v327[14] = 789;
          v328 = 2048;
          v329 = v16;
          v330 = 2048;
          v331 = v29;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_685;
        }

LABEL_294:
        v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v131);
        v4 = *&v325[0];
        v6 = *(v10 + 24);
        v16 = v6;
        *&v323[2] = 0;
        memset(v321, 0, sizeof(v321));
        re::DynamicArray<re::GeomCell4>::resize(v321, v6);
        if (v6)
        {
          v136 = 0;
          v29 = *&v321[16];
          v137 = *&v323[2];
          v28 = *(v10 + 24);
          v138 = *(v10 + 40);
          v7 = v315;
          while (v136 != v29)
          {
            if (v136 == v28)
            {
              goto LABEL_636;
            }

            v139 = 0;
            *v327 = *(v138 + 16 * v136);
            v140 = v317;
            if (*&v327[12] == -1)
            {
              v141 = 3;
            }

            else
            {
              v141 = 4;
            }

            do
            {
              v5 = *&v327[4 * v139];
              if (v7 <= v5)
              {
                goto LABEL_437;
              }

              *(v137 + 4 * v139++) = v140[v5];
            }

            while (v141 != v139);
            ++v136;
            v137 += 16;
            if (v136 == v6)
            {
              goto LABEL_304;
            }
          }

          goto LABEL_632;
        }

LABEL_304:
        if (*(v10 + 48))
        {
          v142 = *(v10 + 60) == 0;
        }

        else
        {
          v142 = 1;
        }

        if (v142 && *(v9 + 10) == v6)
        {
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321);
        }

        else
        {
          *&v320[2] = 0;
          memset(v318, 0, sizeof(v318));
          re::DynamicArray<unsigned int>::resize(v318, v6, &re::kInvalidMeshIndex);
          v145 = *(v10 + 60);
          if (v145 == 2)
          {
            re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v299, v10 + 64);
            LOBYTE(v298) = 2;
            v223 = *(v10 + 60);
            if (!*(v10 + 60))
            {
LABEL_464:
              v224 = *(v10 + 64);
              LOBYTE(v295) = 0;
              LODWORD(v296) = v224;
              goto LABEL_541;
            }

            if (v223 == 2)
            {
              LOBYTE(v295) = 2;
              v296 = v10 + 64;
              v297 = xmmword_1E3049610;
              goto LABEL_541;
            }

            if (v223 != 1)
            {
              goto LABEL_711;
            }

            v213 = *(v10 + 48);
          }

          else
          {
            if (v145 != 1)
            {
              if (*(v10 + 60))
              {
                goto LABEL_706;
              }

              LOBYTE(v298) = 0;
              LODWORD(v299) = 0;
              goto LABEL_464;
            }

            v213 = *(v10 + 48);
            if (v213)
            {
              v214 = *(v10 + 96);
              v215 = *(v10 + 52);
              v216 = *(v10 + 80);
              v217 = v214 + 4 * v216;
              LOBYTE(v298) = 1;
              if (v214)
              {
                v218 = v214 + 4 * v215;
                if (v216 != v215)
                {
                  v218 -= 4;
                  v219 = 4 * v216 - 4 * v215;
                  do
                  {
                    v221 = *(v218 + 4);
                    v218 += 4;
                    v220 = v221;
                    if (!v219)
                    {
                      break;
                    }

                    v219 -= 4;
                  }

                  while (v220 == -1);
                }
              }

              else
              {
                v218 = 0;
              }

              v299 = v214;
              v300 = v218;
              v301 = v217;
            }

            else
            {
              LOBYTE(v298) = 1;
              v300 = 0;
              v301 = 0;
              v299 = 0;
            }
          }

          if (v213)
          {
            v271 = *(v10 + 96);
            v272 = v271 + 4 * *(v10 + 80);
            LOBYTE(v295) = 1;
            v296 = v271;
            *&v297 = v272;
            *(&v297 + 1) = v272;
          }

          else
          {
            LOBYTE(v295) = 1;
            v297 = 0uLL;
            v296 = 0;
          }

LABEL_541:
          while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v298, &v295) & 1) == 0)
          {
            v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v275);
            v274 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v273);
            v16 = v274;
            v29 = *&v318[16];
            if (*&v318[16] <= v274)
            {
              goto LABEL_681;
            }

            *(*&v320[2] + 4 * v274) = HIDWORD(v10);
            re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v298);
          }

          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v295, v275);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v298, v276);
          re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321, v318);
          if (*v318 && *&v320[2])
          {
            (*(**v318 + 40))();
          }
        }

        if (!(*(*v13 + 16))(v13))
        {
          goto LABEL_548;
        }

        if (!*(v13 + 5))
        {
          goto LABEL_686;
        }

        v9 = *(v13 + 7);
        if (!(*(*v13 + 16))(v13))
        {
LABEL_548:
          *v327 = 0;
          v335 = 0u;
          v336 = 0u;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          v13 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v318 = 136315906;
          *&v318[4] = "operator[]";
          *&v318[12] = 1024;
          *&v318[14] = 621;
          *&v318[18] = 2048;
          *&v318[20] = 0;
          v319 = 2048;
          *v320 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_549:
          v230 = 0;
LABEL_550:
          v299 = v226;
          v300 = v230;
          v301 = v229;
          goto LABEL_551;
        }

LABEL_593:
        v269 = *&v325[1];
        v270 = 8 * v4;
LABEL_594:
        v267 = v9;
LABEL_595:
        memcpy(v267, v269, v270);
        if (*v321 && *&v323[2])
        {
          (*(**v321 + 40))(*v321, *&v323[2]);
        }

        if (v313 && v317)
        {
          (*(*v313 + 40))(v313, v317);
        }

        if (v324 && *&v325[1])
        {
          (*(*v324 + 40))(v324, *&v325[1]);
        }

        if (v302 && v306)
        {
          (*(*v302 + 40))(v302, v306);
        }

        result = v307;
        if (v307)
        {
          if (v311)
          {
            return (*(*v307 + 40))(v307, v311);
          }
        }

        return result;
      }
    }

    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v28;
    v322 = 2048;
    *v323 = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_612:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v28;
    v322 = 2048;
    *v323 = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_613:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v28;
    v322 = 2048;
    *v323 = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_614:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v28;
    v322 = 2048;
    *v323 = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_615:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 797;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_616:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 797;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_617:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 797;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_618:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 797;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_619:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 797;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_620:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_621:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 797;
    *&v321[18] = 2048;
    *&v321[20] = v29;
    v322 = 2048;
    *v323 = v29;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_622:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_623:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_624:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_625:
    *v318 = 0;
    v335 = 0u;
    v336 = 0u;
    v333 = 0u;
    v334 = 0u;
    v332 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v321 = 136315906;
    *&v321[4] = "operator[]";
    *&v321[12] = 1024;
    *&v321[14] = 789;
    *&v321[18] = 2048;
    *&v321[20] = v16;
    v322 = 2048;
    *v323 = v28;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_626;
  }

  if (v14 != 7)
  {
    if (v14 == 8)
    {
      result = (*(*v11 + 16))(v11);
      if (!result)
      {
        return result;
      }

      v311 = 0;
      v308 = 0;
      v309 = 0;
      v306 = 0;
      v307 = 0;
      v310 = 0;
      v303 = 0;
      v304 = 0;
      v302 = 0;
      v305 = 0;
      v16 = (*(*v13 + 16))(v13);
      if (v16)
      {
        v17 = re::GeomAttribute::accessValues<int>(v13);
        if (!v18)
        {
          goto LABEL_693;
        }

        v4 = v17;
      }

      else
      {
        v4 = 0;
      }

      v326 = 0;
      v10 = v16;
      *(&v324 + 1) = v16;
      memset(v325, 0, 28);
      *&v324 = v4;
      v317 = 0;
      v314 = 0;
      v315 = 0;
      v313 = 0;
      v316 = 0;
      re::DynamicArray<float>::resize(&v313, v16);
      if (v16)
      {
        v28 = 0;
        v29 = v315;
        v54 = v317;
        do
        {
          if (v29 <= v28)
          {
            goto LABEL_613;
          }

          v54[v28] = v28;
          ++v28;
        }

        while (v16 != v28);
        v55 = 0;
        *&v325[1] = 0;
        ++DWORD2(v325[1]);
        if (*(&v325[0] + 1) < v16)
        {
          re::DynamicArray<re::internal::GeomKDTree<float>::Node>::setCapacity(v325, v16);
          v55 = *&v325[1];
        }

        v56 = v16 - v55;
        if (v16 > v55 && v56 >= 1)
        {
          v57 = &v326[3 * v55];
          v58 = v56 + 1;
          do
          {
            *v57 = 0;
            v57[1] = 0;
            *(v57 + 4) = -1;
            *(v57 + 20) = 0;
            v57 += 3;
            --v58;
          }

          while (v58 > 1);
        }

        *&v325[1] = v16;
      }

      else
      {
        *&v325[1] = 0;
      }

      ++DWORD2(v325[1]);
      if (*(&v324 + 1))
      {
        LODWORD(v332) = 0;
        re::internal::GeomKDTree<re::Vector4<float>>::buildHelper(&v324, 0, v16, &v313, &v332);
      }

      if (v313 && v317)
      {
        (*(*v313 + 40))();
      }

      v309 = 0;
      ++v310;
      v304 = 0;
      ++v305;
      re::DynamicArray<unsigned int>::resize(&v307, v16, &re::kInvalidMeshIndex);
      LOBYTE(v332) = 0;
      re::DynamicArray<unsigned char>::resize(&v302, v16, &v332);
      v317 = 0;
      v314 = 0;
      v315 = 0;
      v313 = 0;
      v316 = 0;
      if (v16)
      {
        v16 = 0;
        v29 = 1;
        while (1)
        {
          v28 = v309;
          if (v309 <= v16)
          {
            goto LABEL_624;
          }

          if (*(v311 + 4 * v16) == -1)
          {
            v315 = 0;
            v316 += 2;
            v88 = *&v325[1];
            if (*&v325[1] && (re::internal::GeomKDTree<re::Vector4<float>>::findWithinRadiusHelper(&v324, v326, (v4 + 16 * v16), &v313, a4), v88 = v315, v315))
            {
              v89 = 0;
              v90 = *v317;
            }

            else
            {
              v89 = 1;
              v90 = v16;
            }

            v28 = v309;
            if (v309 <= v16)
            {
              goto LABEL_662;
            }

            *(v311 + 4 * v16) = v90;
            v28 = v304;
            if (v304 <= v16)
            {
              goto LABEL_666;
            }

            v306[v16] = 1;
            if ((v89 & 1) == 0)
            {
              break;
            }
          }

LABEL_191:
          if (++v16 == v10)
          {
            if (v313 && v317)
            {
              (*(*v313 + 40))();
            }

            goto LABEL_195;
          }
        }

        v91 = 0;
        v40 = v315;
        v92 = v317;
        v6 = v309;
        v93 = v311;
        while (v40 != v91)
        {
          v5 = v92[v91];
          if (v6 <= v5)
          {
            goto LABEL_509;
          }

          *(v93 + 4 * v5) = v16;
          if (v88 == ++v91)
          {
            goto LABEL_191;
          }
        }

        goto LABEL_505;
      }

LABEL_195:
      if (*&v325[0] && v326)
      {
        (*(**&v325[0] + 40))();
      }

      *&v325[1] = 0;
      *&v325[0] = 0;
      v324 = 0uLL;
      DWORD2(v325[0]) = 0;
      v317 = 0;
      v314 = 0;
      v315 = 0;
      v313 = 0;
      v316 = 0;
      v94 = (*(*v13 + 16))(v13);
      v95 = v94;
      if (v94)
      {
        v4 = v304;
        if (v304 <= v94 - 1)
        {
          goto LABEL_698;
        }

        LODWORD(v96) = 0;
        v97 = v306;
        v4 = v94;
        v98 = v94;
        do
        {
          v99 = *v97++;
          v96 = (v96 + v99);
          --v98;
        }

        while (v98);
      }

      else
      {
        v4 = 0;
        v96 = 0;
      }

      v10 = re::GeomAttribute::accessValues<int>(v13);
      v166 = v165;
      re::DynamicArray<re::Vector4<float>>::resize(&v324, v96);
      re::DynamicArray<unsigned int>::resize(&v313, v4, &re::kInvalidMeshIndex);
      if (v95)
      {
        v16 = 0;
        v168 = 0;
        v29 = v166;
        do
        {
          v28 = v304;
          if (v304 <= v16)
          {
            goto LABEL_619;
          }

          if (v306[v16])
          {
            v28 = v315;
            if (v315 <= v16)
            {
              goto LABEL_646;
            }

            v317[v16] = v168;
            if (v16 >= v29)
            {
              goto LABEL_650;
            }

            v28 = v168;
            v5 = *&v325[0];
            if (*&v325[0] <= v168)
            {
              goto LABEL_654;
            }

            *(*&v325[1] + 16 * v168++) = *v10;
          }

          ++v16;
          v10 += 16;
        }

        while (v4 != v16);
        v10 = 0;
        v29 = v304;
        v169 = v306;
        v28 = v309;
        v170 = v311;
        v16 = v315;
        v171 = v317;
        while (v29 != v10)
        {
          if (!v169[v10])
          {
            if (v28 <= v10)
            {
              goto LABEL_669;
            }

            v6 = *(v170 + 4 * v10);
            if (v16 <= v6)
            {
              goto LABEL_673;
            }

            if (v16 <= v10)
            {
              goto LABEL_677;
            }

            v171[v10] = v171[v6];
          }

          if (v4 == ++v10)
          {
            goto LABEL_372;
          }
        }

        goto LABEL_627;
      }

LABEL_372:
      v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v167);
      v4 = *&v325[0];
      v6 = *(v10 + 24);
      v16 = v6;
      *&v323[2] = 0;
      memset(v321, 0, sizeof(v321));
      re::DynamicArray<re::GeomCell4>::resize(v321, v6);
      if (v6)
      {
        v172 = 0;
        v29 = *&v321[16];
        v173 = *&v323[2];
        v28 = *(v10 + 24);
        v174 = *(v10 + 40);
        v7 = v315;
        while (v172 != v29)
        {
          if (v172 == v28)
          {
            goto LABEL_637;
          }

          v175 = 0;
          *v327 = *(v174 + 16 * v172);
          v176 = v317;
          if (*&v327[12] == -1)
          {
            v177 = 3;
          }

          else
          {
            v177 = 4;
          }

          do
          {
            v5 = *&v327[4 * v175];
            if (v7 <= v5)
            {
              goto LABEL_438;
            }

            *(v173 + 4 * v175++) = v176[v5];
          }

          while (v177 != v175);
          ++v172;
          v173 += 16;
          if (v172 == v6)
          {
            goto LABEL_382;
          }
        }

        goto LABEL_633;
      }

LABEL_382:
      if (*(v10 + 48))
      {
        v178 = *(v10 + 60) == 0;
      }

      else
      {
        v178 = 1;
      }

      if (v178 && *(v9 + 10) == v6)
      {
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321);
      }

      else
      {
        *&v320[2] = 0;
        memset(v318, 0, sizeof(v318));
        re::DynamicArray<unsigned int>::resize(v318, v6, &re::kInvalidMeshIndex);
        v181 = *(v10 + 60);
        if (v181 == 2)
        {
          re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v299, v10 + 64);
          LOBYTE(v298) = 2;
          v244 = *(v10 + 60);
          if (*(v10 + 60))
          {
            if (v244 == 2)
            {
              LOBYTE(v295) = 2;
              v296 = v10 + 64;
              v297 = xmmword_1E3049610;
              goto LABEL_556;
            }

            if (v244 != 1)
            {
              goto LABEL_712;
            }

            v225 = *(v10 + 48);
            goto LABEL_551;
          }

LABEL_483:
          v245 = *(v10 + 64);
          LOBYTE(v295) = 0;
          LODWORD(v296) = v245;
          goto LABEL_556;
        }

        if (v181 != 1)
        {
          if (*(v10 + 60))
          {
            goto LABEL_708;
          }

          LOBYTE(v298) = 0;
          LODWORD(v299) = 0;
          goto LABEL_483;
        }

        v225 = *(v10 + 48);
        if (v225)
        {
          v226 = *(v10 + 96);
          v227 = *(v10 + 52);
          v228 = *(v10 + 80);
          v229 = v226 + 4 * v228;
          LOBYTE(v298) = 1;
          if (!v226)
          {
            goto LABEL_549;
          }

          v230 = v226 + 4 * v227;
          if (v228 != v227)
          {
            v230 -= 4;
            v231 = 4 * v228 - 4 * v227;
            do
            {
              v233 = *(v230 + 4);
              v230 += 4;
              v232 = v233;
              if (!v231)
              {
                break;
              }

              v231 -= 4;
            }

            while (v232 == -1);
          }

          goto LABEL_550;
        }

        LOBYTE(v298) = 1;
        v300 = 0;
        v301 = 0;
        v299 = 0;
LABEL_551:
        if (v225)
        {
          v277 = *(v10 + 96);
          v278 = v277 + 4 * *(v10 + 80);
          LOBYTE(v295) = 1;
          v296 = v277;
          *&v297 = v278;
          *(&v297 + 1) = v278;
        }

        else
        {
          LOBYTE(v295) = 1;
          v297 = 0uLL;
          v296 = 0;
        }

LABEL_556:
        while ((re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator==(&v298, &v295) & 1) == 0)
        {
          v10 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v281);
          v280 = re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::operator*(&v298, v279);
          v16 = v280;
          v29 = *&v318[16];
          if (*&v318[16] <= v280)
          {
            goto LABEL_682;
          }

          *(*&v320[2] + 4 * v280) = HIDWORD(v10);
          re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::increment(&v298);
        }

        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v295, v281);
        re::GeomIndexMap::ConstantOrHashTableOrArrayIterator::~ConstantOrHashTableOrArrayIterator(&v298, v282);
        re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321, v318);
        if (*v318 && *&v320[2])
        {
          (*(**v318 + 40))(*v318, *&v320[2]);
        }
      }

      if ((*(*v13 + 16))(v13))
      {
        if (!*(v13 + 5))
        {
          goto LABEL_687;
        }

        v9 = *(v13 + 7);
        if ((*(*v13 + 16))(v13))
        {
          v269 = *&v325[1];
          v270 = 16 * v4;
          goto LABEL_594;
        }
      }

      goto LABEL_702;
    }

    goto LABEL_700;
  }

  result = (*(*v11 + 16))(v11);
  if (!result)
  {
    return result;
  }

  v311 = 0;
  v308 = 0;
  v309 = 0;
  v306 = 0;
  v307 = 0;
  v310 = 0;
  v303 = 0;
  v304 = 0;
  v302 = 0;
  v305 = 0;
  v23 = (*(*v13 + 16))(v13);
  if (v23)
  {
    v24 = re::GeomAttribute::accessValues<int>(v13);
    if (!v25)
    {
      goto LABEL_691;
    }

    v4 = v24;
  }

  else
  {
    v4 = 0;
  }

  v326 = 0;
  v324 = 0u;
  memset(v325, 0, 28);
  v10 = v23;
  if ((re::internal::GeomKDTree<re::Vector3<float>>::build(&v324, v23, v4) & 1) == 0)
  {
    goto LABEL_701;
  }

  v309 = 0;
  ++v310;
  v304 = 0;
  ++v305;
  re::DynamicArray<unsigned int>::resize(&v307, v23, &re::kInvalidMeshIndex);
  LOBYTE(v332) = 0;
  re::DynamicArray<unsigned char>::resize(&v302, v23, &v332);
  v317 = 0;
  v314 = 0;
  v315 = 0;
  v313 = 0;
  v316 = 0;
  if (!v23)
  {
    goto LABEL_60;
  }

  v16 = 0;
  v29 = 1;
  do
  {
    v28 = v309;
    if (v309 <= v16)
    {
      goto LABEL_620;
    }

    if (*(v311 + 4 * v16) == -1)
    {
      v315 = 0;
      v316 += 2;
      v36 = *&v325[1];
      if (*&v325[1] && (re::internal::GeomKDTree<re::Vector3<float>>::findWithinRadiusHelper(&v324, v326, (v4 + 16 * v16), &v313, a4), v36 = v315, v315))
      {
        v37 = 0;
        v38 = *v317;
      }

      else
      {
        v37 = 1;
        v38 = v16;
      }

      v28 = v309;
      if (v309 <= v16)
      {
        goto LABEL_655;
      }

      *(v311 + 4 * v16) = v38;
      v28 = v304;
      if (v304 <= v16)
      {
        goto LABEL_656;
      }

      v306[v16] = 1;
      if ((v37 & 1) == 0)
      {
        v39 = 0;
        v40 = v315;
        v41 = v317;
        v6 = v309;
        v42 = v311;
        while (v40 != v39)
        {
          v5 = v41[v39];
          if (v6 <= v5)
          {
            goto LABEL_502;
          }

          *(v42 + 4 * v5) = v16;
          if (v36 == ++v39)
          {
            goto LABEL_56;
          }
        }

        *v318 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v321 = 136315906;
        *&v321[4] = "operator[]";
        *&v321[12] = 1024;
        *&v321[14] = 789;
        *&v321[18] = 2048;
        *&v321[20] = v40;
        v322 = 2048;
        *v323 = v40;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_502:
        *v318 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v321 = 136315906;
        *&v321[4] = "operator[]";
        *&v321[12] = 1024;
        *&v321[14] = 789;
        *&v321[18] = 2048;
        *&v321[20] = v5;
        v322 = 2048;
        *v323 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_503;
      }
    }

LABEL_56:
    ++v16;
  }

  while (v16 != v10);
  if (v313 && v317)
  {
    (*(*v313 + 40))();
  }

LABEL_60:
  if (*&v325[0] && v326)
  {
    (*(**&v325[0] + 40))();
  }

  *&v325[1] = 0;
  *&v325[0] = 0;
  v324 = 0uLL;
  DWORD2(v325[0]) = 0;
  v317 = 0;
  v314 = 0;
  v315 = 0;
  v313 = 0;
  v316 = 0;
  v43 = (*(*v13 + 16))(v13);
  v44 = v43;
  if (!v43)
  {
    v4 = 0;
    v45 = 0;
    goto LABEL_237;
  }

  v4 = v304;
  if (v304 <= v43 - 1)
  {
    goto LABEL_695;
  }

  LODWORD(v45) = 0;
  v46 = v306;
  v4 = v43;
  v47 = v43;
  do
  {
    v48 = *v46++;
    v45 = (v45 + v48);
    --v47;
  }

  while (v47);
LABEL_237:
  v10 = re::GeomAttribute::accessValues<int>(v13);
  v113 = v112;
  re::DynamicArray<re::Vector3<float>>::resize(&v324, v45);
  re::DynamicArray<unsigned int>::resize(&v313, v4, &re::kInvalidMeshIndex);
  if (v44)
  {
    v16 = 0;
    v115 = 0;
    v29 = v113;
    do
    {
      v28 = v304;
      if (v304 <= v16)
      {
        goto LABEL_615;
      }

      if (v306[v16])
      {
        v28 = v315;
        if (v315 <= v16)
        {
          goto LABEL_640;
        }

        v317[v16] = v115;
        if (v16 >= v29)
        {
          goto LABEL_641;
        }

        v28 = v115;
        v5 = *&v325[0];
        if (*&v325[0] <= v115)
        {
          goto LABEL_642;
        }

        *(*&v325[1] + 16 * v115++) = *v10;
      }

      ++v16;
      v10 += 16;
    }

    while (v4 != v16);
    v10 = 0;
    v29 = v304;
    v116 = v306;
    v28 = v309;
    v117 = v311;
    v16 = v315;
    v118 = v317;
    while (v29 != v10)
    {
      if (!v116[v10])
      {
        if (v28 <= v10)
        {
          goto LABEL_657;
        }

        v6 = *(v117 + 4 * v10);
        if (v16 <= v6)
        {
          goto LABEL_658;
        }

        if (v16 <= v10)
        {
          goto LABEL_659;
        }

        v118[v10] = v118[v6];
      }

      if (v4 == ++v10)
      {
        goto LABEL_254;
      }
    }

    goto LABEL_621;
  }

LABEL_254:
  v10 = re::internal::accessFaceVaryingAttributeSubmesh(v13, v114);
  v4 = *&v325[0];
  v6 = *(v10 + 24);
  v16 = v6;
  *&v323[2] = 0;
  memset(v321, 0, sizeof(v321));
  re::DynamicArray<re::GeomCell4>::resize(v321, v6);
  if (!v6)
  {
    goto LABEL_264;
  }

  v119 = 0;
  v29 = *&v321[16];
  v120 = *&v323[2];
  v28 = *(v10 + 24);
  v121 = *(v10 + 40);
  v7 = v315;
  while (2)
  {
    if (v119 == v29)
    {
      goto LABEL_630;
    }

    if (v119 == v28)
    {
      goto LABEL_631;
    }

    v122 = 0;
    *v327 = *(v121 + 16 * v119);
    v123 = v317;
    if (*&v327[12] == -1)
    {
      v124 = 3;
    }

    else
    {
      v124 = 4;
    }

    while (2)
    {
      v5 = *&v327[4 * v122];
      if (v7 <= v5)
      {
        v298 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v5;
        v319 = 2048;
        *v320 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_437:
        v298 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v5;
        v319 = 2048;
        *v320 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_438:
        v298 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v5;
        v319 = 2048;
        *v320 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_439:
        v298 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v5;
        v319 = 2048;
        *v320 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_440:
        v298 = 0;
        v335 = 0u;
        v336 = 0u;
        v333 = 0u;
        v334 = 0u;
        v332 = 0u;
        v13 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v318 = 136315906;
        *&v318[4] = "operator[]";
        *&v318[12] = 1024;
        *&v318[14] = 789;
        *&v318[18] = 2048;
        *&v318[20] = v5;
        v319 = 2048;
        *v320 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_441:
        v201 = *(v10 + 48);
        if (!v201)
        {
          goto LABEL_511;
        }

        v202 = *(v10 + 96);
        v203 = *(v10 + 52);
        v204 = *(v10 + 80);
        v205 = v202 + 4 * v204;
        LOBYTE(v298) = 1;
        if (v202)
        {
          v206 = v202 + 4 * v203;
          if (v204 != v203)
          {
            v206 -= 4;
            v207 = 4 * v204 - 4 * v203;
            do
            {
              v209 = *(v206 + 4);
              v206 += 4;
              v208 = v209;
              if (!v207)
              {
                break;
              }

              v207 -= 4;
            }

            while (v208 == -1);
          }
        }

        else
        {
          v206 = 0;
        }

        v299 = v202;
        v300 = v206;
        v301 = v205;
        goto LABEL_523;
      }

      *(v120 + 4 * v122++) = v123[v5];
      if (v124 != v122)
      {
        continue;
      }

      break;
    }

    ++v119;
    v120 += 16;
    if (v119 != v6)
    {
      continue;
    }

    break;
  }

LABEL_264:
  if (*(v10 + 48))
  {
    v125 = *(v10 + 60) == 0;
  }

  else
  {
    v125 = 1;
  }

  if (v125 && *(v9 + 10) == v6)
  {
    re::GeomMesh::updateFaceVaryingAttribute(v9, *(v13 + 1), v4, v321);
    goto LABEL_532;
  }

  *&v320[2] = 0;
  memset(v318, 0, sizeof(v318));
  re::DynamicArray<unsigned int>::resize(v318, v6, &re::kInvalidMeshIndex);
  v128 = *(v10 + 60);
  if (v128 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned int,unsigned int> const&>::HashBrownIterator(&v299, v10 + 64);
    LOBYTE(v298) = 2;
    v211 = *(v10 + 60);
    if (!*(v10 + 60))
    {
      goto LABEL_452;
    }

    if (v211 == 2)
    {
      LOBYTE(v295) = 2;
      v296 = v10 + 64;
      v297 = xmmword_1E3049610;
      goto LABEL_528;
    }

    if (v211 != 1)
    {
      goto LABEL_710;
    }

    v201 = *(v10 + 48);
    goto LABEL_523;
  }

  if (v128 == 1)
  {
    goto LABEL_441;
  }

  if (!*(v10 + 60))
  {
    LOBYTE(v298) = 0;
    LODWORD(v299) = 0;
LABEL_452:
    v212 = *(v10 + 64);
    LOBYTE(v295) = 0;
    LODWORD(v296) = v212;
    goto LABEL_528;
  }

LABEL_705:
  re::internal::assertLog(4, v127, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699, v295, v296, v297, v298, v299, v300, v301);
  _os_crash();
  __break(1u);
LABEL_706:
  re::internal::assertLog(4, v144, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_707:
  re::internal::assertLog(4, v163, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_708:
  re::internal::assertLog(4, v180, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_709:
  re::internal::assertLog(4, v199, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "begin", 699);
  _os_crash();
  __break(1u);
LABEL_710:
  re::internal::assertLog(4, v210, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_711:
  re::internal::assertLog(4, v222, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_712:
  re::internal::assertLog(4, v243, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_713:
  re::internal::assertLog(4, v246, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  _os_crash();
  __break(1u);
LABEL_714:
  re::internal::assertLog(4, v258, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "end", 721);
  result = _os_crash();
  __break(1u);
  return result;
}