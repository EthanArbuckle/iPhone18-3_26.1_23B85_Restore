uint64_t re::BlendShapeDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, unint64_t *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Blend Shapes");
  v37 = a1;
  v38 = a1 + 8;
  v9 = [*(a1 + 8) threadExecutionWidth];
  v41 = v8;
  v39 = *(v8 + 48);
  if (v39)
  {
    v10 = 0;
    v11 = 0;
    v42 = v9;
    do
    {
      v12 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v41 + 8, v11);
      v14 = *(v12 + 8);
      v15 = a4[6];
      if (v15 <= v14)
      {
        re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, *(v12 + 8), v15);
        _os_crash();
        __break(1u);
LABEL_16:
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        memset(v46, 0, sizeof(v46));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v43 = 136315906;
        *&v43[4] = "operator[]";
        *&v43[12] = 1024;
        *&v43[14] = 476;
        *&v43[18] = 2048;
        *&v43[20] = v8;
        v44 = 2048;
        v45 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_17:
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        memset(v46, 0, sizeof(v46));
        v11 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v43 = 136315906;
        *&v43[4] = "operator[]";
        *&v43[12] = 1024;
        *&v43[14] = 476;
        *&v43[18] = 2048;
        *&v43[20] = v8;
        v44 = 2048;
        v45 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_18:
        v48 = 0u;
        v49 = 0u;
        v47 = 0u;
        memset(v46, 0, sizeof(v46));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v43 = 136315906;
        *&v43[4] = "operator[]";
        *&v43[12] = 1024;
        *&v43[14] = 468;
        *&v43[18] = 2048;
        *&v43[20] = v11;
        v44 = 2048;
        v45 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v16 = a4[5];
      v17 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v14);
      v18 = **(v17 + 344);
      v8 = *(v17 + 392);
      v4 = v18[5];
      if (v4 <= v8)
      {
        goto LABEL_16;
      }

      v8 = *(v18[6] + 4 * v8);
      v4 = v18[2];
      if (v4 <= v8)
      {
        goto LABEL_17;
      }

      v4 = *(a2 + 32);
      if (v4 <= v11)
      {
        goto LABEL_18;
      }

      v19 = v16 + 312 * v14;
      v20 = v18[3] + 336 * v8;
      v21 = *(a2 + 40);
      if (*(v20 + 212))
      {
        v8 = *v18;
        v22 = re::BlendShapeDeformer::deformGPU(void *,re::mtl::ComputeCommandEncoder const&,re::DeformationParameters const&)::kIndexTypeSizes[v8];
        [*this setComputePipelineState:*(v38 + 8 * v8)];
        re::BufferSlice::buffer(v20 + 256, v23);
        [*this setBuffer:*(v20 + 256) offset:*(v20 + 288) atIndex:0];
        [*this setBuffer:*(v21 + v10 + 16) offset:*(v21 + v10 + 8) atIndex:1];
        re::BufferSlice::buffer(v20 + 176, v24);
        [*this setBuffer:*(v20 + 176) offset:*(v20 + 208) atIndex:2];
        re::BufferSlice::buffer(v20 + 216, v25);
        [*this setBuffer:*(v20 + 216) offset:*(v20 + 248) atIndex:3];
        re::BufferSlice::buffer(v20 + 96, v26);
        [*this setBuffer:*(v20 + 96) offset:*(v20 + 128) atIndex:4];
        LOBYTE(v46[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v46) + 24);
        LOBYTE(v46[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v46) + 16), 5}];
        v27 = *this;
        *&v46[0] = *(v20 + 212) / v22;
        *(v46 + 8) = vdupq_n_s64(1uLL);
        *v43 = v42;
        *&v43[8] = *(v46 + 8);
        [v27 dispatchThreads:v46 threadsPerThreadgroup:v43];
        if (*(v20 + 332))
        {
          [*this setComputePipelineState:*(v37 + 24 + 8 * v8)];
          re::BufferSlice::buffer(v20 + 296, v28);
          [*this setBuffer:*(v20 + 296) offset:*(v20 + 328) atIndex:0];
          LOBYTE(v46[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v46) + 24);
          LOBYTE(v46[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v46) + 16), 1}];
          v29 = *(v20 + 332) / v22;
LABEL_12:
          v35 = *this;
          *&v46[0] = v29;
          *(v46 + 8) = vdupq_n_s64(1uLL);
          *v43 = v42;
          *&v43[8] = *(v46 + 8);
          [v35 dispatchThreads:v46 threadsPerThreadgroup:v43];
        }
      }

      else
      {
        [*this setComputePipelineState:*(v37 + 40)];
        re::BufferSlice::buffer(v20 + 136, v30);
        [*this setBuffer:*(v20 + 136) offset:*(v20 + 168) atIndex:0];
        [*this setBuffer:*(v21 + v10 + 16) offset:*(v21 + v10 + 8) atIndex:1];
        re::BufferSlice::buffer(v20 + 96, v31);
        [*this setBuffer:*(v20 + 96) offset:*(v20 + 128) atIndex:2];
        LOBYTE(v46[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v46) + 24);
        LOBYTE(v46[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v46) + 16), 3}];
        v33 = *this;
        *&v46[0] = *(v20 + 132) / (16 * *(v20 + 8));
        v32 = v46[0];
        *(v46 + 8) = vdupq_n_s64(1uLL);
        *v43 = v42;
        *&v43[8] = *(v46 + 8);
        [v33 dispatchThreads:v46 threadsPerThreadgroup:v43];
        v8 = v32 / *(v20 + 12);
        if (v8 >= 2)
        {
          [*this setComputePipelineState:*(v37 + 48)];
          re::BufferSlice::buffer(v20 + 136, v34);
          [*this setBuffer:*(v20 + 136) offset:*(v20 + 168) atIndex:0];
          LOBYTE(v46[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v46) + 24);
          LOBYTE(v46[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v46) + 16), 1}];
          LODWORD(v29) = *(v20 + 12) / 3u * (v8 - 1);
          goto LABEL_12;
        }
      }

      ++v11;
      v10 += 24;
    }

    while (v39 != v11);
  }

  return [*this popDebugGroup];
}

void re::BlendShapeDeformer::deformCPU(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = *(*a3 + 48);
  if (v8)
  {
    v11 = 0;
    v100 = *(*a3 + 48);
    v101 = *a3;
    do
    {
      v12 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v11) + 8);
      v13 = a3[6];
      if (v13 <= v12)
      {
        goto LABEL_72;
      }

      v5 = a3[5] + 312 * v12;
      v6 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a3[1], v12);
      LOBYTE(v110) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v5, 1u);
      v14 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v5 + 184), &v110);
      v16 = **(v6 + 344);
      v3 = *(v6 + 392);
      v4 = v16[5];
      if (v4 <= v3)
      {
        goto LABEL_73;
      }

      v3 = *(v16[6] + 4 * v3);
      v4 = v16[2];
      if (v4 <= v3)
      {
        goto LABEL_74;
      }

      v4 = *(*(v5 + 192) + 32 * v14 + 8) + *(*(v5 + 192) + 32 * v14 + 16);
      v3 = v16[3] + 336 * v3;
      v17 = *(v3 + 212);
      if (v17)
      {
        v18 = *v16;
        if (v18 == 1)
        {
          v5 = *(a2 + 8);
          if (v5 <= v11)
          {
            goto LABEL_76;
          }

          v74 = *(a2 + 16);
          v5 = re::BufferSlice::contents((v3 + 176));
          v6 = re::BufferSlice::contents((v3 + 216));
          v75 = re::BufferSlice::contents((v3 + 96));
          v76 = re::BufferSlice::contents((v3 + 256));
          if (v17 >= 4)
          {
            v77 = 0;
            v78 = (v74 + 16 * v11);
            v79 = v78[1];
            v80 = *v6;
            while (1)
            {
              v81 = *(v5 + 4 * v77++);
              v82 = *(v6 + 4 * v77);
              v83 = 0uLL;
              if (v82 != v80)
              {
                break;
              }

LABEL_49:
              *(v4 + 4 * v81) = *(v4 + 4 * v81) + vaddv_f32(vadd_f32(*v83.f32, *&vextq_s8(v83, v83, 8uLL)));
              v80 = v82;
              if (v77 == v17 >> 2)
              {
                goto LABEL_50;
              }
            }

            v84 = 0;
            v85 = *v78;
            while (1)
            {
              v86 = v80 + v84;
              v87 = *(v76 + 4 * (v80 + v84));
              if (v79 <= v87)
              {
                break;
              }

              v88 = *(v76 + 4 * (v86 + 1));
              if (v79 <= v88)
              {
                goto LABEL_65;
              }

              v89 = *(v76 + 4 * (v80 + v84 + 2));
              if (v79 <= v89)
              {
                goto LABEL_68;
              }

              v90 = *(v76 + 4 * (v80 + v84 + 3));
              if (v79 <= v90)
              {
                goto LABEL_69;
              }

              v91.i32[0] = *(v85 + 4 * v87);
              v91.i32[1] = *(v85 + 4 * v88);
              v91.i32[2] = *(v85 + 4 * v89);
              v91.i32[3] = *(v85 + 4 * v90);
              v83 = vmlaq_f32(v83, v91, *(v75 + 16 * ((v80 >> 2) + (v84 >> 2))));
              v84 += 4;
              if (v84 >= v82 - v80)
              {
                goto LABEL_49;
              }
            }

            re::internal::assertLog(6, v85, *v83.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v76 + 4 * v86), v79);
            _os_crash();
            __break(1u);
LABEL_64:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v24);
            _os_crash();
            __break(1u);
LABEL_65:
            re::internal::assertLog(6, v85, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v88, v79);
            _os_crash();
            __break(1u);
LABEL_66:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v24);
            _os_crash();
            __break(1u);
LABEL_67:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v24);
            _os_crash();
            __break(1u);
LABEL_68:
            re::internal::assertLog(6, v85, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v89, v79);
            _os_crash();
            __break(1u);
LABEL_69:
            re::internal::assertLog(6, v85, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v90, v79);
            _os_crash();
            __break(1u);
LABEL_70:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v24);
            _os_crash();
            __break(1u);
LABEL_71:
            re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v60, v60);
            _os_crash();
            __break(1u);
LABEL_72:
            re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v12, v13);
            _os_crash();
            __break(1u);
LABEL_73:
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v110 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v103 = "operator[]";
            v104 = 1024;
            v105 = 476;
            v106 = 2048;
            v107 = v3;
            v108 = 2048;
            v109 = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_74:
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v110 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v103 = "operator[]";
            v104 = 1024;
            v105 = 476;
            v106 = 2048;
            v107 = v3;
            v108 = 2048;
            v109 = v4;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_75:
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v110 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v103 = "operator[]";
            v104 = 1024;
            v105 = 468;
            v106 = 2048;
            v107 = v11;
            v108 = 2048;
            v109 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_76:
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v110 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v103 = "operator[]";
            v104 = 1024;
            v105 = 468;
            v106 = 2048;
            v107 = v11;
            v108 = 2048;
            v109 = v5;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v113 = 0u;
            v114 = 0u;
            v111 = 0u;
            v112 = 0u;
            v110 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v103 = "operator[]";
            v104 = 1024;
            v105 = 468;
            v106 = 2048;
            v107 = v11;
            v108 = 2048;
            v109 = v5;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_78:
            re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) Invalid blend shape index type: %u.", "!Unreachable code", "deformCPU", 1490, v18);
            _os_crash();
            __break(1u);
          }

LABEL_50:
          v92 = re::BufferSlice::contents((v3 + 296));
          v94 = *(v3 + 332);
          v8 = v100;
          v7 = v101;
          if (v94 >= 4)
          {
            v95 = v94 >> 2;
            do
            {
              v96 = *v92;
              v92 += 2;
              v97 = v4 + 4 * v96;
              v93.i64[0] = *v97;
              v93.i32[2] = *(v97 + 8);
              v98 = vmulq_f32(v93, v93);
              *&v99 = v98.f32[2] + vaddv_f32(*v98.f32);
              *v98.f32 = vrsqrte_f32(v99);
              *v98.f32 = vmul_f32(*v98.f32, vrsqrts_f32(v99, vmul_f32(*v98.f32, *v98.f32)));
              v93 = vmulq_n_f32(v93, vmul_f32(*v98.f32, vrsqrts_f32(v99, vmul_f32(*v98.f32, *v98.f32))).f32[0]);
              *v97 = v93.i64[0];
              *(v97 + 8) = v93.i32[2];
              --v95;
            }

            while (v95);
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_78;
          }

          v5 = *(a2 + 8);
          if (v5 <= v11)
          {
            goto LABEL_77;
          }

          v19 = *(a2 + 16);
          v5 = re::BufferSlice::contents((v3 + 176));
          v6 = re::BufferSlice::contents((v3 + 216));
          v20 = re::BufferSlice::contents((v3 + 96));
          v21 = re::BufferSlice::contents((v3 + 256));
          if (v17 != 1)
          {
            v22 = 0;
            v23 = (v19 + 16 * v11);
            v24 = v23[1];
            v25 = *v6;
            while (1)
            {
              v26 = *(v5 + 2 * v22++);
              v27 = *(v6 + 2 * v22);
              v28 = 0uLL;
              if (v27 != v25)
              {
                break;
              }

LABEL_19:
              *(v4 + 4 * v26) = *(v4 + 4 * v26) + vaddv_f32(vadd_f32(*v28.f32, *&vextq_s8(v28, v28, 8uLL)));
              v25 = v27;
              if (v22 == v17 >> 1)
              {
                goto LABEL_20;
              }
            }

            v29 = 0;
            v30 = 0;
            v31 = *v23;
            while (1)
            {
              v32 = (v21 + 2 * (v25 + v30));
              v33 = *v32;
              if (v24 <= v33)
              {
                goto LABEL_64;
              }

              v34 = v32[1];
              if (v24 <= v34)
              {
                goto LABEL_66;
              }

              v35 = v32[2];
              if (v24 <= v35)
              {
                goto LABEL_67;
              }

              v36 = v32[3];
              if (v24 <= v36)
              {
                goto LABEL_70;
              }

              v37.i32[0] = *(v31 + 4 * v33);
              v37.i32[1] = *(v31 + 4 * v34);
              v37.i32[2] = *(v31 + 4 * v35);
              v37.i32[3] = *(v31 + 4 * v36);
              v28 = vmlaq_f32(v28, v37, *(v20 + 16 * ((v25 >> 2) + (v29 >> 2))));
              v30 = v29 + 4;
              v29 = (v29 + 4);
              if (v29 >= (v27 - v25))
              {
                goto LABEL_19;
              }
            }
          }

LABEL_20:
          v38 = re::BufferSlice::contents((v3 + 296));
          v40 = *(v3 + 332);
          v8 = v100;
          v7 = v101;
          if (v40 >= 2)
          {
            v41 = v40 >> 1;
            do
            {
              v42 = *v38++;
              v43 = v4 + 4 * v42;
              v39.i64[0] = *v43;
              v39.i32[2] = *(v43 + 8);
              v44 = vmulq_f32(v39, v39);
              *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
              *v44.f32 = vrsqrte_f32(v45);
              *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
              v39 = vmulq_n_f32(v39, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
              *v43 = v39.i64[0];
              *(v43 + 8) = v39.i32[2];
              --v41;
            }

            while (v41);
          }
        }
      }

      else
      {
        LOBYTE(v110) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v5, 1u);
        v46 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v5 + 184), &v110);
        v6 = *(a2 + 8);
        if (v6 <= v11)
        {
          goto LABEL_75;
        }

        v5 = *(*(v5 + 192) + 32 * v46 + 20);
        v6 = *(a2 + 16);
        re::ReadOnlyCPUAccessibleBufferSliceContent::make((v3 + 96), &v110);
        if (v110)
        {
          v51 = *(v3 + 8);
          v50 = *(v3 + 12);
          v52 = *(v3 + 16);
          v53 = *(v3 + 132);
          v54 = 4 * (4 * v51);
          v55 = v53 / v54;
          if (v54 <= v53)
          {
            v56 = 0;
            v57 = (v6 + 16 * v11);
            v58 = *(&v110 + 1);
            v59 = *v57;
            v60 = v57[1] >> 2;
            do
            {
              if (v51)
              {
                if (v60 <= (v51 - 1))
                {
                  goto LABEL_71;
                }

                v49 = 0uLL;
                v61 = v58;
                v62 = v59;
                v63 = v51;
                do
                {
                  v64 = *v61++;
                  v65 = v64;
                  v66 = *v62++;
                  v49 = vmlaq_f32(v49, v66, v65);
                  --v63;
                }

                while (v63);
              }

              else
              {
                v49 = 0uLL;
              }

              v48 = v56 % v50;
              *(v4 + 4 * v56 / v50 * v52 + 4 * (v56 % v50)) = *(v4 + 4 * v56 / v50 * v52 + 4 * (v56 % v50)) + vaddv_f32(vadd_f32(*v49.f32, *&vextq_s8(v49, v49, 8uLL)));
              ++v56;
              v58 += v51;
            }

            while (v56 < v55);
          }

          v67 = v5 >> 2;
          v68 = v55 - (v5 >> 2);
          if (v68 >= 3)
          {
            v69 = 0;
            v70 = v68 / 3;
            do
            {
              v71 = v4 + 4 * v67 / v50 * v52 + 4 * (v67 % v50);
              v49.i64[0] = *v71;
              v49.i32[2] = *(v71 + 8);
              v72 = vmulq_f32(v49, v49);
              *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
              *v72.f32 = vrsqrte_f32(v73);
              *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
              v49 = vmulq_n_f32(v49, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
              *v71 = v49.i64[0];
              *(v71 + 8) = v49.i32[2];
              ++v69;
              v67 += 3;
            }

            while (v69 < v70);
          }
        }

        else
        {
          v5 = *re::graphicsLogObjects(v47);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", buf, 2u);
          }
        }

        if (v110 == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v110 + 8));
        }

        else if (*(&v111 + 1) && (v112 & 1) != 0)
        {
          (*(**(&v111 + 1) + 40))();
        }
      }

      ++v11;
    }

    while (v11 != v8);
  }
}

uint64_t re::BlendShapeModelUtil::blendShapeTargetCountForGroup(re::BlendShapeModelUtil *this, const DeformationModelData *a2)
{
  v2 = *this;
  if (!*this || v2[8] <= a2)
  {
    return 0;
  }

  if (v2[2] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v2[3] + 336 * a2);
}

