uint64_t re::PhysXCollisionObject::onChildPoseDidChange(re::PhysXCollisionObject *this, re::GeometricObjectBase *a2)
{
  re::GeometricObjectBase::parentPose(a2, v4);
  updateLocalPoses(a2, v4);
  return 0;
}

uint64_t re::PhysXCollisionObject::updateFilterData(re::PhysXCollisionObject *this)
{
  v2 = *(this + 3);
  v3 = *(this + 2) & 1;
  if (v2)
  {
    v4 = v2[4] == 5;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 432))(v12, *(this + 3));
    v3 |= (LOBYTE(v12[0]) >> 1) & 2;
  }

  v5 = *(this + 22);
  result = (*(*v2 + 184))(v2);
  if (result)
  {
    v7 = 0;
    v8 = (v5 >> 1) & 4 | v3;
    do
    {
      v13 = 0;
      (*(*v2 + 192))(v2, &v13, 1, v7);
      v9 = *(this + 4);
      v12[0] = v8;
      v12[1] = v9;
      (*(*v13 + 168))(v13, v12);
      (*(*v13 + 184))(v13, v12);
      v7 = (v7 + 1);
      result = (*(*v2 + 184))(v2);
    }

    while (v7 < result);
  }

  v10 = *(this + 7);
  if (v10)
  {
    re::ContactSetCollection::remove((*(v10 + 128) + 72), this);
    (*(**(v10 + 128) + 200))(*(v10 + 128), this);
    v11 = *(v10 + 128);
    *(this + 7) = v11;
    return (*(*v11 + 192))(v11, this);
  }

  return result;
}

void re::PhysXCollisionObject::~PhysXCollisionObject(re::PhysXCollisionObject *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  v3 = (*(*v2 + 16))(v2);
  if ((*(*v3 + 24))(v3) == 7)
  {
    v4 = (*(*v2 + 16))(v2);
    *&v7 = this;
    *(&v7 + 1) = re::PhysXCollisionObject::onChildPoseDidChange;
    v8 = 0;
    v9 = re::Event<re::GeometricObjectBase>::createSubscription<re::PhysXCollisionObject>(re::PhysXCollisionObject *,REEventHandlerResult (re::PhysXCollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 56, &v7);
  }

  v5 = *(this + 3);
  if (v5)
  {
    (**v5)(v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    if (*(this + 14))
    {
      (*(*v6 + 40))(v6, *(this + 15));
      *(this + 14) = 0;
      *(this + 15) = 0;
    }

    *(this + 13) = 0;
  }

  re::CollisionObject::~CollisionObject(this);
}

{
  re::PhysXCollisionObject::~PhysXCollisionObject(this);

  JUMPOUT(0x1E6906520);
}

re::PhysXCollisionObject *re::PhysXCollisionObject::setRawCollisionObject(re::PhysXCollisionObject *this, void *a2)
{
  *(this + 3) = a2;
  if (a2)
  {
    a2[2] = this;
    return re::PhysXCollisionObject::updateFilterData(this);
  }

  return this;
}

uint64_t re::PhysXCollisionObject::poseDidChange(re::PhysXCollisionObject *this, re::GeometricObjectBase *a2)
{
  v2 = *(this + 3);
  (*(*a2 + 40))(&v4, a2);
  v7 = v6;
  v8 = v4;
  v9 = v5;
  (*(*v2 + 160))(v2, &v7, 1);
  return 0;
}

uint64_t updateLocalPoses(void *a1, float32x4_t *a2)
{
  (*(*a1 + 40))(&v39);
  _Q0 = a2[1];
  _Q2 = vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL);
  v6 = vnegq_f32(_Q0);
  v7 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v6), v39, _Q2);
  v8 = vaddq_f32(v7, v7);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), v6), v9, _Q2);
  _Q1 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v40, v40), v40, 0xCuLL), v6), v40, _Q2);
  v12 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v40, _Q0, 3);
  _Q1.i32[0] = v40.i32[3];
  v13 = vmlaq_laneq_f32(v12, _Q0, v40, 3);
  __asm { FMLA            S2, S1, V0.S[3] }

  v36 = _Q2.i32[0];
  v37 = v13;
  v13.i32[3] = _Q2.i32[0];
  v38 = vaddq_f32(*a2, vaddq_f32(vaddq_f32(v39, vmulq_laneq_f32(v9, _Q0, 3)), vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL)));
  v41[0] = v38;
  v41[1] = v13;
  v35 = v13;
  v18 = (*(*a1 + 16))(a1);
  result = (*(*v18 + 24))(v18);
  if (result != 1)
  {
    if (result == 7)
    {
      v20 = v18[4];
      if (v20)
      {
        v21 = v18[5];
        v22 = 240 * v20;
        do
        {
          result = updateLocalPoses(v21, v41);
          v21 += 240;
          v22 -= 240;
        }

        while (v22);
      }
    }

    else
    {
      v23 = a1[7];
      if ((*(*v18 + 40))(v18))
      {
        v24 = (*(*v18 + 48))(v18);
        v25 = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
        _Q2 = *(v24 + 16);
        _Q4 = vnegq_f32(v37);
        v28 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*v24, *v24), *v24, 0xCuLL), _Q4), *v24, v25);
        v29 = vaddq_f32(v28, v28);
        v30 = vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL);
        v31 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v30, v30), v30, 0xCuLL), _Q4), v30, v25);
        v32 = vaddq_f32(v38, vaddq_f32(vaddq_f32(*v24, vmulq_laneq_f32(v30, v35, 3)), vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL)));
        _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q4), _Q2, v25);
        v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q2, v35, 3), v37, _Q2, 3);
        _Q4.i32[0] = v36;
        __asm { FMLA            S3, S4, V2.S[3] }

        v39.i64[0] = v34.i64[0];
        v39.i64[1] = __PAIR64__(_Q3.u32[0], v34.u32[2]);
        v40.i64[0] = v32.i64[0];
        v40.i32[2] = v32.i32[2];
      }

      else
      {
        v39.i64[0] = v37.i64[0];
        v39.i64[1] = __PAIR64__(v36, v37.u32[2]);
        v40.i64[0] = v38.i64[0];
        v40.i32[2] = v38.i32[2];
      }

      return (*(*v23 + 152))(v23, &v39);
    }
  }

  return result;
}

uint64_t re::PhysXCollisionObject::pxShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 24);
  (*(*v5 + 152))(&v32, v5);
  v31 = 0;
  (*(*v5 + 192))(v5, &v31, 1, a2);
  if (a3)
  {
    (*(*v31 + 160))(&v27);
    _S2 = v28 + v28;
    _S4 = v30 + v30;
    v8 = v35;
    v9 = (v34 * v34) + -0.5;
    *v10.i32 = v32;
    _Q7.i64[0] = v33;
    __asm
    {
      FMLA            S16, S4, V7.S[1]
      FMLA            S18, S2, V7.S[1]
      FMLA            S20, S16, V7.S[1]
    }

    v19 = v36 + (((v34 * _S18) + ((v29 + v29) * v9)) + (*&v33 * _S16));
    v20 = v27;
    v20.i32[3] = HIDWORD(v33);
    v21 = v37 + _S20;
    v22 = ((v34 * (vmuls_lane_f32(v29 + v29, vnegq_f32(v20), 3) + (*&v33 * (v30 + v30)))) + ((v28 + v28) * v9)) + (v32 * _S16);
    v23 = vextq_s8(vextq_s8(v10, v10, 4uLL), _Q7, 0xCuLL);
    v23.f32[3] = -v32;
    v24 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v27, 3), v27, 4uLL), v23), v27, v34);
    v23.f32[3] = -*&v33;
    _Q7.i64[1] = __PAIR64__(v27.u32[2], LODWORD(v32));
    v25 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v24, v24, 4uLL), v24), vextq_s8(vextq_s8(v27, v27, 0xCuLL), v27, 8uLL), v23), _Q7, v20);
    *a3 = vzip2q_s32(vzip1q_s32(v25, vextq_s8(v25, v25, 0xCuLL)), v25);
    *(a3 + 16) = v8 + v22;
    *(a3 + 20) = v19;
    *(a3 + 24) = v21;
  }

  return v31;
}

uint64_t re::PhysXCollisionObject::hasTriggerShapes(re::PhysXCollisionObject *this)
{
  v1 = *(this + 3);
  if (!(*(*v1 + 184))(v1))
  {
    return 1;
  }

  v2 = 0;
  do
  {
    v6 = 0;
    (*(*v1 + 192))(v1, &v6, 1, v2);
    (*(*v6 + 312))(&v5);
    v3 = (v5 >> 2) & 1;
    if ((v5 & 4) == 0)
    {
      break;
    }

    v2 = (v2 + 1);
  }

  while (v2 < (*(*v1 + 184))(v1));
  return v3;
}

__n128 re::PhysXCollisionObject::setScaleInternal(uint64_t a1, float32x2_t *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if ((*(*v4 + 184))(v4))
  {
    v5 = 0;
    for (i = 0; i < (*(*v4 + 184))(v4); ++i)
    {
      v16 = 0;
      (*(*v4 + 192))(v4, &v16, 1, i);
      v7 = (*(*v16 + 64))(v16);
      if (v7 > 2)
      {
        if (v7 == 5)
        {
          v18 = 5;
          v19 = xmmword_1E304F3C0;
          v20 = 0;
          *v21 = 1065353216;
          v22 = 0;
          (*(*v16 + 128))(v16, &v18);
          v9 = *(a1 + 112);
          if (v9 <= i)
          {
            goto LABEL_32;
          }

          goto LABEL_20;
        }

        if (v7 == 4)
        {
          v18 = 4;
          v19 = xmmword_1E304F3C0;
          v20 = 0;
          *v21 = 1065353216;
          *&v21[4] = 0;
          LOBYTE(v22) = 1;
          *(&v22 + 1) = 0;
          BYTE3(v22) = 0;
          (*(*v16 + 120))(v16, &v18);
          v9 = *(a1 + 112);
          if (v9 <= i)
          {
            goto LABEL_31;
          }

LABEL_20:
          v13 = (*(a1 + 120) + v5);
          v14 = v13[1].f32[0] * a2[1].f32[0];
          *&v19 = vmul_f32(*v13, *a2);
          *(&v19 + 2) = v14;
          v12 = *(*v16 + 72);
          goto LABEL_21;
        }

        if (v7 != 3)
        {
          goto LABEL_33;
        }

        *v23 = 3;
        *&v23[8] = 0;
        (*(*v16 + 88))(v16, v23);
        v9 = *(a1 + 112);
        if (v9 <= i)
        {
          v17 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v18 = 136315906;
          *&v19 = "operator[]";
          WORD4(v19) = 1024;
          *(&v19 + 10) = 468;
          HIWORD(v19) = 2048;
          v20 = i;
          *v21 = 2048;
          *&v21[2] = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_29:
          v17 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v18 = 136315906;
          *&v19 = "operator[]";
          WORD4(v19) = 1024;
          *(&v19 + 10) = 468;
          HIWORD(v19) = 2048;
          v20 = i;
          *v21 = 2048;
          *&v21[2] = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_30:
          *v23 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v18 = 136315906;
          *&v19 = "operator[]";
          WORD4(v19) = 1024;
          *(&v19 + 10) = 468;
          HIWORD(v19) = 2048;
          v20 = i;
          *v21 = 2048;
          *&v21[2] = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_31:
          v17 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v23 = 136315906;
          *&v23[4] = "operator[]";
          *&v23[12] = 1024;
          *&v23[14] = 468;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_32:
          v17 = 0;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v28 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v23 = 136315906;
          *&v23[4] = "operator[]";
          *&v23[12] = 1024;
          *&v23[14] = 468;
          v24 = 2048;
          v25 = i;
          v26 = 2048;
          v27 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_33:
          re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Unsupported geometry type!", "!Unreachable code", "setScaleInternal", 238);
          _os_crash();
          __break(1u);
        }

        v10 = (*(a1 + 120) + v5);
        v11 = v10[1].f32[0] * a2[1].f32[0];
        *&v23[4] = vmul_f32(*v10, *a2);
        *&v23[12] = v11;
      }

      else
      {
        if (!v7)
        {
          v17 = 0;
          (*(*v16 + 96))(v16, &v17);
          v9 = *(a1 + 112);
          if (v9 <= i)
          {
            goto LABEL_30;
          }

          *(&v17 + 1) = *(*(a1 + 120) + v5) * a2->f32[0];
          v12 = *(*v16 + 72);
          goto LABEL_21;
        }

        if (v7 == 1)
        {
          goto LABEL_22;
        }

        if (v7 != 2)
        {
          goto LABEL_33;
        }

        *&v23[8] = 0;
        *v23 = 2;
        (*(*v16 + 104))(v16, v23);
        v9 = *(a1 + 112);
        if (v9 <= i)
        {
          goto LABEL_29;
        }

        *&v23[4] = vrev64_s32(vmul_n_f32(*(*(a1 + 120) + v5), COERCE_FLOAT(*a2)));
      }

      v12 = *(*v16 + 72);
LABEL_21:
      v12();
LABEL_22:
      if (v4[4] == 5 && (*(*v4 + 56))(v4) && (*(*v4 + 512))(v4))
      {
        (*(*v4 + 592))(v4);
      }

      v5 += 12;
    }
  }

  result = *a2->f32;
  *(a1 + 128) = *a2->f32;
  return result;
}

void re::PhysXCollisionObject::logState(re::PhysXCollisionObject *this)
{
  v77 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = (*(*v2 + 48))(v2);
  if (!v3)
  {
    v58 = *re::collisionLogObjects(v3);
    if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    v55 = "%p (%p) - Actor type: static";
    v56 = v58;
    v57 = 22;
    goto LABEL_46;
  }

  v4 = (*(*v2 + 48))(v2);
  v5 = v4;
  v6 = *re::collisionLogObjects(v4);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 != 1)
  {
    if (!v7)
    {
      return;
    }

    v59 = (*(*v2 + 48))(v2);
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = v59;
    v55 = "%p - Actor type: unknown! %d";
    v56 = v6;
    v57 = 18;
    goto LABEL_46;
  }

  if (v7)
  {
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 2048;
    *&buf[14] = v2;
    _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "%p (%p) - Actor type: dynamic", buf, 0x16u);
  }

  v8 = *re::collisionLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    (*(*v2 + 432))(&v64, v2);
    *buf = 67109120;
    *&buf[4] = v64;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "RB flags: %#010x", buf, 8u);
  }

  v9 = (*(*v2 + 504))(v2, &v64);
  if (v9)
  {
    v10 = *re::collisionLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      *&buf[4] = *&v65;
      *&buf[12] = 2048;
      *&buf[14] = *(&v65 + 1);
      *&buf[22] = 2048;
      v68 = v66;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Kinematic target set to: %f, %f, %f", buf, 0x20u);
    }
  }

  v11 = (*(*v2 + 152))(buf, v2);
  v64 = *buf;
  v65 = *&buf[16];
  v66 = *&v68;
  v12 = *re::collisionLogObjects(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    *buf = 134218496;
    *&buf[4] = *&v65;
    *&buf[12] = 2048;
    *&buf[14] = *(&v65 + 1);
    *&buf[22] = 2048;
    v68 = v66;
    _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Pose: %f, %f, %f", buf, 0x20u);
  }

  v14 = *re::collisionLogObjects(v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    v16 = *(this + 32);
    v17 = *(this + 33);
    v18 = *(this + 34);
    *buf = 134218496;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = v17;
    *&buf[22] = 2048;
    v68 = v18;
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Scale: %f, %f, %f", buf, 0x20u);
  }

  v19 = *re::collisionLogObjects(v15);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v20)
  {
    v21 = (*(*v2 + 512))(v2);
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Sleeping: %d", buf, 8u);
  }

  v22 = *re::collisionLogObjects(v20);
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    v24 = (*(*v2 + 528))(v2);
    *buf = 134217984;
    *&buf[4] = v24;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "Sleep threshold: %f", buf, 0xCu);
  }

  v25 = *re::collisionLogObjects(v23);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v26)
  {
    v27 = (*(*v2 + 584))(v2);
    *buf = 134217984;
    *&buf[4] = v27;
    _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "Wake counter: %f", buf, 0xCu);
  }

  v28 = *re::collisionLogObjects(v26);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v29)
  {
    (*(*v2 + 552))(&v62, v2);
    *buf = 67109120;
    *&buf[4] = v62;
    _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEFAULT, "Lock Flags %#010x", buf, 8u);
  }

  v30 = *re::collisionLogObjects(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = (*(*v2 + 240))(v2);
    *buf = 134217984;
    *&buf[4] = v31;
    _os_log_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_DEFAULT, "Mass: %f", buf, 0xCu);
  }

  v32 = (*(*v2 + 224))(buf, v2);
  v64 = *buf;
  v65 = *&buf[16];
  v66 = *&v68;
  v33 = *re::collisionLogObjects(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219520;
    *&buf[4] = *&v65;
    *&buf[12] = 2048;
    *&buf[14] = *(&v65 + 1);
    *&buf[22] = 2048;
    v68 = v66;
    v69 = 2048;
    v70 = *&v64;
    v71 = 2048;
    v72 = *(&v64 + 1);
    v73 = 2048;
    v74 = *(&v64 + 2);
    v75 = 2048;
    v76 = *(&v64 + 3);
    _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "CMass local pose: %f, %f, %f, %f, %f, %f, %f", buf, 0x48u);
  }

  v34 = (*(*v2 + 264))(&v62, v2);
  v35 = *re::collisionLogObjects(v34);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
  if (v36)
  {
    *buf = 134218496;
    *&buf[4] = *&v62;
    *&buf[12] = 2048;
    *&buf[14] = *(&v62 + 1);
    *&buf[22] = 2048;
    v68 = v63;
    _os_log_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_DEFAULT, "MassSpace inertia tensor: %f, %f, %f", buf, 0x20u);
  }

  v37 = *re::collisionLogObjects(v36);
  v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
  if (v38)
  {
    v39 = (*(*v2 + 288))(v2);
    *buf = 134217984;
    *&buf[4] = v39;
    _os_log_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEFAULT, "Linear damping: %f", buf, 0xCu);
  }

  v40 = *re::collisionLogObjects(v38);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = (*(*v2 + 304))(v2);
    *buf = 134217984;
    *&buf[4] = v41;
    _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Angular damping: %f", buf, 0xCu);
  }

  v42 = (*(*v2 + 312))(&v60, v2);
  v43 = *re::collisionLogObjects(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *&buf[4] = *&v60;
    *&buf[12] = 2048;
    *&buf[14] = *(&v60 + 1);
    *&buf[22] = 2048;
    v68 = v61;
    _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "Linear velocity: %f, %f, %f", buf, 0x20u);
  }

  v44 = (*(*v2 + 328))(buf, v2);
  v60 = *buf;
  v61 = *&buf[8];
  v45 = *re::collisionLogObjects(v44);
  v46 = os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT);
  if (v46)
  {
    *buf = 134218496;
    *&buf[4] = *&v60;
    *&buf[12] = 2048;
    *&buf[14] = *(&v60 + 1);
    *&buf[22] = 2048;
    v68 = v61;
    _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "Angular velocity: %f, %f, %f", buf, 0x20u);
  }

  v47 = *re::collisionLogObjects(v46);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
  if (v48)
  {
    v49 = (*(*v2 + 352))(v2);
    *buf = 134217984;
    *&buf[4] = v49;
    _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_DEFAULT, "Max angular velocity: %f", buf, 0xCu);
  }

  v50 = *re::collisionLogObjects(v48);
  v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);
  if (v51)
  {
    v52 = (*(*v2 + 368))(v2);
    *buf = 134217984;
    *&buf[4] = v52;
    _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "Max angular velocity: %f", buf, 0xCu);
  }

  v53 = *re::collisionLogObjects(v51);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = (*(*v2 + 448))(v2);
    *buf = 134217984;
    *&buf[4] = v54;
    v55 = "Max CCD advance coefficient: %f";
    v56 = v53;
    v57 = 12;
LABEL_46:
    _os_log_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_DEFAULT, v55, buf, v57);
  }
}

__n128 re::PhysXCollisionObject::internalLocalPose@<Q0>(re::GeometricObject *a1@<X1>, uint64_t a2@<X8>)
{
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v5 == 7 || v5 == 1)
  {
    v8 = *(a1 + 7);
    v7 = *(a1 + 8);
    *a2 = v8;
    *(a2 + 16) = v7;
  }

  else
  {
    (*(**(a1 + 7) + 160))(v12);
    *&v8 = v12[2];
    DWORD2(v8) = v13;
    v9 = v12[0];
    v10 = v12[1];
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  result.n128_u64[0] = v8;
  result.n128_u32[2] = DWORD2(v8);
  return result;
}