re::StringID *re::BlendShapeModelUtil::blendShapeTargetName@<X0>(re::BlendShapeModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, unint64_t a3@<X2>, re::StringID *a4@<X8>)
{
  v4 = *this;
  if (!*this || v4[8] <= a2)
  {
    goto LABEL_8;
  }

  if (v4[2] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = v4[3] + 336 * a2;
  if (*(v5 + 32) > a3)
  {
    v6 = (*(v5 + 40) + 16 * a3);

    return re::StringID::StringID(a4, v6);
  }

  else
  {
LABEL_8:

    return re::StringID::invalid(a4);
  }
}

uint64_t re::BlendShapeModelUtil::DEPRECATED_blendShapeTargetNameDoNotUse(re::BlendShapeModelUtil *this, const DeformationModelData *a2, unint64_t a3)
{
  v3 = *this;
  if (!*this || v3[8] <= a2)
  {
    return 0;
  }

  if (v3[2] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = v3[3] + 336 * a2;
  if (*(v4 + 32) > a3)
  {
    return *(*(v4 + 40) + 16 * a3 + 8);
  }

  else
  {
    return 0;
  }
}

void re::BlendShapeModelUtil::makeBlendShapeGroupDefinitionFromGroup(re::BlendShapeModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, unint64_t a3@<X8>)
{
  v6 = v278;
  v297 = *MEMORY[0x1E69E9840];
  v7 = *this;
  if (!*this)
  {
    v19 = std::system_category();
    v20 = "Deformation model does not contain blendshape data";
LABEL_17:
    v21 = v292;
    v22 = v293;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = v19;
    *(a3 + 24) = v21;
    *(a3 + 40) = v22;
    return;
  }

  v8 = v7[2];
  if (v8 != v7[8])
  {
    v19 = std::system_category();
    v20 = "Deformation model has mismatched buffer and name counts";
    goto LABEL_17;
  }

  v9 = a2;
  if (v8 <= a2)
  {
    goto LABEL_409;
  }

  re::ReadOnlyCPUAccessibleBufferSliceContent::make((v7[3] + 336 * a2 + 176), v255);
  if (v255[0] != 1 || !v256[1])
  {
    v23 = *this;
    if (!*this)
    {
      goto LABEL_64;
    }

    v12 = v23[2];
    if (v12 != v23[8])
    {
      goto LABEL_66;
    }

    if (v12 > v9)
    {
      i = v23[3] + 336 * v9;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make((i + 96), &v292);
      if (v292)
      {
        v246 = a3;
        v24 = *i;
        *&v274[0] = 0;
        *(&v274[0] + 1) = &str_67;
        HIDWORD(v275) = 0;
        *&v275 = 0;
        v274[1] = 0uLL;
        BYTE8(v275) = 0;
        v12 = v23[8];
        if (v12 <= v9)
        {
LABEL_419:
          *&v264 = 0;
          v283 = 0u;
          v284 = 0u;
          memset(v282, 0, sizeof(v282));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v278[0]) = 136315906;
          *(v278 + 4) = "operator[]";
          WORD2(v278[1]) = 1024;
          *(&v278[1] + 6) = 476;
          WORD1(v278[2]) = 2048;
          *(&v278[2] + 4) = v9;
          WORD2(v278[3]) = 2048;
          *(&v278[3] + 6) = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_420:
          *v285 = 0;
          v276 = 0u;
          v277 = 0u;
          v275 = 0u;
          memset(v274, 0, sizeof(v274));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 476;
          *&v271[18] = 2048;
          *&v271[20] = v9;
          v272 = 2048;
          *v273 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_421;
        }

        v25 = re::StringID::operator=(v274, (v23[9] + 16 * v9));
        BYTE8(v275) = 2;
        v9 = *(i + 12);
        HIDWORD(v275) = v9 / 3;
        if (v24)
        {
          v4 = 0;
          a3 = *(&v292 + 1);
          v26 = (v24 + 3) >> 2;
          v27 = 16 * v26;
          v8 = *(&v292 + 1) + 16 * v9 * v26;
          v251 = *(&v292 + 1);
          v252 = ((v24 + 3) & 0x3FFFFFFFFFFFFFFCLL) * v9;
          while (1)
          {
            v6 = *(&v274[1] + 1);
            if (*(&v274[1] + 1) <= v4)
            {
              goto LABEL_410;
            }

            v6 = *(i + 32);
            if (v6 <= v4)
            {
              break;
            }

            v28 = v24;
            v29 = (v275 + 136 * v4);
            v30 = re::StringID::operator=(v29, (*(i + 40) + 16 * v4));
            if (v9)
            {
              v32 = 0;
              v11 = v29[6];
              v33 = a3;
              while (v11 != v32)
              {
                *(v29[7] + 4 * v32) = *v33;
                v32 = (v32 + 1);
                v33 = (v33 + v27);
                if (v9 == v32)
                {
                  goto LABEL_32;
                }
              }

              *&v264 = 0;
              v283 = 0u;
              v284 = 0u;
              memset(v282, 0, sizeof(v282));
              v74 = MEMORY[0x1E69E9C10];
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v278[0]) = 136315906;
              *(v278 + 4) = "operator[]";
              WORD2(v278[1]) = 1024;
              *(&v278[1] + 6) = 468;
              WORD1(v278[2]) = 2048;
              *(&v278[2] + 4) = v11;
              WORD2(v278[3]) = 2048;
              *(&v278[3] + 6) = v11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_98;
            }

LABEL_32:
            v34 = (v251 + 4 * v4 + 4 * v252);
            if (*(i + 48))
            {
              if (v9)
              {
                v35 = 0;
                v36 = v29[9];
                v37 = v8;
                while (v36 != v35)
                {
                  *(v29[10] + 4 * v35++) = *v37;
                  v37 = (v37 + v27);
                  if (v9 == v35)
                  {
                    goto LABEL_37;
                  }
                }

                *&v264 = 0;
                v283 = 0u;
                v284 = 0u;
                memset(v282, 0, sizeof(v282));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v278[0]) = 136315906;
                *(v278 + 4) = "operator[]";
                WORD2(v278[1]) = 1024;
                *(&v278[1] + 6) = 468;
                WORD1(v278[2]) = 2048;
                *(&v278[2] + 4) = v36;
                WORD2(v278[3]) = 2048;
                *(&v278[3] + 6) = v36;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_393;
              }

LABEL_37:
              v34 += v252;
            }

            if (*(i + 49) == 1)
            {
              if (v9)
              {
                v38 = 0;
                v36 = v29[12];
                v39 = v34;
                while (v36 != v38)
                {
                  *(v29[13] + 4 * v38++) = *v39;
                  v39 = (v39 + v27);
                  if (v9 == v38)
                  {
                    goto LABEL_43;
                  }
                }

LABEL_393:
                *&v264 = 0;
                v283 = 0u;
                v284 = 0u;
                memset(v282, 0, sizeof(v282));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v278[0]) = 136315906;
                *(v278 + 4) = "operator[]";
                WORD2(v278[1]) = 1024;
                *(&v278[1] + 6) = 468;
                WORD1(v278[2]) = 2048;
                *(&v278[2] + 4) = v36;
                WORD2(v278[3]) = 2048;
                *(&v278[3] + 6) = v36;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_394;
              }

LABEL_43:
              v34 += v252;
            }

            if (*(i + 50) == 1)
            {
              if (v9)
              {
                v40 = 0;
                v36 = v29[15];
                while (v36 != v40)
                {
                  *(v29[16] + 4 * v40++) = *v34;
                  v34 = (v34 + v27);
                  if (v9 == v40)
                  {
                    goto LABEL_49;
                  }
                }

LABEL_394:
                *&v264 = 0;
                v283 = 0u;
                v284 = 0u;
                memset(v282, 0, sizeof(v282));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v278[0]) = 136315906;
                *(v278 + 4) = "operator[]";
                WORD2(v278[1]) = 1024;
                *(&v278[1] + 6) = 468;
                WORD1(v278[2]) = 2048;
                *(&v278[2] + 4) = v36;
                WORD2(v278[3]) = 2048;
                *(&v278[3] + 6) = v36;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_395:
                *v285 = 0;
                v276 = 0u;
                v277 = 0u;
                v275 = 0u;
                memset(v274, 0, sizeof(v274));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v271 = 136315906;
                *&v271[4] = "operator[]";
                *&v271[12] = 1024;
                *&v271[14] = 468;
                *&v271[18] = 2048;
                *&v271[20] = a3;
                v272 = 2048;
                *v273 = i;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_396:
                *v285 = 0;
                v276 = 0u;
                v277 = 0u;
                v275 = 0u;
                memset(v274, 0, sizeof(v274));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v271 = 136315906;
                *&v271[4] = "operator[]";
                *&v271[12] = 1024;
                *&v271[14] = 468;
                *&v271[18] = 2048;
                *&v271[20] = v4;
                v272 = 2048;
                *v273 = i;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_397:
                v221 = std::system_category();
                v222 = v274[0];
                v223 = v274[1];
                *a3 = 0;
                *(a3 + 8) = 0;
                *(a3 + 16) = v221;
                *(a3 + 24) = v222;
                *(a3 + 40) = v223;
                v9 = v251;
LABEL_236:
                if (i)
                {
                  v149 = 16 * v227;
                  v150 = v9;
                  do
                  {
                    v151.n128_f64[0] = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v150);
                    v150 += 6;
                    v149 -= 48;
                  }

                  while (v149);
                  goto LABEL_376;
                }

LABEL_377:
                v220 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v260[16]);
                if (v260[0])
                {
                  if (v260[0])
                  {
                  }
                }

LABEL_380:
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v264);
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v278);
LABEL_381:
                if (LOBYTE(v282[0]) == 1)
                {
                  re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v282 + 8));
                  goto LABEL_387;
                }

                v48 = *(&v282[1] + 1);
                if (!*(&v282[1] + 1) || (v282[2] & 1) == 0)
                {
                  goto LABEL_387;
                }

                v47 = *(&v282[2] + 1);
LABEL_386:
                (*(*v48 + 40))(v48, v47);
                goto LABEL_387;
              }
            }

LABEL_49:
            ++v4;
            a3 += 4;
            v8 += 4;
            v24 = v28;
            if (v4 == v28)
            {
              goto LABEL_50;
            }
          }

LABEL_411:
          *&v264 = 0;
          v283 = 0u;
          v284 = 0u;
          memset(v282, 0, sizeof(v282));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v278[0]) = 136315906;
          *(v278 + 4) = "operator[]";
          WORD2(v278[1]) = 1024;
          *(&v278[1] + 6) = 476;
          WORD1(v278[2]) = 2048;
          *(&v278[2] + 4) = v4;
          WORD2(v278[3]) = 2048;
          *(&v278[3] + 6) = v6;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_412:
          *v285 = 0;
          v276 = 0u;
          v277 = 0u;
          v275 = 0u;
          memset(v274, 0, sizeof(v274));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 468;
          *&v271[18] = 2048;
          *&v271[20] = i;
          v272 = 2048;
          *v273 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_413:
          *v285 = 0;
          v276 = 0u;
          v277 = 0u;
          v275 = 0u;
          memset(v274, 0, sizeof(v274));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 468;
          *&v271[18] = 2048;
          *&v271[20] = i;
          v272 = 2048;
          *v273 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_414:
          *v285 = 0;
          v276 = 0u;
          v277 = 0u;
          v275 = 0u;
          memset(v274, 0, sizeof(v274));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 476;
          *&v271[18] = 2048;
          *&v271[20] = i;
          v272 = 2048;
          *v273 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_415:
          *v285 = 0;
          v12 = &v264;
          v276 = 0u;
          v277 = 0u;
          v275 = 0u;
          memset(v274, 0, sizeof(v274));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 476;
          *&v271[18] = 2048;
          *&v271[20] = i;
          v272 = 2048;
          *v273 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_416;
        }

LABEL_50:
        v41 = *&v274[0];
        v42 = *(&v274[1] + 1);
        v43 = v275;
        *&v275 = 0;
        *v246 = 1;
        *(v246 + 8) = v41;
        *(&v282[0] + 1) = &str_67;
        *&v282[0] = 0;
        v44 = *(v274 + 8);
        *&v274[0] = 0;
        *(&v274[0] + 1) = &str_67;
        v274[1] = 0uLL;
        *(v246 + 16) = v44;
        v282[1] = 0uLL;
        *(v246 + 32) = v42;
        *(v246 + 40) = v43;
        *(&v282[2] + 1) = *(&v43 + 1);
        *&v282[2] = 0;
        *(v246 + 48) = *(&v43 + 1);
        v45 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v282[1]);
        if (v282[0])
        {
          if (v282[0])
          {
          }
        }

        v46 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v274[1]);
        if (v274[0])
        {
          if (v274[0])
          {
            v47 = *(&v274[0] + 1);
            goto LABEL_386;
          }
        }
      }

      else
      {
        v59 = std::system_category();
        v60 = v282[0];
        v61 = v282[1];
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = v59;
        *(a3 + 24) = v60;
        *(a3 + 40) = v61;
      }

LABEL_387:
      if (v292 == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v292 + 8));
      }

      else if (*(&v293 + 1) && (v294 & 1) != 0)
      {
        (*(**(&v293 + 1) + 40))(*(&v293 + 1), *(&v294 + 1));
      }

      goto LABEL_68;
    }

LABEL_416:
    *&v274[0] = 0;
    *(v6 + 19) = 0u;
    *(v6 + 20) = 0u;
    *(v6 + 17) = 0u;
    *(v6 + 18) = 0u;
    *(v6 + 16) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v282[0]) = 136315906;
    *(v6 + 100) = "operator[]";
    WORD6(v282[0]) = 1024;
    *(v6 + 110) = 476;
    WORD1(v282[1]) = 2048;
    *(v6 + 116) = v9;
    WORD6(v282[1]) = 2048;
    *(v6 + 126) = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_417:
    *&v274[0] = 0;
    v295 = 0u;
    v296 = 0u;
    v293 = 0u;
    v294 = 0u;
    v292 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v282[0]) = 136315906;
    *(v282 + 4) = "operator[]";
    WORD6(v282[0]) = 1024;
    *(v282 + 14) = 476;
    WORD1(v282[1]) = 2048;
    *(&v282[1] + 4) = v9;
    WORD6(v282[1]) = 2048;
    *(&v282[1] + 14) = v12;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_418;
  }

  v11 = *this;
  if (*v7 != 1)
  {
    if (!v11)
    {
      goto LABEL_64;
    }

    v12 = v11[2];
    if (v12 == v11[8])
    {
      if (v12 <= v9)
      {
LABEL_418:
        *&v274[0] = 0;
        v295 = 0u;
        v296 = 0u;
        v293 = 0u;
        v294 = 0u;
        v292 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v282[0]) = 136315906;
        *(v282 + 4) = "operator[]";
        WORD6(v282[0]) = 1024;
        *(v282 + 14) = 476;
        WORD1(v282[1]) = 2048;
        *(&v282[1] + 4) = v9;
        WORD6(v282[1]) = 2048;
        *(&v282[1] + 14) = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_419;
      }

      v49 = v11[3] + 336 * v9;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make((v49 + 176), &v292);
      v50 = v292;
      v51 = v293;
      v250 = v49;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make((v49 + 96), v282);
      if ((v282[0] & 1) == 0)
      {
        goto LABEL_74;
      }

      v280 = 0;
      v281 = 0;
      memset(v278, 0, sizeof(v278));
      v279 = 0u;
      v268 = 0;
      v269 = 0;
      v264 = 0u;
      v265 = 0u;
      v52 = 2;
      v266 = 0u;
      v267 = 0u;
      if (!v50)
      {
        v53 = v250;
        goto LABEL_246;
      }

      v53 = v250;
      if (!v51)
      {
        goto LABEL_246;
      }

      re::ReadOnlyCPUAccessibleBufferSliceContent::make((v250 + 256), v274);
      v54 = LOBYTE(v274[0]);
      if (LOBYTE(v274[0]) == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(v278, v274 + 1);
      }

      else
      {
        v69 = std::system_category();
        v70 = *v260;
        v71 = *&v260[16];
        v72 = v261;
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = v69;
        *(a3 + 24) = v70;
        *(a3 + 40) = v71;
        *(a3 + 48) = v72;
      }

      if (LOBYTE(v274[0]) == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v274 + 8));
      }

      else
      {
        v75 = v250;
        if (!*(&v274[1] + 1) || (v275 & 1) == 0)
        {
LABEL_94:
          if (!v54)
          {
            goto LABEL_380;
          }

          re::ReadOnlyCPUAccessibleBufferSliceContent::make((v75 + 216), v274);
          v76 = LOBYTE(v274[0]);
          if (LOBYTE(v274[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(&v264, v274 + 1);
          }

          else
          {
            v81 = std::system_category();
            v82 = *v260;
            v83 = *&v260[16];
            v84 = v261;
            *a3 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = v81;
            *(a3 + 24) = v82;
            *(a3 + 40) = v83;
            *(a3 + 48) = v84;
          }

          if (LOBYTE(v274[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v274 + 8));
          }

          else
          {
            v53 = v250;
            if (!*(&v274[1] + 1) || (v275 & 1) == 0)
            {
              goto LABEL_244;
            }

            (*(**(&v274[1] + 1) + 40))();
          }

          v53 = v250;
LABEL_244:
          if (!v76)
          {
            goto LABEL_380;
          }

          v52 = 1;
LABEL_246:
          i = *v53;
          *v260 = 0;
          *&v260[8] = &str_67;
          HIDWORD(v263) = 0;
          v261 = 0;
          v262 = 0;
          *&v260[16] = 0;
          LOBYTE(v263) = 0;
          v12 = v11[8];
          if (v12 > v9)
          {
            v152 = v53;
            v153 = re::StringID::operator=(v260, (v11[9] + 16 * v9));
            LOBYTE(v263) = v52;
            v243 = *(v152 + 3);
            HIDWORD(v263) = v243 / 3;
            v6 = v264;
            v155 = (*(&v264 + 1) & 0xFFFFFFFFFFFFFFFELL) - 2;
            if ((*(&v264 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v156 = v152;
              v157 = 0;
            }

            else
            {
              v157 = 0;
              v158 = (v264 + 2);
              while (*(v158 - 1) < *v158)
              {
                ++v157;
                ++v158;
                v155 -= 2;
                if (!v155)
                {
                  v157 = ((*(&v264 + 1) - 4) >> 1) + 1;
                  break;
                }
              }

              v156 = v250;
            }

            v233 = *(&v282[0] + 1);
            v235 = v278[0];
            v159 = *(&v292 + 1);
            v160 = (v293 & 0xFFFFFFFFFFFFFFFELL) - 2;
            if ((v293 & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v161 = 1;
            }

            else
            {
              v162 = (*(&v292 + 1) + 2);
              v161 = 1;
              while (*(v162 - 1) < *v162)
              {
                ++v161;
                ++v162;
                v160 -= 2;
                if (!v160)
                {
                  v161 = ((v293 - 4) >> 1) + 2;
                  v156 = v250;
                  goto LABEL_263;
                }
              }

              v156 = v250;
            }

            if (v161 != 1 || v157)
            {
LABEL_263:
              if (v157 != v161)
              {
                goto LABEL_277;
              }
            }

            v163 = *(v156 + 48);
            v164 = *(v156 + 16);
            if (*(v156 + 49))
            {
              v165 = *(v156 + 16);
            }

            else
            {
              v165 = 0;
            }

            if (*(v156 + 50))
            {
              v166 = *(v156 + 16);
            }

            else
            {
              v166 = 0;
            }

            v227 = 3 * i;
            if (i)
            {
              if (i > 0x555555555555555)
              {
LABEL_423:
                re::internal::assertLog(6, v167, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, i);
                _os_crash();
                __break(1u);
LABEL_424:
                re::internal::assertLog(4, v102, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash();
                __break(1u);
LABEL_425:
                re::internal::assertLog(4, v169, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash();
                __break(1u);
              }

              if (!v168)
              {
                goto LABEL_425;
              }

              v251 = v168;
              v170 = v168;
              v171 = i - 1;
              if (i != 1)
              {
                v170 = v168;
                do
                {
                  *(v170 + 16) = 0uLL;
                  *(v170 + 32) = 0uLL;
                  *v170 = 0uLL;
                  *(v170 + 36) = 0x7FFFFFFF;
                  v170 += 48;
                  --v171;
                }

                while (v171);
              }

              *(v170 + 16) = 0u;
              *(v170 + 32) = 0u;
              *v170 = 0u;
              *(v170 + 36) = 0x7FFFFFFF;
            }

            else
            {
              v251 = 0;
            }

            v254 = i;
            if (v157)
            {
              v175 = 0;
              v176 = 0;
              v231 = (v164 << v163);
              v229 = v165 + v231 + v166;
              v239 = v157;
              v241 = v6;
              v237 = v159;
              v248 = a3;
              do
              {
                v177 = *(v159 + 2 * v175);
                v178 = *(v6 + v175);
                v179 = *(v6 + (v176 + 1));
                v245 = (v176 + 1);
                if (v243 <= v177)
                {
                  if (v177 >= v231)
                  {
                    if (v165 + v231 <= v177)
                    {
                      if (v229 <= v177)
                      {
                        v224 = std::system_category();
                        v225 = v274[0];
                        v226 = v274[1];
                        *a3 = 0;
                        *(a3 + 8) = 0;
                        *(a3 + 16) = v224;
                        *(a3 + 24) = v225;
                        *(a3 + 40) = v226;
                        v9 = v251;
                        goto LABEL_373;
                      }

                      v180 = 3;
                    }

                    else
                    {
                      v180 = 2;
                    }
                  }

                  else
                  {
                    v180 = 1;
                  }
                }

                else
                {
                  v180 = 0;
                }

                if (v178 < v179)
                {
                  v181 = v177 % *(v250 + 16);
                  v182 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v181) ^ ((0xBF58476D1CE4E5B9 * v181) >> 27));
                  v183 = v182 ^ (v182 >> 31);
                  v4 = *(v235 + 2 * v178);
                  v184 = v178 + 1;
                  v185 = (v233 + 4 * v178);
                  a3 = v235 + 2 + 2 * v178;
                  do
                  {
                    v186 = *v185;
                    if (*v185 != 0.0)
                    {
                      if (i <= v4)
                      {
                        goto LABEL_396;
                      }

                      v187 = v251 + 48 * v4;
                      re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v274, v187, v181, v183);
                      if (HIDWORD(v274[0]) == 0x7FFFFFFF)
                      {
                        memset(v271, 0, 20);
                        memset(v274, 0, 24);
                        re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v274, v187, v181, v183);
                        if (HIDWORD(v274[0]) == 0x7FFFFFFF)
                        {
                          v188 = re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v187, DWORD2(v274[0]), *&v274[0]);
                          *(v188 + 4) = v181;
                          v189 = (v188 + 8);
                          *(v188 + 24) = *&v271[16];
                          *(v188 + 8) = *v271;
                          ++*(v187 + 40);
                          v4 = *(a3 - 2);
                        }

                        else
                        {
                          v189 = (*(v187 + 16) + 40 * HIDWORD(v274[0]) + 8);
                        }

                        *v189 = v181;
                      }

                      else
                      {
                        v189 = (*(v187 + 16) + 40 * HIDWORD(v274[0]) + 8);
                      }

                      i = v254;
                      *&v189[v180 + 1] = v186;
                    }

                    v191 = *a3;
                    a3 += 2;
                    v190 = v191;
                    v192 = v191 <= v4 || v184++ >= v179;
                    ++v185;
                    v4 = v190;
                  }

                  while (!v192);
                }

                v175 = v245;
                a3 = v248;
                v176 = v245;
                v6 = v241;
                v159 = v237;
              }

              while (v239 > v245);
            }

            v9 = v251;
            if (i)
            {
              for (i = 0; i != v254; ++i)
              {
                v8 = v261;
                if (v261 <= i)
                {
                  goto LABEL_413;
                }

                v8 = *(v250 + 32);
                if (v8 <= i)
                {
                  goto LABEL_415;
                }

                v6 = (v262 + 136 * i);
                v4 = v9 + 48 * i;
                v193 = *(v4 + 28);
                v194 = re::StringID::operator=(v6, (*(v250 + 40) + 16 * i));
                if (v193)
                {
                  v197 = v250;
                  if (*(v250 + 48) == 1)
                  {
                    v197 = v250;
                  }

                  if (*(v197 + 49) == 1)
                  {
                    v197 = v250;
                  }

                  if (*(v197 + 50) == 1)
                  {
                  }

                  *&v273[2] = 0;
                  memset(v271, 0, sizeof(v271));
                  v198 = *(v4 + 28);
                  if (v198)
                  {
                    v196 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v271, v198);
                  }

                  v199 = *(v4 + 32);
                  if (v199)
                  {
                    v200 = 0;
                    v201 = *(v4 + 16);
                    while (1)
                    {
                      v202 = *v201;
                      v201 += 10;
                      if (v202 < 0)
                      {
                        break;
                      }

                      if (v199 == ++v200)
                      {
                        LODWORD(v200) = *(v4 + 32);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v200) = 0;
                  }

                  v8 = *&v271[16];
                  if (v200 == v199)
                  {
                    v203 = *&v273[2];
                  }

                  else
                  {
                    v204 = *(v4 + 32);
                    do
                    {
                      v205 = *(v4 + 16);
                      if (v8 >= *&v271[8])
                      {
                        if (*&v271[8] < v8 + 1)
                        {
                          if (*v271)
                          {
                            v206 = 2 * *&v271[8];
                            if (!*&v271[8])
                            {
                              v206 = 8;
                            }

                            if (v206 <= v8 + 1)
                            {
                              v207 = v8 + 1;
                            }

                            else
                            {
                              v207 = v206;
                            }

                            v196 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v271, v207);
                          }

                          else
                          {
                            v196 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v271, v8 + 1);
                            ++*&v271[24];
                          }
                        }

                        v8 = *&v271[16];
                        v204 = *(v4 + 32);
                      }

                      v203 = *&v273[2];
                      *(*&v273[2] + 8 * v8++) = v205 + 40 * v200 + 8;
                      *&v271[16] = v8;
                      ++*&v271[24];
                      if (v204 <= v200 + 1)
                      {
                        v208 = v200 + 1;
                      }

                      else
                      {
                        v208 = v204;
                      }

                      while (v208 - 1 != v200)
                      {
                        LODWORD(v200) = v200 + 1;
                        if ((*(*(v4 + 16) + 40 * v200) & 0x80000000) != 0)
                        {
                          goto LABEL_346;
                        }
                      }

                      LODWORD(v200) = v208;
LABEL_346:
                      ;
                    }

                    while (v200 != v199);
                  }

                  v209 = 126 - 2 * __clz(v8);
                  if (v8)
                  {
                    v210 = v209;
                  }

                  else
                  {
                    v210 = 0;
                  }

                  std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(v203, (v203 + 8 * v8), v210, 1);
                  if (v8)
                  {
                    v141 = 0;
                    v9 = v6[3];
                    while (1)
                    {
                      if (v9 == v141)
                      {
                        goto LABEL_400;
                      }

                      v211 = *(v203 + 8 * v141);
                      *(v6[4] + 4 * v141) = *v211;
                      v4 = v6[6];
                      if (v4 <= v141)
                      {
                        break;
                      }

                      *(v6[7] + 4 * v141) = v211[1];
                      if (*(v250 + 48) == 1)
                      {
                        v4 = v6[9];
                        if (v4 <= v141)
                        {
                          goto LABEL_404;
                        }

                        *(v6[10] + 4 * v141) = v211[2];
                      }

                      if (*(v250 + 49) == 1)
                      {
                        v4 = v6[12];
                        if (v4 <= v141)
                        {
                          goto LABEL_406;
                        }

                        *(v6[13] + 4 * v141) = v211[3];
                      }

                      if (*(v250 + 50) == 1)
                      {
                        v4 = v6[15];
                        if (v4 <= v141)
                        {
                          goto LABEL_408;
                        }

                        *(v6[16] + 4 * v141) = v211[4];
                      }

                      if (v8 == ++v141)
                      {
                        goto LABEL_364;
                      }
                    }

LABEL_402:
                    v270 = 0;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    memset(v274, 0, sizeof(v274));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v285 = 136315906;
                    *&v285[4] = "operator[]";
                    v286 = 1024;
                    v287 = 468;
                    v288 = 2048;
                    v289 = v141;
                    v290 = 2048;
                    v291 = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_403:
                    v270 = 0;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    memset(v274, 0, sizeof(v274));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v285 = 136315906;
                    *&v285[4] = "operator[]";
                    v286 = 1024;
                    v287 = 468;
                    v288 = 2048;
                    v289 = v141;
                    v290 = 2048;
                    v291 = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_404:
                    v270 = 0;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    memset(v274, 0, sizeof(v274));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v285 = 136315906;
                    *&v285[4] = "operator[]";
                    v286 = 1024;
                    v287 = 468;
                    v288 = 2048;
                    v289 = v141;
                    v290 = 2048;
                    v291 = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_405:
                    v270 = 0;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    memset(v274, 0, sizeof(v274));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v285 = 136315906;
                    *&v285[4] = "operator[]";
                    v286 = 1024;
                    v287 = 468;
                    v288 = 2048;
                    v289 = v141;
                    v290 = 2048;
                    v291 = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_406:
                    v270 = 0;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    memset(v274, 0, sizeof(v274));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v285 = 136315906;
                    *&v285[4] = "operator[]";
                    v286 = 1024;
                    v287 = 468;
                    v288 = 2048;
                    v289 = v141;
                    v290 = 2048;
                    v291 = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_407:
                    v270 = 0;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    memset(v274, 0, sizeof(v274));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v285 = 136315906;
                    *&v285[4] = "operator[]";
                    v286 = 1024;
                    v287 = 468;
                    v288 = 2048;
                    v289 = v141;
                    v290 = 2048;
                    v291 = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_408:
                    v270 = 0;
                    v276 = 0u;
                    v277 = 0u;
                    v275 = 0u;
                    memset(v274, 0, sizeof(v274));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v285 = 136315906;
                    *&v285[4] = "operator[]";
                    v286 = 1024;
                    v287 = 468;
                    v288 = 2048;
                    v289 = v141;
                    v290 = 2048;
                    v291 = v4;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_409:
                    *&v274[0] = 0;
                    *(v6 + 19) = 0u;
                    *(v6 + 20) = 0u;
                    *(v6 + 17) = 0u;
                    *(v6 + 18) = 0u;
                    *(v6 + 16) = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v282[0]) = 136315906;
                    *(v6 + 100) = "operator[]";
                    WORD6(v282[0]) = 1024;
                    *(v6 + 110) = 476;
                    WORD1(v282[1]) = 2048;
                    *(v6 + 116) = v9;
                    WORD6(v282[1]) = 2048;
                    *(v6 + 126) = v8;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_410:
                    *&v264 = 0;
                    v283 = 0u;
                    v284 = 0u;
                    memset(v282, 0, sizeof(v282));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v278[0]) = 136315906;
                    *(v278 + 4) = "operator[]";
                    WORD2(v278[1]) = 1024;
                    *(&v278[1] + 6) = 468;
                    WORD1(v278[2]) = 2048;
                    *(&v278[2] + 4) = v4;
                    WORD2(v278[3]) = 2048;
                    *(&v278[3] + 6) = v6;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_411;
                  }

LABEL_364:
                  if (v203 && *v271)
                  {
                    (*(**v271 + 40))(*v271, v203);
                  }

                  v9 = v251;
                }
              }
            }

            v212 = *v260;
            v213 = v261;
            v214 = v262;
            v215 = v263;
            *a3 = 1;
            *(a3 + 8) = v212;
            *&v274[0] = 0;
            *(&v274[0] + 1) = &str_67;
            v216 = *&v260[8];
            *v260 = 0;
            *&v260[8] = &str_67;
            v261 = 0;
            v262 = 0;
            *&v260[16] = 0;
            *(a3 + 16) = v216;
            v274[1] = 0uLL;
            *(a3 + 32) = v213;
            *(a3 + 40) = v214;
            *(&v275 + 1) = v215;
            *&v275 = 0;
            *(a3 + 48) = v215;
            v217 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v274[1]);
            if (v274[0])
            {
              if (v274[0])
              {
              }
            }

            i = v254;
LABEL_373:
            if (i)
            {
              v218 = 16 * v227;
              v219 = v9;
              do
              {
                v151.n128_f64[0] = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v219);
                v219 += 6;
                v218 -= 48;
              }

              while (v218);
LABEL_376:
            }

            goto LABEL_377;
          }

LABEL_421:
          *v285 = 0;
          v276 = 0u;
          v277 = 0u;
          v275 = 0u;
          memset(v274, 0, sizeof(v274));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v271 = 136315906;
          *&v271[4] = "operator[]";
          *&v271[12] = 1024;
          *&v271[14] = 476;
          *&v271[18] = 2048;
          *&v271[20] = v9;
          v272 = 2048;
          *v273 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_422:
          re::internal::assertLog(6, v100, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, i);
          _os_crash();
          __break(1u);
          goto LABEL_423;
        }

        (*(**(&v274[1] + 1) + 40))();
      }

      v75 = v250;
      goto LABEL_94;
    }