uint64_t re::PhysXCollisionObject::isSleeping(re::PhysXCollisionObject *this)
{
  result = *(this + 3);
  if (result)
  {
    if (*(result + 8) == 5)
    {
      return (*(*result + 512))();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t re::PhysXCollisionObject::rayCastInternal(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, __n128 a5)
{
  v8 = 0;
  v64 = *MEMORY[0x1E69E9840];
  a5.n128_u64[0] = 2139095039;
  do
  {
    v9 = &v57[v8];
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 4) = -1;
    *(v9 + 10) = 0;
    *(v9 + 4) = 0;
    *(v9 + 5) = 0;
    *(v9 + 3) = 0;
    *(v9 + 6) = 2139095039;
    v8 += 64;
    *(v9 + 14) = 0;
  }

  while (v8 != 2048);
  v10 = *a3;
  if (v10 >= 3)
  {
    goto LABEL_18;
  }

  v11 = *(a1 + 24);
  result = (*(*v11 + 184))(v11, a5);
  if (result)
  {
    v13 = 0;
    v42 = (32 * v10) | 3;
    while (1)
    {
      v43 = 0;
      (*(*v11 + 192))(v11, &v43, 1, v13);
      v14 = v43;
      v15 = *(a2 + 32);
      (*(*v43 + 80))(&v59, v43);
      *v52 = &v59;
      (*(*v11 + 152))(v52, v11);
      (*(*v14 + 160))(&v48, v14);
      _S2 = v49 + v49;
      _S3 = v51 + v51;
      v18 = (v53 * v53) + -0.5;
      v19.i32[0] = *v52;
      _Q7.i64[0] = *&v52[4];
      __asm
      {
        FMLA            S16, S3, V7.S[1]
        FMLA            S18, S2, V7.S[1]
        FMLA            S20, S16, V7.S[1]
      }

      v28 = v48;
      v28.i32[3] = *&v52[8];
      v29 = vextq_s8(vextq_s8(v19, v19, 4uLL), _Q7, 0xCuLL);
      v29.f32[3] = -*v52;
      v30 = vmlaq_n_f32(vmulq_f32(vextq_s8(vdupq_laneq_s32(v48, 3), v48, 4uLL), v29), v48, v53);
      v29.f32[3] = -*&v52[4];
      _Q7.i64[1] = __PAIR64__(v48.u32[2], *v52);
      v31 = vmlsq_f32(vmlaq_f32(vuzp2q_s32(vextq_s8(v30, v30, 4uLL), v30), vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL), v29), _Q7, v28);
      v44 = vzip2q_s32(vzip1q_s32(v31, vextq_s8(v31, v31, 0xCuLL)), v31);
      v45 = v54 + (((v53 * (vmuls_lane_f32(v50 + v50, vnegq_f32(v28), 3) + (*&v52[4] * (v51 + v51)))) + ((v49 + v49) * v18)) + (*v52 * _S16));
      v46 = v55 + (((v53 * _S18) + ((v50 + v50) * v18)) + (*&v52[4] * _S16));
      v47 = v56 + _S20;
      v32 = gRaycastMap[v59];
      *v52 = v42;
      v33 = (v32)(&v59, &v44, a2, a2 + 16, v52, 32, v57, v15);
      if (v33)
      {
        break;
      }

LABEL_15:
      v13 = (v13 + 1);
      result = (*(*v11 + 184))(v11);
      if (v13 >= result)
      {
        return result;
      }
    }

    v34 = v33;
    v35 = &v58;
    while (1)
    {
      v36 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(a4);
      *v36 = 0;
      *(v36 + 16) = 0u;
      *(v36 + 32) = 0u;
      *(v36 + 48) = 2139095039;
      *(v36 + 52) = 0xFFFFFFFF00000000;
      *(v36 + 64) = 0;
      v38 = *(a4 + 40);
      if (!v38)
      {
        break;
      }

      v39 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](a4, v38 - 1);
      *(v39 + 48) = *(v35 + 4) / *(a2 + 32);
      *&v40 = *(v35 - 1);
      DWORD2(v40) = *v35;
      *(v39 + 16) = v40;
      *&v40 = *(v35 + 4);
      DWORD2(v40) = *(v35 + 3);
      *(v39 + 32) = v40;
      *v39 = a1;
      *(v39 + 52) = v13;
      if ((*(*v43 + 64))(v43) == 5)
      {
        v60 = xmmword_1E304F3C0;
        v61 = 0;
        v59 = 5;
        v62 = 1065353216;
        v63 = 0;
        (*(*v43 + 128))(v43, &v59);
        if ((*(*v63 + 104))(v63))
        {
          v41 = ((*(*v63 + 104))(v63) + 4 * *(v35 - 4));
        }

        else
        {
          v41 = v35 - 2;
        }

        *(v39 + 56) = *v41;
        *(v39 + 64) = *(v35 + 20);
      }

      v35 += 8;
      if (!--v34)
      {
        goto LABEL_15;
      }
    }

    re::internal::assertLog(4, v37, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unsupported collision query type!", "!Unreachable code", "toPhysX", 89);
    _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::Event<re::GeometricObjectBase>::createSubscription<re::PhysXCollisionObject>(re::PhysXCollisionObject *,REEventHandlerResult (re::PhysXCollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

double re::PhysXSphereShape::aabb@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  v17 = *(a2 + 1);
  v14.i64[1] = *(&v17 + 1);
  v18 = *a2;
  v19 = *(a2 + 2);
  v14.i64[0] = 0;
  LODWORD(a8) = 1.0;
  physx::Gu::computeBounds(v20, a1 + 20, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, v17);
  result = *v20;
  *&v16 = *&v20[12];
  DWORD2(v16) = v21;
  *a7 = *v20;
  a7[1] = v16;
  return result;
}

double re::PhysXBoxShape::extent(re::PhysXBoxShape *this, float32x4_t a2)
{
  a2.i64[0] = *(this + 3);
  a2.i32[2] = *(this + 8);
  a2.i64[0] = vaddq_f32(a2, a2).u64[0];
  return *a2.i64;
}

double re::PhysXBoxShape::aabb@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, _OWORD *a7@<X8>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  v17 = *(a2 + 1);
  v14.i64[1] = *(&v17 + 1);
  v18 = *a2;
  v19 = *(a2 + 2);
  v14.i64[0] = 0;
  LODWORD(a8) = 1.0;
  physx::Gu::computeBounds(v20, a1 + 20, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, v17);
  result = *v20;
  *&v16 = *&v20[12];
  DWORD2(v16) = v21;
  *a7 = *v20;
  a7[1] = v16;
  return result;
}

uint64_t re::PhysXSimulationEventCallback::onContact(uint64_t result, void *a2, uint64_t a3, unsigned int a4)
{
  if (*(result + 24) != 1)
  {
    return result;
  }

  v7 = result;
  v8 = *(result + 8);
  v9 = *(v8 + 40);
  v10 = v9 + 1;
  if (v9 == -1)
  {
    v11 = 0;
    do
    {
      v12 = re::BucketArray<re::PhysXManifold,256ul>::operator[](v8, v11);
      re::DynamicArray<unsigned long>::deinit(v12 + 16);
      ++v11;
    }

    while (v11 != *(v8 + 40));
    *(v8 + 40) = v10;
  }

  else
  {
    if (v10 <= *(v8 + 8) << 8)
    {
      *(v8 + 40) = v10;
    }

    else
    {
      re::BucketArray<re::PhysXManifold,256ul>::setBucketsCapacity(*(result + 8), (v9 + 256) >> 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v10;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

    do
    {
      v14 = re::BucketArray<re::PhysXManifold,256ul>::operator[](v8, v9);
      *(v14 + 48) = 0;
      *v14 = 0u;
      *(v14 + 16) = 0u;
      *(v14 + 28) = 0u;
      ++v9;
    }

    while (v9 != *(v8 + 40));
  }

LABEL_11:
  ++*(v8 + 48);
  v15 = *(v7 + 8);
  v16 = *(v15 + 40);
  if (!v16)
  {
    goto LABEL_69;
  }

  result = re::BucketArray<re::PhysXManifold,256ul>::operator[](v15, v16 - 1);
  v17 = result;
  *result = *(*a2 + 16);
  *(result + 8) = *(a2[1] + 16);
  v18 = 0;
  if (a4)
  {
    v19 = a4;
    v20 = (a3 + 44);
    do
    {
      v21 = *v20;
      v20 += 64;
      v18 += v21;
      --v19;
    }

    while (v19);
  }

  v22 = v18;
  v23 = *(result + 32);
  if (v23 < v18)
  {
    if (*(result + 24) < v18)
    {
      result = re::DynamicArray<physx::PxContactPairPoint>::setCapacity((result + 16), v18);
      v23 = *(v17 + 32);
    }

    v24 = v22 - v23;
    if (v22 > v23)
    {
      v25 = (*(v17 + 48) + 48 * v23 + 44);
      do
      {
        *(v25 - 8) = 0;
        *(v25 - 4) = 0;
        *v25 = 0;
        v25 += 12;
        --v24;
      }

      while (v24);
    }

    goto LABEL_23;
  }

  if (v23 > v18)
  {
LABEL_23:
    *(v17 + 32) = v22;
    ++*(v17 + 40);
    v23 = v22;
  }

  if (a4 && v22)
  {
    v26 = 0;
    v27 = 0;
    v28 = *(v17 + 48);
    v29 = a4;
    while (1)
    {
      v30 = v27;
      if (v23 <= v27)
      {
        break;
      }

      v31 = a3 + (v26 << 6);
      v32 = *(v31 + 44);
      if (*(v31 + 44))
      {
        v33 = *(v31 + 16);
        if (v33)
        {
          v34 = v33[5].i8[3];
          v35 = (v34 & 2) != 0 ? 64 : 16;
          result = v34 >= 0 ? v35 : 32;
          v36 = (v34 & 1) == 0;
        }

        else
        {
          result = 0;
          v36 = 1;
        }

        v37 = *(v31 + 45);
        if (*(v31 + 45))
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v42 = *(v31 + 24);
          v43 = *(v31 + 32);
          v44 = (v43 + 4 * *(v31 + 44));
          v45 = *(v31 + 48);
          do
          {
            if (v40)
            {
              v46 = v33[5].u8[1];
              v47 = v46 >= v41;
              v49 = v46 - v41;
              v48 = v49 != 0 && v47;
              LODWORD(v50) = v49 * result;
              if (v48)
              {
                v50 = v50;
              }

              else
              {
                v50 = 0;
              }

              v42 = (v42 + v50);
              v33 += 6;
            }

            ++v40;
            v41 = v33[5].u8[1];
            v51 = v41;
            while (v51)
            {
              v52 = (v39 & 1) == 0;
              if (v39)
              {
                v53 = result;
              }

              else
              {
                v53 = 0;
              }

              v42 = (v42 + v53);
              if (v52)
              {
                v54 = 0;
              }

              else
              {
                v54 = 4;
              }

              v44 = (v44 + v54);
              v55 = v28 + 48 * v30 + 48 * v38;
              *v55 = *v42;
              v56 = v33[2];
              *(v55 + 16) = v56;
              v57 = v33[3].f32[0];
              *(v55 + 24) = v57;
              if ((v45 & 0x20) != 0)
              {
                if (v36)
                {
                  v59 = -1;
                }

                else
                {
                  v59 = *v44;
                }

                *(v55 + 28) = v59;
                v58 = -1;
              }

              else
              {
                v58 = -1;
                *(v55 + 28) = -1;
                if (!v36)
                {
                  v58 = *v44;
                }
              }

              *(v55 + 44) = v58;
              if ((v45 & 0x10) != 0)
              {
                v62 = *(v43 + 4 * v38);
                v60 = vmul_n_f32(v56, v62);
                v61 = v57 * v62;
              }

              else
              {
                v60 = 0;
                v61 = 0.0;
              }

              *(v55 + 32) = v60;
              *(v55 + 40) = v61;
              ++v38;
              --v51;
              v39 = 1;
              if (v32 == v38)
              {
                goto LABEL_66;
              }
            }
          }

          while (v40 != v37);
        }
      }

LABEL_66:
      v27 = v30 + v32;
      if (++v26 == v29)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_69:
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return result;
}

void re::PhysXSimulationEventCallback::onTrigger(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 24) == 1)
  {
    v41 = v3;
    v42 = v4;
    v8 = *(a1 + 16);
    v9 = *(v8 + 28) + a3;
    if (*(v8 + 24) < v9)
    {
      re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(v8, v9);
    }

    if (a3)
    {
      v10 = 0;
      v11 = a3;
      do
      {
        v12 = a2 + 40 * v10;
        v13 = *(*(v12 + 24) + 16);
        v14 = *(*(v12 + 8) + 16);
        *&v39 = v13;
        *(&v39 + 1) = v14;
        LOBYTE(v40) = 0;
        if ((*(v12 + 32) & 0x10) != 0)
        {
          v25 = *(a1 + 16);
          if ((*(v12 + 36) & 3) != 0)
          {
            re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::remove(v25, &v39);
          }

          else
          {
            v32 = *(v25 + 24);
            if (v32)
            {
              v33 = *(*(v25 + 8) + 4 * ((((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v14) ^ v13) % v32));
              if (v33 != 0x7FFFFFFF)
              {
                v34 = *(v25 + 16);
                while (1)
                {
                  v35 = v34 + 40 * v33;
                  v38 = *(v35 + 16);
                  v36 = v35 + 16;
                  v37 = v38;
                  if (v38 == v13 && *(v36 + 8) == v14)
                  {
                    break;
                  }

                  if (v37 == v14 && *(v36 + 8) == v13)
                  {
                    break;
                  }

                  v33 = *(v34 + 40 * v33 + 8) & 0x7FFFFFFF;
                  if (v33 == 0x7FFFFFFF)
                  {
                    goto LABEL_25;
                  }
                }

                *(v36 + 16) = 2;
              }
            }
          }

          goto LABEL_25;
        }

        v15 = *(a1 + 16);
        v16 = ((v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + v14) ^ v13;
        v17 = *(v15 + 24);
        if (v17)
        {
          v18 = v16 % v17;
          v19 = *(*(v15 + 8) + 4 * (v16 % v17));
          if (v19 != 0x7FFFFFFF)
          {
            v20 = *(v15 + 16);
            do
            {
              v21 = v20 + 40 * v19;
              v24 = *(v21 + 16);
              v22 = v21 + 16;
              v23 = v24;
              if (v24 == v13 && *(v22 + 8) == v14)
              {
                goto LABEL_25;
              }

              if (v23 == v14 && *(v22 + 8) == v13)
              {
                goto LABEL_25;
              }

              v19 = *(v20 + 40 * v19 + 8) & 0x7FFFFFFF;
            }

            while (v19 != 0x7FFFFFFF);
          }
        }

        else
        {
          v18 = 0;
        }

        v26 = *(v15 + 36);
        if (v26 == 0x7FFFFFFF)
        {
          v26 = *(v15 + 32);
          v27 = v26;
          if (v26 == v17)
          {
            re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(*(a1 + 16), 2 * *(v15 + 28));
            v18 = v16 % *(v15 + 24);
            v27 = *(v15 + 32);
          }

          *(v15 + 32) = v27 + 1;
          v28 = *(v15 + 16);
          v29 = *(v28 + 40 * v26 + 8);
        }

        else
        {
          v28 = *(v15 + 16);
          v29 = *(v28 + 40 * v26 + 8);
          *(v15 + 36) = v29 & 0x7FFFFFFF;
        }

        *(v28 + 40 * v26 + 8) = v29 | 0x80000000;
        *(*(v15 + 16) + 40 * v26 + 8) = *(*(v15 + 16) + 40 * v26 + 8) & 0x80000000 | *(*(v15 + 8) + 4 * v18);
        *(*(v15 + 16) + 40 * v26) = v16;
        v30 = *(v15 + 16) + 40 * v26;
        v31 = v39;
        *(v30 + 32) = v40;
        *(v30 + 16) = v31;
        *(*(v15 + 8) + 4 * v18) = v26;
        ++*(v15 + 28);
        ++*(v15 + 40);
LABEL_25:
        ++v10;
      }

      while (v10 != v11);
    }
  }
}

void re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v25, 0, 36);
      *&v25[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(v25, v4, a2);
      v5 = *a1;
      *a1 = *v25;
      v6 = *(a1 + 16);
      v7 = *&v25[8];
      *v25 = v5;
      *&v25[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v25[24];
      *&v25[24] = *(a1 + 24);
      v8 = *&v25[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = DWORD1(v9);
        v13 = v7;
        v14 = (v6 + 16);
        do
        {
          if ((*(v14 - 2) & 0x80000000) != 0)
          {
            v15 = *(v14 - 2);
            v16 = *(a1 + 24);
            v17 = v15 % v16;
            v18 = *(a1 + 36);
            if (v18 == 0x7FFFFFFF)
            {
              v18 = *(a1 + 32);
              v19 = v18;
              if (v18 == v16)
              {
                re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::setCapacity(a1, (2 * v12));
                v17 = v15 % *(a1 + 24);
                v19 = *(a1 + 32);
                v13 = *(a1 + 8);
              }

              *(a1 + 32) = v19 + 1;
              v20 = *(a1 + 16);
              v21 = *(v20 + 40 * v18 + 8);
            }

            else
            {
              v20 = *(a1 + 16);
              v21 = *(v20 + 40 * v18 + 8);
              *(a1 + 36) = v21 & 0x7FFFFFFF;
            }

            *(v20 + 40 * v18 + 8) = v21 | 0x80000000;
            *(*(a1 + 16) + 40 * v18 + 8) = *(*(a1 + 16) + 40 * v18 + 8) & 0x80000000 | *(v13 + 4 * v17);
            *(*(a1 + 16) + 40 * v18) = v15;
            v22 = *(a1 + 16) + 40 * v18;
            v23 = *v14;
            *(v22 + 32) = *(v14 + 2);
            *(v22 + 16) = v23;
            v13 = *(a1 + 8);
            *(v13 + 4 * v17) = v18;
            v12 = *(a1 + 28) + 1;
            *(a1 + 28) = v12;
          }

          ++v11;
          v14 = (v14 + 40);
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v25);
    }
  }

  else
  {
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 3;
    }
  }
}

void *re::DynamicArray<physx::PxContactPairPoint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<physx::PxContactPairPoint>::setCapacity(v4, a2);
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 48 * a2, 4);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 48 * a2, *(*v4 + 8));
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
        v9 = v7 + 48 * v8;
        v10 = v6;
        v11 = v4[4];
        do
        {
          *v10 = *v11;
          v10[2] = *(v11 + 16);
          *(v10 + 6) = *(v11 + 24);
          *(v10 + 7) = *(v11 + 28);
          v10[4] = *(v11 + 32);
          *(v10 + 10) = *(v11 + 40);
          *(v10 + 11) = *(v11 + 44);
          v11 += 48;
          v10 += 6;
        }

        while (v11 != v9);
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t re::CollisionFactory::createGeometricObject(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v9 = (*(*a2 + 32))(a2, 240, 16);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 160) = 0u;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  *(v9 + 208) = 0u;
  *(v9 + 224) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0x3F80000000000000;
  *v9 = &unk_1F5CCDD10;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0x3F80000000000000;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0x3F80000000000000;
  *(v9 + 144) = 0;
  *(v9 + 168) = 0;
  *(v9 + 152) = 0;
  *(v9 + 160) = 0;
  *(v9 + 208) = 0;
  *(v9 + 176) = 0u;
  *(v9 + 192) = 0u;
  v10 = a4[1];
  *(v9 + 16) = *a4;
  *(v9 + 32) = v10;
  *(v9 + 64) = a3;
  v11 = a4[1];
  *(v9 + 112) = *a4;
  *(v9 + 128) = v11;
  *(v9 + 144) = a2;
  re::DynamicArray<re::EvaluationRegister>::setCapacity((v9 + 144), 0);
  ++*(v9 + 168);
  *(v9 + 232) = a5;
  return v9;
}

uint64_t re::CollisionFactory::deepCopyShape(re::CollisionFactory *this, re::Allocator *a2, const re::CollisionShape *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v9 = (*(*a3 + 24))(a3);
  v11 = 0;
  if (v9 > 5)
  {
    if (v9 <= 8)
    {
      if (v9 != 6)
      {
        if (v9 != 7)
        {
          v12 = (*(*a3 + 64))(a3);
          (*(*a3 + 72))(a3);
          v13 = *(*this + 128);
          v14.n128_u32[0] = v17.n128_u32[0];
          v15 = this;
          v16 = a2;
          v17.n128_f32[0] = v12;

          return v13(v15, v16, v17, v14);
        }

        v26 = *(a3 + 4);
        v27 = *(a3 + 5);
        v45 = 0;
        v46 = 0;
        v47 = 0;
        re::FixedArray<unsigned long>::init<>(&v45, a2, v26);
        v42 = 0;
        v43 = 0;
        v44 = 0;
        re::FixedArray<re::Pose<float>>::init<>(&v42, a2, v26);
        if (v26)
        {
          v28 = 0;
          v4 = 0;
          v5 = &v57;
          v29 = (v27 + 112);
          while (1)
          {
            v30 = re::CollisionFactory::deepCopyShape(this, a2, *(v29 - 6));
            v3 = v46;
            if (v46 <= v4)
            {
              break;
            }

            *(v47 + 8 * v4) = v30;
            v3 = v43;
            if (v43 <= v4)
            {
              goto LABEL_57;
            }

            v31 = v44;
            v32 = (v44 + v28);
            v33 = *v29;
            v34 = *(v29 + 1);
            v29 += 30;
            *v32 = v33;
            v32[1] = v34;
            ++v4;
            v28 += 32;
            if (v26 == v4)
            {
              goto LABEL_48;
            }
          }

LABEL_56:
          v48 = 0;
          v5[3] = 0u;
          v5[4] = 0u;
          v5[2] = 0u;
          v57 = 0u;
          v58 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          v52 = 468;
          v53 = 2048;
          v54 = v4;
          v55 = 2048;
          v56 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_57:
          v48 = 0;
          v5[3] = 0u;
          v5[4] = 0u;
          v5[2] = 0u;
          v57 = 0u;
          v58 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v49 = 136315906;
          v50 = "operator[]";
          v51 = 1024;
          v52 = 468;
          v53 = 2048;
          v54 = v4;
          v55 = 2048;
          v56 = v3;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v31 = v44;
LABEL_48:
        v40 = v47;
        v41 = (*(*a3 + 64))(a3);
        v11 = (*(*this + 160))(this, a2, v40, v31, v26, v41, a2);
        if (v42 && v43)
        {
          (*(*v42 + 40))();
        }

        if (v45 && v46)
        {
          (*(*v45 + 40))();
        }

        return v11;
      }

      v37 = (*(*a3 + 64))(a3);
      (*(*a3 + 72))(a3);
      v18 = *(*this + 104);
      v19 = this;
      v20 = a2;
      v21 = v37;

      return v18(v19, v20, v21);
    }

    if (v9 == 9)
    {
      v38 = (*(*a3 + 64))(a3);
      (*(*a3 + 72))(a3);
      v13 = *(*this + 120);
      v14.n128_u32[0] = v17.n128_u32[0];
      v15 = this;
      v16 = a2;
      v17.n128_f32[0] = v38;

      return v13(v15, v16, v17, v14);
    }

    if (v9 != 11)
    {
      if (v9 != 12)
      {
        return v11;
      }

      v21 = *(a3 + 3);
      v18 = *(*this + 144);
      v19 = this;
      v20 = a2;

      return v18(v19, v20, v21);
    }

    *&v57 = (*(*a3 + 64))(a3);
    return (*(*this + 136))(this, a2, &v57);
  }

  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        v36 = (*(*a3 + 64))(a3);
        (*(*a3 + 72))(a3);
        v13 = *(*this + 40);
        v14.n128_u32[0] = v17.n128_u32[0];
        v15 = this;
        v16 = a2;
        v17.n128_f32[0] = v36;

        return v13(v15, v16, v17, v14);
      }

      v18 = *(*this + 80);
      v19 = this;
      v20 = a2;
      v21 = a3;

      return v18(v19, v20, v21);
    }

    *&v57 = (*(*a3 + 64))(a3);
    *(&v57 + 1) = v39;
    return (*(*this + 32))(this, a2, &v57);
  }

  switch(v9)
  {
    case 1:
      v22 = *(*this + 96);
      v23 = this;
      v24 = a2;

      return v22(v23, v24);
    case 2:
      (*(*a3 + 64))(a3);
      v22 = *(*this + 112);
      v23 = this;
      v24 = a2;

      return v22(v23, v24);
    case 0:
      re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "deepCopyShape", 45);
      _os_crash();
      __break(1u);
      goto LABEL_56;
  }

  return v11;
}