LABEL_66:
    v55 = std::system_category();
    v56 = "Deformation model has mismatched buffer and name counts";
    goto LABEL_67;
  }

  if (v11)
  {
    v12 = v11[2];
    if (v12 == v11[8])
    {
      if (v12 > v9)
      {
        v13 = v11[3] + 336 * v9;
        re::ReadOnlyCPUAccessibleBufferSliceContent::make((v13 + 176), &v292);
        v14 = v292;
        v15 = v293;
        v249 = v13;
        re::ReadOnlyCPUAccessibleBufferSliceContent::make((v13 + 96), v282);
        if (v282[0])
        {
          v280 = 0;
          v281 = 0;
          memset(v278, 0, sizeof(v278));
          v279 = 0u;
          v268 = 0;
          v269 = 0;
          v264 = 0u;
          v265 = 0u;
          v16 = 2;
          v266 = 0u;
          v267 = 0u;
          if (!v14)
          {
            v17 = v249;
            goto LABEL_110;
          }

          v17 = v249;
          if (!v15)
          {
            goto LABEL_110;
          }

          re::ReadOnlyCPUAccessibleBufferSliceContent::make((v249 + 256), v274);
          v18 = LOBYTE(v274[0]);
          if (LOBYTE(v274[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(v278, v274 + 1);
          }

          else
          {
            v65 = std::system_category();
            v66 = *v260;
            v67 = *&v260[16];
            v68 = v261;
            *a3 = 0;
            *(a3 + 8) = 0;
            *(a3 + 16) = v65;
            *(a3 + 24) = v66;
            *(a3 + 40) = v67;
            *(a3 + 48) = v68;
          }

          if (LOBYTE(v274[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v274 + 8));
          }

          else
          {
            v73 = v249;
            if (!*(&v274[1] + 1) || (v275 & 1) == 0)
            {
LABEL_87:
              if (!v18)
              {
                goto LABEL_380;
              }

              re::ReadOnlyCPUAccessibleBufferSliceContent::make((v73 + 216), v274);
              v74 = LOBYTE(v274[0]);
              if (LOBYTE(v274[0]) == 1)
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(&v264, v274 + 1);
              }

              else
              {
LABEL_98:
                v77 = std::system_category();
                v78 = *v260;
                v79 = *&v260[16];
                v80 = v261;
                *a3 = 0;
                *(a3 + 8) = 0;
                *(a3 + 16) = v77;
                *(a3 + 24) = v78;
                *(a3 + 40) = v79;
                *(a3 + 48) = v80;
              }

              if (LOBYTE(v274[0]) == 1)
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v274 + 8));
              }

              else
              {
                v17 = v249;
                if (!*(&v274[1] + 1) || (v275 & 1) == 0)
                {
                  goto LABEL_108;
                }

                (*(**(&v274[1] + 1) + 40))(*(&v274[1] + 1), *(&v275 + 1));
              }

              v17 = v249;
LABEL_108:
              if (!v74)
              {
                goto LABEL_380;
              }

              v16 = 1;
LABEL_110:
              i = *v17;
              *v260 = 0;
              *&v260[8] = &str_67;
              HIDWORD(v263) = 0;
              v261 = 0;
              v262 = 0;
              *&v260[16] = 0;
              LOBYTE(v263) = 0;
              v12 = v11[8];
              if (v12 > v9)
              {
                v85 = v17;
                v86 = re::StringID::operator=(v260, (v11[9] + 16 * v9));
                LOBYTE(v263) = v16;
                v242 = *(v85 + 3);
                HIDWORD(v263) = v242 / 3;
                v6 = v264;
                v88 = (*(&v264 + 1) & 0xFFFFFFFFFFFFFFFCLL) - 4;
                if ((*(&v264 + 1) & 0xFFFFFFFFFFFFFFFCLL) == 4)
                {
                  v89 = v85;
                  v90 = 0;
                }

                else
                {
                  v90 = 0;
                  v91 = (v264 + 4);
                  while (*(v91 - 1) < *v91)
                  {
                    ++v90;
                    ++v91;
                    v88 -= 4;
                    if (!v88)
                    {
                      v90 = ((*(&v264 + 1) - 8) >> 2) + 1;
                      break;
                    }
                  }

                  v89 = v249;
                }

                v232 = *(&v282[0] + 1);
                v234 = v278[0];
                v92 = *(&v292 + 1);
                v93 = (v293 & 0xFFFFFFFFFFFFFFFCLL) - 4;
                if ((v293 & 0xFFFFFFFFFFFFFFFCLL) == 4)
                {
                  v94 = 1;
                }

                else
                {
                  v95 = (*(&v292 + 1) + 4);
                  v94 = 1;
                  while (*(v95 - 1) < *v95)
                  {
                    ++v94;
                    ++v95;
                    v93 -= 4;
                    if (!v93)
                    {
                      v94 = ((v293 - 8) >> 2) + 2;
                      v89 = v249;
                      goto LABEL_127;
                    }
                  }

                  v89 = v249;
                }

                if (v94 == 1 && !v90)
                {
LABEL_128:
                  v96 = *(v89 + 48);
                  v97 = *(v89 + 16);
                  if (*(v89 + 49))
                  {
                    v98 = *(v89 + 16);
                  }

                  else
                  {
                    v98 = 0;
                  }

                  if (*(v89 + 50))
                  {
                    v99 = *(v89 + 16);
                  }

                  else
                  {
                    v99 = 0;
                  }

                  v227 = 3 * i;
                  if (!i)
                  {
                    v251 = 0;
LABEL_142:
                    v253 = i;
                    if (v90)
                    {
                      v105 = 0;
                      v106 = 0;
                      v230 = (v97 << v96);
                      v228 = v98 + v230 + v99;
                      v238 = v90;
                      v240 = v6;
                      v236 = v92;
                      v247 = a3;
                      do
                      {
                        v107 = *(v92 + 4 * v105);
                        v108 = *(v6 + v105);
                        v109 = *(v6 + (v106 + 1));
                        v244 = (v106 + 1);
                        if (v107 >= v242)
                        {
                          if (v107 >= v230)
                          {
                            if (v98 + v230 <= v107)
                            {
                              if (v228 <= v107)
                              {
                                goto LABEL_397;
                              }

                              v110 = 3;
                            }

                            else
                            {
                              v110 = 2;
                            }
                          }

                          else
                          {
                            v110 = 1;
                          }
                        }

                        else
                        {
                          v110 = 0;
                        }

                        if (v108 < v109)
                        {
                          v111 = v107 % *(v249 + 16);
                          v112 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v111 ^ (v111 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v111 ^ (v111 >> 30))) >> 27));
                          v113 = v112 ^ (v112 >> 31);
                          a3 = *(v234 + 4 * v108);
                          v114 = v108 + 1;
                          v115 = (v232 + 4 * v108);
                          v4 = v234 + 4 + 4 * v108;
                          do
                          {
                            v116 = *v115;
                            if (*v115 != 0.0)
                            {
                              if (i <= a3)
                              {
                                goto LABEL_395;
                              }

                              v117 = v251 + 48 * a3;
                              re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v274, v117, v111, v113);
                              if (HIDWORD(v274[0]) == 0x7FFFFFFF)
                              {
                                memset(v271, 0, 20);
                                memset(v274, 0, 24);
                                re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v274, v117, v111, v113);
                                if (HIDWORD(v274[0]) == 0x7FFFFFFF)
                                {
                                  v118 = re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v117, DWORD2(v274[0]), *&v274[0]);
                                  *(v118 + 4) = v111;
                                  v119 = (v118 + 8);
                                  *(v118 + 8) = *v271;
                                  *(v118 + 24) = *&v271[16];
                                  ++*(v117 + 40);
                                }

                                else
                                {
                                  v119 = (*(v117 + 16) + 40 * HIDWORD(v274[0]) + 8);
                                }

                                *v119 = v111;
                                a3 = *(v4 - 4);
                              }

                              else
                              {
                                v119 = (*(v117 + 16) + 40 * HIDWORD(v274[0]) + 8);
                              }

                              i = v253;
                              *&v119[v110 + 1] = v116;
                            }

                            v121 = *v4;
                            v4 += 4;
                            v120 = v121;
                            v122 = v121 <= a3 || v114++ >= v109;
                            ++v115;
                            a3 = v120;
                          }

                          while (!v122);
                        }

                        v105 = v244;
                        a3 = v247;
                        v106 = v244;
                        v6 = v240;
                        v92 = v236;
                      }

                      while (v238 > v244);
                    }

                    v9 = v251;
                    if (i)
                    {
                      for (i = 0; i != v253; ++i)
                      {
                        v8 = v261;
                        if (v261 <= i)
                        {
                          goto LABEL_412;
                        }

                        v8 = *(v249 + 32);
                        if (v8 <= i)
                        {
                          goto LABEL_414;
                        }

                        v6 = (v262 + 136 * i);
                        v4 = v9 + 48 * i;
                        v123 = *(v4 + 28);
                        v124 = re::StringID::operator=(v6, (*(v249 + 40) + 16 * i));
                        if (v123)
                        {
                          v127 = v249;
                          if (*(v249 + 48) == 1)
                          {
                            v127 = v249;
                          }

                          if (*(v127 + 49) == 1)
                          {
                            v127 = v249;
                          }

                          if (*(v127 + 50) == 1)
                          {
                          }

                          *&v273[2] = 0;
                          memset(v271, 0, sizeof(v271));
                          v128 = *(v4 + 28);
                          if (v128)
                          {
                            v126 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v271, v128);
                          }

                          v129 = *(v4 + 32);
                          if (v129)
                          {
                            v130 = 0;
                            v131 = *(v4 + 16);
                            while (1)
                            {
                              v132 = *v131;
                              v131 += 10;
                              if (v132 < 0)
                              {
                                break;
                              }

                              if (v129 == ++v130)
                              {
                                LODWORD(v130) = *(v4 + 32);
                                break;
                              }
                            }
                          }

                          else
                          {
                            LODWORD(v130) = 0;
                          }

                          v8 = *&v271[16];
                          if (v130 == v129)
                          {
                            v133 = *&v273[2];
                          }

                          else
                          {
                            v134 = *(v4 + 32);
                            do
                            {
                              v135 = *(v4 + 16);
                              if (v8 >= *&v271[8])
                              {
                                if (*&v271[8] < v8 + 1)
                                {
                                  if (*v271)
                                  {
                                    v136 = 2 * *&v271[8];
                                    if (!*&v271[8])
                                    {
                                      v136 = 8;
                                    }

                                    if (v136 <= v8 + 1)
                                    {
                                      v137 = v8 + 1;
                                    }

                                    else
                                    {
                                      v137 = v136;
                                    }

                                    v126 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v271, v137);
                                  }

                                  else
                                  {
                                    v126 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v271, v8 + 1);
                                    ++*&v271[24];
                                  }
                                }

                                v8 = *&v271[16];
                                v134 = *(v4 + 32);
                              }

                              v133 = *&v273[2];
                              *(*&v273[2] + 8 * v8++) = v135 + 40 * v130 + 8;
                              *&v271[16] = v8;
                              ++*&v271[24];
                              if (v134 <= v130 + 1)
                              {
                                v138 = v130 + 1;
                              }

                              else
                              {
                                v138 = v134;
                              }

                              while (v138 - 1 != v130)
                              {
                                LODWORD(v130) = v130 + 1;
                                if ((*(*(v4 + 16) + 40 * v130) & 0x80000000) != 0)
                                {
                                  goto LABEL_209;
                                }
                              }

                              LODWORD(v130) = v138;
LABEL_209:
                              ;
                            }

                            while (v130 != v129);
                          }

                          v139 = 126 - 2 * __clz(v8);
                          if (v8)
                          {
                            v140 = v139;
                          }

                          else
                          {
                            v140 = 0;
                          }

                          std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(v133, (v133 + 8 * v8), v140, 1);
                          if (v8)
                          {
                            v141 = 0;
                            v9 = v6[3];
                            while (v9 != v141)
                            {
                              v142 = *(v133 + 8 * v141);
                              *(v6[4] + 4 * v141) = *v142;
                              v4 = v6[6];
                              if (v4 <= v141)
                              {
                                goto LABEL_401;
                              }

                              *(v6[7] + 4 * v141) = v142[1];
                              if (*(v249 + 48) == 1)
                              {
                                v4 = v6[9];
                                if (v4 <= v141)
                                {
                                  goto LABEL_403;
                                }

                                *(v6[10] + 4 * v141) = v142[2];
                              }

                              if (*(v249 + 49) == 1)
                              {
                                v4 = v6[12];
                                if (v4 <= v141)
                                {
                                  goto LABEL_405;
                                }

                                *(v6[13] + 4 * v141) = v142[3];
                              }

                              if (*(v249 + 50) == 1)
                              {
                                v4 = v6[15];
                                if (v4 <= v141)
                                {
                                  goto LABEL_407;
                                }

                                *(v6[16] + 4 * v141) = v142[4];
                              }

                              if (v8 == ++v141)
                              {
                                goto LABEL_227;
                              }
                            }

                            v270 = 0;
                            v276 = 0u;
                            v277 = 0u;
                            v275 = 0u;
                            memset(v274, 0, sizeof(v274));
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v285 = 136315906;
                            *&v285[4] = "operator[]";
                            v286 = 1024;
                            v287 = 468;
                            v288 = 2048;
                            v289 = v9;
                            v290 = 2048;
                            v291 = v9;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
LABEL_400:
                            v270 = 0;
                            v276 = 0u;
                            v277 = 0u;
                            v275 = 0u;
                            memset(v274, 0, sizeof(v274));
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v285 = 136315906;
                            *&v285[4] = "operator[]";
                            v286 = 1024;
                            v287 = 468;
                            v288 = 2048;
                            v289 = v9;
                            v290 = 2048;
                            v291 = v9;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
LABEL_401:
                            v270 = 0;
                            v276 = 0u;
                            v277 = 0u;
                            v275 = 0u;
                            memset(v274, 0, sizeof(v274));
                            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v285 = 136315906;
                            *&v285[4] = "operator[]";
                            v286 = 1024;
                            v287 = 468;
                            v288 = 2048;
                            v289 = v141;
                            v290 = 2048;
                            v291 = v4;
                            _os_log_send_and_compose_impl();
                            _os_crash_msg();
                            __break(1u);
                            goto LABEL_402;
                          }

LABEL_227:
                          if (v133 && *v271)
                          {
                            (*(**v271 + 40))(*v271, v133);
                          }

                          v9 = v251;
                        }
                      }
                    }

                    v143 = *v260;
                    v144 = v261;
                    v145 = v262;
                    v146 = v263;
                    *a3 = 1;
                    *(a3 + 8) = v143;
                    *&v274[0] = 0;
                    *(&v274[0] + 1) = &str_67;
                    v147 = *&v260[8];
                    *v260 = 0;
                    *&v260[8] = &str_67;
                    v261 = 0;
                    v262 = 0;
                    *&v260[16] = 0;
                    *(a3 + 16) = v147;
                    v274[1] = 0uLL;
                    *(a3 + 32) = v144;
                    *(a3 + 40) = v145;
                    *(&v275 + 1) = v146;
                    *&v275 = 0;
                    *(a3 + 48) = v146;
                    v148 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v274[1]);
                    if (v274[0])
                    {
                      if (v274[0])
                      {
                      }
                    }

                    i = v253;
                    goto LABEL_236;
                  }

                  if (i <= 0x555555555555555)
                  {
                    if (v101)
                    {
                      v251 = v101;
                      v103 = v101;
                      v104 = i - 1;
                      if (i != 1)
                      {
                        v103 = v101;
                        do
                        {
                          *(v103 + 16) = 0uLL;
                          *(v103 + 32) = 0uLL;
                          *v103 = 0uLL;
                          *(v103 + 36) = 0x7FFFFFFF;
                          v103 += 48;
                          --v104;
                        }

                        while (v104);
                      }

                      *(v103 + 16) = 0u;
                      *(v103 + 32) = 0u;
                      *v103 = 0u;
                      *(v103 + 36) = 0x7FFFFFFF;
                      goto LABEL_142;
                    }

                    goto LABEL_424;
                  }

                  goto LABEL_422;
                }

LABEL_127:
                if (v90 == v94)
                {
                  goto LABEL_128;
                }

LABEL_277:
                v172 = std::system_category();
                v173 = v274[0];
                v174 = v274[1];
                *a3 = 0;
                *(a3 + 8) = 0;
                *(a3 + 16) = v172;
                *(a3 + 24) = v173;
                *(a3 + 40) = v174;
                goto LABEL_377;
              }

              goto LABEL_420;
            }

            (*(**(&v274[1] + 1) + 40))();
          }

          v73 = v249;
          goto LABEL_87;
        }

LABEL_74:
        v62 = std::system_category();
        v63 = v274[0];
        v64 = v274[1];
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = v62;
        *(a3 + 24) = v63;
        *(a3 + 40) = v64;
        goto LABEL_381;
      }

      goto LABEL_417;
    }

    goto LABEL_66;
  }

LABEL_64:
  v55 = std::system_category();
  v56 = "Deformation model does not contain blendshape data";
LABEL_67:
  v57 = v292;
  v58 = v293;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = v55;
  *(a3 + 24) = v57;
  *(a3 + 40) = v58;
LABEL_68:
  if (v255[0] == 1)
  {
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v256);
  }

  else if (v257)
  {
    if (v258)
    {
      (*(*v257 + 40))(v257, v259);
    }
  }
}

uint64_t re::BlendShapeModelUtil::computeBlendShapeModelSizeExcludingMetalBuffers(re::BlendShapeModelUtil *this, const DeformationModelData *a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = v2[2];
  v4 = 336 * v3 + 80;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = v2[3] + 336 * i;
      v7 = *(v6 + 32);
      v4 += 16 * v7;
      if (v7)
      {
        v8 = (*(v6 + 40) + 8);
        do
        {
          if (*(v8 - 1))
          {
            v9 = strlen(*v8) + 1;
          }

          else
          {
            v9 = 0;
          }

          v4 += v9;
          v8 += 2;
          --v7;
        }

        while (v7);
      }
    }
  }

  v10 = v2[8];
  v11 = v4 + 4 * v2[5] + 16 * v10;
  if (v10)
  {
    v12 = (v2[9] + 8);
    do
    {
      if (*(v12 - 1))
      {
        v13 = strlen(*v12) + 1;
      }

      else
      {
        v13 = 0;
      }

      v11 += v13;
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void re::BlendShapeDeformer::~BlendShapeDeformer(re::BlendShapeDeformer *this)
{
  re::BlendShapeDeformer::~BlendShapeDeformer(this);

  JUMPOUT(0x1E6906520);
}

{
  for (i = 80; i != 48; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  v4 = *(this + 6);
  if (v4)
  {

    *(this + 6) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {

    *(this + 5) = 0;
  }

  for (j = 32; j != 16; j -= 8)
  {
    v7 = *(this + j);
    if (v7)
    {

      *(this + j) = 0;
    }
  }

  do
  {
    v8 = *(this + j);
    if (v8)
    {

      *(this + j) = 0;
    }

    j -= 8;
  }

  while (j);
}

void re::anonymous namespace::allocateBlendShapeBufferData(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t *a5, int64x2_t *a6)
{
  v65[5] = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 16);
  if (a1)
  {
    if (v10 <= a3)
    {
      v49 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      v51 = 1024;
      v52 = 468;
      v53 = 2048;
      v54 = a3;
      v55 = 2048;
      *v56 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_35;
    }

    v11 = *(a2 + 24) + 336 * a3;
    v12 = [a1 newBufferWithLength:vaddvq_s64(vaddq_s64(a6[2] options:{vaddq_s64(a6[1], *a6))), 0}];
    *&v57 = v12;
    DWORD2(v58) = 0;
    LODWORD(v59) = 0;
    DWORD1(v59) = [v12 length];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11 + 56, &v57);
    *(v11 + 88) = v59;
    if (DWORD2(v58) != -1)
    {
      (off_1F5D05EF0[DWORD2(v58)])(v50, &v57);
    }

    DWORD2(v58) = -1;
    if (v12)
    {
    }

    v14 = *(v11 + 88);
    re::BufferSlice::buffer(v11 + 56, v13);
    v15 = *(v11 + 56);
    v48 = v11;
    v16 = re::BufferSlice::contents((v11 + 56));
    for (i = 0; i != 240; i += 40)
    {
      v18 = &v57 + i;
      *v18 = 0;
      *(v18 + 6) = 0;
      *(v18 + 4) = 0;
    }

    v19 = 0;
    v20 = 0;
    v21 = a4 + 1;
    do
    {
      v22 = a5[v20];
      *v50 = v15;
      HIDWORD(v54) = 0;
      *&v56[2] = __PAIR64__(v22, v14);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v57 + v19, v50);
      *(&v59 + v19) = *&v56[2];
      if (HIDWORD(v54) != -1)
      {
        (off_1F5D05EF0[HIDWORD(v54)])(&v49, v50);
      }

      v23 = a5[v20];
      *(v21 - 1) = v16 + v14;
      *v21 = v23;
      v14 += a6->i64[v20++];
      v21 += 2;
      v19 += 40;
    }

    while (v20 != 6);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v48 + 17), &v57);
    v48[21] = v59;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v48 + 12), &v59 + 8);
    v48[16] = *(&v61 + 1);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v48 + 22), v62);
    v48[26] = v62[4];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v48 + 27), v63);
    v48[31] = v63[4];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v48 + 32), v64);
    v48[36] = v64[4];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v48 + 37), v65);
    v24 = 0;
    v48[41] = v65[4];
    do
    {
      v25 = &v57 + v24 * 8;
      v26 = LODWORD(v65[v24 + 3]);
      if (v26 != -1)
      {
        (off_1F5D05EF0[v26])(v50, v25 + 200);
      }

      *(v25 + 56) = -1;
      v24 -= 5;
    }

    while (v24 != -30);
    if (v15)
    {
    }
  }

  else
  {
    if (v10 <= a3)
    {
LABEL_35:
      v49 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v50 = 136315906;
      *&v50[4] = "operator[]";
      v51 = 1024;
      v52 = 468;
      v53 = 2048;
      v54 = a3;
      v55 = 2048;
      *v56 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      if (v27 == 1)
      {
        v28 += a6->i64[1];
      }

      else
      {
        v29 += a6->i64[v27];
      }

      ++v27;
    }

    while (v27 != 6);
    v30 = (*(a2 + 24) + 184 * a3);
    v31 = re::globalAllocators(0);
    re::FixedArray<BOOL>::init<>(v30 + 5, v31[2], v28);
    v33 = re::globalAllocators(v32);
    re::FixedArray<BOOL>::init<>(v30 + 8, v33[2], v29);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = a6;
    do
    {
      v39 = *a5++;
      v38 = v39;
      if (v39)
      {
        if (v34 == 2)
        {
          a4[2] = v30[7] + v36;
          a4[3] = v38;
          v36 += a6->i64[1];
        }

        else
        {
          v41 = &a4[v34];
          *v41 = v30[10] + v35;
          v41[1] = v38;
          v35 += *v37;
        }
      }

      else
      {
        v40 = &a4[v34];
        *v40 = 0;
        v40[1] = 0;
      }

      v34 += 2;
      ++v37;
    }

    while (v34 != 12);
    v42 = a4[1];
    v30[13] = *a4;
    v30[14] = v42;
    v43 = a4[3];
    v30[11] = a4[2];
    v30[12] = v43;
    v44 = a4[5];
    v30[15] = a4[4];
    v30[16] = v44;
    v45 = a4[7];
    v30[17] = a4[6];
    v30[18] = v45;
    v46 = a4[9];
    v30[19] = a4[8];
    v30[20] = v46;
    v47 = a4[11];
    v30[21] = a4[10];
    v30[22] = v47;
  }
}