double re::PhysXTriangleMeshShape::PhysXTriangleMeshShape(re::PhysXTriangleMeshShape *this, const re::IndexedTriangleMesh *a2, float a3)
{
  *(this + 4) = a3;
  *(this + 3) = a2;
  *this = &unk_1F5CCEE48;
  *(this + 1) = this + 32;
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  *(this + 8) = 5;
  result = 0.00781250185;
  *(this + 36) = xmmword_1E304F3C0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 60) = 1065353216;
  *(this + 9) = v3;
  return result;
}

void re::PhysXTriangleMeshShape::aabb(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, float32x4_t *a7@<X8>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, int32x4_t a13@<Q6>)
{
  if (*(a1 + 72))
  {
    v17 = *(a2 + 1);
    v14.i64[1] = *(&v17 + 1);
    v18 = *a2;
    v19 = *(a2 + 2);
    v14.i64[0] = 0;
    LODWORD(a8) = 1.0;
    physx::Gu::computeBounds(v20, a1 + 32, &v17, 0, v14, a8, a9, a10, a11, a12, a13, a3, a4, a5, a6, v17);
    v15 = *v20;
    v16.i64[0] = *&v20[12];
    v16.i32[2] = v21;
  }

  else
  {
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v15 = vnegq_f32(v16);
  }

  *a7 = v15;
  a7[1] = v16;
}

uint64_t re::PhysXTriangleMeshShape::indexFormat(re::PhysXTriangleMeshShape *this)
{
  (*(**(this + 9) + 96))(&var1);
  if ((var1 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t re::CollisionObject::CollisionObject(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[4] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CCEEE0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a4;
  *(a1 + 24) = a6;
  *(a1 + 32) = xmmword_1E3066800;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = a3;
  *(a1 + 96) = a5;
  if ((a2 & 1) == 0)
  {
    v7 = (*(*a4 + 48))(a4);
    v9[0] = a1;
    v9[1] = re::CollisionObject::poseDidChange;
    v9[2] = 0;
    v9[3] = re::Event<re::GeometricObjectBase>::createSubscription<re::CollisionObject>(re::CollisionObject *,REEventHandlerResult (re::CollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription(v7, v9);
  }

  return a1;
}

void re::CollisionObject::~CollisionObject(re::CollisionObject *this)
{
  v9 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CCEEE0;
  if ((*(this + 8) & 1) == 0)
  {
    v2 = *(this + 2);
    v3 = (*(*v2 + 48))(v2);
    *&v6 = this;
    *(&v6 + 1) = re::CollisionObject::poseDidChange;
    v7 = 0;
    v8 = re::Event<re::GeometricObjectBase>::createSubscription<re::CollisionObject>(re::CollisionObject *,REEventHandlerResult (re::CollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3, &v6);
    v4 = *(this + 12);
    (**v2)(v2);
    (*(*v4 + 40))(v4, v2);
  }

  if (*(this + 64) == 1)
  {
    v5 = *(this + 9);
    if (v5)
    {

      *(this + 9) = 0;
    }
  }
}

uint64_t re::CollisionObject::setScale(uint64_t a1, float32x4_t *a2)
{
  v3 = *a2;
  v3.i32[3] = 0;
  v4 = vmaxnmq_f32(v3, xmmword_1E3066810);
  v13 = v4;
  if ((*(a1 + 8) & 2) != 0)
  {
    v6 = v4.f32[1];
    v5 = v4.f32[2];
  }

  else
  {
    v13 = vdupq_lane_s32(*v4.f32, 0);
    v5 = v4.f32[0];
    v6 = v4.f32[0];
  }

  v10 = v4.f32[0];
  if (v4.f32[0] <= 0.00001 || v6 <= 0.00001 || v5 <= 0.00001)
  {
    v7 = *re::collisionLogObjects(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Collider scale, 0 or negative is not supported. Setting scale to epsilon value.", buf, 2u);
    }
  }

  result = (*(*a1 + 16))(a1);
  *buf = result;
  v12 = v9;
  if (v10 != *&result && vabds_f32(*&result, v10) >= (((fabsf(v10) + fabsf(*&result)) + 1.0) * 0.0001) || v6 != *(&result + 1) && vabds_f32(*(&result + 1), v6) >= (((fabsf(v6) + fabsf(*(&result + 1))) + 1.0) * 0.0001) || v5 != *&v9 && vabds_f32(*&v9, v5) >= (((fabsf(v5) + fabsf(*&v9)) + 1.0) * 0.0001))
  {
    (*(*a1 + 72))(a1, &v13);
    return (*(**(a1 + 16) + 32))(*(a1 + 16), buf, &v13);
  }

  return result;
}

unint64_t re::CollisionObject::rayCast(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  result = re::BucketArray<re::CollisionCastHit,10ul>::clear(a4);
  v9 = *(a3 + 4);
  v10 = a1[4];
  v11 = v10 & HIDWORD(v9);
  v12 = v9 & HIDWORD(v10);
  if (v11)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = *(*a1 + 88);

    return v14(a1, a2, a3, a4);
  }

  return result;
}

id re::CollisionObject::weakPointer@<X0>(re::CollisionObject *this@<X0>, id *a2@<X8>)
{
  v4 = this + 64;
  if ((*(this + 64) & 1) == 0)
  {
    v8 = this;
    re::make::shared::object<re::CollisionObject::Shareable,re::CollisionObject*>(&v8, &v9);
    v10[0] = 1;
    v11 = v9;
    v9 = 0;
    re::Optional<re::SharedPtr<re::CollisionObject::Shareable>>::operator=(v4, v10);
    if (v10[0] == 1 && v11)
    {

      v11 = 0;
    }

    if (v9)
    {
    }
  }

  v5 = *(this + 9);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  return objc_initWeak(a2, v6);
}

uint64_t re::Optional<re::SharedPtr<re::CollisionObject::Shareable>>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      v3 = *(a1 + 8);
      *(a1 + 8) = *(a2 + 8);
      *(a2 + 8) = v3;
    }

    else
    {
      v4 = *(a1 + 8);
      if (v4)
      {

        *(a1 + 8) = 0;
      }

      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  return a1;
}

uint64_t re::Event<re::GeometricObjectBase>::createSubscription<re::CollisionObject>(re::CollisionObject *,REEventHandlerResult (re::CollisionObject::*)(re::GeometricObjectBase*))::{lambda(re::GeometricObjectBase*,re::Event<re::GeometricObjectBase>::Subscription const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

void re::make::shared::object<re::CollisionObject::Shareable,re::CollisionObject*>(re *a1@<X0>, _anonymous_namespace_ **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 32, 8);
  v6 = *a1;
  ArcSharedObject::ArcSharedObject(v5, 0);
  *(v5 + 3) = v6;
  *v5 = &unk_1F5CCEF60;
  *a2 = v5;
}

void re::CollisionObject::Shareable::~Shareable(re::CollisionObject::Shareable *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

float re::SphereShape::massProperties(uint64_t a1, float *a2, void *a3, uint64_t a4)
{
  v7 = (*(*a1 + 64))(a1);
  v8 = v7 * v7;
  v9 = v7 * ((v7 * v7) * 4.1888);
  *a2 = v9;
  result = v8 * (v9 * 0.4);
  *a4 = result;
  *(a4 + 4) = 0;
  *(a4 + 12) = 0;
  *(a4 + 20) = result;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = result;
  *(a4 + 44) = 0;
  *a3 = 0;
  a3[1] = 0;
  return result;
}

void re::basicLocalWallTime(re *this@<X0>, re::DynamicString *a2@<X8>)
{
  v12 = [MEMORY[0x1E695DF00] date];
  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v6 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v5 setTimeZone:v6];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  [v5 setDateFormat:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v5 stringFromDate:v12];
  v10 = [v8 stringWithFormat:@"%@", v9];

  v11 = [v10 UTF8String];
}

void re::WrappedError::make(re::WrappedError *this@<X0>, const __CFString *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:this code:a2 userInfo:a3];
  *a4 = v6;
}

{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E696A578];
  v8 = [MEMORY[0x1E696AEC0] stringWithCString:a3 encoding:4];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:this code:a2 userInfo:v9];
  *a4 = v10;
}

void re::WrappedError::make(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X3>, void *a5@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v14[0] = *MEMORY[0x1E696A578];
  v9 = [MEMORY[0x1E696AEC0] stringWithCString:a3 encoding:4];
  v14[1] = *MEMORY[0x1E696AA08];
  v15 = v9;
  v16 = *a4;
  v10 = MEMORY[0x1E695DF20];
  v11 = v16;
  v12 = [v10 dictionaryWithObjects:&v15 forKeys:v14 count:2];

  v13 = [MEMORY[0x1E696ABC0] errorWithDomain:a1 code:a2 userInfo:v12];
  *a5 = v13;
}

uint64_t re::WrappedError::localizedDescription(id *this)
{
  v1 = [*this localizedDescription];
  v2 = [v1 UTF8String];

  return v2;
}

CFErrorDomain re::WrappedError::domain(id *this)
{
  v1 = *this;

  return CFErrorGetDomain(v1);
}

void re::formattedErrorMessage<re::DetailedError>(uint64_t a1@<X0>, re::DynamicString *a2@<X8>)
{
  std::error_code::message(&v6, a1);
  if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v6;
  }

  else
  {
    v4 = v6.__r_.__value_.__r.__words[0];
  }

  if (*(a1 + 24))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = a1 + 25;
  }

  re::DynamicString::format("%s. %s", a2, v4, v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void re::runInLocalAutoreleasePool(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 24);
  if (v3)
  {
    (*(*v3 + 48))(v3);

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    re::StackScratchAllocator::FreePersistentBlocks(v4);
  }
}

void re::StackScratchAllocator::FreePersistentBlocks(re::StackScratchAllocator *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
  {
    for (i = 0; i < v7; ++i)
    {
      v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = re::globalAllocators(v1);
        v1 = (*(*v6[2] + 40))(v6[2], v5);
        v4 = re::StackScratchAllocator::s_rootsWithPersistentBlocks[i];
      }

      *(v4 + 8) = 0;
      v7 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
    }
  }

  atomic_store(0, &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

re::StackScratchAllocator *re::StackScratchAllocator::StackScratchAllocator(re::StackScratchAllocator *this)
{
  *(this + 16) = 0;
  *this = &unk_1F5CCEFC0;
  *(this + 1) = "Thread-local Scratch Allocator";
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 108) = 0x7FFFFFFFLL;
  {
    v7 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
    _tlv_atexit(re::StackScratchAllocator::Root::~Root, v7);
  }

  v3 = re::StackScratchAllocator::StackScratchAllocator(void)::root(&re::StackScratchAllocator::StackScratchAllocator(void)::root);
  v4 = *v3;
  if (*v3)
  {
    *(this + 6) = v4;
    *(this + 24) = *(v4 + 24);
    v5 = v3[1];
  }

  else
  {
    v5 = v3[1];
    if (!v5)
    {
      goto LABEL_6;
    }

    v8 = v5 + *(v5 + 8);
    *(this + 3) = v5 + 16;
    *(this + 4) = v8;
  }

  *(this + 5) = v5;
LABEL_6:
  *v3 = this;
  *(this + 7) = v3;
  return this;
}

void re::StackScratchAllocator::Root::~Root(re::StackScratchAllocator::Root *this)
{
  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = re::globalAllocators(v2);
    (*(*v4[2] + 40))(v4[2], v3);
    v6 = &re::StackScratchAllocator::s_rootsWithPersistentBlocksCount;
    if (atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount))
    {
      v8 = 0;
      v9 = &re::StackScratchAllocator::s_rootsWithPersistentBlocks;
      while (*(&re::StackScratchAllocator::s_rootsWithPersistentBlocks + v8) != this)
      {
        ++v8;
        v10 = atomic_load(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount);
        if (v8 >= v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Can't find allocated block", "!Unreachable code", "~Root", 193);
      _os_crash();
      __break(1u);
    }

    atomic_fetch_add(v6, 0xFFFFFFFFFFFFFFFFLL);
    v11 = atomic_load(v6);
    v12 = v9[v8];
    v9[v8] = v9[v11];
    v9[v11] = v12;
  }

  std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
}

void re::StackScratchAllocator::~StackScratchAllocator(re::StackScratchAllocator *this)
{
  v1 = this;
  *this = &unk_1F5CCEFC0;
  v2 = *(this + 7);
  v3 = v2 + 1;
  v4 = v2[1];
  for (i = *(this + 5); v4 != i && *v4; i = *(v1 + 5))
  {
    *v3 = *v4;
    v6 = re::globalAllocators(this);
    this = (*(*v6[2] + 40))(v6[2], v4);
    v2 = *(v1 + 7);
    v3 = v2 + 1;
    v4 = v2[1];
  }

  *v2 = *(v1 + 6);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v1 + 9);

  re::Allocator::~Allocator(v1);
}

{
  re::StackScratchAllocator::~StackScratchAllocator(this);

  JUMPOUT(0x1E6906520);
}

re::StackScratchAllocator **re::StackScratchAllocator::alloc(re::StackScratchAllocator ***this, uint64_t a2, unint64_t a3)
{
  if (*this[7] != this)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to allocate from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "alloc", 93);
    _os_crash();
    __break(1u);
LABEL_7:
    re::StackScratchAllocator::growAndAlign(v3, v4, a3);
    result = v3[3];
    goto LABEL_5;
  }

  v4 = a2;
  v3 = this;
  if (a3 <= 1)
  {
    a3 = 1;
  }

  v5 = this[4];
  result = ((this[3] + a3 - 1) & -a3);
  v3[3] = result;
  if (result + a2 > v5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v3[3] = (result + v4);
  return result;
}

void re::StackScratchAllocator::growAndAlign(re::StackScratchAllocator *this, uint64_t a2, uint64_t a3)
{
  if ((a3 + a2) <= 0x2000)
  {
    v5 = 0x4000;
  }

  else
  {
    v5 = a3 + a2 + 0x4000;
  }

  v6 = re::globalAllocators(this);
  v7 = (*(*v6[2] + 32))(v6[2], v5, 0);
  v8 = *(this + 7);
  *v7 = *(v8 + 8);
  v7[1] = v5;
  if (*(this + 3))
  {
    goto LABEL_7;
  }

  std::mutex::lock(&re::StackScratchAllocator::s_mutex);
  add = atomic_fetch_add(&re::StackScratchAllocator::s_rootsWithPersistentBlocksCount, 1uLL);
  if (add < 0x100)
  {
    re::StackScratchAllocator::s_rootsWithPersistentBlocks[add] = *(this + 7);
    std::mutex::unlock(&re::StackScratchAllocator::s_mutex);
    v8 = *(this + 7);
LABEL_7:
    *(v8 + 8) = v7;
    *(this + 3) = (v7 + a3 + 15) & -a3;
    *(this + 4) = v7 + v5;
    return;
  }

  re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "index < MAX_THREADS", "growAndAlign", 161);
  _os_crash();
  __break(1u);
}

uint64_t re::StackScratchAllocator::free(uint64_t this, uint64_t a2)
{
  if (**(this + 56) != this)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Attempting to free from a StackScratchAlloc object that is not top of stack", "m_root->m_top == this", "free", 124, v2, v3);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

void re::Data::makeDataWithBytes(re::Data *this@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:this length:a2];
  *a3 = v4;
}

void re::Data::makeDataWithBytesNoCopy(re::Data *this@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v4 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:this length:a2 freeWhenDone:0];
  *a3 = v4;
}

uint64_t *re::globalAllocators(re *this)
{
  {
    if (v2)
    {
      re::globalAllocators(void)::s_instance = &unk_1F5CCF060;
      byte_1EE1C6ED0 = 0;
      *algn_1EE1C6EE0 = 0u;
      *&algn_1EE1C6EE0[16] = 0u;
      re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
    }
  }

  return &re::globalAllocators(void)::s_instance;
}

void anonymous namespace::internalSystemAllocator(_anonymous_namespace_ *this)
{
  {
    byte_1EE1C7940 = 0;
    *algn_1EE1C7938 = "System allocator";
  }
}

_anonymous_namespace_ *re::initGlobalAllocators(re *this)
{
  result = re::globalAllocators(this);
  if ((byte_1EE1C6ED0 & 1) == 0)
  {
    re::globalAllocators(result);

    return re::GlobalAllocators::init(&re::globalAllocators(void)::s_instance);
  }

  return result;
}

_anonymous_namespace_ *re::GlobalAllocators::init(_anonymous_namespace_ *this)
{
  if ((*(this + 8) & 1) == 0)
  {
    v1 = this;
    re::globalMemoryTracker(this);
    if ((re::globalMemoryTracker(void)::s_instance & 1) == 0)
    {
      qword_1EE1C6BE8 = *(v1 + 2);
      re::DynamicArray<float *>::setCapacity(&qword_1EE1C6BE8, 0x400uLL);
      ++dword_1EE1C6C00;
      re::globalMemoryTracker(void)::s_instance = 1;
    }

    re::MemoryTracker::track(&re::globalMemoryTracker(void)::s_instance, *(v1 + 2));
    v2 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v3 = re::Allocator::Allocator(v2, "SIMD-aligned allocator", 1);
    *v3 = &unk_1F5CCF458;
    *(v3 + 3) = 16;
    *(v1 + 3) = v3;
    v4 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v5 = re::Allocator::Allocator(v4, "Cache-aligned allocator", 1);
    *v5 = &unk_1F5CCF458;
    *(v5 + 3) = 128;
    *(v1 + 4) = v5;
    v6 = (*(**(v1 + 2) + 32))(*(v1 + 2), 40, 8);
    v7 = re::Allocator::Allocator(v6, "TLB-aligned allocator", 1);
    *v7 = &unk_1F5CCF458;
    *(v7 + 3) = 0x4000;
    *(v1 + 5) = v7;
    v8 = (*(**(v1 + 2) + 32))(*(v1 + 2), 5304, 8);
    *v8 = 0;
    *(v8 + 88) = 0;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    *(v8 + 8) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 68) = 0u;
    *(v8 + 108) = 0x1FFFFFFFFLL;
    *(v8 + 120) = 0;
    *(v8 + 136) = 0;
    *(v8 + 144) = 0;
    *(v8 + 128) = 0;
    *(v8 + 152) = 0;
    bzero((v8 + 160), 0x1418uLL);
    *(v1 + 6) = v8;
    this = re::PerFrameAllocatorManager::init(v8);
    *(v1 + 8) = 1;
  }

  return this;
}

void re::deinitGlobalAllocators(re *this)
{
  v1 = re::globalAllocators(this);
  if (byte_1EE1C6ED0 == 1)
  {
    re::globalAllocators(v1);

    re::GlobalAllocators::deinit(&re::globalAllocators(void)::s_instance);
  }
}

void re::GlobalAllocators::deinit(re **this)
{
  if (*(this + 8) == 1)
  {
    re::StackScratchAllocator::FreePersistentBlocks(this);
    re::globalMemoryTracker(v2);
    re::PerFrameAllocatorManager::deinit(this[6]);
    v3 = this[2];
    v4 = this[6];
    if (v4)
    {
      v5 = 5120;
      do
      {
        *(v4 + v5 + 128) = 0;
        v5 -= 40;
      }

      while (v5);
      v6 = *(v4 + 16);
      if (v6)
      {
        v7 = *(v4 + 20);
        if (v7)
        {
          v8 = *(v4 + 18);
          if (v8)
          {
            v9 = 88 * v8;
            v10 = v7 + 48;
            do
            {
              re::DynamicArray<unsigned long>::deinit(v10);
              re::DynamicArray<unsigned long>::deinit(v10 - 40);
              v10 += 88;
              v9 -= 88;
            }

            while (v9);
            v6 = *(v4 + 16);
            v7 = *(v4 + 20);
          }

          (*(*v6 + 40))(v6, v7);
        }

        *(v4 + 20) = 0;
        *(v4 + 17) = 0;
        *(v4 + 18) = 0;
        *(v4 + 16) = 0;
        ++*(v4 + 38);
      }

      re::DataArray<re::PerFrameAllocatorImpl>::deinit(v4 + 56);
      re::DynamicArray<unsigned long>::deinit(v4 + 56);
      v11 = *(v4 + 4);
      if (v11)
      {
        if (*(v4 + 5))
        {
          (*(*v11 + 40))(v11, *(v4 + 6));
          *(v4 + 5) = 0;
          *(v4 + 6) = 0;
        }

        *(v4 + 4) = 0;
      }

      re::FixedArray<CoreIKTransform>::deinit(v4 + 1);
      (*(*v3 + 40))(v3, v4);
      v3 = this[2];
    }

    this[6] = 0;
    v12 = this[5];
    if (v12)
    {
      (**v12)(this[5]);
      (*(*v3 + 40))(v3, v12);
      v3 = this[2];
    }

    this[5] = 0;
    v13 = this[4];
    if (v13)
    {
      (**v13)(this[4]);
      (*(*v3 + 40))(v3, v13);
      v3 = this[2];
    }

    this[4] = 0;
    v14 = this[3];
    if (v14)
    {
      (**v14)(this[3]);
      (*(*v3 + 40))(v3, v14);
      v3 = this[2];
    }

    this[3] = 0;
    re::MemoryTracker::untrack(&re::globalMemoryTracker(void)::s_instance, v3);
    if (re::globalMemoryTracker(void)::s_instance == 1)
    {
      v15 = re::DynamicArray<unsigned long>::deinit(&qword_1EE1C6BE8);
      re::globalMemoryTracker(void)::s_instance = 0;
    }

    *(this + 8) = 0;
  }
}

void re::GlobalAllocators::~GlobalAllocators(re **this)
{
  *this = &unk_1F5CCF060;
  re::GlobalAllocators::deinit(this);
}

{
  *this = &unk_1F5CCF060;
  re::GlobalAllocators::deinit(this);

  JUMPOUT(0x1E6906520);
}

char *re::globalMemoryTracker(re *this)
{
  {
    if (v2)
    {
      re::globalMemoryTracker(void)::s_instance = 0;
      qword_1EE1C6C08 = 0;
      *&algn_1EE1C6BE1[3] = 0u;
      *&algn_1EE1C6BF0[4] = 0u;
      re::DynamicArray<float *>::setCapacity(&qword_1EE1C6BE8, 0x400uLL);
      ++dword_1EE1C6C00;
      re::globalMemoryTracker(void)::s_instance = 1;
    }
  }

  return &re::globalMemoryTracker(void)::s_instance;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::deinit(uint64_t result)
{
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::PerFrameAllocatorImpl>::clear(result);
    if (!v1[2])
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::PerFrameAllocatorImpl>::clear(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v11, a1, 0);
  if (*&v11[0] != a1 || DWORD2(v11[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v11);
      re::DataArray<re::PerFrameAllocatorImpl>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v11);
    }

    while (*&v11[0] != a1 || WORD4(v11[0]) != 0xFFFF || WORD5(v11[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      if (a1[2] <= v7)
      {
        memset(v11, 0, sizeof(v11));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v9 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v9 - 16));
      (*(**a1 + 40))(*a1, *(v9 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

uint64_t (***re::DataArray<re::PerFrameAllocatorImpl>::destroy(uint64_t a1, unint64_t a2))(void)
{
  v2 = a2;
  v4 = a2 >> 16;
  result = re::DataArray<re::PerFrameAllocatorImpl>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (result)
  {
    v6 = result;
    result = (**result)(result);
    if (*(a1 + 16) <= HIWORD(v2))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }

  return result;
}

uint64_t re::DataArray<re::PerFrameAllocatorImpl>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 184 * a2;
  }

  else
  {
    return 0;
  }
}

void re::StringID::init(re::StringID *this, re::Allocator *a2, const char *__s)
{
  if (__s)
  {
    v6 = strlen(__s);
  }

  else
  {
    v6 = 0;
  }

  re::StringID::init(this, a2, __s, v6);
}

re::StringID *re::StringID::StringID(re::StringID *this, const char *a2)
{
  *this = 0;
  *(this + 1) = &str_67;
  return this;
}

void re::StringID::init(re::StringID *this, re::Allocator *a2, const char *a3, size_t a4)
{
  if (!a3)
  {
    re::StringID::invalid(v14);
    v12 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    if ((v14[0] & 1) == 0)
    {
      return;
    }

LABEL_12:
    return;
  }

  if (!a4)
  {
    v14[0] = 0;
    v14[1] = &str_67;
    v13 = re::StringID::operator=(this, v14);
    if ((v14[0] & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v7 = *a3;
  v8 = a4 - 1;
  if (a4 != 1)
  {
    v9 = a3 + 1;
    do
    {
      v10 = *v9++;
      v7 = v10 - v7 + 32 * v7;
      --v8;
    }

    while (v8);
  }

  *this = *this & 1 | (2 * v7);
  v11 = (*(*a2 + 32))(a2, a4 + 1, 0);
  memcpy(v11, a3, a4);
  *(v11 + a4) = 0;
  *this |= 1uLL;
  *(this + 1) = v11;
}

re::StringID *re::StringID::StringID(re::StringID *this, const re::DynamicString *a2)
{
  v3 = *(a2 + 1);
  if (v3)
  {
    v4 = *(a2 + 2);
  }

  else
  {
    v4 = a2 + 9;
  }

  v5 = v3 >> 1;
  v6 = v3 >> 1;
  if (*(a2 + 1))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  *this = 0;
  *(this + 1) = &str_67;
  return this;
}

re::StringID *re::StringID::StringID(re::StringID *this, const StringID *a2)
{
  v4 = *&a2->var0;
  *this = *&a2->var0 & 0xFFFFFFFFFFFFFFFELL | *this & 1;
  if (*&a2->var0)
  {
    var1 = a2->var1;
    v6 = strlen(var1);
    memcpy(v7, var1, v6);
    v7[v6] = 0;
    v8 = *this | 1;
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFFFELL;
    v7 = a2->var1;
  }

  *this = v8;
  *(this + 1) = v7;
  return this;
}

void re::StringID::destroyString(re::StringID *this)
{
  if (*this)
  {
    if (*this)
    {
    }
  }

  *this = 0;
  *(this + 1) = &str_67;
}

unint64_t *re::StringID::operator=(unint64_t *a1, uint64_t *a2)
{
  re::StringID::destroyString(a1);
  v5 = *a2;
  *a1 = *a2 & 0xFFFFFFFFFFFFFFFELL | *a1 & 1;
  v6 = *a2;
  *a1 = v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  if (v6)
  {
    v7 = a2[1];
    v8 = strlen(v7);
    memcpy(v9, v7, v8);
    *(v9 + v8) = 0;
  }

  else
  {
    v9 = a2[1];
  }

  a1[1] = v9;
  return a1;
}

_anonymous_namespace_ *re::StringID::operator=(_anonymous_namespace_ *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v5 = *a1;
  *a1 = v3;
  *(a1 + 1) = v4;
  if (v5)
  {
  }

  return a1;
}

re::StringID *re::StringID::invalid@<X0>(re::StringID *a1@<X8>)
{
  v3 = a1;
  {
    v3 = a1;
    if (v5)
    {
      re::StringID::invalid(void)::invalid = -2;
      *algn_1EE1C5798 = &str_67;
      v3 = a1;
    }
  }

  return re::StringID::StringID(v3, &re::StringID::invalid(void)::invalid);
}

char *re::WeakStringID::debugStr(re::WeakStringID *this)
{
  if (*this == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  if (!*this)
  {
    return &str_67;
  }

  v1 = re::WeakStringID::debugStr(void)const::msg;
  snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", *this);
  return v1;
}

void re::StringID::copy(re::StringID *this, const re::StringID *a2, re::Allocator *a3)
{
  if (*this)
  {
    (*(*a3 + 40))(a3, *(this + 1));
  }

  *this = 0;
  *(this + 1) = &str_67;
  if (*a2)
  {
    v6 = *(a2 + 1);

    re::StringID::init(this, a3, v6);
  }

  else
  {

    re::StringID::operator=(this, a2);
  }
}

BOOL re::StringID::operator==(void *a1, void *a2)
{
  if ((*a2 & 0x7FFFFFFFFFFFFFFFLL) != *a1 >> 1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return v2 == v3 || strcmp(v2, v3) == 0;
}

{
  if ((*a2 ^ *a1) > 1)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  return v2 == v3 || strcmp(v2, v3) == 0;
}

void re::MemoryTracker::track(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::TransitionCondition *>::add(&this[2]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 1);
}

void re::MemoryTracker::untrack(os_unfair_lock_s *this, const re::Allocator *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this + 1);
  re::DynamicArray<re::Allocator const*>::removeStable(&this[2]._os_unfair_lock_opaque, &v3);
  os_unfair_lock_unlock(this + 1);
}

uint64_t re::DynamicArray<re::Allocator const*>::removeStable(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[2];
  if (v3)
  {
    v4 = 8 * v3;
    for (i = a1[4]; *i != *a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = a1[4];
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::DynamicArray<re::Allocator const*>::removeStableAt(a1, (i - v2) >> 3);
  return 1;
}

uint64_t re::MemoryTracker::statistics(os_unfair_lock_s *this)
{
  v3[0] = 0;
  v3[1] = 0;
  os_unfair_lock_lock(this + 1);
  re::MemoryTracker::statistics(this, 0, v3);
  os_unfair_lock_unlock(this + 1);
  return v3[0];
}

uint64_t re::MemoryTracker::statistics(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    v6 = result;
    v7 = *(result + 40);
    v8 = 8 * v3;
    do
    {
      v9 = *v7;
      result = (*(**v7 + 48))(*v7);
      if (result == a2)
      {
        v10 = (*(*v9 + 56))(v9);
        v12 = a3[1] + v11;
        *a3 += v10;
        a3[1] = v12;
        result = re::MemoryTracker::statistics(v6, v9, a3);
      }

      ++v7;
      v8 -= 8;
    }

    while (v8);
  }

  return result;
}

void re::MemoryTracker::logMemoryLeaks(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  re::MemoryTracker::logMemoryLeaks(this, 0);

  os_unfair_lock_unlock(this + 1);
}

const re::Allocator *re::MemoryTracker::logMemoryLeaks(const re::Allocator *this, const re::Allocator *a2)
{
  v2 = *(this + 3);
  if (v2)
  {
    v4 = *(this + 5);
    v5 = 8 * v2;
    do
    {
      v6 = *v4;
      this = (*(**v4 + 48))(*v4);
      if (this == a2)
      {
        this = (*(*v6 + 64))(v6);
      }

      ++v4;
      v5 -= 8;
    }

    while (v5);
  }

  return this;
}

void *re::DynamicArray<re::Allocator const*>::removeStableAt(void *result, unint64_t a2)
{
  v2 = result[2];
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = result;
  v4 = v2 - 1;
  if (v2 - 1 > a2)
  {
    v5 = result[4];
    result = (v5 + 8 * a2);
    v6 = (v5 + 8 * v2);
    if (v6 != (result + 1))
    {
      result = memmove(result, result + 1, v6 - (result + 1));
      v4 = v3[2] - 1;
    }
  }

  v3[2] = v4;
  ++*(v3 + 6);
  return result;
}

unsigned __int8 *re::StringSlice::findFirstOf@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>((*a1 + a3), *a1 + a1[1], *a2, (*a2 + *(a2 + 8)));
  if ((*a1 + a1[1]) == result)
  {
    v7 = 0;
  }

  else
  {
    *(a4 + 8) = &result[-*a1];
    v7 = 1;
  }

  *a4 = v7;
  return result;
}

uint64_t *re::StringSlice::findLastOf@<X0>(uint64_t *result@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = a2[1];
  if (v4 == a3 || v5 == 0)
  {
    goto LABEL_19;
  }

  v7 = *result;
  v8 = (*result + v4);
  v9 = (*result + a3);
  v10 = (*a2 + 1);
  v11 = **a2;
  v12 = v5 - 1;
  v13 = v8;
  do
  {
    v14 = v9 + 1;
    while (*v9 != v11)
    {
      ++v9;
      ++v14;
      if (v9 == v8)
      {
        goto LABEL_17;
      }
    }

    v15 = v12;
    result = v10;
    while (v15)
    {
      if (v14 == v8)
      {
        goto LABEL_17;
      }

      v17 = *v14++;
      v16 = v17;
      v18 = *result;
      result = (result + 1);
      --v15;
      if (v16 != v18)
      {
        goto LABEL_16;
      }
    }

    v13 = v9;
LABEL_16:
    ++v9;
  }

  while (v9 != v8);
LABEL_17:
  if (v13 == v8)
  {
LABEL_19:
    *a4 = 0;
  }

  else
  {
    *a4 = 1;
    *(a4 + 8) = &v13[-v7];
  }

  return result;
}

unsigned __int8 *std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 == a3)
  {
    return a1;
  }

  v5 = a2;
  if (a2 - a1 >= v4)
  {
    v6 = a2 - v4 + 1;
    if (v6 != a1)
    {
      v9 = *a3;
      v7 = a3 + 1;
      v8 = v9;
      while (*a1 != v8)
      {
LABEL_9:
        if (++a1 == v6)
        {
          return v5;
        }
      }

      v10 = a1 + 1;
      v11 = v7;
      while (v11 != a4)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = *v11++;
        if (v12 != v14)
        {
          goto LABEL_9;
        }
      }

      return a1;
    }
  }

  return v5;
}

void *std::function<void ()(re::EventQueue &)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(re::EventQueue &)>::__value_func[abi:nn200100](v4, a2);
  std::__function::__value_func<void ()(re::EventQueue &)>::swap[abi:nn200100](v4, a1);
  std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](v4);
  return a1;
}

void re::EventQueue::postEvent(os_unfair_lock_s *this, const void *a2, size_t a3)
{
  if (!a2)
  {
    re::internal::assertLog(4, 0, "assertion failure: '%s' (%s:line %i) event must not be null.", "event", "postEvent", 28);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  if (a3 <= 3)
  {
LABEL_13:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid size.", "size >= sizeof(uint32_t)", "postEvent", 29);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Invalid size. Size causes arithmetic overflow.", "!overflow", "postEvent", 44);
    _os_crash();
    __break(1u);
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  os_unfair_lock_lock(this);
  v6 = &this[10 * this[22]._os_unfair_lock_opaque];
  v7 = *&v6[6]._os_unfair_lock_opaque;
  v8 = a3 + v7 + 4;
  v9 = __CFADD__(a3, v7 + 4);
  if (v7 >= 0xFFFFFFFFFFFFFFFCLL || v9)
  {
    goto LABEL_14;
  }

  re::DynamicArray<char>::resize(&v6[2], v8);
  if (*&v6[6]._os_unfair_lock_opaque <= v7)
  {
    goto LABEL_15;
  }

  v10 = *&v6[10]._os_unfair_lock_opaque;
  *(v10 + v7) = a3;
  memcpy((v10 + v7 + 4), a2, a3);

  os_unfair_lock_unlock(this);
}

void re::DynamicArray<char>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<char>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      bzero((*(a1 + 32) + v4), v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::EventQueue::processEvents(os_unfair_lock_s *this)
{
  re::EventQueue::swapBuffers(this);
  result = *&this[32]._os_unfair_lock_opaque;
  if (result)
  {
    v3 = *(*result + 48);

    return v3();
  }

  return result;
}

void re::EventQueue::swapBuffers(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  v2 = (this[22]._os_unfair_lock_opaque & 1) == 0;
  this[22]._os_unfair_lock_opaque = v2;
  v3 = &this[10 * v2];
  *&v3[6]._os_unfair_lock_opaque = 0;
  ++v3[8]._os_unfair_lock_opaque;
  *&this[24]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this);
}

uint64_t re::EventQueue::peekEvent(re::EventQueue *this, unint64_t a2)
{
  v2 = *(this + 12);
  v3 = *(this + 5 * ((*(this + 22) & 1) == 0) + 3);
  if (v3 == v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) EventQueue is empty.", "!isEmpty()", "peekEvent", 100);
    _os_crash();
    __break(1u);
    goto LABEL_6;
  }

  if (v3 - v2 - 8 < a2)
  {
LABEL_6:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid offset.", "offset <= events.size() - payloadOffset - sizeof(uint32_t)", "peekEvent", 105);
    _os_crash();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = a2 + v2 + 4;
  if (v3 <= v4)
  {
    goto LABEL_7;
  }

  return *(*(this + 5 * ((*(this + 22) & 1) == 0) + 5) + v4);
}

void *re::EventQueue::readEvent(re::EventQueue *this, void *__dst, size_t __n)
{
  v3 = *(this + 12);
  v4 = *(this + 5 * ((*(this + 22) & 1) == 0) + 3);
  if (v3 == v4)
  {
    re::internal::assertLog(4, __dst, __n, "assertion failure: '%s' (%s:line %i) EventQueue is empty.", "!isEmpty()", "readEvent", 115);
    _os_crash();
    __break(1u);
    goto LABEL_8;
  }

  if (!__dst)
  {
LABEL_8:
    re::internal::assertLog(4, __dst, __n, "assertion failure: '%s' (%s:line %i) buffer must not be null.", "buffer", "readEvent", 116);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  if (v4 <= v3)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v6 = *(this + 5 * ((*(this + 22) & 1) == 0) + 5);
  if (*(v6 + v3) != __n)
  {
LABEL_10:
    re::internal::assertLog(4, __dst, "assertion failure: '%s' (%s:line %i) Specified size does not match event size.", "size == nextEventSize()", "readEvent", 117);
    _os_crash();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = v3 + 4;
  if (v4 <= v7)
  {
    goto LABEL_11;
  }

  result = memcpy(__dst, (v6 + v7), __n);
  *(this + 12) += __n + 4;
  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventQueue &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(re::EventQueue &)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventQueue &)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void re::internal::refCountCheckFailHandler(re::internal *this, const void *a2, const void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v5 = "Retain";
  }

  else
  {
    v5 = "Release";
  }

  fprintf(*MEMORY[0x1E69E9848], "Ref count out of range on %s. %p (retain count is %d 0x%x)\n", v5, a2, a3, a3);
  if ((atomic_load_explicit(&qword_1EE19D9A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE19D9A8))
  {
    re::Defaults::BOOLValue("crashOnRefCountCheckFail", v6, buf);
    if (buf[0])
    {
      v8 = buf[1];
    }

    else
    {
      v8 = 0;
    }

    _MergedGlobals_133 = v8;
    __cxa_guard_release(&qword_1EE19D9A8);
  }

  if (_MergedGlobals_133 == 1)
  {
    re::internal::assertLog(8, v6, "assertion failure: '%s' (%s:line %i) Ref count out of range on %s. %p (retain count is %d 0x%x)\n", "false", "refCountCheckFailHandler", 30, v5, a2, a3, a3);
    _os_crash();
    __break(1u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v10 = v5;
    v11 = 2048;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    v15 = 1024;
    v16 = a3;
    _os_log_error_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Ref count out of range on %s. %p (retain count is %d 0x%x)\n", buf, 0x22u);
  }

  re::internal::logStackTrace(0, 0, v7);
}

re::PageDebugAllocator *re::PageDebugAllocator::PageDebugAllocator(re::PageDebugAllocator *this, const char *a2, int a3, unint64_t a4)
{
  v6 = re::Allocator::Allocator(this, a2, a3);
  *v6 = &unk_1F5CCF090;
  *(v6 + 5) = 0;
  *(v6 + 3) = 0u;
  *(v6 + 8) = 0;
  *(v6 + 2) = 0u;
  v7 = (v6 + 32);
  return this;
}

void re::PageDebugAllocator::~PageDebugAllocator(re::PageDebugAllocator *this)
{
  os_unfair_lock_lock(this + 5);
  v3 = *(this + 7);
  v4 = *(this + 8);
  v2 = (this + 56);
  if (v3 != v4)
  {
    v5 = MEMORY[0x1E69E9A60];
    do
    {
      v6 = *(this + 5);
      v7 = (v6 - 1) & v3;
      if (v6 <= v7)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      mach_vm_deallocate(*v5, *(*(this + 6) + 16 * v7), *(*(this + 6) + 16 * v7 + 8));
      ++v3;
    }

    while (v4 != v3);
  }

  *v2 = 0;
  *(this + 8) = 0;
  os_unfair_lock_unlock(this + 5);
  *v2 = 0;
  *(this + 8) = 0;
  re::FixedArray<CoreIKTransform>::deinit(this + 4);
  re::FixedArray<CoreIKTransform>::deinit(this + 4);

  re::Allocator::~Allocator(this);
}

{
  re::PageDebugAllocator::~PageDebugAllocator(this);

  JUMPOUT(0x1E6906520);
}

mach_vm_address_t re::PageDebugAllocator::alloc(os_unfair_lock_s *this, uint64_t a2)
{
  os_unfair_lock_lock(this + 5);
  v4 = ~*MEMORY[0x1E69E9AB8] & (a2 + *MEMORY[0x1E69E9AB8] + 16);
  address = 0;
  v5 = 0;
  if (!mach_vm_map(*MEMORY[0x1E69E9A60], &address, v4, 0, 1, 0, 0, 0, 3, 3, 2u))
  {
    v6 = address;
    *address = a2;
    *(v6 + 8) = v4;
    v5 = v6 + 16;
    __dmb(0xBu);
  }

  os_unfair_lock_unlock(this + 5);
  return v5;
}

void re::PageDebugAllocator::free(os_unfair_lock_s *this, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 5);
  __dmb(0xBu);
  v4 = (a2 - 2);
  v5 = *(a2 - 1);
  address = v4;
  v6 = MEMORY[0x1E69E9A60];
  mach_vm_map(*MEMORY[0x1E69E9A60], &address, v5, 0, 0x4000, 0, 0, 0, 0, 3, 2u);
  v8 = *&this[14]._os_unfair_lock_opaque;
  v7 = *&this[16]._os_unfair_lock_opaque;
  v9 = v7 - v8;
  v10 = *&this[10]._os_unfair_lock_opaque;
  if (v7 - v8 == v10)
  {
    v10 = (v9 - 1) & v8;
    if (v9 <= v10)
    {
      goto LABEL_9;
    }

    v11 = (*&this[12]._os_unfair_lock_opaque + 16 * v10);
    mach_vm_deallocate(*v6, *v11, v11[1]);
    *v11 = 0;
    v11[1] = 0;
    v7 = *&this[16]._os_unfair_lock_opaque;
    v12 = *&this[14]._os_unfair_lock_opaque + 1;
    *&this[14]._os_unfair_lock_opaque = v12;
    v10 = *&this[10]._os_unfair_lock_opaque;
    v9 = v7 - v12;
  }

  v13 = v7 + 1;
  if (v9 == v10)
  {
    *&this[14]._os_unfair_lock_opaque = v13 - v9;
  }

  *&this[16]._os_unfair_lock_opaque = v13;
  v9 = (v10 - 1) & v7;
  if (v10 <= v9)
  {
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 468;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    v16 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v17 = 136315906;
    v18 = "operator[]";
    v19 = 1024;
    v20 = 468;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v14 = (*&this[12]._os_unfair_lock_opaque + 16 * v9);
  *v14 = v4;
  v14[1] = v5;
  os_unfair_lock_unlock(this + 5);
}

uint64_t re::PageDebugAllocator::statistics(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 5);
  os_unfair_lock_unlock(this + 5);
  return 0;
}

void re::PageDebugAllocator::logMemoryLeaks(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 5);

  os_unfair_lock_unlock(this + 5);
}

void re::FixedArray<re::PageDebugAllocator::DeferredFree>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 16 * a3;
  v6 = (*(*a2 + 32))(a2, 16 * a3, 8);
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
    bzero(v6, v5 - 16);
    v8 = (v8 + v5 - 16);
  }

  *v8 = 0;
  v8[1] = 0;
}

id *re::ObjCObject::operator=(id *location, id *a2)
{
  if (location != a2)
  {
    objc_storeStrong(location, *a2);
  }

  return location;
}

void **re::ObjCObject::operator=(void **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  if (*a1 != v3)
  {
    *a1 = v3;

    v3 = 0;
  }

  return a1;
}

const char *re::ObjCObject::description(id *this)
{
  v1 = [*this description];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 UTF8String];
  }

  else
  {
    v3 = "nil";
  }

  return v3;
}

re::ns::String *re::ns::String::String(re::ns::String *this, re::mtl *a2)
{
  v3 = re::mtl::convertToNSString(a2, a2);
  *this = v3;

  return this;
}

void re::ns::String::format(re::ns::String *this@<X0>, void *a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:this];
  v7 = [v5 initWithFormat:v6 arguments:va];

  v8 = v7;
  *a2 = v8;
}