uint64_t re::internal::Callable<re::BlendShapeDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  re::FixedArray<CoreIKTransform>::deinit(*a2 + 3);

  return re::FixedArray<CoreIKTransform>::deinit(v2);
}

void *re::internal::Callable<re::BlendShapeDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F10;
  return result;
}

void *re::internal::Callable<re::BlendShapeDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F10;
  return result;
}

void re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

uint64_t re::internal::Callable<re::BlendShapeDeformer::stitchedFunctionParameters(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationParameters &,re::MutableSlice<re::StitchFunctionParameters> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  re::FixedArray<CoreIKTransform>::deinit(*a2 + 3);

  return re::FixedArray<CoreIKTransform>::deinit(v2);
}

void *re::internal::Callable<re::BlendShapeDeformer::stitchedFunctionParameters(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationParameters &,re::MutableSlice<re::StitchFunctionParameters> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F68;
  return result;
}

void *re::internal::Callable<re::BlendShapeDeformer::stitchedFunctionParameters(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationParameters &,re::MutableSlice<re::StitchFunctionParameters> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F68;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_22BlendShapeModelPayloadEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D05FC0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_22BlendShapeModelPayloadEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::StringID>::deinit((v2 + 56));
    re::FixedArray<CoreIKTransform>::deinit((v2 + 32));
    if (*(v2 + 8))
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        v5 = 184 * v4;
        v6 = (*(v2 + 24) + 64);
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v6);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 3);
          re::FixedArray<re::StringID>::deinit(v6 - 6);
          v6 += 23;
          v5 -= 184;
        }

        while (v5);
        (*(**(v2 + 8) + 40))(*(v2 + 8), *(v2 + 24));
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 8) = 0;
    }

    v7 = *(*v3 + 40);

    return v7(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_22BlendShapeModelPayloadEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_12_GLOBAL__N_115BlendShapeModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D06040;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_12_GLOBAL__N_115BlendShapeModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EEclEOSF_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::StringID>::deinit((v2 + 56));
    re::FixedArray<CoreIKTransform>::deinit((v2 + 32));
    if (*(v2 + 8))
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = *(v2 + 24);
        v7 = 336 * v4;
        do
        {
          v8 = v6 + v5;
          v9 = *(v6 + v5 + 320);
          if (v9 != -1)
          {
            (off_1F5D05EF0[v9])(&v19, v8 + 296);
          }

          *(v8 + 320) = -1;
          v10 = *(v8 + 280);
          if (v10 != -1)
          {
            (off_1F5D05EF0[v10])(&v20, v6 + v5 + 256);
          }

          *(v8 + 280) = -1;
          v11 = v6 + v5;
          v12 = *(v6 + v5 + 240);
          if (v12 != -1)
          {
            (off_1F5D05EF0[v12])(&v21, v11 + 216);
          }

          *(v11 + 240) = -1;
          v13 = *(v11 + 200);
          if (v13 != -1)
          {
            (off_1F5D05EF0[v13])(&v22, v6 + v5 + 176);
          }

          *(v11 + 200) = -1;
          v14 = v6 + v5;
          v15 = *(v6 + v5 + 160);
          if (v15 != -1)
          {
            (off_1F5D05EF0[v15])(&v23, v14 + 136);
          }

          *(v14 + 160) = -1;
          v16 = *(v14 + 120);
          if (v16 != -1)
          {
            (off_1F5D05EF0[v16])(&v24, v6 + v5 + 96);
          }

          *(v14 + 120) = -1;
          v17 = v6 + v5;
          v18 = *(v6 + v5 + 80);
          if (v18 != -1)
          {
            (off_1F5D05EF0[v18])(&v25, v17 + 56);
          }

          *(v17 + 80) = -1;
          re::FixedArray<re::StringID>::deinit((v17 + 24));
          v5 += 336;
        }

        while (v7 != v5);
        (*(**(v2 + 8) + 40))(*(v2 + 8), *(v2 + 24));
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 8) = 0;
    }

    return (*(*v3 + 40))(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_12_GLOBAL__N_115BlendShapeModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::DynamicArray<void re::anonymous namespace::buildSparseBlendShape<unsigned int>(re::mtl::Device const&,re::BlendShapeGroupDefinition const&,re::DeformationModelData &,unsigned long)::ComponentInfluence>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v8 = 2 * v4;
      v9 = v4 == 0;
      v10 = 8;
      if (!v9)
      {
        v10 = v8;
      }

      if (v10 <= v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = v10;
      }
    }

    else
    {
      ++*(v3 + 6);
    }
  }

  *(*(v3 + 4) + 8 * (*(v3 + 2))++) = *a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<void re::anonymous namespace::buildSparseBlendShape<unsigned int>(re::mtl::Device const&,re::BlendShapeGroupDefinition const&,re::DeformationModelData &,unsigned long)::ComponentInfluence>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 4);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, int a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 40 * v6 + 4) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 4) == a3)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(v13 + 32) % *(a1 + 24));
                *(v17 + 4) = *(v13 + 4);
                v18 = *(v13 + 8);
                *(v17 + 24) = *(v13 + 24);
                *(v17 + 8) = v18;
              }

              v13 += 40;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 40 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 40 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 32) = a3;
  ++*(a1 + 28);
  return v19 + 40 * v5;
}

void re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

void *re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (a2 >> 61)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 8, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 8 * a2;
          result = (*(*result + 32))(result, 8 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 8 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(unint64_t result, unsigned int **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*v76 < **v8)
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *v85;
      v90 = **v8;
      v91 = *v87;
      if (*v85 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_186;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = v8 + 1;
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_178;
        }
      }

      else
      {
        v92 = v8;
        v93 = v8 + 2;
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = v8 + 2;
          result = v88;
          if (v91 >= v90)
          {
LABEL_186:
            v85 = v87;
            goto LABEL_187;
          }
        }

LABEL_178:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_187:
      v143 = *(a2 - 1);
      if (*v143 < *v85)
      {
        *v86 = v143;
        *(a2 - 1) = v85;
        v144 = *v86;
        v145 = *v84;
        v146 = *v144;
        if (*v144 < *v145)
        {
          v8[1] = v144;
          v8[2] = v145;
          v147 = *v8;
          if (v146 < **v8)
          {
            *v8 = v144;
            v8[1] = v147;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 0;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *v99;
            if (*v99 < *v100)
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102 + 8) = v100;
                if (!v102)
                {
                  break;
                }

                v100 = *(v8 + v102 - 8);
                v102 -= 8;
                if (v101 >= *v100)
                {
                  v103 = (v8 + v102 + 8);
                  goto LABEL_129;
                }
              }

              v103 = v8;
LABEL_129:
              *v103 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v140 = *v7;
          v139 = v7[1];
          v7 = v94;
          v141 = *v139;
          if (*v139 < *v140)
          {
            v142 = v7;
            do
            {
              *v142 = v140;
              v140 = *(v142 - 2);
              --v142;
            }

            while (v141 < *v140);
            *v142 = v139;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v104 = (v9 - 2) >> 1;
        v105 = v104;
        do
        {
          v106 = v105;
          if (v104 >= v105)
          {
            v107 = (2 * v105) | 1;
            v108 = &v8[v107];
            v109 = *v108;
            if (2 * v106 + 2 >= v9)
            {
              v110 = *v109;
            }

            else
            {
              v110 = *v109;
              result = *v108[1];
              if (*v109 <= result)
              {
                v110 = *v108[1];
              }

              if (*v109 < result)
              {
                v109 = v108[1];
                ++v108;
                v107 = 2 * v106 + 2;
              }
            }

            v111 = &v8[v106];
            v112 = *v111;
            v113 = **v111;
            if (v110 >= v113)
            {
              do
              {
                v114 = v108;
                *v111 = v109;
                if (v104 < v107)
                {
                  break;
                }

                v115 = (2 * v107) | 1;
                v108 = &v8[v115];
                v107 = 2 * v107 + 2;
                v109 = *v108;
                if (v107 >= v9)
                {
                  result = *v109;
                  v107 = v115;
                }

                else
                {
                  LODWORD(result) = *v109;
                  v116 = *v108[1];
                  result = *v109 <= v116 ? v116 : result;
                  if (*v109 >= v116)
                  {
                    v107 = v115;
                  }

                  else
                  {
                    v109 = v108[1];
                    ++v108;
                  }
                }

                v111 = v114;
              }

              while (result >= v113);
              *v114 = v112;
            }
          }

          v105 = v106 - 1;
        }

        while (v106);
        do
        {
          v117 = 0;
          v118 = *v8;
          v119 = v8;
          do
          {
            v120 = &v119[v117];
            v121 = v120 + 1;
            v122 = v120[1];
            v123 = (2 * v117) | 1;
            v117 = 2 * v117 + 2;
            if (v117 >= v9)
            {
              v117 = v123;
            }

            else
            {
              v126 = v120[2];
              v124 = v120 + 2;
              v125 = v126;
              result = *v122;
              v127 = *v126;
              if (result < *v126)
              {
                v122 = v125;
                v121 = v124;
              }

              if (result >= v127)
              {
                v117 = v123;
              }
            }

            *v119 = v122;
            v119 = v121;
          }

          while (v117 <= ((v9 - 2) >> 1));
          if (v121 == --a2)
          {
            *v121 = v118;
          }

          else
          {
            *v121 = *a2;
            *a2 = v118;
            v128 = (v121 - v8 + 8) >> 3;
            v129 = v128 < 2;
            v130 = v128 - 2;
            if (!v129)
            {
              v131 = v130 >> 1;
              v132 = &v8[v131];
              v133 = *v132;
              v134 = *v121;
              v135 = **v121;
              if (**v132 < v135)
              {
                do
                {
                  v136 = v132;
                  *v121 = v133;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = &v8[v131];
                  v133 = *v132;
                  v121 = v136;
                }

                while (**v132 < v135);
                *v136 = v134;
              }
            }
          }

          v129 = v9-- <= 2;
        }

        while (!v129);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *v12;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = **v10;
      v17 = **v8;
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (**v10 < **v8)
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*v24 < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *v26;
      v29 = *v27;
      v30 = *(a2 - 2);
      v31 = *v30;
      if (*v26 >= *v27)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (**v25 < *v32)
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*v34 < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *v37;
      v40 = *v38;
      v41 = *(a2 - 3);
      v42 = *v41;
      if (*v37 >= *v38)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (**v35 < *v43)
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*v44 < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = **v11;
      v48 = **v25;
      v49 = *v35;
      v50 = **v35;
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = **v8;
    v21 = **v11;
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (**v8 < **v11)
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 >= v20)
    {
      *v11 = v18;
      *v8 = v19;
      v33 = *(a2 - 1);
      if (*v33 >= v21)
      {
        goto LABEL_57;
      }

      *v8 = v33;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v19;
LABEL_57:
    --a3;
    v52 = *v8;
    v53 = **v8;
    if ((a4 & 1) != 0 || **(v8 - 1) < v53)
    {
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*v55 < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*v59 >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*v58 >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*v63 < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*v64 >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_80;
      }

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      if (v53 >= **(a2 - 1))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= **v8);
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *v67);
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *v70);
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *v73);
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *v74);
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *v79;
  v81 = **v8;
  v82 = *(a2 - 1);
  v83 = *v82;
  if (*v79 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v138 = *v8;
      v137 = v8[1];
      if (*v137 < **v8)
      {
        *v8 = v137;
        v8[1] = v138;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v148 = *(a2 - 1);
      if (*v148 >= v81)
      {
        return result;
      }

      v8[1] = v148;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

unsigned int **std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,0>(unsigned int **result, unsigned int **a2, unsigned int **a3, unsigned int **a4, unsigned int **a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = **a2;
  v8 = **result;
  v9 = *a3;
  v10 = **a3;
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (**a3 < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (**a4 < *v5)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (**a3 < **a2)
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (**a2 < **result)
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (**a5 < **a4)
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (**a4 < **a3)
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (**a3 < **a2)
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (**a2 < **result)
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**>(unsigned int **a1, unsigned int **a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *v6;
      v8 = **a1;
      v9 = *(a2 - 1);
      v10 = *v9;
      if (*v6 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*v31 < **a1)
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*v47 >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *v21;
    v26 = **a1;
    v27 = *v23;
    if (*v21 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*v42 < *v21)
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *v43;
          if (*v43 < *v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < **a1)
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*v3 < **a1)
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *v13;
  v16 = **a1;
  v17 = *v11;
  if (*v13 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = **v33;
    if (v38 < *v37)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *v37)
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

_anonymous_namespace_ *re::MaterialManager::init(re::MaterialManager *this, re::RenderManager *a2, BOOL a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51, __int128 a52, __int128 a53)
{
  MEMORY[0x1EEE9AC00](this);
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = &STACK[0xBF0];
  STACK[0x10F8] = *MEMORY[0x1E69E9840];
  *(v58 + 112) = v56;
  v61 = "fallback";
  *(v58 + 83) = re::MaterialManager::createTextureTableForName(v58, "fallback");
  *(v59 + 81) = re::MaterialManager::createTextureTableForName(v59, "light");
  *(v59 + 82) = re::MaterialManager::createTextureTableForName(v59, "global");
  *(v59 + 80) = re::MaterialManager::createTextureTableForName(v59, "brdf");
  BufferTableForName = re::MaterialManager::createBufferTableForName(v59, "fallback");
  *(v59 + 91) = BufferTableForName;
  if (!*(v59 + 93))
  {
LABEL_322:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 0;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_323;
  }

  v63 = *(v59 + 94);
  STACK[0x3F0] = "zeros";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=(v63, &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 1)
  {
LABEL_323:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 1;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_324;
  }

  v64 = *(v59 + 94);
  STACK[0x3F0] = "ones";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v64 + 32), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 2)
  {
LABEL_324:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 2;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_325;
  }

  v65 = *(v59 + 94);
  STACK[0x3F0] = "xDir";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v65 + 64), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 3)
  {
LABEL_325:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 3;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_326;
  }

  v66 = *(v59 + 94);
  STACK[0x3F0] = "yDir";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v66 + 96), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 4)
  {
LABEL_326:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 4;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_327;
  }

  v67 = *(v59 + 94);
  STACK[0x3F0] = "zDir";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v67 + 128), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 5)
  {
LABEL_327:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 5;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_328;
  }

  v68 = *(v59 + 94);
  STACK[0x3F0] = "origin";
  STACK[0x3F8] = 6;
  re::DynamicString::operator=((v68 + 160), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 6)
  {
LABEL_328:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 6;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_329;
  }

  v69 = *(v59 + 94);
  STACK[0x3F0] = "xUnit";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=((v69 + 192), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 7)
  {
LABEL_329:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 7;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_330;
  }

  v70 = *(v59 + 94);
  STACK[0x3F0] = "yUnit";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=((v70 + 224), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 8)
  {
LABEL_330:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 8;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_331;
  }

  v71 = *(v59 + 94);
  STACK[0x3F0] = "zUnit";
  STACK[0x3F8] = 5;
  re::DynamicString::operator=((v71 + 256), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 9)
  {
LABEL_331:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 9;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_332;
  }

  v72 = *(v59 + 94);
  STACK[0x3F0] = "gray";
  STACK[0x3F8] = 4;
  re::DynamicString::operator=((v72 + 288), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xA)
  {
LABEL_332:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 10;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_333;
  }

  v73 = *(v59 + 94);
  STACK[0x3F0] = "identityMatrix";
  STACK[0x3F8] = 14;
  re::DynamicString::operator=((v73 + 320), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xB)
  {
LABEL_333:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 11;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_334;
  }

  v74 = *(v59 + 94);
  STACK[0x3F0] = "zeros128bytes";
  STACK[0x3F8] = 13;
  re::DynamicString::operator=((v74 + 352), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xC)
  {
LABEL_334:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 12;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_335;
  }

  v75 = *(v59 + 94);
  STACK[0x3F0] = "zeros1024bytes";
  STACK[0x3F8] = 14;
  re::DynamicString::operator=((v75 + 384), &STACK[0x3F0]);
  v61 = *(v59 + 93);
  if (v61 <= 0xD)
  {
LABEL_335:
    *&a48 = 0;
    *&STACK[0x430] = 0u;
    *&STACK[0x420] = 0u;
    *&STACK[0x410] = 0u;
    *&STACK[0x3F0] = 0u;
    *&STACK[0x400] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0xBF0]) = 136315906;
    *(v60 + 4) = "operator[]";
    LOWORD(STACK[0xBFC]) = 1024;
    *(v60 + 14) = 468;
    LOWORD(STACK[0xC02]) = 2048;
    *(v60 + 20) = 13;
    LOWORD(STACK[0xC0C]) = 2048;
    *(v60 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_336:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 0;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_337:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 1;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v57;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_338:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 2;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_339:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 3;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_340:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 4;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_341:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 5;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_342:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 6;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_343:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 7;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_344:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 8;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_345:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 9;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_346:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 10;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_347:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 11;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_348:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 12;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_349;
  }

  v76 = *(v59 + 94);
  STACK[0x3F0] = "zeros2048bytes";
  STACK[0x3F8] = 14;
  re::DynamicString::operator=((v76 + 416), &STACK[0x3F0]);
  a44 = 0;
  a45 = 0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a44 length:16 options:0];
  v77 = (v59 + 760);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 95, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 95) setLabel_];
  __asm { FMOV            V0.4S, #1.0 }

  a43 = _Q0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a43 length:16 options:0];
  v306 = (v59 + 768);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 96, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 96) setLabel_];
  a42 = xmmword_1E3047670;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a42 length:16 options:0];
  v305 = (v59 + 776);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 97, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 97) setLabel_];
  a41 = xmmword_1E3047680;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a41 length:16 options:0];
  v304 = (v59 + 784);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 98, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 98) setLabel_];
  a40 = xmmword_1E30476A0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a40 length:16 options:0];
  v303 = (v59 + 792);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 99, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 99) setLabel_];
  a39 = xmmword_1E30474D0;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a39 length:16 options:0];
  v302 = (v59 + 800);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 100, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 100) setLabel_];
  a38 = xmmword_1E3060D30;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a38 length:16 options:0];
  v301 = (v59 + 808);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 101, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 101) setLabel_];
  a37 = xmmword_1E3071540;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a37 length:16 options:0];
  v300 = (v59 + 816);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 102, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 102) setLabel_];
  a36 = xmmword_1E3063230;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a36 length:16 options:0];
  v299 = (v59 + 824);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 103, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 103) setLabel_];
  a35 = xmmword_1E30B4E10;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a35 length:16 options:0];
  v298 = (v59 + 832);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 104, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  v61 = v55;
  [*(v59 + 104) setLabel_];
  a31 = 0u;
  a32 = 0u;
  a33 = 0u;
  a34 = 0u;
  LODWORD(a31) = 1065353216;
  DWORD1(a32) = 1065353216;
  DWORD2(a33) = 1065353216;
  HIDWORD(a34) = 1065353216;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&a31 length:64 options:0];
  v83 = (v59 + 840);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 105, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 105) setLabel_];
  *&STACK[0x1060] = 0u;
  *&STACK[0x1050] = 0u;
  *&STACK[0x1040] = 0u;
  *&STACK[0x1030] = 0u;
  *&STACK[0x1020] = 0u;
  *&STACK[0x1010] = 0u;
  *&STACK[0x1000] = 0u;
  *&STACK[0xFF0] = 0u;
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&STACK[0xFF0] length:128 options:0];
  v84 = (v59 + 848);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 106, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 106) setLabel_];
  bzero(&STACK[0xBF0], 0x400uLL);
  STACK[0x3F0] = [v57[26] newBufferWithBytes:&STACK[0xBF0] length:1024 options:0];
  v85 = (v59 + 856);
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 107, &STACK[0x3F0]);
  if (STACK[0x3F0])
  {
  }

  [*(v59 + 107) setLabel_];
  bzero(&STACK[0x3F0], 0x800uLL);
  *&a48 = [v57[26] newBufferWithBytes:&STACK[0x3F0] length:2048 options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 108, &a48);
  if (a48)
  {
  }

  [*(v59 + 108) setLabel_];
  if (v61)
  {
    v61 = v59 + 840;
    *&a48 = [v57[26] newBufferWithBytes:&re::GammaLUTHelper::gammaLUTData(void)::s_luts length:0x20000 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(v59 + 109, &a48);
    if (a48)
    {
    }

    [*(v59 + 109) setLabel_];
    v85 = (v59 + 856);
    v84 = (v59 + 848);
    v83 = (v59 + 840);
  }

  else
  {
    NS::SharedPtr<MTL::Buffer>::operator=(v59 + 109, v59 + 95);
  }

  a48 = xmmword_1E3047670;
  a49 = xmmword_1E3047680;
  a50 = xmmword_1E30476A0;
  a51 = xmmword_1E30474D0;
  a52 = xmmword_1E3047670;
  a53 = xmmword_1E3047680;
  *&STACK[0x260] = xmmword_1E30476A0;
  *&STACK[0x270] = xmmword_1E30474D0;
  *&STACK[0x280] = xmmword_1E3047670;
  *&STACK[0x290] = xmmword_1E3047680;
  *&STACK[0x2A0] = xmmword_1E30476A0;
  *&STACK[0x2B0] = xmmword_1E3047670;
  *&STACK[0x2C0] = xmmword_1E3047680;
  *&STACK[0x2D0] = xmmword_1E30476A0;
  STACK[0x10A0] = [v57[26] newBufferWithBytes:&a48 length:256 options:0];
  NS::SharedPtr<MTL::Texture>::operator=(v59 + 110, &STACK[0x10A0]);
  v86 = STACK[0x10A0];
  if (STACK[0x10A0])
  {
  }

  v53 = &STACK[0x1070];
  v57 = *(v59 + 91);
  if (!*(v59 + 93))
  {
    goto LABEL_336;
  }

  v87 = *(v59 + 91);
  v88 = *(v59 + 94);
  v89 = *(v88 + 8);
  if (v89)
  {
    v91 = *(v88 + 16);
    if (!v91)
    {
      v95 = (v59 + 864);
      v96 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_62;
    }

    LOBYTE(v88) = *v91;
  }

  else
  {
    v90 = v89 >> 8;
    v91 = (v88 + 9);
    LOBYTE(v88) = v90;
  }

  if (v88)
  {
    v88 = v88;
    v92 = v91[1];
    if (v92)
    {
      v93 = v91 + 2;
      do
      {
        v88 = 31 * v88 + v92;
        v94 = *v93++;
        v92 = v94;
      }

      while (v94);
    }

    v95 = (v59 + 864);
    v96 = v88 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v95 = (v59 + 864);
    v96 = 0;
  }

LABEL_62:
  STACK[0x1070] = v96;
  STACK[0x10A0] = *v77;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v77 length];
  re::BufferTable::setBuffer(v87, &STACK[0x1070], &STACK[0x10A0]);
  v97 = LODWORD(STACK[0x10B8]);
  if (v97 != -1)
  {
    (off_1F5D060B0[v97])(&a47, &STACK[0x10A0]);
  }

  v57 = *(v59 + 93);
  if (v57 <= 1)
  {
    goto LABEL_337;
  }

  v98 = *(v59 + 91);
  v99 = *(v59 + 94);
  v100 = *(v99 + 40);
  if (v100)
  {
    v102 = *(v99 + 48);
    if (!v102)
    {
      v106 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_76;
    }

    LOBYTE(v99) = *v102;
  }

  else
  {
    v101 = v100 >> 8;
    v102 = (v99 + 41);
    LOBYTE(v99) = v101;
  }

  if (v99)
  {
    v99 = v99;
    v103 = v102[1];
    if (v103)
    {
      v104 = v102 + 2;
      do
      {
        v99 = 31 * v99 + v103;
        v105 = *v104++;
        v103 = v105;
      }

      while (v105);
    }

    v106 = v99 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v106 = 0;
  }

LABEL_76:
  STACK[0x1070] = v106;
  STACK[0x10A0] = *v306;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v306 length];
  re::BufferTable::setBuffer(v98, &STACK[0x1070], &STACK[0x10A0]);
  v107 = LODWORD(STACK[0x10B8]);
  if (v107 != -1)
  {
    (off_1F5D060B0[v107])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 2)
  {
    goto LABEL_338;
  }

  v108 = *(v59 + 91);
  v109 = *(v59 + 94);
  v110 = *(v109 + 72);
  if (v110)
  {
    v112 = *(v109 + 80);
    if (!v112)
    {
      v116 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_90;
    }

    LOBYTE(v109) = *v112;
  }

  else
  {
    v111 = v110 >> 8;
    v112 = (v109 + 73);
    LOBYTE(v109) = v111;
  }

  if (v109)
  {
    v109 = v109;
    v113 = v112[1];
    if (v113)
    {
      v114 = v112 + 2;
      do
      {
        v109 = 31 * v109 + v113;
        v115 = *v114++;
        v113 = v115;
      }

      while (v115);
    }

    v116 = v109 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v116 = 0;
  }

LABEL_90:
  STACK[0x1070] = v116;
  STACK[0x10A0] = *v305;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v305 length];
  re::BufferTable::setBuffer(v108, &STACK[0x1070], &STACK[0x10A0]);
  v117 = LODWORD(STACK[0x10B8]);
  if (v117 != -1)
  {
    (off_1F5D060B0[v117])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 3)
  {
    goto LABEL_339;
  }

  v118 = *(v59 + 91);
  v119 = *(v59 + 94);
  v120 = *(v119 + 104);
  if (v120)
  {
    v122 = *(v119 + 112);
    if (!v122)
    {
      v126 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_104;
    }

    LOBYTE(v119) = *v122;
  }

  else
  {
    v121 = v120 >> 8;
    v122 = (v119 + 105);
    LOBYTE(v119) = v121;
  }

  if (v119)
  {
    v119 = v119;
    v123 = v122[1];
    if (v123)
    {
      v124 = v122 + 2;
      do
      {
        v119 = 31 * v119 + v123;
        v125 = *v124++;
        v123 = v125;
      }

      while (v125);
    }

    v126 = v119 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v126 = 0;
  }

LABEL_104:
  STACK[0x1070] = v126;
  STACK[0x10A0] = *v304;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v304 length];
  re::BufferTable::setBuffer(v118, &STACK[0x1070], &STACK[0x10A0]);
  v127 = LODWORD(STACK[0x10B8]);
  if (v127 != -1)
  {
    (off_1F5D060B0[v127])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 4)
  {
    goto LABEL_340;
  }

  v128 = *(v59 + 91);
  v129 = *(v59 + 94);
  v130 = *(v129 + 136);
  if (v130)
  {
    v132 = *(v129 + 144);
    if (!v132)
    {
      v136 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_118;
    }

    LOBYTE(v129) = *v132;
  }

  else
  {
    v131 = v130 >> 8;
    v132 = (v129 + 137);
    LOBYTE(v129) = v131;
  }

  if (v129)
  {
    v129 = v129;
    v133 = v132[1];
    if (v133)
    {
      v134 = v132 + 2;
      do
      {
        v129 = 31 * v129 + v133;
        v135 = *v134++;
        v133 = v135;
      }

      while (v135);
    }

    v136 = v129 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v136 = 0;
  }

LABEL_118:
  STACK[0x1070] = v136;
  STACK[0x10A0] = *v303;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v303 length];
  re::BufferTable::setBuffer(v128, &STACK[0x1070], &STACK[0x10A0]);
  v137 = LODWORD(STACK[0x10B8]);
  if (v137 != -1)
  {
    (off_1F5D060B0[v137])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 5)
  {
    goto LABEL_341;
  }

  v138 = *(v59 + 91);
  v139 = *(v59 + 94);
  v140 = *(v139 + 168);
  if (v140)
  {
    v142 = *(v139 + 176);
    if (!v142)
    {
      v146 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_132;
    }

    LOBYTE(v139) = *v142;
  }

  else
  {
    v141 = v140 >> 8;
    v142 = (v139 + 169);
    LOBYTE(v139) = v141;
  }

  if (v139)
  {
    v139 = v139;
    v143 = v142[1];
    if (v143)
    {
      v144 = v142 + 2;
      do
      {
        v139 = 31 * v139 + v143;
        v145 = *v144++;
        v143 = v145;
      }

      while (v145);
    }

    v146 = v139 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v146 = 0;
  }

LABEL_132:
  STACK[0x1070] = v146;
  STACK[0x10A0] = *v302;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v302 length];
  re::BufferTable::setBuffer(v138, &STACK[0x1070], &STACK[0x10A0]);
  v147 = LODWORD(STACK[0x10B8]);
  if (v147 != -1)
  {
    (off_1F5D060B0[v147])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 6)
  {
    goto LABEL_342;
  }

  v148 = *(v59 + 91);
  v149 = *(v59 + 94);
  v150 = *(v149 + 200);
  if (v150)
  {
    v152 = *(v149 + 208);
    if (!v152)
    {
      v156 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_146;
    }

    LOBYTE(v149) = *v152;
  }

  else
  {
    v151 = v150 >> 8;
    v152 = (v149 + 201);
    LOBYTE(v149) = v151;
  }

  if (v149)
  {
    v149 = v149;
    v153 = v152[1];
    if (v153)
    {
      v154 = v152 + 2;
      do
      {
        v149 = 31 * v149 + v153;
        v155 = *v154++;
        v153 = v155;
      }

      while (v155);
    }

    v156 = v149 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v156 = 0;
  }

LABEL_146:
  STACK[0x1070] = v156;
  STACK[0x10A0] = *v301;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v301 length];
  re::BufferTable::setBuffer(v148, &STACK[0x1070], &STACK[0x10A0]);
  v157 = LODWORD(STACK[0x10B8]);
  if (v157 != -1)
  {
    (off_1F5D060B0[v157])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 7)
  {
    goto LABEL_343;
  }

  v158 = *(v59 + 91);
  v159 = *(v59 + 94);
  v160 = *(v159 + 232);
  if (v160)
  {
    v162 = *(v159 + 240);
    if (!v162)
    {
      v166 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_160;
    }

    LOBYTE(v159) = *v162;
  }

  else
  {
    v161 = v160 >> 8;
    v162 = (v159 + 233);
    LOBYTE(v159) = v161;
  }

  if (v159)
  {
    v159 = v159;
    v163 = v162[1];
    if (v163)
    {
      v164 = v162 + 2;
      do
      {
        v159 = 31 * v159 + v163;
        v165 = *v164++;
        v163 = v165;
      }

      while (v165);
    }

    v166 = v159 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v166 = 0;
  }

LABEL_160:
  STACK[0x1070] = v166;
  STACK[0x10A0] = *v300;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v300 length];
  re::BufferTable::setBuffer(v158, &STACK[0x1070], &STACK[0x10A0]);
  v167 = LODWORD(STACK[0x10B8]);
  if (v167 != -1)
  {
    (off_1F5D060B0[v167])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 8)
  {
    goto LABEL_344;
  }

  v168 = *(v59 + 91);
  v169 = *(v59 + 94);
  v170 = *(v169 + 264);
  if (v170)
  {
    v172 = *(v169 + 272);
    if (!v172)
    {
      v176 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_174;
    }

    LOBYTE(v169) = *v172;
  }

  else
  {
    v171 = v170 >> 8;
    v172 = (v169 + 265);
    LOBYTE(v169) = v171;
  }

  if (v169)
  {
    v169 = v169;
    v173 = v172[1];
    if (v173)
    {
      v174 = v172 + 2;
      do
      {
        v169 = 31 * v169 + v173;
        v175 = *v174++;
        v173 = v175;
      }

      while (v175);
    }

    v176 = v169 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v176 = 0;
  }

LABEL_174:
  STACK[0x1070] = v176;
  STACK[0x10A0] = *v299;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v299 length];
  re::BufferTable::setBuffer(v168, &STACK[0x1070], &STACK[0x10A0]);
  v177 = LODWORD(STACK[0x10B8]);
  if (v177 != -1)
  {
    (off_1F5D060B0[v177])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 9)
  {
    goto LABEL_345;
  }

  v178 = *(v59 + 91);
  v179 = *(v59 + 94);
  v180 = *(v179 + 296);
  if (v180)
  {
    v182 = *(v179 + 304);
    if (!v182)
    {
      v186 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_188;
    }

    LOBYTE(v179) = *v182;
  }

  else
  {
    v181 = v180 >> 8;
    v182 = (v179 + 297);
    LOBYTE(v179) = v181;
  }

  if (v179)
  {
    v179 = v179;
    v183 = v182[1];
    if (v183)
    {
      v184 = v182 + 2;
      do
      {
        v179 = 31 * v179 + v183;
        v185 = *v184++;
        v183 = v185;
      }

      while (v185);
    }

    v186 = v179 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v186 = 0;
  }

LABEL_188:
  STACK[0x1070] = v186;
  STACK[0x10A0] = *v298;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v298 length];
  re::BufferTable::setBuffer(v178, &STACK[0x1070], &STACK[0x10A0]);
  v187 = LODWORD(STACK[0x10B8]);
  if (v187 != -1)
  {
    (off_1F5D060B0[v187])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xA)
  {
    goto LABEL_346;
  }

  v188 = *(v59 + 91);
  v189 = *(v59 + 94);
  v190 = *(v189 + 328);
  if (v190)
  {
    v192 = *(v189 + 336);
    if (!v192)
    {
      v196 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_202;
    }

    LOBYTE(v189) = *v192;
  }

  else
  {
    v191 = v190 >> 8;
    v192 = (v189 + 329);
    LOBYTE(v189) = v191;
  }

  if (v189)
  {
    v189 = v189;
    v193 = v192[1];
    if (v193)
    {
      v194 = v192 + 2;
      do
      {
        v189 = 31 * v189 + v193;
        v195 = *v194++;
        v193 = v195;
      }

      while (v195);
    }

    v196 = v189 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v196 = 0;
  }

LABEL_202:
  STACK[0x1070] = v196;
  STACK[0x10A0] = *v83;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v83 length];
  re::BufferTable::setBuffer(v188, &STACK[0x1070], &STACK[0x10A0]);
  v197 = LODWORD(STACK[0x10B8]);
  if (v197 != -1)
  {
    (off_1F5D060B0[v197])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xB)
  {
    goto LABEL_347;
  }

  v198 = *(v59 + 91);
  v199 = *(v59 + 94);
  v200 = *(v199 + 360);
  if (v200)
  {
    v202 = *(v199 + 368);
    if (!v202)
    {
      v206 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_216;
    }

    LOBYTE(v199) = *v202;
  }

  else
  {
    v201 = v200 >> 8;
    v202 = (v199 + 361);
    LOBYTE(v199) = v201;
  }

  if (v199)
  {
    v199 = v199;
    v203 = v202[1];
    if (v203)
    {
      v204 = v202 + 2;
      do
      {
        v199 = 31 * v199 + v203;
        v205 = *v204++;
        v203 = v205;
      }

      while (v205);
    }

    v206 = v199 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v206 = 0;
  }

LABEL_216:
  STACK[0x1070] = v206;
  STACK[0x10A0] = *v84;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v84 length];
  re::BufferTable::setBuffer(v198, &STACK[0x1070], &STACK[0x10A0]);
  v207 = LODWORD(STACK[0x10B8]);
  if (v207 != -1)
  {
    (off_1F5D060B0[v207])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xC)
  {
    goto LABEL_348;
  }

  v208 = *(v59 + 91);
  v209 = *(v59 + 94);
  v210 = *(v209 + 392);
  if (v210)
  {
    v212 = *(v209 + 400);
    if (!v212)
    {
      v216 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_230;
    }

    LOBYTE(v209) = *v212;
  }

  else
  {
    v211 = v210 >> 8;
    v212 = (v209 + 393);
    LOBYTE(v209) = v211;
  }

  if (v209)
  {
    v209 = v209;
    v213 = v212[1];
    if (v213)
    {
      v214 = v212 + 2;
      do
      {
        v209 = 31 * v209 + v213;
        v215 = *v214++;
        v213 = v215;
      }

      while (v215);
    }

    v216 = v209 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v216 = 0;
  }