uint64_t re::getRealityFilePlatformFromName(re *this, const char *a2)
{
  if (!strcasecmp(this, "macos"))
  {
    return 3;
  }

  if (!strcasecmp(this, "ios"))
  {
    return 2;
  }

  v3 = strcasecmp(this, "xros");
  if (!v3)
  {
    v5 = *re::foundationCoreLogObjects(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Detected 'xros' platform name in getVersionFromDeploymentTarget, use visionOS instead", v6, 2u);
    }

    return 4;
  }

  if (!strcasecmp(this, "visionos"))
  {
    return 4;
  }

  if (!strcasecmp(this, "tvos"))
  {
    return 5;
  }

  else
  {
    return strcasecmp(this, "all") == 0;
  }
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  re::DynamicString::setCapacity(this, 0);
  return this;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const char *__s, re::Allocator *a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  v6 = strlen(__s);
  if (v6)
  {
    v7 = v6;
    *this = a3;
    re::DynamicString::setCapacity(this, v6 + 1);
    re::DynamicString::assign(this, __s, v7);
  }

  else
  {
    *this = a3;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::assign(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = *(this + 3);
  }

  else
  {
    v7 = 23;
  }

  if (v7 <= __len)
  {
    re::DynamicString::growCapacity(this, __len + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v8 = *(this + 2);
  }

  else
  {
    v8 = this + 9;
  }

  result = memmove(v8, __src, __len);
  if (*(this + 8))
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  v10[__len] = 0;
  if (*(this + 8))
  {
    *(this + 1) = (2 * __len) | 1;
  }

  else
  {
    *(this + 8) = 2 * __len;
  }

  return result;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const char *a2, size_t a3, re::Allocator *a4)
{
  *this = 0u;
  *(this + 1) = 0u;
  if (a3)
  {
    *this = a4;
    re::DynamicString::setCapacity(this, a3 + 1);
    re::DynamicString::assign(this, a2, a3);
  }

  else
  {
    *this = a4;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

re::DynamicString *re::DynamicString::DynamicString(re::DynamicString *this, const re::DynamicString *a2)
{
  *this = 0u;
  *(this + 1) = 0u;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    *this = *a2;
    re::DynamicString::setCapacity(this, v5 + 1);
    re::DynamicString::copy(this, a2);
  }

  else
  {
    v6 = *a2;
    if (!*a2)
    {
    }

    *this = v6;
    re::DynamicString::setCapacity(this, 0);
  }

  return this;
}

void *re::DynamicString::copy(void *this, const re::DynamicString *a2)
{
  v2 = this;
  v3 = *(a2 + 1);
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    v4 = v3 >> 1;
  }

  v5 = this[1];
  if (v4)
  {
    if (v5)
    {
      v7 = this[3];
    }

    else
    {
      v7 = 23;
    }

    if (v4 >= v7)
    {
      re::DynamicString::setCapacity(this, v4 + 1);
      v5 = v2[1];
    }

    if (v5)
    {
      v9 = v2[2];
    }

    else
    {
      v9 = v2 + 9;
    }

    v10 = *(a2 + 1);
    if (v10)
    {
      v11 = *(a2 + 2);
    }

    else
    {
      v11 = a2 + 9;
    }

    v12 = v10 >> 1;
    v13 = v10 >> 1;
    if (*(a2 + 1))
    {
      v13 = v12;
    }

    this = memmove(v9, v11, v13 + 1);
    v14 = *(a2 + 1);
    if (v2[1])
    {
      v15 = 254;
      if (v14)
      {
        v15 = -2;
      }

      v2[1] = v15 & v14 | 1;
    }

    else
    {
      *(v2 + 8) = v14 & 0xFE;
    }
  }

  else
  {
    if (v5)
    {
      this[1] = 1;
      v8 = this[2];
    }

    else
    {
      *(this + 8) = 0;
      v8 = this + 9;
    }

    *v8 = 0;
  }

  return this;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    if (!*this)
    {
      re::DynamicString::setCapacity(this, v3 + 1);
    }

    re::DynamicString::assign(this, *a2, v3);
  }

  else
  {
    if (*(this + 8))
    {
      *(this + 1) = 1;
      v5 = *(this + 2);
    }

    else
    {
      *(this + 8) = 0;
      v5 = this + 9;
    }

    *v5 = 0;
  }

  return this;
}

re::DynamicString *re::DynamicString::DynamicString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 0;
  }

  *a1 = a3;
  re::DynamicString::setCapacity(a1, v6);

  return re::DynamicString::operator=(a1, a2);
}

void *re::DynamicString::setCapacity(void *this, size_t __n)
{
  v3 = this;
  v4 = this[1];
  if (__n <= 0x17)
  {
    if ((v4 & 1) == 0)
    {
      return this;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    v5 = 0;
    v6 = this[3];
    goto LABEL_7;
  }

  v5 = 1;
  v6 = 23;
LABEL_7:
  if (v6 != __n)
  {
    v7 = v5 ? v4 >> 1 : v4 >> 1;
    if (v7 < __n)
    {
      if (__n > 0x16)
      {
        this = (*(**this + 32))();
        if (!this)
        {
          re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "newBuffer", "setCapacity", 455);
          this = _os_crash();
          __break(1u);
          return this;
        }

        v11 = this;
        *this = 0;
        v12 = v3[1];
        v13 = v12 >> 1;
        if ((v12 & 1) == 0)
        {
          v13 = v12 >> 1;
        }

        if (v13)
        {
          if (v12)
          {
            v14 = v3[2];
          }

          else
          {
            v14 = v3 + 9;
          }

          this = memcpy(this, v14, v13 + 1);
          v12 = v3[1];
        }

        if (v12)
        {
          this = (*(**v3 + 40))(*v3, v3[2]);
          v15 = v3[1];
        }

        else
        {
          v15 = v12 & 0xFE;
        }

        v3[2] = v11;
        v3[3] = __n;
        v9 = v15 | 1;
      }

      else
      {
        v8 = this[2];
        *(this + 8) = v4;
        memcpy(this + 9, v8, __n);
        this = (*(**v3 + 40))(*v3, v8);
        v9 = v3[1] & 0xFFFFFFFFFFFFFFFELL;
      }

      v3[1] = v9;
    }
  }

  return this;
}

double re::DynamicString::deinit(re::DynamicString *this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 8))
    {
      (*(*v2 + 40))(v2, *(this + 2));
    }

    result = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  return result;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *this, re::DynamicString *a2)
{
  if (this == a2)
  {
    return this;
  }

  v4 = *a2;
  if (!*this)
  {
    if (!v4)
    {
      return this;
    }

    v6 = *(a2 + 1);
    if (v6)
    {
      v7 = v6 >> 1;
    }

    else
    {
      v7 = v6 >> 1;
    }

    *this = v4;
    re::DynamicString::setCapacity(this, v7 + 1);
LABEL_11:
    re::DynamicString::copy(this, a2);
    return this;
  }

  if (v4)
  {
    goto LABEL_11;
  }

  if (*(this + 8))
  {
    *(this + 1) = 1;
    v5 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v5 = this + 9;
  }

  *v5 = 0;
  return this;
}

{
  if (this != a2)
  {
    v3 = *this;
    v4 = *a2;
    if (*this)
    {
      v5 = v3 == v4;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      *this = v4;
      *a2 = v3;
      v6 = *(this + 3);
      *(this + 3) = *(a2 + 3);
      *(a2 + 3) = v6;
      v8 = *(this + 1);
      v7 = *(this + 2);
      v9 = *(a2 + 2);
      *(this + 1) = *(a2 + 1);
      *(this + 2) = v9;
      *(a2 + 1) = v8;
      *(a2 + 2) = v7;
    }

    else if (v4)
    {
      re::DynamicString::copy(this, a2);
    }

    else
    {
      if (*(this + 8))
      {
        *(this + 1) = 1;
        v10 = *(this + 2);
      }

      else
      {
        *(this + 8) = 0;
        v10 = this + 9;
      }

      *v10 = 0;
    }
  }

  return this;
}

re::DynamicString *re::DynamicString::operator=(re::DynamicString *a1, char *__s)
{
  v4[0] = __s;
  v4[1] = strlen(__s);
  return re::DynamicString::operator=(a1, v4);
}

uint64_t re::DynamicString::operator[](uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, length = %zu", "index <= size()", "operator[]", 180, a2, v5, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = a1 + 9;
    }

    return v6 + a2;
  }

  return result;
}

{
  v4 = *(a1 + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, length = %zu", "index <= size()", "operator[]", 188, a2, v5, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = a1 + 9;
    }

    return v6 + a2;
  }

  return result;
}

BOOL re::DynamicString::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) == 0;
}

BOOL re::DynamicString::operator!=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) != 0;
}

uint64_t re::DynamicString::operator<(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
  }

  else
  {
    v2 = (a1 + 9);
  }

  if (*(a2 + 8))
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = (a2 + 9);
  }

  return strcmp(v2, v3) >> 31;
}

void *re::DynamicString::append(re::DynamicString *this, const char *__src, size_t __len)
{
  v6 = *(this + 1);
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  v8 = v7 + __len;
  if (v6)
  {
    v9 = *(this + 3);
  }

  else
  {
    v9 = 23;
  }

  if (v8 >= v9)
  {
    re::DynamicString::growCapacity(this, v8 + 1);
    v6 = *(this + 1);
  }

  if (v6)
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = this + 9;
  }

  if (v6)
  {
    v11 = v6 >> 1;
  }

  else
  {
    v11 = v6 >> 1;
  }

  result = memmove(&v10[v11], __src, __len);
  v13 = *(this + 1);
  if (v13)
  {
    v14 = v13 + 2 * __len;
    *(this + 1) = v14;
    if (v14)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *(this + 8) = v13 + 2 * __len;
    v14 = *(this + 1);
    if (v14)
    {
LABEL_16:
      v15 = *(this + 2);
      goto LABEL_19;
    }
  }

  v15 = this + 9;
LABEL_19:
  if (v14)
  {
    v16 = v14 >> 1;
  }

  else
  {
    v16 = v14 >> 1;
  }

  v15[v16] = 0;
  return result;
}

void *re::DynamicString::operator+@<X0>(re::DynamicString *a1@<X0>, uint64_t a2@<X1>, re::DynamicString *a3@<X8>)
{
  v4 = re::DynamicString::DynamicString(a3, a1);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 9);
  }

  v7 = v5 >> 1;
  v8 = v5 >> 1;
  if (*(a2 + 8))
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return re::DynamicString::append(v4, v6, v9);
}

void *re::DynamicString::operator+@<X0>(re::DynamicString *a1@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  re::DynamicString::DynamicString(a3, a1);
  v5 = strlen(a2);

  return re::DynamicString::append(a3, a2, v5);
}

uint64_t re::DynamicString::compare(re::DynamicString *this, const re::DynamicString *a2)
{
  if (*(this + 8))
  {
    v2 = *(this + 2);
  }

  else
  {
    v2 = this + 9;
  }

  if (*(a2 + 1))
  {
    v3 = *(a2 + 2);
  }

  else
  {
    v3 = a2 + 9;
  }

  return strcmp(v2, v3);
}

void *re::DynamicString::growCapacity(void *this, size_t a2)
{
  if (this[1])
  {
    v3 = this[3];
    if (v3 >= a2)
    {
      return this;
    }

    v2 = 2 * v3;
  }

  else
  {
    if (a2 <= 0x17)
    {
      return this;
    }

    v2 = 64;
  }

  if (v2 > a2)
  {
    a2 = v2;
  }

  return re::DynamicString::setCapacity(this, a2);
}

uint64_t re::DynamicString::vappendf(re::DynamicString *this, const char *__format, va_list a3)
{
  v5 = *(this + 1);
  if (v5)
  {
    v6 = v5 >> 1;
    v8 = *(this + 3);
    v7 = (*(this + 2) + (v5 >> 1));
  }

  else
  {
    v6 = v5 >> 1;
    v7 = this + v6 + 9;
    v8 = 23;
  }

  result = vsnprintf(v7, v8 - v6, __format, a3);
  v10 = *(this + 1);
  if ((result & 0x80000000) == 0)
  {
    v11 = v10 >> 1;
    v12 = v10 >> 1;
    if (v10)
    {
      v12 = v10 >> 1;
    }

    v13 = v12 + result;
    if (v10)
    {
      if (v13 >= *(this + 3))
      {
        v14 = *(this + 2);
        if (!v14)
        {
LABEL_16:
          re::DynamicString::growCapacity(this, result + v11 + 1);
          v17 = *(this + 1);
          if (v17)
          {
            v18 = v17 >> 1;
            v20 = *(this + 3);
            v19 = (*(this + 2) + (v17 >> 1));
          }

          else
          {
            v18 = v17 >> 1;
            v19 = this + v18 + 9;
            v20 = 23;
          }

          result = vsnprintf(v19, v20 - v18, __format, a3);
          goto LABEL_25;
        }

LABEL_14:
        v14[v12] = 0;
        v16 = *(this + 1);
        v11 = v16 >> 1;
        if ((v16 & 1) == 0)
        {
          v11 = v16 >> 1;
        }

        goto LABEL_16;
      }
    }

    else if (v13 >= 0x17)
    {
      v14 = this + 9;
      goto LABEL_14;
    }

LABEL_25:
    v22 = *(this + 1);
    if (v22)
    {
      *(this + 1) = v22 + 2 * result;
    }

    else
    {
      *(this + 8) = v22 + 2 * result;
    }

    return result;
  }

  if (v10)
  {
    v15 = *(this + 2);
    if (!v15)
    {
      return result;
    }
  }

  else
  {
    v15 = this + 9;
  }

  if (v10)
  {
    v21 = v10 >> 1;
  }

  else
  {
    v21 = v10 >> 1;
  }

  v15[v21] = 0;
  return result;
}

uint64_t re::DynamicString::vassignf(re::DynamicString *this, const char *__format, va_list a3)
{
  if (*(this + 8))
  {
    *(this + 1) = 1;
    v3 = *(this + 2);
  }

  else
  {
    *(this + 8) = 0;
    v3 = this + 9;
  }

  *v3 = 0;
  return re::DynamicString::vappendf(this, __format, a3);
}

void *re::DynamicString::resize(void *this, unint64_t a2, int a3)
{
  v3 = this[1];
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4 != a2)
  {
    v7 = this;
    this = re::DynamicString::growCapacity(this, a2 + 1);
    v8 = v7[1];
    v9 = v8 >> 1;
    if ((v8 & 1) == 0)
    {
      v9 = v8 >> 1;
    }

    if (a2 > v9)
    {
      if (v8)
      {
        v10 = v7[2];
      }

      else
      {
        v10 = v7 + 9;
      }

      this = memset(&v10[v9], a3, a2 - v9);
      v8 = v7[1];
    }

    if (v8)
    {
      v11 = v7[2];
    }

    else
    {
      v11 = v7 + 9;
    }

    v11[a2] = 0;
    if (v7[1])
    {
      v7[1] = (2 * a2) | 1;
    }

    else
    {
      *(v7 + 8) = 2 * a2;
    }
  }

  return this;
}

void *re::DynamicString::trimExcess(void *this)
{
  v2 = this + 1;
  v1 = this[1];
  if (v1)
  {
    if (v1 > 1)
    {

      return re::DynamicString::setCapacity(this, (v1 >> 1) + 1);
    }

    else
    {
      this = (*(**this + 40))(*this, this[2]);
      *v2 = 0;
      v2[1] = 0;
      v2[2] = 0;
    }
  }

  return this;
}

uint64_t re::DynamicString::insert(re::DynamicString *this, unint64_t a2, uint64_t a3, uint64_t __c)
{
  v5 = *(this + 1);
  v6 = v5 >> 1;
  v7 = v5 >> 1;
  if (v5)
  {
    v8 = v5 >> 1;
  }

  else
  {
    v8 = v5 >> 1;
  }

  if (v8 < a2)
  {
    re::internal::assertLog(6, a2, a3, __c, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "insert", 529, a2, v8);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = __c;
  v12 = a3 + v8 + 1;
  if (v5)
  {
    v13 = *(this + 3);
  }

  else
  {
    v13 = 23;
  }

  if (v12 >= v13)
  {
    re::DynamicString::growCapacity(this, v12);
    v5 = *(this + 1);
    v6 = v5 >> 1;
    v7 = v5 >> 1;
  }

  if ((v5 & 1) == 0)
  {
    v6 = v7;
  }

  if (v6 != a2)
  {
    if (v5)
    {
      v14 = *(this + 2);
    }

    else
    {
      v14 = this + 9;
    }

    memmove(&v14[a2 + a3], &v14[a2], v6 - a2);
    v5 = *(this + 1);
  }

  if (v5)
  {
    v16 = v5 + 2 * a3;
    *(this + 1) = v16;
    if (v16)
    {
      goto LABEL_19;
    }

LABEL_21:
    v15 = this + 9;
    goto LABEL_22;
  }

  *(this + 8) = v5 + 2 * a3;
  if ((*(this + 1) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  v15 = *(this + 2);
LABEL_22:
  result = memset(&v15[a2], v9, a3 + a2);
  v18 = *(this + 1);
  if (v18)
  {
    v19 = *(this + 2);
  }

  else
  {
    v19 = this + 9;
  }

  if (v18)
  {
    v20 = v18 >> 1;
  }

  else
  {
    v20 = v18 >> 1;
  }

  v19[v20] = 0;
  return result;
}

uint64_t re::DynamicString::insert(re::DynamicString *this, unint64_t a2, const char *__src, size_t __len)
{
  v5 = *(this + 1);
  v6 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    v6 = v5 >> 1;
  }

  if (v6 < a2)
  {
    re::internal::assertLog(6, a2, __src, __len, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "insert", 561, a2, v6);
    _os_crash();
    __break(1u);
    goto LABEL_28;
  }

  v10 = __len + v6 + 1;
  if (v5)
  {
    v11 = *(this + 3);
  }

  else
  {
    v11 = 23;
  }

  if (v10 >= v11)
  {
    re::DynamicString::growCapacity(this, v10);
    v5 = *(this + 1);
  }

  if (v5)
  {
    v13 = *(this + 2);
    if (v13)
    {
      v12 = v5 >> 1;
      if (v5 >> 1 == a2)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_28:
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Unexpected null buffer after growCapacity", "data() != nullptr", "insert", 567);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v12 = v5 >> 1;
  if (v12 == a2)
  {
    goto LABEL_15;
  }

  v13 = this + 9;
LABEL_14:
  memmove(&v13[a2 + __len], &v13[a2], v12 - a2);
  v5 = *(this + 1);
LABEL_15:
  if (v5)
  {
    v14 = *(this + 2);
  }

  else
  {
    v14 = this + 9;
  }

  result = memmove(&v14[a2], __src, __len);
  v16 = *(this + 1);
  if (v16)
  {
    v17 = v16 + 2 * __len;
    *(this + 1) = v17;
    if (v17)
    {
      goto LABEL_20;
    }

LABEL_22:
    v18 = this + 9;
    goto LABEL_23;
  }

  *(this + 8) = v16 + 2 * __len;
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v18 = *(this + 2);
LABEL_23:
  if (v17)
  {
    v19 = v17 >> 1;
  }

  else
  {
    v19 = v17 >> 1;
  }

  v18[v19] = 0;
  return result;
}

uint64_t re::DynamicString::removeAt(re::DynamicString *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 >> 1;
  }

  else
  {
    v3 = v2 >> 1;
  }

  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "removeAt", 590, a2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (v2)
    {
      v5 = *(this + 2);
      v6 = &v5[v2 >> 1];
    }

    else
    {
      v5 = this + 9;
      v6 = this + (v2 >> 1) + 9;
    }

    result = &v5[a2];
    if (v6 != &v5[a2])
    {
      result = memmove(result, (result + 1), &v6[-result]);
      v2 = *(this + 1);
    }

    if (v2)
    {
      *(this + 1) = v2 - 2;
    }

    else
    {
      *(this + 8) = v2 - 2;
    }
  }

  return result;
}

void *re::DynamicString::substr@<X0>(re::DynamicString *this@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, re::DynamicString *a4@<X8>)
{
  v6 = *(this + 1);
  if (v6)
  {
    v7 = v6 >> 1;
  }

  else
  {
    v7 = v6 >> 1;
  }

  if (v7 < a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index <= size()", "substr", 610, a2, v7);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (v7 - a2 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v7 - a2;
    }

    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    re::DynamicString::setCapacity(a4, 0);
    *a4 = *this;
    re::DynamicString::setCapacity(a4, v9);
    if (*(this + 8))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = this + 9;
    }

    return re::DynamicString::assign(a4, &v10[a2], v9);
  }

  return result;
}

char *re::DynamicString::find@<X0>(re::DynamicString *this@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *(this + 1);
  v7 = v6 >> 1;
  if ((v6 & 1) == 0)
  {
    v7 = v6 >> 1;
  }

  if (v7 < a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset <= this->size()", "find", 631, a4, v7);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    if (v6)
    {
      v9 = *(this + 2);
    }

    else
    {
      v9 = this + 9;
    }

    v10 = &v9[v7];
    result = std::__search_impl[abi:nn200100]<char const*,char const*,char const*,char const*,std::__equal_to,std::__identity,std::__identity,0>(&v9[a4], &v9[v7], a2, &a2[a3]);
    if (v10 == result)
    {
      *a5 = 0;
    }

    else
    {
      if (*(this + 8))
      {
        v12 = *(this + 2);
      }

      else
      {
        v12 = this + 9;
      }

      *a5 = 1;
      *(a5 + 8) = result - v12;
    }
  }

  return result;
}

uint64_t re::DynamicString::rfind@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(this + 8);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    return re::DynamicString::rfind(this, a2, v4 - 1, a3);
  }

  *a3 = 0;
  return this;
}

uint64_t re::DynamicString::rfind@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 8);
  v5 = v4 >> 1;
  if ((v4 & 1) == 0)
  {
    v5 = v4 >> 1;
  }

  if (v5 <= a3)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset < size()", "rfind", 667, a3, v5);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v6 = *(this + 16);
    }

    else
    {
      v6 = this + 9;
    }

    v7 = this + 9;
    v8 = a3 + v6;
    v9 = -(a3 + v6);
    v10 = v8 + 1;
    while (*(v10 - 1) != a2)
    {
      v11 = this + 9;
      if (v4)
      {
        v11 = *(this + 16);
      }

      ++v9;
      if (--v10 == v11)
      {
        *a4 = 0;
        return this;
      }
    }

    if (v4)
    {
      v7 = *(this + 16);
    }

    *a4 = 1;
    *(a4 + 8) = -(v7 + v9);
  }

  return this;
}

uint64_t re::DynamicString::rfind@<X0>(uint64_t this@<X0>, const char *__s@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(this + 8);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (v5)
  {
    v7 = this;
    v8 = strlen(__s);

    return re::DynamicString::rfind(v7, __s, v8, v5 - 1, a3);
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

uint64_t re::DynamicString::rfind@<X0>(uint64_t this@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(this + 8);
  v6 = v5 >> 1;
  if ((v5 & 1) == 0)
  {
    v6 = v5 >> 1;
  }

  if (v6 <= a4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) offset out of range. offset = %zu, size = %zu", "offset < this->size()", "rfind", 700, a4, v6);
    this = _os_crash();
    __break(1u);
  }

  else
  {
    if (v5)
    {
      v7 = *(this + 16);
      if (!a3)
      {
LABEL_25:
        *a5 = 0;
        return this;
      }
    }

    else
    {
      v7 = (this + 9);
      if (!a3)
      {
        goto LABEL_25;
      }
    }

    v8 = &v7[a4];
    v9 = &v7[a4 + 1];
    if (v7 == v9)
    {
      goto LABEL_25;
    }

    v12 = *a2;
    v10 = a2 + 1;
    v11 = v12;
    v13 = a3 - 1;
    v14 = &v7[a4 + 1];
    do
    {
      v15 = v7;
      while (*v15 != v11)
      {
        if (v15++ == v8)
        {
          goto LABEL_22;
        }
      }

      v17 = v13;
      v18 = v10;
      v19 = v15;
      while (v17)
      {
        if (v19 == v8)
        {
          goto LABEL_22;
        }

        v21 = *++v19;
        v20 = v21;
        v22 = *v18++;
        --v17;
        if (v20 != v22)
        {
          goto LABEL_21;
        }
      }

      v14 = v15;
LABEL_21:
      v7 = v15 + 1;
    }

    while (v15 != v8);
LABEL_22:
    if (v14 == v9)
    {
      goto LABEL_25;
    }

    if (v5)
    {
      v23 = *(this + 16);
    }

    else
    {
      v23 = this + 9;
    }

    *a5 = 1;
    *(a5 + 8) = v14 - v23;
  }

  return this;
}

uint64_t re::DynamicString::format@<X0>(re::DynamicString *this@<X0>, re::Allocator *a2@<X1>, re::DynamicString *a3@<X8>, ...)
{
  va_start(va, a3);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *a3 = this;
  *(a3 + 1) = 0;
  re::DynamicString::setCapacity(a3, 0);
  return re::DynamicString::vassignf(a3, a2, va);
}

uint64_t re::DynamicString::format@<X0>(re::DynamicString *this@<X0>, re::DynamicString *a2@<X8>, ...)
{
  va_start(va, a2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  re::DynamicString::setCapacity(a2, 0);
  return re::DynamicString::vassignf(a2, this, va);
}

__n128 re::internal::anonymous namespace::RegexOperationList::parseRegex(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, char *a5, _BYTE *a6)
{
  v6 = a4;
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  if (a4 >= a5)
  {
LABEL_191:
    *a1 = 1;
    *(a1 + 8) = v6;
    return result;
  }

  v102 = a6 + 1;
  while (1)
  {
    v114.n128_u8[0] = 0;
    v114.n128_u64[1] = -1;
    v115 = 0;
    v119 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 1;
    if (*v6 != 40)
    {
      v15 = 1;
      v110 = 1;
      *&v111 = 0;
LABEL_30:
      v16 = 1;
      goto LABEL_31;
    }

    v105 = v6;
    v9 = v6 + 1;
    do
    {
      if (v9 == a5)
      {
        goto LABEL_27;
      }

      v130 = 0;
      v128 = 0;
      v127 = 0uLL;
      v129 = 0;
      if (v124[0] == 1)
      {
        v11 = *&v124[8];
        if (*&v124[8])
        {
          __endptr[0] = *(a3 + 336);
          re::DynamicArray<unsigned long>::add(&v115, __endptr);
          v12 = *v11;
          if (v12 == 41)
          {
            v13 = 1;
            v110 = 1;
            *&v111 = v11 + 1;
            v9 = v11;
          }

          else
          {
            if (v12 == 124)
            {
              v9 = v11 + 1;
            }

            else
            {
              v9 = v11;
            }

            if (v12 == 124)
            {
              v13 = 2;
            }

            else
            {
              v13 = 3;
            }
          }
        }

        else
        {
          v13 = 3;
        }
      }

      else
      {
        *__endptr = *&v124[8];
        re::DynamicString::DynamicString(&v121, &v125);
        v110 = 0;
        v111 = *__endptr;
        *v112 = v121;
        v113 = v123;
        result = v122;
        *&v112[8] = v122;
        if (v125.n128_u64[0])
        {
          if (v125.n128_u8[8])
          {
            (*(*v125.n128_u64[0] + 40))(v125.n128_u64[0], v126);
          }

          result = 0uLL;
          v126 = 0u;
          v125 = 0u;
        }

        v13 = 1;
      }

      v14 = v127.n128_u64[0];
      if (v127.n128_u64[0] && v130)
      {
        v14 = (*(*v127.n128_u64[0] + 40))(v127.n128_u64[0]);
      }
    }

    while (v13 == 2);
    if (v13 == 3)
    {
LABEL_27:
      re::DynamicString::format("Regular expression group missing corresponding ')'.", v124, v102);
      v15 = 0;
      v16 = 0;
      result = *v124;
      v110 = 0;
      *&v111 = 100;
      *(&v111 + 1) = re::FoundationErrorCategory(void)::instance;
      *v112 = *v124;
      *&v112[16] = *&v124[16];
      v113 = v125.n128_u64[0];
LABEL_28:
      v6 = v105;
      goto LABEL_31;
    }

    if ((v110 & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_28;
    }

    v6 = v105;
    if (!v111)
    {
      v15 = 1;
      goto LABEL_30;
    }

    v114.n128_u8[0] = 5;
    v44 = *(a3 + 128);
    v45 = *(a3 + 136);
    v114.n128_u64[1] = v45;
    if (v45 >= v44)
    {
      v46 = v45 + 1;
      if (v44 < v45 + 1)
      {
        if (*(a3 + 120))
        {
          v47 = 2 * v44;
          v23 = v44 == 0;
          v48 = 8;
          if (!v23)
          {
            v48 = v47;
          }

          if (v48 <= v46)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((a3 + 120), v49);
        }

        else
        {
          re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity((a3 + 120), v46);
          ++*(a3 + 144);
        }
      }
    }

    v16 = 0;
    v96 = *(a3 + 152) + 40 * *(a3 + 136);
    *(v96 + 32) = 0;
    *(v96 + 24) = 0;
    *(v96 + 8) = 0;
    *(v96 + 16) = 0;
    *v96 = 0;
    *v96 = v115;
    v115 = 0;
    *(v96 + 8) = v116;
    v116 = 0;
    v97 = *(v96 + 16);
    *(v96 + 16) = v117;
    v117 = v97;
    v98 = *(v96 + 32);
    *(v96 + 32) = v119;
    v119 = v98;
    ++v118;
    ++*(v96 + 24);
    ++*(a3 + 136);
    ++*(a3 + 144);
    v15 = 1;
LABEL_31:
    v17 = v115;
    if (v115 && v119)
    {
      v17 = (*(*v115 + 40))();
    }

    if (!v16)
    {
      break;
    }

    *v124 = &unk_1F5CCF100;
    *&v126 = 0;
    *&v124[16] = 0;
    v125.n128_u64[0] = 0;
    *&v124[8] = 0;
    v125.n128_u32[2] = 1;
    v18 = *v6;
    if (v18 == 91)
    {
      v19 = (v6 + 1);
      if (v6 + 1 == a5)
      {
LABEL_76:
        if (*v19 != 93)
        {
          re::DynamicString::format("Character set missing corresponding ']'.", __endptr);
          v15 = 0;
          result = *__endptr;
          v110 = 0;
          *&v111 = 100;
          *(&v111 + 1) = re::FoundationErrorCategory(void)::instance;
          *v112 = *__endptr;
          *&v112[16] = v121;
          v113 = v122.n128_u64[0];
          goto LABEL_95;
        }
      }

      else
      {
        while (*v19 != 93)
        {
          v127.n128_u8[0] = 0;
          v127.n128_u64[1] = -1;
          __endptr[0] = &unk_1F5CCF1A0;
          if (a5 - v19 >= 2 && *v19 == 92)
          {
            LOBYTE(__endptr[1]) = v19[1];
            v19 += 2;
            v127.n128_u8[0] = 2;
            v127.n128_u64[1] = *(a3 + 56);
          }

          else
          {
            __endptr[0] = &unk_1F5CCF140;
            if ((a5 - v19) <= 2)
            {
              goto LABEL_57;
            }

            v20 = 0;
            v21 = *v19;
            do
            {
              v23 = v22 == v21 || v20++ == 8;
            }

            while (!v23);
            if (v22 == v21 || v19[1] != 45)
            {
              goto LABEL_57;
            }

            v24 = 0;
            v26 = v19 + 2;
            v25 = v19[2];
            do
            {
            }

            while (v27 != v25 && v24++ != 8);
            if (v27 == v25)
            {
LABEL_57:
              __endptr[0] = &unk_1F5CCF1D0;
              v29 = *v19++;
              LOBYTE(__endptr[1]) = v29;
              v127.n128_u8[0] = 1;
              v127.n128_u64[1] = *(a3 + 16);
            }

            else
            {
              v30 = v6;
              if (v25 >= v21)
              {
                v26 = v19;
              }

              LOBYTE(__endptr[1]) = *v26;
              if (v21 <= v25)
              {
                LOBYTE(v21) = v25;
              }

              BYTE1(__endptr[1]) = v21;
              v127.n128_u8[0] = 3;
              v31 = *(a3 + 88);
              v32 = *(a3 + 96);
              v127.n128_u64[1] = v32;
              if (v32 >= v31)
              {
                v33 = v32 + 1;
                if (v31 < v32 + 1)
                {
                  if (*(a3 + 80))
                  {
                    v34 = 2 * v31;
                    v23 = v31 == 0;
                    v35 = 8;
                    if (!v23)
                    {
                      v35 = v34;
                    }

                    if (v35 <= v33)
                    {
                      v36 = v33;
                    }

                    else
                    {
                      v36 = v35;
                    }
                  }

                  else
                  {
                    ++*(a3 + 104);
                  }
                }
              }

              v19 += 3;
              v37 = *(a3 + 112) + 16 * *(a3 + 96);
              *v37 = &unk_1F5CCF140;
              *(v37 + 8) = __endptr[1];
              ++*(a3 + 96);
              ++*(a3 + 104);
              v6 = v30;
            }
          }

          __endptr[0] = *(a3 + 256);
          re::DynamicArray<unsigned long>::add(&v124[8], __endptr);
          if (v19 == a5)
          {
            goto LABEL_76;
          }
        }
      }

      v106 = v6;
      v110 = 1;
      *&v111 = v19 + 1;
      v114.n128_u8[0] = 6;
      v38 = *(a3 + 168);
      v114.n128_u64[1] = *(a3 + 176);
      v39 = v114.n128_u64[1] + 1;
      if (v114.n128_u64[1] >= v38 && v38 < v39)
      {
        if (*(a3 + 160))
        {
          v64 = 2 * v38;
          v23 = v38 == 0;
          v65 = 8;
          if (!v23)
          {
            v65 = v64;
          }

          if (v65 <= v39)
          {
            v66 = v114.n128_u64[1] + 1;
          }

          else
          {
            v66 = v65;
          }
        }

        else
        {
          ++*(a3 + 184);
        }
      }

      v41 = *(a3 + 192) + 48 * *(a3 + 176);
      *(v41 + 40) = 0;
      *v41 = &unk_1F5CCF100;
      *(v41 + 8) = 0;
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0;
      *(v41 + 8) = *&v124[8];
      *&v124[8] = 0;
      *(v41 + 16) = *&v124[16];
      *&v124[16] = 0;
      v42 = *(v41 + 24);
      *(v41 + 24) = v125.n128_u64[0];
      v125.n128_u64[0] = v42;
      v43 = *(v41 + 40);
      *(v41 + 40) = v126;
      *&v126 = v43;
      ++v125.n128_u32[2];
      ++*(v41 + 32);
      ++*(a3 + 176);
      ++*(a3 + 184);
      v15 = 1;
      v6 = v106;
    }

    else
    {
      v15 = 1;
      v110 = 1;
      *&v111 = 0;
    }

LABEL_95:
    *v124 = &unk_1F5CCF100;
    v50 = *&v124[8];
    if (*&v124[8] && v126)
    {
      v50 = (*(**&v124[8] + 40))(*&v124[8]);
    }

    if (v18 == 91)
    {
      break;
    }

    *v124 = &unk_1F5CCF170;
    v124[8] = 0;
    v51 = *v6;
    switch(v51)
    {
      case '$':
        v52 = 3;
LABEL_108:
        v124[8] = v52;
        v53 = v6;
        v110 = 1;
        *&v111 = v6 + 1;
        v114.n128_u8[0] = 4;
        v54 = *(a3 + 208);
        v55 = *(a3 + 216);
        v114.n128_u64[1] = v55;
        if (v55 >= v54)
        {
          v56 = v55 + 1;
          if (v54 < v55 + 1)
          {
            if (*(a3 + 200))
            {
              v57 = 2 * v54;
              v23 = v54 == 0;
              v58 = 8;
              if (!v23)
              {
                v58 = v57;
              }

              if (v58 <= v56)
              {
                v59 = v56;
              }

              else
              {
                v59 = v58;
              }
            }

            else
            {
              ++*(a3 + 224);
            }
          }
        }

        v67 = *(a3 + 216);
        v68 = *(a3 + 232) + 16 * v67;
        *v68 = &unk_1F5CCF170;
        *(v68 + 8) = v124[8];
        *(a3 + 216) = v67 + 1;
        ++*(a3 + 224);
        v6 = v53;
        goto LABEL_138;
      case '.':
        v52 = 1;
        goto LABEL_108;
      case '^':
        v52 = 2;
        goto LABEL_108;
    }

    *v124 = &unk_1F5CCF1A0;
    v124[8] = -1;
    if (a5 - v6 >= 2 && *v6 == 92)
    {
      v124[8] = v6[1];
      v110 = 1;
      *&v111 = v6 + 2;
      v114.n128_u8[0] = 2;
      v114.n128_u64[1] = *(a3 + 56);
    }

    else
    {
      v60 = 0;
      *v124 = &unk_1F5CCF1D0;
      v124[8] = -1;
      v61 = *v6;
      v124[8] = *v6;
      do
      {
      }

      while (v62 != v61 && v60++ != 8);
      if (v62 == v61)
      {
        goto LABEL_191;
      }

      v110 = 1;
      *&v111 = v6 + 1;
      v114.n128_u8[0] = 1;
      v114.n128_u64[1] = *(a3 + 16);
    }

LABEL_138:
    if (!v111)
    {
      goto LABEL_191;
    }

    v69 = *(a3 + 256);
    if (v111 == a5)
    {
      v70 = 0;
      v72 = 1;
      LODWORD(v75) = 1;
LABEL_148:
      v74 = v111;
      goto LABEL_172;
    }

    v70 = 0;
    v71 = *v111;
    v72 = 1;
    if (v71 > 0x3E)
    {
      if (v71 == 63)
      {
        LODWORD(v75) = 0;
        v81 = *(v111 + 1);
        v70 = v81 != 63;
        if (v81 == 63)
        {
          v74 = (v111 + 2);
        }

        else
        {
          v74 = (v111 + 1);
        }

        v72 = 1;
      }

      else
      {
        LODWORD(v75) = 1;
        v74 = v111;
        if (v71 == 123)
        {
          __endptr[0] = 0;
          v76 = strtol((v111 + 1), __endptr, 10);
          if ((v76 & 0x8000000000000000) != 0)
          {
            v99 = "Repetition brace requires valid positive number.";
LABEL_202:
            re::DynamicString::format(v99, v124, v102);
            result = *v124;
            v100 = *&v124[16];
            v101 = v125.n128_u64[0];
            *a1 = 0;
            *(a1 + 8) = 100;
            *(a1 + 16) = re::FoundationErrorCategory(void)::instance;
            *(a1 + 24) = result;
            *(a1 + 40) = v100;
            *(a1 + 48) = v101;
            return result;
          }

          v75 = v76;
          if (v76 >= 0xFFFFFFFF)
          {
            v99 = "Repetition brace exceeded maximum match count.";
            goto LABEL_202;
          }

          v77 = __endptr[0];
          v78 = *__endptr[0];
          if (v78 == 44)
          {
            v79 = strtol(__endptr[0] + 1, __endptr, 10);
            if ((v79 & 0x8000000000000000) != 0)
            {
              v99 = "Repetition brace maximum requires valid positive number.";
              goto LABEL_202;
            }

            v72 = v79;
            if (v79 >= 0xFFFFFFFF)
            {
              v99 = "Repetition brace maximum exceeded maximum match count.";
              goto LABEL_202;
            }

            if (v79 < v75)
            {
              v99 = "Repetition brace maximum must be larger than the minimum.";
              goto LABEL_202;
            }

            v77 = __endptr[0];
            v78 = *__endptr[0];
          }

          else
          {
            v72 = v76;
          }

          if (v78 != 125)
          {
            v99 = "Repetition brace expected closing '}'.";
            goto LABEL_202;
          }

          v83 = v77[1];
          v82 = v77 + 1;
          v70 = v83 != 63;
          if (v83 == 63)
          {
            v74 = (v82 + 1);
          }

          else
          {
            v74 = v82;
          }
        }
      }
    }

    else
    {
      if (v71 == 42)
      {
        LODWORD(v75) = 0;
        v80 = *(v111 + 1);
        v70 = v80 != 63;
        if (v80 == 63)
        {
          v74 = (v111 + 2);
        }

        else
        {
          v74 = (v111 + 1);
        }
      }

      else
      {
        if (v71 != 43)
        {
          LODWORD(v75) = 1;
          goto LABEL_148;
        }

        v73 = *(v111 + 1);
        v70 = v73 != 63;
        if (v73 == 63)
        {
          v74 = (v111 + 2);
        }

        else
        {
          v74 = (v111 + 1);
        }

        LODWORD(v75) = 1;
      }

      v72 = 0x7FFFFFFF;
    }

LABEL_172:
    *a1 = 1;
    v6 = v74;
    *(a1 + 8) = v74;
    *v124 = *(a3 + 296);
    v84 = re::DynamicArray<unsigned long>::add(a2, v124);
    v85 = *(a3 + 288);
    v86 = *(a3 + 296);
    if (v86 >= v85)
    {
      v87 = v86 + 1;
      if (v85 < v86 + 1)
      {
        if (*(a3 + 280))
        {
          v88 = 2 * v85;
          v23 = v85 == 0;
          v89 = 8;
          if (!v23)
          {
            v89 = v88;
          }

          if (v89 <= v87)
          {
            v90 = v87;
          }

          else
          {
            v90 = v89;
          }

          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 280), v90);
        }

        else
        {
          re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a3 + 280), v87);
          ++*(a3 + 304);
        }
      }
    }

    v91 = *(a3 + 312) + 24 * *(a3 + 296);
    *v91 = v69;
    *(v91 + 8) = v70;
    *(v91 + 11) = v109;
    *(v91 + 9) = v108;
    *(v91 + 12) = v75;
    *(v91 + 16) = v72;
    ++*(a3 + 296);
    ++*(a3 + 304);
    v92 = *a6;
    if (*a6)
    {
      v93 = 0;
      v94 = v102;
      do
      {
        v93 |= v92 == *v6;
        v95 = *v94++;
        v92 = v95;
      }

      while (v95);
      if (v93)
      {
        goto LABEL_191;
      }
    }

    if (v6 >= a5)
    {
      goto LABEL_191;
    }
  }

  if (v15)
  {
    goto LABEL_138;
  }

  *v124 = v111;
  re::DynamicString::DynamicString(&v124[16], v112);
  *a1 = 0;
  *(a1 + 8) = *v124;
  *(a1 + 24) = *&v124[16];
  *(a1 + 48) = v126;
  result = v125;
  *(a1 + 32) = v125;
  if (*v112)
  {
    if (v112[8])
    {
      (*(**v112 + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::anonymous namespace::RegexOperationList>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v12 = 2 * v4;
      v13 = v4 == 0;
      v14 = 8;
      if (!v13)
      {
        v14 = v12;
      }

      if (v14 <= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v14;
      }

      result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(result, v15);
    }

    else
    {
      result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(v3, v6);
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 4) + 40 * *(v3 + 2);
  *(v8 + 32) = 0;
  *(v8 + 24) = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *v8 = 0;
  v9 = *(a2 + 8);
  *v8 = *a2;
  *(v8 + 8) = v9;
  *a2 = 0;
  *(a2 + 8) = 0;
  v10 = *(v8 + 16);
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  v11 = *(v8 + 32);
  *(v8 + 32) = *(a2 + 32);
  *(a2 + 32) = v11;
  ++*(a2 + 24);
  ++*(v8 + 24);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>::~BucketArray(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  return a1;
}

BOOL re::internal::RegexRoot::fullMatch(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a1[47];
  if (!v5)
  {
    return a2 == a3;
  }

  v36[0] = a1;
  v36[1] = a2;
  v36[2] = a3;
  v37 = a2;
  v38 = 0;
  v39 = 0;
  v40 = 1;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v44 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 1;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v8 = a1[49];
  v9 = &v8[v5];
  v35 = 0;
  while (1)
  {
    v10 = *v8;
    v11 = a1[42];
    if (v11 <= *v8)
    {
      goto LABEL_51;
    }

    {
      goto LABEL_13;
    }

    if (v37 == a3)
    {
      break;
    }

    do
    {
      v11 = a1[42];
      if (v11 <= v10)
      {
        v45 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        v49 = 797;
        v50 = 2048;
        v51 = v10;
        v52 = 2048;
        v53 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_51:
        v45 = 0;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46 = 136315906;
        v47 = "operator[]";
        v48 = 1024;
        v49 = 797;
        v50 = 2048;
        v51 = v10;
        v52 = 2048;
        v53 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      {
        v12 = v37 == a3;
      }

      else
      {
        v12 = 1;
      }
    }

    while (!v12);
    if (v37 == a3)
    {
      break;
    }

LABEL_13:
    if (++v8 == v9)
    {
      v13 = 0;
      goto LABEL_34;
    }
  }

  *(a4 + 16) = 0;
  ++*(a4 + 24);
  v14 = v34;
  if (v34)
  {
    v15 = 0;
    do
    {
      if (*v16 == 5)
      {
        v17 = v16;
        v18 = *(a4 + 8);
        v19 = *(a4 + 16);
        if (v19 >= v18)
        {
          v20 = v19 + 1;
          if (v18 < v19 + 1)
          {
            if (*a4)
            {
              if (v18)
              {
                v21 = 2 * v18;
              }

              else
              {
                v21 = 8;
              }

              if (v21 <= v20)
              {
                v22 = v19 + 1;
              }

              else
              {
                v22 = v21;
              }

              re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v22);
            }

            else
            {
              re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v20);
              ++*(a4 + 24);
            }
          }

          v19 = *(a4 + 16);
        }

        *(*(a4 + 32) + 16 * v19) = *(v17 + 1);
        ++*(a4 + 16);
        ++*(a4 + 24);
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v13 = 1;
LABEL_34:
  v23 = v43;
  if (v43)
  {
    v24 = 0;
    do
    {
      re::BucketArray<unsigned long,8ul>::deinit(v25 + 64);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v25 + 64);
      v26 = *(v25 + 48);
      if (v26)
      {
        for (i = 0; i != v26; ++i)
        {
        }
      }

      while (*(v25 + 16))
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket((v25 + 8));
      }

      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v25 + 8);
      *(v25 + 48) = 0;
      ++*(v25 + 56);
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v25 + 8);
      ++v24;
    }

    while (v24 != v23);
  }

  while (v39)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v38);
  }

  if (v38 && (v40 & 1) == 0)
  {
    (*(*v38 + 40))();
  }

  return v13;
}