LABEL_230:
  STACK[0x1070] = v216;
  STACK[0x10A0] = *v85;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v85 length];
  re::BufferTable::setBuffer(v208, &STACK[0x1070], &STACK[0x10A0]);
  v217 = LODWORD(STACK[0x10B8]);
  if (v217 != -1)
  {
    (off_1F5D060B0[v217])(&a47, &STACK[0x10A0]);
  }

  v61 = *(v59 + 93);
  if (v61 <= 0xD)
  {
LABEL_349:
    a47 = 0;
    *&STACK[0x10E0] = 0u;
    *&STACK[0x10D0] = 0u;
    *&STACK[0x10C0] = 0u;
    *&STACK[0x10B0] = 0u;
    *&STACK[0x10A0] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(STACK[0x1070]) = 136315906;
    *(v53 + 4) = "operator[]";
    LOWORD(STACK[0x107C]) = 1024;
    *(v53 + 14) = 468;
    LOWORD(STACK[0x1082]) = 2048;
    *(v53 + 20) = 13;
    LOWORD(STACK[0x108C]) = 2048;
    *(v53 + 30) = v61;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v218 = *(v59 + 91);
  v219 = *(v59 + 94);
  v220 = *(v219 + 424);
  if (v220)
  {
    v222 = *(v219 + 432);
    if (!v222)
    {
      v226 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_244;
    }

    LOBYTE(v219) = *v222;
  }

  else
  {
    v221 = v220 >> 8;
    v222 = (v219 + 425);
    LOBYTE(v219) = v221;
  }

  if (v219)
  {
    v219 = v219;
    v223 = v222[1];
    if (v223)
    {
      v224 = v222 + 2;
      do
      {
        v219 = 31 * v219 + v223;
        v225 = *v224++;
        v223 = v225;
      }

      while (v225);
    }

    v226 = v219 & 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v226 = 0;
  }

LABEL_244:
  STACK[0x1070] = v226;
  STACK[0x10A0] = *v95;
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*v95 length];
  re::BufferTable::setBuffer(v218, &STACK[0x1070], &STACK[0x10A0]);
  v227 = LODWORD(STACK[0x10B8]);
  if (v227 != -1)
  {
    (off_1F5D060B0[v227])(&a47, &STACK[0x10A0]);
  }

  v228 = re::MaterialManager::createBufferTableForName(v59, "brdf");
  *(v59 + 89) = v228;
  v229 = *(v59 + 89);
  STACK[0x10A0] = 0x2803BD43311CF958;
  LOBYTE(STACK[0x1070]) = 0;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v229, &STACK[0x10A0], &STACK[0x1070]);
  if (!*(v229 + 280))
  {
    *(v229 + 280) = 1;
  }

  v230 = re::MaterialManager::createBufferTableForName(v59, "global");
  *(v59 + 90) = v230;
  v231 = *(v59 + 90);
  STACK[0x10A0] = 0x1C6D7B14F4E32CD0;
  LOBYTE(STACK[0x1070]) = 0;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v231, &STACK[0x10A0], &STACK[0x1070]);
  if (!*(v231 + 280))
  {
    *(v231 + 280) = 1;
  }

  v232 = *(v59 + 90);
  STACK[0x10A0] = 0x526A495CDE0FLL;
  LOBYTE(STACK[0x1070]) = 1;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v232, &STACK[0x10A0], &STACK[0x1070]);
  if (*(v232 + 280) <= 1u)
  {
    *(v232 + 280) = 2;
  }

  v233 = *(v59 + 90);
  STACK[0x10A0] = 0x478674A22C6B2A1ALL;
  LOBYTE(STACK[0x1070]) = 2;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(v233, &STACK[0x10A0], &STACK[0x1070]);
  if (*(v233 + 280) <= 2u)
  {
    *(v233 + 280) = 3;
  }

  v234 = *(v59 + 90);
  STACK[0x1070] = 0x1C6D62426C554CB0;
  STACK[0x10A0] = *(v59 + 107);
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*(v59 + 107) length];
  re::BufferTable::setBuffer(v234, &STACK[0x1070], &STACK[0x10A0]);
  v235 = LODWORD(STACK[0x10B8]);
  if (v235 != -1)
  {
    (off_1F5D060B0[v235])(&a47, &STACK[0x10A0]);
  }

  v236 = *(v59 + 90);
  STACK[0x1070] = 0x526A495CDE0FLL;
  STACK[0x10A0] = *(v59 + 109);
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*(v59 + 109) length];
  re::BufferTable::setBuffer(v236, &STACK[0x1070], &STACK[0x10A0]);
  v237 = LODWORD(STACK[0x10B8]);
  if (v237 != -1)
  {
    (off_1F5D060B0[v237])(&a47, &STACK[0x10A0]);
  }

  v238 = *(v59 + 90);
  STACK[0x1070] = 0x478674A22C6B2A1ALL;
  STACK[0x10A0] = *(v59 + 110);
  LODWORD(STACK[0x10B8]) = 0;
  LODWORD(STACK[0x10C0]) = 0;
  LODWORD(STACK[0x10C4]) = [*(v59 + 110) length];
  v239 = re::BufferTable::setBuffer(v238, &STACK[0x1070], &STACK[0x10A0]);
  v240 = LODWORD(STACK[0x10B8]);
  if (v240 != -1)
  {
    v239 = (off_1F5D060B0[v240])(&a47, &STACK[0x10A0]);
  }

  v241 = *(v59 + 82);
  v241 += 72;
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::setCapacity(v241, 6uLL);
  ++*(v241 + 24);
  v242 = *(v59 + 82);
  a30 = 0xB3E5B3C154101;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v242, &a30, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  v243 = *(v59 + 82);
  a29 = 0x645EADD8982CBD05;
  a30 = 0;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v243, &a29, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  v244 = *(v59 + 82);
  a28 = 0x259D0C231F804627;
  a29 = 0;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v244, &a28, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  v245 = *(v59 + 82);
  a27 = 0x6D312F38FF9969B1;
  a28 = 0;
  STACK[0x10A0] = 0;
  re::TextureTable::setTexture(v245, &a27, &STACK[0x10A0]);
  if (STACK[0x10A0])
  {
  }

  a27 = 0;
  v246 = MurmurHash3_x64_128("fallback", 8uLL, 0, &STACK[0x10A0]);
  v247 = (STACK[0x10A8] + (STACK[0x10A0] << 6) + (STACK[0x10A0] >> 2) - 0x61C8864680B583E9) ^ STACK[0x10A0];
  if (!*(v59 + 74) || (v248 = *(*(v59 + 75) + 4 * (v247 % *(v59 + 154))), v248 == 0x7FFFFFFF))
  {
LABEL_273:
    v251 = re::globalAllocators(v246);
    v246 = (*(*v251[2] + 32))(v251[2], 112, 8);
    v252 = v246;
    *v246 = 0u;
    *(v246 + 16) = 0u;
    *(v246 + 32) = 0u;
    *(v246 + 48) = 0u;
    *(v246 + 64) = 0u;
    *(v246 + 80) = 0u;
    *(v246 + 96) = 0u;
    if (*(v59 + 74))
    {
      v253 = v247 % *(v59 + 154);
      v254 = *(*(v59 + 75) + 4 * v253);
      if (v254 != 0x7FFFFFFF)
      {
        v255 = *(v59 + 76);
        if (*(v255 + 24 * v254 + 8) == v247)
        {
          goto LABEL_281;
        }

        while (1)
        {
          LODWORD(v254) = *(v255 + 24 * v254) & 0x7FFFFFFF;
          if (v254 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v255 + 24 * v254 + 8) == v247)
          {
            goto LABEL_281;
          }
        }
      }
    }

    else
    {
      LODWORD(v253) = 0;
    }

    v246 = re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v59 + 592, v253, v247);
    *(v246 + 8) = v247;
    *(v246 + 16) = v252;
    ++*(v59 + 158);
  }

  else
  {
    v249 = *(v59 + 76);
    v250 = *(*(v59 + 75) + 4 * (v247 % *(v59 + 154)));
    while (*(v249 + 24 * v250 + 8) != v247)
    {
      v250 = *(v249 + 24 * v250) & 0x7FFFFFFF;
      if (v250 == 0x7FFFFFFF)
      {
        goto LABEL_273;
      }
    }

    v297 = 0x7FFFFFFFLL;
    while (*(v249 + 24 * v248 + 8) != v247)
    {
      v248 = *(v249 + 24 * v248) & 0x7FFFFFFF;
      if (v248 == 0x7FFFFFFF)
      {
        goto LABEL_320;
      }
    }

    v297 = v248;
LABEL_320:
    v252 = *(v249 + 24 * v297 + 16);
  }

LABEL_281:
  *(v59 + 111) = v252;
  v57 = (v59 + 952);
  *(v59 + 119) = 0x1515151515151515;
  *(v59 + 120) = 0x1515151515151515;
  *(v59 + 965) = 0x1515151515151515;
  v60 = (v59 + 912);
  v256 = re::s_constantValueTableLayoutCount;
  v257 = re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v59 + 114, v256);
  ++*(v59 + 234);
  if (re::s_constantValueTableLayoutCount)
  {
    v258 = re::s_constantValueTableLayouts;
    v259 = &re::s_constantValueTableLayouts[re::s_constantValueTableLayoutCount];
    v53 = re::s_materialTableIDMappings;
    do
    {
      v260 = *v258;
      if (*v258)
      {
        v261 = *(v260 + 4);
        *&STACK[0x10D0] = 0u;
        *&STACK[0x10C0] = 0u;
        *&STACK[0x10A0] = 0u;
        *&STACK[0x10B0] = 0u;
        v262 = *(v260 + 4);
        if (v262)
        {
          v263 = v260[3];
          v264 = &v263[24 * v262];
          do
          {
            v265 = *(v263 + 2);
            if (v265)
            {
              v266 = *v265;
              if (*v265)
              {
                v267 = v265[1];
                if (v267)
                {
                  v268 = (v265 + 2);
                  do
                  {
                    v266 = 31 * v266 + v267;
                    v269 = *v268++;
                    v267 = v269;
                  }

                  while (v269);
                }

                v266 &= ~0x8000000000000000;
              }
            }

            else
            {
              v266 = 0x7FFFFFFFFFFFFFFFLL;
            }

            STACK[0x1070] = v266;
            v270 = *v263;
            v271 = *(v263 + 1);
            v263 += 24;
            LOWORD(a47) = v270;
            WORD1(a47) = v271;
            re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(&STACK[0x10A0], &STACK[0x1070], &a47);
          }

          while (v263 != v264);
        }

        v61 = 0;
        v272 = *v260;
        while (1)
        {
          v273 = strcmp(re::s_materialTableIDMappings[v61], v272);
          if (!v273)
          {
            break;
          }

          if (++v61 == 168)
          {
            v61 = 0;
            goto LABEL_299;
          }
        }

        if (v61 >= 0x15)
        {
          re::internal::assertLog(6, v274, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v61, 21);
          _os_crash();
          __break(1u);
          goto LABEL_322;
        }

LABEL_299:
        v275 = *(v59 + 116);
        *(v57 + v61) = v275;
        v276 = *(v59 + 115);
        if (v275 >= v276)
        {
          v277 = v275 + 1;
          if (v276 < v275 + 1)
          {
            if (*v60)
            {
              v278 = 2 * v276;
              _ZF = v276 == 0;
              v279 = 8;
              if (!_ZF)
              {
                v279 = v278;
              }

              if (v279 <= v277)
              {
                v280 = v277;
              }

              else
              {
                v280 = v279;
              }

              re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v59 + 114, v280);
            }

            else
            {
              re::DynamicArray<re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>>::setCapacity(v59 + 114, v277);
              ++*(v59 + 234);
            }
          }

          v275 = *(v59 + 116);
        }

        v281 = *(v59 + 118) + (v275 << 6);
        *(v281 + 32) = 0u;
        *(v281 + 48) = 0u;
        *v281 = 0u;
        *(v281 + 16) = 0u;
        *(v281 + 56) = STACK[0x10D8];
        STACK[0x10D8] = 0;
        v282 = *v281;
        *v281 = STACK[0x10A0];
        STACK[0x10A0] = v282;
        v283 = *(v281 + 8);
        *(v281 + 8) = STACK[0x10A8];
        STACK[0x10A8] = v283;
        *(v281 + 16) = STACK[0x10B0];
        STACK[0x10B0] = 0;
        v284 = *(v281 + 40);
        *(v281 + 40) = STACK[0x10C8];
        STACK[0x10C8] = v284;
        v285 = *(v281 + 48);
        *(v281 + 48) = STACK[0x10D0];
        STACK[0x10D0] = v285;
        v286 = *(v281 + 24);
        *(v281 + 24) = STACK[0x10B8];
        STACK[0x10B8] = v286;
        v287 = *(v281 + 32);
        *(v281 + 32) = STACK[0x10C0];
        STACK[0x10C0] = v287;
        ++*(v59 + 116);
        ++*(v59 + 234);
        re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(&STACK[0x10A0]);
      }

      ++v258;
    }

    while (v258 != v259);
  }

  re::MaterialManager::getDefaultVariations(*(*(v59 + 112) + 369), 1, 0, *(*(v59 + 112) + 373), &STACK[0x10A0]);
  if ((v59 + 976) != &STACK[0x10A0])
  {
    v288 = *&STACK[0x10B0];
    v289 = *(v59 + 61);
    v290 = *(v59 + 62);
    *(v59 + 61) = *&STACK[0x10A0];
    *(v59 + 62) = v288;
    v291 = *(v59 + 129);
    v292 = STACK[0x10D0];
    *(v59 + 129) = STACK[0x10D8];
    v293 = *(v59 + 128);
    *(v59 + 128) = v292;
    STACK[0x10D8] = v291;
    STACK[0x10D0] = v293;
    *&STACK[0x10A0] = v289;
    *&STACK[0x10B0] = v290;
    v294 = *(v59 + 63);
    *(v59 + 63) = *&STACK[0x10C0];
    *&STACK[0x10C0] = v294;
  }

  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(&STACK[0x10A0]);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v59 + 136, 0);
  ++*(v59 + 278);
  *(v59 + 283) = 8;
  return re::DataArray<re::MaterialParameterBlock>::allocBlock(v59 + 136);
}

uint64_t re::MaterialManager::createTextureTableForName(re::MaterialManager *this, const char *__s)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, v14);
    v5 = (v14[1] + (v14[0] << 6) + (v14[0] >> 2) - 0x61C8864680B583E9) ^ v14[0];
  }

  else
  {
    v5 = 0;
  }

  v14[0] = v5;
  if (!*(this + 62) || (v6 = *(*(this + 63) + 4 * (v5 % *(this + 130))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v9 = re::globalAllocators(v4);
    v10 = (*(*v9[2] + 32))(v9[2], 112, 8);
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    *(v10 + 88) = 0u;
    *(v10 + 104) = 0;
    *v10 = &unk_1F5D06170;
    v13 = v10;
    re::HashTable<unsigned long,re::TextureTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 496, v14, &v13);
    return v13;
  }

  else
  {
    v7 = *(this + 64);
    v8 = *(*(this + 63) + 4 * (v5 % *(this + 130)));
    while (*(v7 + 24 * v8 + 8) != v5)
    {
      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    v12 = 0x7FFFFFFFLL;
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        return *(v7 + 24 * v12 + 16);
      }
    }

    v12 = v6;
    return *(v7 + 24 * v12 + 16);
  }
}

uint64_t re::MaterialManager::createBufferTableForName(re::MaterialManager *this, const char *__s)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  if (v4)
  {
    v4 = MurmurHash3_x64_128(__s, v4, 0, v14);
    v5 = (v14[1] + (v14[0] << 6) + (v14[0] >> 2) - 0x61C8864680B583E9) ^ v14[0];
  }

  else
  {
    v5 = 0;
  }

  v14[0] = v5;
  if (!*(this + 68) || (v6 = *(*(this + 69) + 4 * (v5 % *(this + 142))), v6 == 0x7FFFFFFF))
  {
LABEL_9:
    v9 = re::globalAllocators(v4);
    v10 = (*(*v9[2] + 32))(v9[2], 288, 8);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
    *(v10 + 80) = 0u;
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
    *(v10 + 128) = 0u;
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
    *(v10 + 176) = 0u;
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
    *(v10 + 224) = 0u;
    *(v10 + 240) = 0u;
    *(v10 + 256) = 0u;
    *(v10 + 272) = 0u;
    *(v10 + 160) = 1;
    *(v10 + 176) = 0;
    *(v10 + 184) = 0;
    *(v10 + 168) = 0;
    *(v10 + 192) = 0;
    *(v10 + 208) = 0;
    *(v10 + 216) = 0;
    *(v10 + 200) = 0;
    *(v10 + 224) = 0;
    *(v10 + 232) = 0u;
    *(v10 + 248) = 0u;
    *(v10 + 264) = 0;
    v13 = v10;
    re::HashTable<unsigned long,re::BufferTable *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(this + 544, v14, &v13);
  }

  else
  {
    v7 = *(this + 70);
    v8 = *(*(this + 69) + 4 * (v5 % *(this + 142)));
    while (*(v7 + 24 * v8 + 8) != v5)
    {
      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
      if (v8 == 0x7FFFFFFF)
      {
        goto LABEL_9;
      }
    }

    v12 = 0x7FFFFFFFLL;
    while (*(v7 + 24 * v6 + 8) != v5)
    {
      v6 = *(v7 + 24 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        return *(v7 + 24 * v12 + 16);
      }
    }

    v12 = v6;
    return *(v7 + 24 * v12 + 16);
  }

  return v10;
}

double re::MaterialManager::getDefaultVariations@<D0>(re::MaterialManager *this@<X0>, int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v8 = this;
  v280 = *MEMORY[0x1E69E9840];
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v241[2] = 32;
  v241[0] = v10;
  *&v11 = -1;
  *(&v11 + 1) = -1;
  *v10 = v11;
  *(v10 + 1) = v11;
  v241[1] = v10 + 32;
  v243 = 0;
  v244 = 0;
  v242 = xmmword_1E30B4E20;
  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 1179701;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v13 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v13 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6750237;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 5uLL);
  v15 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v15;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    ++v15;
  }

  while (v15 != 5);
  BYTE9(v279) = 1;
  *&v279 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v16 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v16 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6684701;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 4uLL);
  v18 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v18;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    ++v18;
  }

  while (v18 != 4);
  BYTE9(v279) = 1;
  *&v279 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v19 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v19 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 786485;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v21 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v21 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6815797;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v23 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v23 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 65589;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v25 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v25 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 2293813;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v27 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v27 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 3735605;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 1uLL);
  LODWORD(v278) = v278 + 1;
  v29 = v8;
  *&v268 = v8;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = v8;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v30 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v30 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 6488117;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v32 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v32 = (*(*v272 + 40))(v272, v273);
  }

  if (a2)
  {
    v277 = 0uLL;
    LODWORD(v278) = 0;
    WORD4(v279) = 1;
    *(&v278 + 1) = 0;
    *&v279 = 0;
    LODWORD(v276) = 5636149;
    re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
    LODWORD(v278) = v278 + 1;
    *&v268 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    *&v268 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    BYTE9(v279) = 1;
    *&v279 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
    if (*(&v276 + 1) && *(&v278 + 1))
    {
      (*(**(&v276 + 1) + 40))(*(&v276 + 1));
    }

    v32 = v272;
    if (v272 && (BYTE8(v272) & 1) != 0)
    {
      v32 = (*(*v272 + 40))(v272, v273);
    }
  }

  if (a3)
  {
    v277 = 0uLL;
    LODWORD(v278) = 0;
    WORD4(v279) = 1;
    *(&v278 + 1) = 0;
    *&v279 = 0;
    LODWORD(v276) = 7209013;
    re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
    LODWORD(v278) = v278 + 1;
    *&v268 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    *&v268 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    BYTE9(v279) = 1;
    *&v279 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
    if (*(&v276 + 1) && *(&v278 + 1))
    {
      (*(**(&v276 + 1) + 40))(*(&v276 + 1));
    }

    v32 = v272;
    if (v272 && (BYTE8(v272) & 1) != 0)
    {
      v32 = (*(*v272 + 40))(v272, v273);
    }
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 10682421;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v36 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v36 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 10747957;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v38 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v38 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 11665461;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v40 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v40 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 11862069;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v42 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v42 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 8323101;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 5uLL);
  v44 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v44;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    ++v44;
  }

  while (v44 != 5);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v45 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v45 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 4522037;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v47 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v47 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 7012381;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 4uLL);
  v49 = 0;
  LODWORD(v278) = v278 + 1;
  do
  {
    *&v268 = v49;
    re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
    ++v49;
  }

  while (v49 != 4);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v50 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v50 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 9044021;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = a4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v52 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v52 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 9699381;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v54 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v54 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 11272245;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v56 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v56 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 4128821;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v58 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v58 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 9240629;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  v60 = v272;
  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    v60 = (*(*v272 + 40))(v272, v273);
  }

  v277 = 0uLL;
  LODWORD(v278) = 0;
  WORD4(v279) = 1;
  *(&v278 + 1) = 0;
  *&v279 = 0;
  LODWORD(v276) = 10551349;
  re::DynamicArray<float *>::setCapacity(&v276 + 1, 2uLL);
  LODWORD(v278) = v278 + 1;
  *&v268 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  *&v268 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v276 + 1, &v268);
  BYTE9(v279) = 1;
  *&v279 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(v241, &v272, &v276);
  if (*(&v276 + 1) && *(&v278 + 1))
  {
    (*(**(&v276 + 1) + 40))(*(&v276 + 1));
  }

  if (v272 && (BYTE8(v272) & 1) != 0)
  {
    (*(*v272 + 40))(v272, v273);
  }

  MurmurHash3_x64_128("OpaqueCommon", 0xCuLL, 0, &v276);
  *&v276 = (*(&v276 + 1) + (v276 << 6) + (v276 >> 2) - 0x61C8864680B583E9) ^ v276;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a5, &v276, v241);
  v278 = 0u;
  v279 = 0u;
  if (a4)
  {
    v63 = 16;
  }

  else
  {
    v63 = 0;
  }

  v276 = 0uLL;
  v277 = 0uLL;
  if (a4)
  {
    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1310773;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v66 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v66 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 131125;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v68 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v68 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1376309;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v70 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v70 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1441845;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v72 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v72 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1507381;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v74 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v74 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1572917;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v76 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v76 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1638453;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v78 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v78 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1966133;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v80 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v80 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1703989;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v82 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v82 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 9175093;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v84 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v84 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 589877;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v86 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v86 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 2031669;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v88 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v88 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 2162741;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v90 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v90 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 3276853;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v92 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v92 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1769525;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 2uLL);
    LODWORD(v274) = v274 + 1;
    *&v264 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    *&v264 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
    BYTE9(v275) = 1;
    *&v275 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    v94 = v268;
    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      v94 = (*(*v268 + 40))();
    }

    v273 = 0uLL;
    LODWORD(v274) = 0;
    WORD4(v275) = 1;
    *(&v274 + 1) = 0;
    *&v275 = 0;
    LODWORD(v272) = 1835037;
    re::DynamicArray<float *>::setCapacity(&v272 + 1, 3uLL);
    v96 = 0;
    LODWORD(v274) = v274 + 1;
    do
    {
      *&v264 = v96;
      re::DynamicArray<re::TransitionCondition *>::add(&v272 + 1, &v264);
      ++v96;
    }

    while (v96 != 3);
    BYTE9(v275) = 1;
    *&v275 = 2;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v276, &v268, &v272);
    if (*(&v272 + 1) && *(&v274 + 1))
    {
      (*(**(&v272 + 1) + 40))(*(&v272 + 1));
    }

    if (v268 && (BYTE8(v268) & 1) != 0)
    {
      (*(*v268 + 40))();
    }
  }

  MurmurHash3_x64_128("TextureCommon", 0xDuLL, 0, &v272);
  *&v272 = (*(&v272 + 1) - 0x61C8864680B583E9 + (v272 << 6) + (v272 >> 2)) ^ v272;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a5, &v272, &v276);
  v274 = 0u;
  v275 = 0u;
  v272 = 0u;
  v273 = 0u;
  *&v273 = 16;
  *&v272 = v98;
  *&v99 = -1;
  *(&v99 + 1) = -1;
  *v98 = v99;
  *(&v272 + 1) = v272 + 16;
  *(&v273 + 1) = 0;
  v274 = v273;
  *&v275 = 0;
  v269 = 0uLL;
  LODWORD(v270) = 0;
  *(&v270 + 1) = 0;
  *&v271 = 0;
  LODWORD(v268) = 2293813;
  WORD4(v271) = 1;
  re::DynamicArray<float *>::setCapacity(&v268 + 1, 2uLL);
  LODWORD(v270) = v270 + 1;
  *&v260 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v268 + 1, &v260);
  *&v260 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v268 + 1, &v260);
  BYTE9(v271) = 1;
  *&v271 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v272, &v264, &v268);
  if (*(&v268 + 1) && *(&v270 + 1))
  {
    (*(**(&v268 + 1) + 40))();
  }

  v101 = v264;
  if (v264 && (BYTE8(v264) & 1) != 0)
  {
    v101 = (*(*v264 + 40))();
  }

  v269 = 0uLL;
  LODWORD(v270) = 0;
  *(&v270 + 1) = 0;
  *&v271 = 0;
  LODWORD(v268) = 8323101;
  WORD4(v271) = 1;
  re::DynamicArray<float *>::setCapacity(&v268 + 1, 5uLL);
  v103 = 0;
  LODWORD(v270) = v270 + 1;
  do
  {
    *&v260 = v103;
    re::DynamicArray<re::TransitionCondition *>::add(&v268 + 1, &v260);
    ++v103;
  }

  while (v103 != 5);
  BYTE9(v271) = 1;
  *&v271 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v272, &v264, &v268);
  if (*(&v268 + 1) && *(&v270 + 1))
  {
    (*(**(&v268 + 1) + 40))();
  }

  v104 = v264;
  if (v264 && (BYTE8(v264) & 1) != 0)
  {
    v104 = (*(*v264 + 40))();
  }

  v269 = 0uLL;
  LODWORD(v270) = 0;
  *(&v270 + 1) = 0;
  *&v271 = 0;
  LODWORD(v268) = 65589;
  WORD4(v271) = 1;
  re::DynamicArray<float *>::setCapacity(&v268 + 1, 2uLL);
  LODWORD(v270) = v270 + 1;
  *&v260 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v268 + 1, &v260);
  *&v260 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v268 + 1, &v260);
  BYTE9(v271) = 1;
  *&v271 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v272, &v264, &v268);
  if (*(&v268 + 1) && *(&v270 + 1))
  {
    (*(**(&v268 + 1) + 40))();
  }

  if (v264 && (BYTE8(v264) & 1) != 0)
  {
    (*(*v264 + 40))();
  }

  MurmurHash3_x64_128("ShadowCommon", 0xCuLL, 0, &v268);
  *&v268 = (*(&v268 + 1) - 0x61C8864680B583E9 + (v268 << 6) + (v268 >> 2)) ^ v268;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a5, &v268, &v272);
  v270 = 0u;
  v271 = 0u;
  v268 = 0u;
  v269 = 0u;
  *&v269 = 32;
  *&v268 = v107;
  *&v108 = -1;
  *(&v108 + 1) = -1;
  *v107 = v108;
  v109 = v268;
  *(v268 + 16) = v108;
  *(&v268 + 1) = v109 + 32;
  *(&v269 + 1) = 0;
  v270 = v269;
  *&v271 = 0;
  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 1179701;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v111 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v111 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6750237;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 5uLL);
  v113 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v113;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    ++v113;
  }

  while (v113 != 5);
  BYTE9(v267) = 1;
  *&v267 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v114 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v114 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6684701;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 4uLL);
  v116 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v116;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    ++v116;
  }

  while (v116 != 4);
  BYTE9(v267) = 1;
  *&v267 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v117 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v117 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 786485;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v119 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v119 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 4522037;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v121 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v121 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6815797;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v123 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v123 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 65589;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v125 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v125 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 2293813;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v127 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v127 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 3604533;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 1uLL);
  LODWORD(v266) = v266 + 1;
  v253 = v29;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v129 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v129 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 3735605;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 1uLL);
  LODWORD(v266) = v266 + 1;
  v253 = v29;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v131 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v131 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 6488117;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v133 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v133 = (*(*v260 + 40))();
  }

  if (a2)
  {
    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 5636149;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    BYTE9(v267) = 1;
    *&v267 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v133 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v133 = (*(*v260 + 40))();
    }
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 8323101;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 5uLL);
  v136 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v136;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    ++v136;
  }

  while (v136 != 5);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v137 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v137 = (*(*v260 + 40))();
  }

  if (a3)
  {
    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 5701685;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v139 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v139 = (*(*v260 + 40))();
    }

    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 6553653;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v141 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v141 = (*(*v260 + 40))();
    }

    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 7209013;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v143 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v143 = (*(*v260 + 40))();
    }

    v265 = 0uLL;
    LODWORD(v266) = 0;
    *(&v266 + 1) = 0;
    *&v267 = 0;
    LODWORD(v264) = 11927605;
    WORD4(v267) = 1;
    re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
    LODWORD(v266) = v266 + 1;
    v253 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    v253 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    BYTE9(v267) = 1;
    *&v267 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
    if (*(&v264 + 1) && *(&v266 + 1))
    {
      (*(**(&v264 + 1) + 40))();
    }

    v137 = v260;
    if (v260 && (BYTE8(v260) & 1) != 0)
    {
      v137 = (*(*v260 + 40))();
    }
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 10682421;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v146 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v146 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 10747957;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v148 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v148 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 11665461;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v150 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v150 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 11862069;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v152 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v152 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 7012381;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 4uLL);
  v154 = 0;
  LODWORD(v266) = v266 + 1;
  do
  {
    v253 = v154;
    re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
    ++v154;
  }

  while (v154 != 4);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v155 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v155 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 9044021;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = a4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v157 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v157 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 9699381;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v159 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v159 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 11272245;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v161 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v161 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 4128821;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v163 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v163 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 9240629;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  v165 = v260;
  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    v165 = (*(*v260 + 40))();
  }

  v265 = 0uLL;
  LODWORD(v266) = 0;
  *(&v266 + 1) = 0;
  *&v267 = 0;
  LODWORD(v264) = 10551349;
  WORD4(v267) = 1;
  re::DynamicArray<float *>::setCapacity(&v264 + 1, 2uLL);
  LODWORD(v266) = v266 + 1;
  v253 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  v253 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v264 + 1, &v253);
  BYTE9(v267) = 1;
  *&v267 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v268, &v260, &v264);
  if (*(&v264 + 1) && *(&v266 + 1))
  {
    (*(**(&v264 + 1) + 40))();
  }

  if (v260 && (BYTE8(v260) & 1) != 0)
  {
    (*(*v260 + 40))();
  }

  MurmurHash3_x64_128("TransparentCommon", 0x11uLL, 0, &v264);
  *&v264 = (*(&v264 + 1) - 0x61C8864680B583E9 + (v264 << 6) + (v264 >> 2)) ^ v264;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a5, &v264, &v268);
  v266 = 0u;
  v267 = 0u;
  v264 = 0u;
  v265 = 0u;
  *&v265 = 32;
  *&v264 = v168;
  *&v169 = -1;
  *(&v169 + 1) = -1;
  *v168 = v169;
  v170 = v264;
  *(v264 + 16) = v169;
  *(&v264 + 1) = v170 + 32;
  *(&v265 + 1) = 0;
  v266 = v265;
  *&v267 = 0;
  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 11272245;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v172 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v172 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 2293813;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v174 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v174 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 6488117;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v176 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v176 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 8323101;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 5uLL);
  v178 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v178;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    ++v178;
  }

  while (v178 != 5);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v179 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v179 = (*(*v253 + 40))();
  }

  if (a2)
  {
    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 5636149;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    BYTE9(v263) = 1;
    *&v263 = 1;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v179 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v179 = (*(*v253 + 40))();
    }
  }

  if (a3)
  {
    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 5701685;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v182 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v182 = (*(*v253 + 40))();
    }

    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 6553653;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v184 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v184 = (*(*v253 + 40))();
    }

    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 7209013;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v186 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v186 = (*(*v253 + 40))();
    }

    v261 = 0uLL;
    LODWORD(v262) = 0;
    *(&v262 + 1) = 0;
    *&v263 = 0;
    LODWORD(v260) = 11927605;
    WORD4(v263) = 1;
    re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
    LODWORD(v262) = v262 + 1;
    v247 = 0;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    v247 = 1;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    BYTE9(v263) = 1;
    *&v263 = 0;
    re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
    if (*(&v260 + 1) && *(&v262 + 1))
    {
      (*(**(&v260 + 1) + 40))();
    }

    v179 = v253;
    if (v253 && (v254 & 1) != 0)
    {
      v179 = (*(*v253 + 40))();
    }
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 10682421;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v189 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v189 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 10747957;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v191 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v191 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 11665461;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v193 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v193 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 11862069;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v195 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v195 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 7012381;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 4uLL);
  v197 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v197;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    ++v197;
  }

  while (v197 != 4);
  BYTE9(v263) = 1;
  *&v263 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v198 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v198 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 65589;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v200 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v200 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 6750237;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 5uLL);
  v202 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v202;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    ++v202;
  }

  while (v202 != 5);
  BYTE9(v263) = 1;
  *&v263 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v203 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v203 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 6684701;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 4uLL);
  v205 = 0;
  LODWORD(v262) = v262 + 1;
  do
  {
    v247 = v205;
    re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
    ++v205;
  }

  while (v205 != 4);
  BYTE9(v263) = 1;
  *&v263 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v206 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v206 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 4128821;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v208 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v208 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 9240629;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v210 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v210 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 3735605;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 1uLL);
  LODWORD(v262) = v262 + 1;
  v247 = v29;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v212 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v212 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 9699381;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  v214 = v253;
  if (v253 && (v254 & 1) != 0)
  {
    v214 = (*(*v253 + 40))();
  }

  v261 = 0uLL;
  LODWORD(v262) = 0;
  *(&v262 + 1) = 0;
  *&v263 = 0;
  LODWORD(v260) = 10551349;
  WORD4(v263) = 1;
  re::DynamicArray<float *>::setCapacity(&v260 + 1, 2uLL);
  LODWORD(v262) = v262 + 1;
  v247 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  v247 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v260 + 1, &v247);
  BYTE9(v263) = 1;
  *&v263 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v264, &v253, &v260);
  if (*(&v260 + 1) && *(&v262 + 1))
  {
    (*(**(&v260 + 1) + 40))();
  }

  if (v253 && (v254 & 1) != 0)
  {
    (*(*v253 + 40))();
  }

  MurmurHash3_x64_128("UnlitCommon", 0xBuLL, 0, &v260);
  *&v260 = (*(&v260 + 1) - 0x61C8864680B583E9 + (v260 << 6) + (v260 >> 2)) ^ v260;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a5, &v260, &v264);
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  *&v261 = 16;
  *&v217 = -1;
  *(&v217 + 1) = -1;
  *v260 = v217;
  *(&v260 + 1) = v260 + 16;
  *(&v261 + 1) = 0;
  v262 = v261;
  *&v263 = 0;
  MurmurHash3_x64_128("ShadowReceiverCommon", 0x14uLL, 0, &v253);
  v253 ^= &v254[8 * v253 - 0xC3910C8D016B07DLL] + (v253 >> 2) - 1;
  if (re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find(a5, &v253) == -1)
  {
    re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(a5, &v253, &v260);
  }

  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v260);
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  *&v261 = 16;
  *&v260 = v219;
  *&v220 = -1;
  *(&v220 + 1) = -1;
  *v219 = v220;
  *(&v260 + 1) = v260 + 16;
  *(&v261 + 1) = 0;
  v262 = v261;
  *&v263 = 0;
  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 11272245;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 2uLL);
  ++DWORD2(v256);
  v239 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  v239 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = 0;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v222 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v222 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 1179701;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 2uLL);
  ++DWORD2(v256);
  v239 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  v239 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v224 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v224 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 6750237;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 5uLL);
  v226 = 0;
  ++DWORD2(v256);
  do
  {
    v239 = v226;
    re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
    ++v226;
  }

  while (v226 != 5);
  BYTE1(v259) = 1;
  v258 = 4;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v227 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v227 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 6684701;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 4uLL);
  v229 = 0;
  ++DWORD2(v256);
  do
  {
    v239 = v229;
    re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
    ++v229;
  }

  while (v229 != 4);
  BYTE1(v259) = 1;
  v258 = 3;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v230 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v230 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 6815797;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 2uLL);
  ++DWORD2(v256);
  v239 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  v239 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  v232 = v247;
  if (v247 && (v248[0] & 1) != 0)
  {
    v232 = (*(*v247 + 40))();
  }

  v255 = 0;
  *&v256 = 0;
  DWORD2(v256) = 0;
  v257 = 0;
  v258 = 0;
  LODWORD(v253) = 3604533;
  LOWORD(v259) = 1;
  re::DynamicArray<float *>::setCapacity(&v254, 1uLL);
  ++DWORD2(v256);
  v239 = v29;
  re::DynamicArray<re::TransitionCondition *>::add(&v254, &v239);
  BYTE1(v259) = 1;
  v258 = v29;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v260, &v247, &v253);
  if (v254 && v257)
  {
    (*(*v254 + 40))();
  }

  if (v247 && (v248[0] & 1) != 0)
  {
    (*(*v247 + 40))();
  }

  MurmurHash3_x64_128("ARBackwardsCompatibility", 0x18uLL, 0, &v253);
  v253 ^= &v254[8 * v253 - 0xC3910C8D016B07DLL] + (v253 >> 2) - 1;
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a5, &v253, &v260);
  v255 = 16;
  v253 = v235;
  *&v236 = -1;
  *(&v236 + 1) = -1;
  *v235 = v236;
  v257 = 0;
  v258 = 0;
  v254 = (v235 + 1);
  v256 = xmmword_1E30B4E30;
  v248[1] = 0;
  v248[2] = 0;
  v249 = 0;
  v250 = 0;
  v251 = 0;
  LODWORD(v247) = 786485;
  v252 = 1;
  re::DynamicArray<float *>::setCapacity(v248, 2uLL);
  ++v249;
  v246 = 0;
  re::DynamicArray<re::TransitionCondition *>::add(v248, &v246);
  v246 = 1;
  re::DynamicArray<re::TransitionCondition *>::add(v248, &v246);
  HIBYTE(v252) = 1;
  v251 = 1;
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::addNew(&v253, &v239, &v247);
  if (v248[0] && v250)
  {
    (*(*v248[0] + 40))();
  }

  if (v239 && (v240 & 1) != 0)
  {
    (*(*v239 + 40))();
  }

  MurmurHash3_x64_128("DynamicLightingBackwardsCompatibility", 0x25uLL, 0, &v247);
  v247 ^= v248[0] - 0x61C8864680B583E9 + (v247 << 6) + (v247 >> 2);
  re::HashBrown<unsigned long,re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::addNew(a5, &v247, &v253);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v253);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v260);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v264);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v268);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v272);
  re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(&v276);
  return re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v241);
}