uint64_t re::internal::anonymous namespace::RegexOperationList::unwindMatch(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v7 = v3 - 1;
  while (1)
  {
    if (*(a1 + 16) <= v7)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_17:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_18:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = *a2;
    v9 = *(*(a1 + 32) + 8 * v7);
    if (*(*a2 + 296) <= v9)
    {
      goto LABEL_17;
    }

    v10 = (v8[39] + 24 * v9);
    if (v8[32] <= *v10)
    {
      goto LABEL_18;
    }

    v11 = a2[3];
    {
      break;
    }

    --v7;
LABEL_13:
    if (v7 >= v3)
    {
      return 0;
    }
  }

  {
    goto LABEL_13;
  }

  return 1;
}

uint64_t *re::internal::regularExpressionCreate@<X0>(re::internal *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  v33 = *MEMORY[0x1E69E9840];
  v5 = re::globalAllocators(this);
  v6 = (*(*v5[2] + 32))(v5[2], 400, 8);
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  v6[4] = 0u;
  v6[5] = 0u;
  v6[6] = 0u;
  v6[7] = 0u;
  v6[8] = 0u;
  v6[9] = 0u;
  v6[10] = 0u;
  v6[11] = 0u;
  v6[12] = 0u;
  v6[13] = 0u;
  v6[14] = 0u;
  v6[15] = 0u;
  v6[16] = 0u;
  v6[17] = 0u;
  v6[18] = 0u;
  v6[19] = 0u;
  v6[20] = 0u;
  v6[21] = 0u;
  v6[22] = 0u;
  v6[23] = 0u;
  v6[24] = 0u;
  *v30 = &unk_1F5CCF200;
  *&v31 = v30;
  v29 = v28;
  v27 = v6;
  v28[0] = &unk_1F5CCF200;
  std::__function::__value_func<void ()(re::internal::RegexRoot *)>::~__value_func[abi:nn200100](v30);
  v7 = v27;
  v8 = &v3[strlen(v3)];
  do
  {
    if (v3 >= v8)
    {
      goto LABEL_22;
    }

    v26 = 0;
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    if (v30[0] != 1)
    {
      v16 = v30[0];
      v17 = *&v30[8];
      re::DynamicString::DynamicString(&v18, &v31);
      if (v31)
      {
        if (BYTE8(v31))
        {
          (*(*v31 + 40))(v31, v32);
        }

        v32 = 0u;
        v31 = 0u;
      }

      goto LABEL_13;
    }

    v9 = *&v30[8];
    if (!*&v30[8])
    {
      re::DynamicString::format("Unknown error parsing regular expression.", &v21);
      v16 = 0;
      *&v17 = 100;
      *(&v17 + 1) = re::FoundationErrorCategory(void)::instance;
      v18 = v21;
      v19 = v22;
      v20 = v23;
LABEL_13:
      v10 = 1;
      goto LABEL_17;
    }

    *&v21 = v7[42];
    re::DynamicArray<unsigned long>::add(v7 + 45, &v21);
    if (!*v9)
    {
      v10 = 3;
LABEL_16:
      v3 = v9;
      goto LABEL_17;
    }

    if (*v9 != 124)
    {
      re::DynamicString::format("Could not parse regular expression: %s.", &v21, v9);
      v16 = 0;
      *&v17 = 100;
      *(&v17 + 1) = re::FoundationErrorCategory(void)::instance;
      v18 = v21;
      v19 = v22;
      v20 = v23;
      v10 = 1;
      goto LABEL_16;
    }

    v3 = v9 + 1;
    v10 = 2;
LABEL_17:
    if (v24[0] && v26)
    {
      (*(*v24[0] + 40))();
    }
  }

  while (v10 == 2);
  if (v10 == 3)
  {
LABEL_22:
    v16 = 1;
    goto LABEL_23;
  }

  if ((v16 & 1) == 0)
  {
    *v30 = v17;
    re::DynamicString::DynamicString(&v30[16], &v18);
    *a2 = 0;
    *(a2 + 8) = *v30;
    v13 = v32;
    *(a2 + 24) = *&v30[16];
    *(a2 + 48) = v13;
    *(a2 + 32) = v31;
    goto LABEL_35;
  }

LABEL_23:
  v11 = v27;
  v12 = v29;
  v27 = 0;
  *v30 = v11;
  if (!v29)
  {
    *a2 = 1;
    *(&v31 + 1) = 0;
    *v30 = 0;
    *(a2 + 8) = v11;
LABEL_29:
    *(a2 + 40) = 0;
    goto LABEL_34;
  }

  if (v29 == v28)
  {
    *(&v31 + 1) = &v30[8];
    (*(*v29 + 24))(v29, &v30[8]);
    v14 = *v30;
    v12 = *(&v31 + 1);
    *a2 = 1;
    *v30 = 0;
    *(a2 + 8) = v14;
    if (v12)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v29 = 0;
  *a2 = 1;
  *(&v31 + 1) = v12;
  *v30 = 0;
  *(a2 + 8) = v11;
LABEL_31:
  if (v12 == &v30[8])
  {
    *(a2 + 40) = a2 + 16;
    (*(*v12 + 24))(v12);
  }

  else
  {
    *(a2 + 40) = v12;
    *(&v31 + 1) = 0;
  }

LABEL_34:
  std::unique_ptr<re::internal::RegexRoot,std::function<void ()(re::internal::RegexRoot*)>>::~unique_ptr[abi:nn200100](v30);
LABEL_35:
  if (v16 & 1) == 0 && v18 && (BYTE8(v18))
  {
    (*(*v18 + 40))();
  }

  return std::unique_ptr<re::internal::RegexRoot,std::function<void ()(re::internal::RegexRoot*)>>::~unique_ptr[abi:nn200100](&v27);
}

uint64_t re::internal::regularExpressionFullMatch@<X0>(char *__s@<X1>, void **a2@<X0>, uint64_t a3@<X8>)
{
  v6 = strlen(__s);
  v12 = 0;
  v10 = 0uLL;
  v9 = 0;
  v11 = 0;
  result = re::internal::RegexRoot::fullMatch(*a2, __s, &__s[v6], &v9);
  if (result)
  {
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 40) = v12;
    *(a3 + 32) = 1;
    *a3 = 1;
  }

  else
  {
    result = v9;
    *a3 = 0;
    if (result && v12)
    {
      v8 = *(*result + 40);

      return v8();
    }
  }

  return result;
}

__n128 re::DynamicArray<re::internal::anonymous namespace::RegexToken>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v9 = 2 * v4;
      v10 = v4 == 0;
      v11 = 8;
      if (!v10)
      {
        v11 = v9;
      }

      if (v11 <= v6)
      {
        v12 = v6;
      }

      else
      {
        v12 = v11;
      }

      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v12);
    }

    else
    {
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, v6);
      ++*(a1 + 24);
    }
  }

  result = *a2;
  *(*(a1 + 32) + 16 * (*(a1 + 16))++) = *a2;
  ++*(a1 + 24);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::anonymous namespace::RegexTokenEscapedCharacter>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v10 = 2 * v4;
      v11 = v4 == 0;
      v12 = 8;
      if (!v11)
      {
        v12 = v10;
      }

      if (v12 <= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 2);
  v9 = *(v3 + 4) + 16 * v8;
  *v9 = &unk_1F5CCF1A0;
  *(v9 + 8) = *(a2 + 8);
  *(v3 + 2) = v8 + 1;
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacter>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v10 = 2 * v4;
      v11 = v4 == 0;
      v12 = 8;
      if (!v11)
      {
        v12 = v10;
      }

      if (v12 <= v6)
      {
        v13 = v6;
      }

      else
      {
        v13 = v12;
      }
    }

    else
    {
      ++*(v3 + 6);
    }
  }

  v8 = *(v3 + 2);
  v9 = *(v3 + 4) + 16 * v8;
  *v9 = &unk_1F5CCF1D0;
  *(v9 + 8) = *(a2 + 8);
  *(v3 + 2) = v8 + 1;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::anonymous namespace::RegexTokenCharacterSet::tryMatch(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v11[1] = 0;
  v12 = 1;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v16 = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = 8 * v2 - 8;
    do
    {
      v6 = *v4;
      v7 = *(*a2 + 256);
      if (v7 <= *v4)
      {
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 797;
        v22 = 2048;
        v23 = v6;
        v24 = 2048;
        v25 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v8)
      {
        break;
      }

      ++v4;
      v9 = v5;
      v5 -= 8;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t re::internal::anonymous namespace::RegexToken::match(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a2;
  v7 = &v40;
  v63 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (v8 <= 3)
  {
    switch(v8)
    {
      case 1u:
        v9 = *(a1 + 1);
        v10 = *(*a3 + 16);
        if (v10 <= v9)
        {
          goto LABEL_77;
        }

        v11 = (*(*a3 + 32) + 16 * v9);
        v12 = 1;
        goto LABEL_51;
      case 2u:
        v9 = *(a1 + 1);
        v10 = *(*a3 + 56);
        if (v10 <= v9)
        {
          goto LABEL_75;
        }

        v11 = (*(*a3 + 72) + 16 * v9);
        v12 = 2;
        goto LABEL_51;
      case 3u:
        v9 = *(a1 + 1);
        v10 = *(*a3 + 96);
        if (v10 <= v9)
        {
          goto LABEL_73;
        }

        v11 = (*(*a3 + 112) + 16 * v9);
        v12 = 3;
LABEL_51:
    }

    goto LABEL_80;
  }

  if (v8 == 4)
  {
    v9 = *(a1 + 1);
    v10 = *(*a3 + 216);
    if (v10 <= v9)
    {
      goto LABEL_78;
    }

    v11 = (*(*a3 + 232) + 16 * v9);
    v12 = 4;
    goto LABEL_51;
  }

  if (v8 != 5)
  {
    if (v8 == 6)
    {
      v9 = *(a1 + 1);
      v10 = *(*a3 + 176);
      if (v10 <= v9)
      {
        goto LABEL_74;
      }

      v11 = (*(*a3 + 192) + 48 * v9);
      v12 = 6;
      goto LABEL_51;
    }

LABEL_80:
    re::internal::assertLog(4, a2, a2, "assertion failure: '%s' (%s:line %i) Invalid token type.", "!Unreachable code", "match", 915);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v9 = *(a1 + 1);
  v10 = *(*a3 + 136);
  if (v10 <= v9)
  {
    goto LABEL_76;
  }

  v13 = *(*a3 + 152);
  LOBYTE(v40) = 0;
  v14 = v13 + 40 * v9;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  DWORD2(v41) = 1;
  *&v43 = 0;
  v42 = 0uLL;
  DWORD2(v43) = 0;
  v44 = 0;
  v45 = 0;
  v46 = 1;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v50 = 0;
  v35 = a3[3];
  v15 = *(v14 + 16);
  v9 = *(a2 + 4);
  if (v9 < 1)
  {
LABEL_26:
    if (*v6 == 1)
    {
      LOBYTE(v40) = 1;
      if (v9 < *(a2 + 8))
      {
        if (v15)
        {
          v33 = a3[3];
          do
          {
            v18 = 0;
            v17 = 0;
            while (1)
            {
              *v36 = 0;
              *&v36[8] = 0;
              *&v36[16] = 1;
              *&v37[12] = 0;
              v38 = 0;
              *&v37[4] = 0;
              v39 = 0;
              v10 = *(v14 + 16);
              if (v10 <= v17)
              {
                goto LABEL_71;
              }

              v10 = *(*(v14 + 32) + 8 * v17);
              v7 = *(*a3 + 336);
              if (v7 <= v10)
              {
                goto LABEL_72;
              }

              {
                break;
              }

              v18 = ++v17 >= v15;
              if (v15 == v17)
              {
                goto LABEL_38;
              }
            }

            *re::BucketArray<unsigned long,8ul>::addUninitialized(&v44) = v17;
            if (v18 || v33 == a3[3])
            {
              break;
            }

            v9 = (v9 + 1);
            v33 = a3[3];
          }

          while (v9 < *(a2 + 8));
        }
      }
    }

LABEL_38:
    v19 = a3[9];
    v10 = a3[5];
    if (v19 + 1 > v10 << 6)
    {
      v10 = a3[5];
    }

    v9 = v19 >> 6;
    if (v10 <= v19 >> 6)
    {
      goto LABEL_79;
    }

    v20 = a3[8];
    if (a3[6])
    {
      v20 = a3 + 7;
    }

    v21 = v20[v9];
    ++a3[9];
    ++*(a3 + 20);
    v22 = v21 + 120 * (v19 & 0x3F);
    *v22 = v40;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 32) = 0;
    *(v22 + 56) = 0;
    *(&v59 + 1) = 0;
    *&v60 = 0;
    v58 = 0uLL;
    *(v22 + 24) = 3;
    LODWORD(v59) = 3;
    if (v58 && (v59 & 1) == 0)
    {
      (*(*v58 + 40))();
    }

    v23 = *(v22 + 48);
    *(v22 + 48) = v43;
    *&v43 = v23;
    ++*(v22 + 56);
    ++DWORD2(v43);
    *(v22 + 64) = 0;
    *(v22 + 72) = 0;
    v24 = v22 + 64;
    v25 = 1;
    *(v24 + 16) = 1;
    *(v24 + 32) = 0;
    *(v24 + 40) = 0;
    *(v24 + 24) = 0;
    *(v24 + 48) = 0;
    re::BucketArray<RESubscriptionHandle,8ul>::swap(v24, &v44);
    LOBYTE(v58) = 5;
    v26 = a3[3] - v35;
    *(&v58 + 1) = a3[9] - 1;
    *&v59 = v35;
    *(&v59 + 1) = v26;
  }

  else
  {
    if (v15)
    {
      v16 = 0;
      v17 = 40;
      while (1)
      {
        v32 = v16;
        v9 = 0;
        while (1)
        {
          *v36 = 0;
          *&v36[8] = 0;
          *&v36[16] = 1;
          v38 = 0;
          *&v37[4] = 0uLL;
          v39 = 0;
          v10 = *(v14 + 16);
          if (v10 <= v9)
          {
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v51 = 136315906;
            *&v51[4] = "operator[]";
            v52 = 1024;
            v53 = 797;
            v54 = 2048;
            v55 = v9;
            v56 = 2048;
            v57 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_70:
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v51 = 136315906;
            *&v51[4] = "operator[]";
            v52 = 1024;
            v53 = 797;
            v54 = 2048;
            v55 = v10;
            v56 = 2048;
            v57 = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_71:
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v51 = 136315906;
            *&v51[4] = "operator[]";
            v52 = 1024;
            v53 = 797;
            v54 = 2048;
            v55 = v17;
            v56 = 2048;
            v57 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_72:
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v51 = 136315906;
            *&v51[4] = "operator[]";
            v52 = 1024;
            v53 = 797;
            v54 = 2048;
            v55 = v10;
            v56 = 2048;
            v57 = v7;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_73:
            *v36 = 0;
            v7[4] = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v58) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v58) = 1024;
            *(v7 + 190) = 797;
            WORD1(v59) = 2048;
            *(v7 + 196) = v9;
            WORD6(v59) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_74:
            *v36 = 0;
            v7[4] = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v58) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v58) = 1024;
            *(v7 + 190) = 797;
            WORD1(v59) = 2048;
            *(v7 + 196) = v9;
            WORD6(v59) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_75:
            *v36 = 0;
            v7[4] = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v58) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v58) = 1024;
            *(v7 + 190) = 797;
            WORD1(v59) = 2048;
            *(v7 + 196) = v9;
            WORD6(v59) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_76:
            *v36 = 0;
            v7[4] = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v58) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v58) = 1024;
            *(v7 + 190) = 797;
            WORD1(v59) = 2048;
            *(v7 + 196) = v9;
            WORD6(v59) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_77:
            *v36 = 0;
            v7[4] = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v58) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v58) = 1024;
            *(v7 + 190) = 797;
            WORD1(v59) = 2048;
            *(v7 + 196) = v9;
            WORD6(v59) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_78:
            *v36 = 0;
            v7[4] = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            LODWORD(v58) = 136315906;
            *(v7 + 180) = "operator[]";
            WORD6(v58) = 1024;
            *(v7 + 190) = 797;
            WORD1(v59) = 2048;
            *(v7 + 196) = v9;
            WORD6(v59) = 2048;
            *(v7 + 206) = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_79:
            *v51 = 0;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v58 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v36 = 136315906;
            *&v36[4] = "operator[]";
            *&v36[12] = 1024;
            *&v36[14] = 858;
            *&v36[18] = 2048;
            *v37 = v9;
            *&v37[8] = 2048;
            *&v37[10] = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v10 = *(*(v14 + 32) + 8 * v9);
          v7 = *(*a3 + 336);
          if (v7 <= v10)
          {
            goto LABEL_70;
          }

          {
            break;
          }

          if (v15 == ++v9)
          {
            goto LABEL_54;
          }
        }

        *re::BucketArray<unsigned long,8ul>::addUninitialized(&v44) = v9;
        v16 = v32 + 1;
        v9 = *(a2 + 4);
        if (v32 + 1 >= v9)
        {
          v6 = a2;
          goto LABEL_26;
        }
      }
    }

LABEL_54:
    v25 = 0;
    a3[3] = v35;
  }

  re::BucketArray<unsigned long,8ul>::deinit(&v44);
  if (v44)
  {
    v28 = v46;
    if ((v46 & 1) == 0)
    {
      (*(*v44 + 40))();
      v28 = v46;
    }

    v44 = 0;
    v45 = 0;
    v46 = (v28 | 1) + 2;
  }

  v29 = v43;
  if (v43)
  {
    v30 = 0;
    do
    {
      ++v30;
    }

    while (v29 != v30);
  }

  while (v41)
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v40 + 1);
  }

  if (*(&v40 + 1) && (BYTE8(v41) & 1) == 0)
  {
    (*(**(&v40 + 1) + 40))();
  }

  return v25;
}

uint64_t re::internal::anonymous namespace::RegexBasicToken::match(uint64_t (***a1)(void, uint64_t), char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 24);
  v11 = *(a3 + 4);
  if (v11 < 1)
  {
LABEL_5:
    if (*a3 == 1)
    {
      while (v11 < *(a3 + 8) && ((**a1)(a1, a4) & 1) != 0)
      {
        ++v11;
      }
    }

    v15[0] = a2;
    v13 = *(a4 + 24) - v10;
    v16 = -1;
    v17 = v10;
    v18 = v13;
    return 1;
  }

  else
  {
    v12 = 0;
    while (((**a1)(a1, a4) & 1) != 0)
    {
      ++v12;
      v11 = *(a3 + 4);
      if (v12 >= v11)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    *(a4 + 24) = v10;
  }

  return result;
}

__n128 re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > v5 << 6)
  {
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 6)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 6));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = (v7 + 32 * (v4 & 0x3F));
  result = *a2;
  v10 = *(a2 + 16);
  *v8 = *a2;
  v8[1] = v10;
  return result;
}

void *re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 2048, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>::add(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 8 * v5)
  {
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  v8 = v7 + 56 * (v4 & 7);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 24) = 0;
  *(v8 + 48) = 0;
  *(&v12 + 1) = 0;
  *&v13 = 0;
  v11 = 0uLL;
  *(v8 + 16) = 3;
  LODWORD(v12) = 3;
  result = v11;
  if (v11 && (v12 & 1) == 0)
  {
    result = (*(*v11 + 40))();
  }

  v10 = *(v8 + 40);
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  ++*(v8 + 48);
  ++*(a2 + 48);
  return result;
}

void *re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::DynamicOverflowArray<re::internal::anonymous namespace::MatchStackItem *,2ul>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a1;
  if (*a1)
  {
    if (*a2 && v4 != *a2)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
      result = _os_crash();
      __break(1u);
      return result;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 8);
    if (v10)
    {
      *a1 = *a2;
      if (v10 >= *(a1 + 8))
      {
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, v10);
        if (*(a2 + 16))
        {
          v13 = (a2 + 24);
        }

        else
        {
          v13 = *(a2 + 32);
        }

        v14 = *(a1 + 8);
        v15 = *(a1 + 16);
        if (v15)
        {
          v16 = (a1 + 24);
        }

        else
        {
          v16 = *(a1 + 32);
        }

        if (v14)
        {
          memmove(v16, v13, 8 * v14);
          v15 = *(a1 + 16);
        }

        if (v15)
        {
          v17 = a1 + 24;
        }

        else
        {
          v17 = *(a1 + 32);
        }

        v18 = *(a1 + 8);
        v19 = (v17 + 8 * v18);
        if (*(a2 + 16))
        {
          v20 = a2 + 24;
        }

        else
        {
          v20 = *(a2 + 32);
        }

        memcpy(v19, (v20 + 8 * v18), 8 * (v10 - v18));
      }

      else
      {
        if (*(a2 + 16))
        {
          v11 = (a2 + 24);
        }

        else
        {
          v11 = *(a2 + 32);
        }

        if (*(a1 + 16))
        {
          v12 = (a1 + 24);
        }

        else
        {
          v12 = *(a1 + 32);
        }

        memmove(v12, v11, 8 * v10);
      }

      *(a1 + 8) = v10;
      *(a2 + 8) = 0;
      *(a2 + 16) += 4;
      v6 = (a1 + 16);
      goto LABEL_37;
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
    *a1 = *a2;
    v6 = (a1 + 16);
  }

  else
  {
    *(a1 + 8) = 0;
    v6 = (a1 + 16);
    *(a1 + 16) += 2;
    v7 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v7;
    *a2 = v4;
    *(a2 + 8) = 0;
    v8 = *(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    *(a2 + 32) = v8;
    *(a2 + 16) = *(a2 + 16) & 0xFFFFFFFE | *(a1 + 16) & 1;
    *(a1 + 16) &= ~1u;
    v9 = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v9;
  }

  *(a2 + 16) += 2;
LABEL_37:
  *v6 += 2;
  return a1;
}

uint64_t re::BucketArray<unsigned long,8ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 8 * v3)
  {
    re::BucketArray<unsigned long,8ul>::setBucketsCapacity(a1, (v2 + 8) >> 3);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 3));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 7);
}

uint64_t *re::BucketArray<unsigned long,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 64, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::internal::anonymous namespace::RegexTokenGroup::RegexTokenGroupState,64ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < a2 << 6)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 7680, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_22:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    ++*(v3 + 12);
  }

  return result;
}

uint64_t re::BucketArray<unsigned long,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<unsigned long,8ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<unsigned long,8ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 8 * (a2 & 7);
}

uint64_t re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>::BucketArrayIterator<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>&,re::BucketArray<re::BucketArray<re::internal::anonymous namespace::MatchStackItem,64ul>,8ul>&,true>::operator*(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 3)) + 56 * (a2 & 7);
}

uint64_t re::internal::anonymous namespace::RegexTokenCharacterRange::tryMatch(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if ((*(a2 + 16) - v2) < 1)
  {
    return 0;
  }

  v3 = *v2;
  if (v3 < *(a1 + 8) || v3 > *(a1 + 9))
  {
    return 0;
  }

  *(a2 + 24) = v2 + 1;
  return 1;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacterRange>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF140;
          v14 = *v11;
          v11 += 8;
          *(v13 + 4) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacterSet>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = 48 * v9;
        do
        {
          v12 = &v7[v10 / 8];
          v13 = v8 + v10;
          v12[5] = 0;
          *v12 = &unk_1F5CCF100;
          v12[1] = 0;
          v12[2] = 0;
          v12[3] = 0;
          *(v12 + 8) = 0;
          v14 = (v8 + v10 + 8);
          v15 = *(v8 + v10 + 16);
          v12[1] = *v14;
          *v14 = 0;
          v12[2] = v15;
          *(v13 + 16) = 0;
          v16 = v7[v10 / 8 + 3];
          v12[3] = *(v8 + v10 + 24);
          *(v13 + 24) = v16;
          v17 = v7[v10 / 8 + 5];
          v12[5] = *(v8 + v10 + 40);
          *(v13 + 40) = v17;
          *(v13 + 32) = *(v8 + v10 + 32) + 1;
          *(v12 + 8) = LODWORD(v7[v10 / 8 + 4]) + 1;
          *v13 = &unk_1F5CCF100;
          re::DynamicArray<unsigned long>::deinit(v14);
          v10 += 48;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::internal::anonymous namespace::RegexTokenMarker::tryMatch(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  switch(v4)
  {
    case 3:
      v7 = a2[2];
      v6 = a2[3];
      return v6 == v7;
    case 2:
      v6 = a2[3];
      v7 = a2[1];
      return v6 == v7;
    case 1:
      v5 = a2[3];
      if (v5 != a2[2])
      {
        a2[3] = v5 + 1;
        return 1;
      }

      return 0;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid token marker type.", "!Unreachable code", "tryMatch", 511, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenMarker>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF170;
          v14 = *v11;
          v11 += 16;
          *(v13 + 8) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t re::internal::anonymous namespace::RegexTokenEscapedCharacter::tryMatch(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = *(a1 + 8);
  if (v5 > 0x59)
  {
    if (*(a1 + 8) <= 0x72u)
    {
      if (v5 != 90)
      {
        if (v5 == 100)
        {
          if (v4 != v3 && *v3 - 48 <= 9)
          {
            goto LABEL_55;
          }

          return 0;
        }

        goto LABEL_47;
      }

      return v4 == v3;
    }

    if (v5 != 115)
    {
      if (v5 == 119)
      {
        if (v4 != v3)
        {
          v9 = *v3;
          v10 = v9 != 95 && (v9 - 48) >= 0xA;
          if (!v10 || (v9 & 0xFFFFFFDF) - 65 <= 0x19)
          {
            goto LABEL_55;
          }
        }

        return 0;
      }

      goto LABEL_47;
    }

    if (v4 == v3)
    {
      return 0;
    }

    v14 = *v3;
    if ((v14 & 0x80000000) != 0)
    {
      if (!__maskrune(v14, 0x4000uLL))
      {
        return 0;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x4000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) <= 0x52u)
    {
      if (v5 != 65)
      {
        if (v5 == 68)
        {
          if (v4 != v3 && *v3 - 58 <= 0xFFFFFFF5)
          {
            goto LABEL_55;
          }

          return 0;
        }

LABEL_47:
        if (v4 != v3 && v5 == *v3)
        {
          goto LABEL_55;
        }

        return 0;
      }

      v4 = a2[1];
      return v4 == v3;
    }

    if (v5 != 83)
    {
      if (v5 == 87)
      {
        if (v4 != v3)
        {
          v6 = *v3;
          v7 = v6 != 95 && (v6 - 48) >= 0xA;
          if (v7 && (v6 & 0xFFFFFFDF) - 65 >= 0x1A)
          {
            goto LABEL_55;
          }
        }

        return 0;
      }

      goto LABEL_47;
    }

    if (v4 == v3)
    {
      return 0;
    }

    v12 = *v3;
    if ((v12 & 0x80000000) != 0 ? __maskrune(v12, 0x4000uLL) : *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x4000)
    {
      return 0;
    }
  }

  v3 = a2[3];
LABEL_55:
  a2[3] = v3 + 1;
  return 1;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenEscapedCharacter>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF1A0;
          v14 = *v11;
          v11 += 16;
          *(v13 + 8) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

BOOL re::internal::anonymous namespace::RegexTokenCharacter::tryMatch(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 24);
  v4 = *v3;
  if (v2 == v4)
  {
    *(a2 + 24) = v3 + 1;
  }

  return v2 == v4;
}

void *re::DynamicArray<re::internal::anonymous namespace::RegexTokenCharacter>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 16 * v9;
        v11 = (v8 + 8);
        v12 = v7;
        v13 = v7;
        do
        {
          *v13 = &unk_1F5CCF1D0;
          v14 = *v11;
          v11 += 16;
          *(v13 + 8) = v14;
          v13 += 2;
          v12 += 2;
          v10 -= 16;
        }

        while (v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

uint64_t re::internal::anonymous namespace::RegexOperationList::matchFrom(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 > a2)
  {
    v20 = -a2;
    v9 = a2;
    do
    {
      if (*(a1 + 16) <= v9)
      {
        goto LABEL_22;
      }

      v10 = *a3;
      v11 = *(*(a1 + 32) + 8 * v9);
      if (*(*a3 + 296) <= v11)
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

      v12 = (v10[39] + 24 * v11);
      if (v10[32] <= *v12)
      {
        goto LABEL_24;
      }

      {
        ++v9;
      }

      else
      {
        v13 = v9 - 1;
        do
        {
          v14 = v13;
          v9 = v13 + 1;
          if (v13 + 1 <= a2)
          {
            break;
          }

          if (*(a1 + 16) <= v13)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_20:
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
            goto LABEL_23;
          }

          v15 = *a3;
          v16 = *(*(a1 + 32) + 8 * v14);
          if (*(*a3 + 296) <= v16)
          {
            goto LABEL_20;
          }

          v17 = (v15[39] + 24 * v16);
          if (v15[32] <= *v17)
          {
            goto LABEL_21;
          }

          v13 = v14 - 1;
        }

        while (!v18);
        if (v20 + v14 == -1)
        {
          return 0;
        }
      }
    }

    while (v9 < v4);
  }

  return 1;
}

uint64_t re::internal::anonymous namespace::RegexToken::unwindMatch(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v47 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  if (v9 <= 3)
  {
    switch(v9)
    {
      case 1u:
        v10 = *(a1 + 1);
        v11 = *(*a3 + 16);
        if (v11 > v10)
        {
          v12 = *(*a3 + 32);
          goto LABEL_44;
        }

        goto LABEL_63;
      case 2u:
        v10 = *(a1 + 1);
        v11 = *(*a3 + 56);
        if (v11 > v10)
        {
          v12 = *(*a3 + 72);
          goto LABEL_44;
        }

        goto LABEL_61;
      case 3u:
        v10 = *(a1 + 1);
        v11 = *(*a3 + 96);
        if (v11 > v10)
        {
          v12 = *(*a3 + 112);
LABEL_44:
          v13 = (v12 + 16 * v10);
          goto LABEL_45;
        }

        goto LABEL_59;
    }

LABEL_66:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid token type.", "!Unreachable code", "unwindMatch", 948);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (v9 == 4)
  {
    v10 = *(a1 + 1);
    v11 = *(*a3 + 216);
    if (v11 > v10)
    {
      v12 = *(*a3 + 232);
      goto LABEL_44;
    }

    goto LABEL_64;
  }

  if (v9 != 5)
  {
    if (v9 == 6)
    {
      v10 = *(a1 + 1);
      v11 = *(*a3 + 176);
      if (v11 > v10)
      {
        v13 = (*(*a3 + 192) + 48 * v10);
LABEL_45:
      }

      goto LABEL_60;
    }

    goto LABEL_66;
  }

  v10 = *(a1 + 1);
  v11 = *(*a3 + 136);
  if (v11 <= v10)
  {
LABEL_62:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v10;
    *&v32[8] = 2048;
    *&v32[10] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_63:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v10;
    *&v32[8] = 2048;
    *&v32[10] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_64:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v10;
    *&v32[8] = 2048;
    *&v32[10] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_65:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v14 = *(a4 + 40);
  if (!v14)
  {
    goto LABEL_65;
  }

  v15 = *(*a3 + 152) + 40 * v10;
  v17 = v16[1];
  v28 = *v16;
  v29 = v17;
  --*(a4 + 40);
  ++*(a4 + 48);
  v10 = v18;
  v19 = *(v15 + 16);
  v27 = v8;
  if (*v18)
  {
LABEL_25:
    v21 = *(v10 + 104);
    if (!v21 || v21 < *(v8 + 4))
    {
LABEL_39:
      result = 0;
      a3[3] = v29;
      return result;
    }

    v4 = 40;
    while (1)
    {
      v20 = *re::BucketArray<unsigned long,8ul>::operator[](v10 + 64, v21 - 1);
      v11 = *(v15 + 16);
      if (v11 <= v20)
      {
        goto LABEL_57;
      }

      v11 = *(*(v15 + 32) + 8 * v20);
      v5 = *(*a3 + 336);
      if (v5 <= v11)
      {
        goto LABEL_58;
      }

      {
        goto LABEL_50;
      }

      if (++v20 < v19)
      {
        break;
      }

LABEL_37:
      --*(v10 + 48);
      ++*(v10 + 56);
      re::BucketArray<unsigned long,8ul>::operator[](v10 + 64, *(v10 + 104) - 1);
      v23 = *(v10 + 104);
      ++*(v10 + 112);
      v21 = v23 - 1;
      *(v10 + 104) = v21;
      if (!v21 || v21 < *(v27 + 4))
      {
        goto LABEL_39;
      }
    }

    v26 = a3[3];
    while (1)
    {
      *v31 = 0;
      *&v31[8] = 0;
      *&v31[16] = 1;
      *&v32[12] = 0;
      v33 = 0;
      *&v32[4] = 0;
      v34 = 0;
      v11 = *(v15 + 16);
      if (v11 <= v20)
      {
        break;
      }

      v11 = *(*(v15 + 32) + 8 * v20);
      v5 = *(*a3 + 336);
      if (v5 <= v11)
      {
        goto LABEL_54;
      }

      {
        *re::BucketArray<unsigned long,8ul>::addUninitialized(v10 + 64) = v20;
        v25 = a3[3] - v26;
        *&v29 = v26;
        *(&v29 + 1) = v25;
        return 1;
      }

      if (v19 == ++v20)
      {
        goto LABEL_37;
      }
    }

    v30 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v35 = 136315906;
    *&v35[4] = "operator[]";
    v36 = 1024;
    v37 = 797;
    v38 = 2048;
    v39 = v20;
    v40 = 2048;
    v41 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_54:
    v30 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v35 = 136315906;
    *&v35[4] = "operator[]";
    v36 = 1024;
    v37 = 797;
    v38 = 2048;
    v39 = v11;
    v40 = 2048;
    v41 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_55:
    v30 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v35 = 136315906;
    *&v35[4] = "operator[]";
    v36 = 1024;
    v37 = 797;
    v38 = 2048;
    v39 = v20;
    v40 = 2048;
    v41 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v30 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v35 = 136315906;
    *&v35[4] = "operator[]";
    v36 = 1024;
    v37 = 797;
    v38 = 2048;
    v39 = v11;
    v40 = 2048;
    v41 = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_57:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v20;
    *&v32[8] = 2048;
    *&v32[10] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_58:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v11;
    *&v32[8] = 2048;
    *&v32[10] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_59:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v10;
    *&v32[8] = 2048;
    *&v32[10] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_60:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v10;
    *&v32[8] = 2048;
    *&v32[10] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_61:
    *v35 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v31 = 136315906;
    *&v31[4] = "operator[]";
    *&v31[12] = 1024;
    *&v31[14] = 797;
    *&v31[18] = 2048;
    *v32 = v10;
    *&v32[8] = 2048;
    *&v32[10] = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_62;
  }

  if (*(v18 + 104) >= *(v8 + 8) || !v19)
  {
LABEL_24:
    *v10 = 1;
    v8 = v27;
    goto LABEL_25;
  }

  v20 = 0;
  v5 = 40;
  while (1)
  {
    *v31 = 0;
    *&v31[8] = 0;
    *&v31[16] = 1;
    v33 = 0;
    *&v32[4] = 0uLL;
    v34 = 0;
    v11 = *(v15 + 16);
    if (v11 <= v20)
    {
      goto LABEL_55;
    }

    v11 = *(*(v15 + 32) + 8 * v20);
    v4 = *(*a3 + 336);
    if (v4 <= v11)
    {
      goto LABEL_56;
    }

    {
      break;
    }

    if (v19 == ++v20)
    {
      goto LABEL_24;
    }
  }

  *re::BucketArray<unsigned long,8ul>::addUninitialized(v10 + 64) = v20;
LABEL_50:
  *(&v29 + 1) = a3[3] - v29;
  return 1;
}