void physx::Ext::PrismaticJoint::~PrismaticJoint(physx::Ext::PrismaticJoint *this)
{
  if (physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::~Joint(this))
  {
    v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v1();
  }
}

BOOL physx::PxPrismaticJoint::isKindOf(physx::PxPrismaticJoint *this, const char *a2)
{
  if (!strcmp("PxPrismaticJoint", a2))
  {
    return 1;
  }

  return physx::PxJoint::isKindOf(this, a2);
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::setActors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 96) + 64))(*(a1 + 96));
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a2);
  v6 = v43;
  v7 = (*(a1 + 56) - v45) + (*(a1 + 56) - v45);
  v8 = (*(a1 + 60) - v46) + (*(a1 + 60) - v46);
  v9 = (*(a1 + 64) - v47) + (*(a1 + 64) - v47);
  v10 = (v44 * v44) + -0.5;
  v11 = (-(v42 * v8) - (v41 * v7)) - (v43 * v9);
  v12 = ((v44 * ((v43 * v8) - (v42 * v9))) + (v7 * v10)) - (v41 * v11);
  v13 = (v44 * ((v41 * v9) - (v43 * v7))) + (v8 * v10);
  v14 = (v44 * ((v42 * v7) - (v41 * v8))) + (v9 * v10);
  v16 = *(a1 + 48);
  v15 = *(a1 + 52);
  v17 = *(a1 + 40);
  v18 = *(a1 + 44);
  v19 = (((v44 * v18) - (v42 * v15)) - (v43 * v17)) + (v16 * v41);
  v20 = (((v44 * v16) - (v43 * v15)) - (v41 * v18)) + (v17 * v42);
  v21 = v13 - (v42 * v11);
  v22 = (((v41 * v17) + (v44 * v15)) + (v42 * v18)) + (v43 * v16);
  v23 = *(a1 + 104);
  v23[4] = (((v44 * v17) - (v41 * v15)) - (v42 * v16)) + (v18 * v43);
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v22;
  v23[8] = v12;
  v23[9] = v21;
  v23[10] = v14 - (v6 * v11);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a3);
  v24 = (*(a1 + 84) - v45) + (*(a1 + 84) - v45);
  v25 = (*(a1 + 88) - v46) + (*(a1 + 88) - v46);
  v26 = (*(a1 + 92) - v47) + (*(a1 + 92) - v47);
  v27 = (v44 * v44) + -0.5;
  v28 = (-(v42 * v25) - (v41 * v24)) - (v43 * v26);
  v29 = ((v44 * ((v43 * v25) - (v42 * v26))) + (v24 * v27)) - (v41 * v28);
  v30 = ((v44 * ((v41 * v26) - (v43 * v24))) + (v25 * v27)) - (v42 * v28);
  v31 = ((v44 * ((v42 * v24) - (v41 * v25))) + (v26 * v27)) - (v43 * v28);
  v33 = *(a1 + 76);
  v32 = *(a1 + 80);
  v34 = *(a1 + 68);
  v35 = *(a1 + 72);
  v36 = (((v44 * v35) - (v42 * v32)) - (v43 * v34)) + (v33 * v41);
  v37 = (((v44 * v33) - (v43 * v32)) - (v41 * v35)) + (v34 * v42);
  v38 = (((v41 * v34) + (v44 * v32)) + (v42 * v35)) + (v43 * v33);
  v39 = *(a1 + 104);
  v39[11] = (((v44 * v34) - (v41 * v32)) - (v42 * v33)) + (v35 * v43);
  v39[12] = v36;
  v39[13] = v37;
  v39[14] = v38;
  v39[15] = v29;
  v39[16] = v30;
  v39[17] = v31;
  return (*(**(a1 + 96) + 72))(*(a1 + 96));
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::getActors(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 56))();
  }

  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::setLocalPose(uint64_t a1, unsigned int a2, float *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = sqrtf((((v5 * v5) + (*a3 * *a3)) + (v6 * v6)) + (v7 * v7));
  v9 = *a3 / v8;
  v10 = v5 / v8;
  v11 = v6 / v8;
  v12 = v7 / v8;
  v13 = a3[4];
  v14 = a3[5];
  v15 = a3[6];
  v16 = 28 * a2;
  v17 = (a1 + v16);
  v17[10] = v9;
  v17[11] = v5 / v8;
  v17[12] = v6 / v8;
  v17[13] = v7 / v8;
  v17[14] = v13;
  v17[15] = v14;
  v17[16] = v15;
  v39 = 0;
  v40[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v39, v40);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v40[a2 - 1]);
  v18 = (v13 - v36) + (v13 - v36);
  v19 = (v14 - v37) + (v14 - v37);
  v20 = (v15 - v38) + (v15 - v38);
  v21 = (v35 * v35) + -0.5;
  v22 = (-(v33 * v19) - (v32 * v18)) - (v34 * v20);
  v23 = ((v35 * ((v34 * v19) - (v33 * v20))) + (v18 * v21)) - (v32 * v22);
  v24 = ((v35 * ((v32 * v20) - (v34 * v18))) + (v19 * v21)) - (v33 * v22);
  v25 = ((v35 * ((v33 * v18) - (v32 * v19))) + (v20 * v21)) - (v34 * v22);
  v26 = (((v35 * v10) - (v33 * v12)) - (v34 * v9)) + (v11 * v32);
  v27 = (((v35 * v11) - (v34 * v12)) - (v32 * v10)) + (v9 * v33);
  v28 = (((v9 * v32) + (v35 * v12)) + (v33 * v10)) + (v34 * v11);
  v29 = *(a1 + 96);
  v30 = (*(a1 + 104) + v16);
  v30[4] = (((v35 * v9) - (v32 * v12)) - (v33 * v11)) + (v10 * v34);
  v30[5] = v26;
  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v23;
  v30[9] = v24;
  v30[10] = v25;
  return (*(*v29 + 72))(v29);
}

float physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::getLocalPose@<S0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 28 * a2;
  *a3 = *(v3 + 40);
  *(a3 + 16) = *(v3 + 56);
  result = *(v3 + 64);
  *(a3 + 24) = result;
  return result;
}

float physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::getRelativeTransform@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v72 = 0;
  v73 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v73, &v72);
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 1.0;
  if (v73)
  {
    (*(*v73 + 152))(&v66);
    v5 = 0.0;
    v4 = 1.0;
    v10 = *(&v66 + 1);
    v11 = *&v66;
    v9 = v67;
    v12 = v68;
    v8 = v69;
    v7 = v70;
    v6 = v71;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 44);
  v23 = 0.0;
  v24 = 0.0;
  if (v72)
  {
    v64 = v7;
    v65 = v8;
    v62 = *(a1 + 56);
    v63 = v6;
    v60 = *(a1 + 64);
    v61 = *(a1 + 60);
    (*(*v72 + 152))(&v66);
    v15 = v60;
    v14 = v61;
    v13 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v23 = *(&v66 + 1);
    v24 = *&v66;
    v20 = v67;
    v4 = v68;
    v19 = v69;
    v18 = v70;
    v5 = v71;
  }

  v25 = (((v12 * v17) - (v11 * v21)) - (v10 * v22)) - (v9 * v16);
  v26 = (((v9 * v17) + (v12 * v16)) + (v11 * v22)) - (v21 * v10);
  v27 = (((v10 * v17) + (v12 * v22)) + (v9 * v21)) - (v16 * v11);
  v28 = (((v11 * v17) + (v12 * v21)) + (v10 * v16)) - (v22 * v9);
  v29 = v15 + v15;
  v30 = v14 + v14;
  v31 = ((v10 * (v14 + v14)) + (v11 * (v13 + v13))) + (v9 * v29);
  v32 = (v12 * v12) + -0.5;
  v33 = v6 + (((v12 * ((v11 * (v14 + v14)) - (v10 * (v13 + v13)))) + (v29 * v32)) + (v9 * v31));
  v34 = v7 + (((v12 * ((v9 * (v13 + v13)) - (v11 * v29))) + (v30 * v32)) + (v10 * v31));
  v35 = v8 + (((v12 * ((v10 * v29) - (v9 * v30))) + ((v13 + v13) * v32)) + (v11 * v31));
  v36 = *(a1 + 84) + *(a1 + 84);
  v37 = *(a1 + 88) + *(a1 + 88);
  v38 = *(a1 + 92) + *(a1 + 92);
  v39 = (v4 * v4) + -0.5;
  v40 = ((v23 * v37) + (v24 * v36)) + (v20 * v38);
  v41 = v19 + (((v4 * ((v23 * v38) - (v20 * v37))) + (v36 * v39)) + (v24 * v40));
  v42 = v18 + (((v4 * ((v20 * v36) - (v24 * v38))) + (v37 * v39)) + (v23 * v40));
  v43 = v5 + (((v4 * ((v24 * v37) - (v23 * v36))) + (v38 * v39)) + (v20 * v40));
  v45 = *(a1 + 76);
  v44 = *(a1 + 80);
  v46 = *(a1 + 68);
  v47 = *(a1 + 72);
  v48 = (((v24 * v44) + (v4 * v46)) + (v23 * v45)) - (v47 * v20);
  v49 = (((v23 * v44) + (v4 * v47)) + (v20 * v46)) - (v45 * v24);
  v50 = (((v20 * v44) + (v4 * v45)) + (v24 * v47)) - (v46 * v23);
  v51 = (((v4 * v44) - (v24 * v46)) - (v23 * v47)) - (v20 * v45);
  v52 = (v41 - v35) + (v41 - v35);
  v53 = (v42 - v34) + (v42 - v34);
  v54 = (v43 - v33) + (v43 - v33);
  v55 = (v25 * v25) + -0.5;
  v56 = (-(v27 * v53) - (v28 * v52)) - (v26 * v54);
  v57 = ((v25 * ((v26 * v53) - (v27 * v54))) + (v52 * v55)) - (v28 * v56);
  v58 = ((v25 * ((v28 * v54) - (v26 * v52))) + (v53 * v55)) - (v27 * v56);
  *a2 = (((v25 * v48) - (v28 * v51)) - (v27 * v50)) + (v49 * v26);
  a2[1] = (((v25 * v49) - (v27 * v51)) - (v26 * v48)) + (v50 * v28);
  a2[2] = (((v25 * v50) - (v26 * v51)) - (v28 * v49)) + (v48 * v27);
  a2[3] = (((v28 * v48) + (v25 * v51)) + (v27 * v49)) + (v26 * v50);
  result = ((v25 * ((v27 * v52) - (v28 * v53))) + (v54 * v55)) - (v26 * v56);
  a2[4] = v57;
  a2[5] = v58;
  a2[6] = result;
  return result;
}

float physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::getRelativeLinearVelocity@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v51 = 0;
  v52 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v52, &v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v36, v52);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v52, v50, &v47);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v51, v46, &v43);
  v4 = *(a1 + 56) + *(a1 + 56);
  v5 = *(a1 + 60) + *(a1 + 60);
  v6 = *(a1 + 64) + *(a1 + 64);
  v7 = (v39 * v39) + -0.5;
  v8 = ((v5 * v37) + (v36 * v4)) + (v38 * v6);
  v9 = ((v39 * ((v37 * v6) - (v38 * v5))) + (v4 * v7)) + (v36 * v8);
  v10 = ((v39 * ((v38 * v4) - (v36 * v6))) + (v5 * v7)) + (v37 * v8);
  v11 = ((v39 * ((v36 * v5) - (v37 * v4))) + (v6 * v7)) + (v38 * v8);
  v12 = *(a1 + 84) + *(a1 + 84);
  v13 = *(a1 + 88) + *(a1 + 88);
  v14 = *(a1 + 92) + *(a1 + 92);
  v15 = (v35 * v35) + -0.5;
  v16 = ((v13 * v33) + (v32 * v12)) + (v34 * v14);
  v17 = ((v35 * ((v33 * v14) - (v34 * v13))) + (v12 * v15)) + (v32 * v16);
  v18 = ((v35 * ((v34 * v12) - (v32 * v14))) + (v13 * v15)) + (v33 * v16);
  v19 = ((v35 * ((v32 * v13) - (v33 * v12))) + (v14 * v15)) + (v34 * v16);
  v20 = (v48 * v11) - (v49 * v10);
  v21 = (v49 * v9) - (v47 * v11);
  v22 = (v47 * v10) - (v48 * v9);
  v23 = (((v46[0] - ((v44 * v19) - (v45 * v18))) - v50[0]) + v20) - v40;
  v24 = (((v46[1] - ((v45 * v17) - (v43 * v19))) - v50[1]) + v21) - v41;
  v25 = (((v46[2] - ((v43 * v18) - (v44 * v17))) - v50[2]) + v22) - v42;
  v26 = v23 + v23;
  v27 = v24 + v24;
  v28 = v25 + v25;
  v29 = ((v37 * v27) + (v36 * v26)) + (v38 * v28);
  v30 = ((v27 * v7) - (((v38 * v26) - (v36 * v28)) * v39)) + (v37 * v29);
  result = ((v28 * v7) - (((v36 * v27) - (v37 * v26)) * v39)) + (v38 * v29);
  *a2 = ((v26 * v7) - (((v37 * v28) - (v38 * v27)) * v39)) + (v36 * v29);
  a2[1] = v30;
  a2[2] = result;
  return result;
}

float32_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::getRelativeAngularVelocity@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  v21 = 0;
  v22 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v22, &v21);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(v11, v22);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v22, v20, &v18);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v21, v17, &v15);
  v3 = ((v16 - v19) - v14) + ((v16 - v19) - v14);
  v4.i32[0] = *&v11[8];
  v5 = (v12 * v12) + -0.5;
  v6 = vsub_f32(vsub_f32(v15, v18), v13);
  v7 = vadd_f32(v6, v6);
  v8 = (vmuls_lane_f32(v7.f32[1], *v11, 1) + (*v11 * v7.f32[0])) + (*&v11[8] * v3);
  v9.i32[0] = vdup_lane_s32(v7, 1).u32[0];
  v9.f32[1] = v3;
  result = ((v3 * v5) - (((-*&v11[4] * v7.f32[0]) + (*v11 * v7.f32[1])) * v12)) + (*&v11[8] * v8);
  *a2 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v9, vneg_f32(vzip1_s32(v4, *v11))), vext_s8(v9, v7, 4uLL), *&v11[4])), v12), v7, v5), *v11, v8);
  a2[1].f32[0] = result;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::setConstraintFlags(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 96);
  v4 = *a2;
  return (*(*v2 + 80))(v2, &v4);
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::setInvMassScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  **(v2 + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::setInvInertiaScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 4) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::setInvMassScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::setInvInertiaScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 12) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::getScene(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::requiresObjects(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(a1 + 96));
  v5 = 0;
  v6 = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v6, &v5);
  if (v6)
  {
    result = (*(*a2 + 16))(a2);
  }

  if (v5)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::onComShift(uint64_t a1, unsigned int a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v30, v31);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v23, v31[a2 - 1]);
  v4 = 28 * a2;
  v5 = (*(a1 + v4 + 56) - v27) + (*(a1 + v4 + 56) - v27);
  v6 = (*(a1 + v4 + 60) - v28) + (*(a1 + v4 + 60) - v28);
  v7 = (*(a1 + v4 + 64) - v29) + (*(a1 + v4 + 64) - v29);
  v8 = (v26 * v26) + -0.5;
  v9 = (-(v24 * v6) - (v23 * v5)) - (v25 * v7);
  v10 = ((v26 * ((v25 * v6) - (v24 * v7))) + (v5 * v8)) - (v23 * v9);
  v11 = ((v26 * ((v23 * v7) - (v25 * v5))) + (v6 * v8)) - (v24 * v9);
  v12 = ((v26 * ((v24 * v5) - (v23 * v6))) + (v7 * v8)) - (v25 * v9);
  v14 = *(a1 + v4 + 48);
  v13 = *(a1 + v4 + 52);
  v15 = *(a1 + v4 + 40);
  v16 = *(a1 + v4 + 44);
  v17 = (((v26 * v16) - (v24 * v13)) - (v25 * v15)) + (v14 * v23);
  v18 = (((v26 * v14) - (v25 * v13)) - (v23 * v16)) + (v15 * v24);
  v19 = (((v23 * v15) + (v26 * v13)) + (v24 * v16)) + (v25 * v14);
  v20 = *(a1 + 96);
  v21 = (*(a1 + 104) + v4);
  v21[4] = (((v26 * v15) - (v23 * v13)) - (v24 * v14)) + (v16 * v25);
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v10;
  v21[9] = v11;
  v21[10] = v12;
  return (*(*v20 + 72))(v20);
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::onOriginShift(uint64_t a1, float *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v15, v16);
  if (v15)
  {
    if (v16[0])
    {
      return result;
    }

    v5 = 68;
    v6 = 64;
    v7 = 60;
    v8 = 92;
    v9 = 88;
    v10 = 84;
  }

  else
  {
    v5 = 40;
    v6 = 36;
    v7 = 32;
    v8 = 64;
    v9 = 60;
    v10 = 56;
  }

  v11 = a2[1];
  *(a1 + v10) = *(a1 + v10) - *a2;
  *(a1 + v9) = *(a1 + v9) - v11;
  *(a1 + v8) = *(a1 + v8) - a2[2];
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = a2[1];
  *(v13 + v7) = *(v13 + v7) - *a2;
  *(v13 + v6) = *(v13 + v6) - v14;
  *(v13 + v5) = *(v13 + v5) - a2[2];
  return (*(*v12 + 72))(v12);
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::onConstraintRelease(void *a1)
{
  if (a1[13])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a1[13] = 0;
  v2 = *(*a1 + 32);

  return v2(a1);
}

uint64_t non-virtual thunk tophysx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::getExternalReference(uint64_t a1, _DWORD *a2)
{
  result = a1 - 24;
  *a2 = 0;
  return result;
}

void non-virtual thunk tophysx::Ext::PrismaticJoint::~PrismaticJoint(physx::Ext::PrismaticJoint *this)
{
  physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::~Joint(this - 24);
}

{
  physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::~Joint(this - 24);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

void physx::Ext::RevoluteJoint::~RevoluteJoint(physx::Ext::RevoluteJoint *this)
{
  if (physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::~Joint(this))
  {
    v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v1();
  }
}

BOOL physx::PxRevoluteJoint::isKindOf(physx::PxRevoluteJoint *this, const char *a2)
{
  if (!strcmp("PxRevoluteJoint", a2))
  {
    return 1;
  }

  return physx::PxJoint::isKindOf(this, a2);
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::setActors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 96) + 64))(*(a1 + 96));
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a2);
  v6 = v43;
  v7 = (*(a1 + 56) - v45) + (*(a1 + 56) - v45);
  v8 = (*(a1 + 60) - v46) + (*(a1 + 60) - v46);
  v9 = (*(a1 + 64) - v47) + (*(a1 + 64) - v47);
  v10 = (v44 * v44) + -0.5;
  v11 = (-(v42 * v8) - (v41 * v7)) - (v43 * v9);
  v12 = ((v44 * ((v43 * v8) - (v42 * v9))) + (v7 * v10)) - (v41 * v11);
  v13 = (v44 * ((v41 * v9) - (v43 * v7))) + (v8 * v10);
  v14 = (v44 * ((v42 * v7) - (v41 * v8))) + (v9 * v10);
  v16 = *(a1 + 48);
  v15 = *(a1 + 52);
  v17 = *(a1 + 40);
  v18 = *(a1 + 44);
  v19 = (((v44 * v18) - (v42 * v15)) - (v43 * v17)) + (v16 * v41);
  v20 = (((v44 * v16) - (v43 * v15)) - (v41 * v18)) + (v17 * v42);
  v21 = v13 - (v42 * v11);
  v22 = (((v41 * v17) + (v44 * v15)) + (v42 * v18)) + (v43 * v16);
  v23 = *(a1 + 104);
  v23[4] = (((v44 * v17) - (v41 * v15)) - (v42 * v16)) + (v18 * v43);
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v22;
  v23[8] = v12;
  v23[9] = v21;
  v23[10] = v14 - (v6 * v11);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a3);
  v24 = (*(a1 + 84) - v45) + (*(a1 + 84) - v45);
  v25 = (*(a1 + 88) - v46) + (*(a1 + 88) - v46);
  v26 = (*(a1 + 92) - v47) + (*(a1 + 92) - v47);
  v27 = (v44 * v44) + -0.5;
  v28 = (-(v42 * v25) - (v41 * v24)) - (v43 * v26);
  v29 = ((v44 * ((v43 * v25) - (v42 * v26))) + (v24 * v27)) - (v41 * v28);
  v30 = ((v44 * ((v41 * v26) - (v43 * v24))) + (v25 * v27)) - (v42 * v28);
  v31 = ((v44 * ((v42 * v24) - (v41 * v25))) + (v26 * v27)) - (v43 * v28);
  v33 = *(a1 + 76);
  v32 = *(a1 + 80);
  v34 = *(a1 + 68);
  v35 = *(a1 + 72);
  v36 = (((v44 * v35) - (v42 * v32)) - (v43 * v34)) + (v33 * v41);
  v37 = (((v44 * v33) - (v43 * v32)) - (v41 * v35)) + (v34 * v42);
  v38 = (((v41 * v34) + (v44 * v32)) + (v42 * v35)) + (v43 * v33);
  v39 = *(a1 + 104);
  v39[11] = (((v44 * v34) - (v41 * v32)) - (v42 * v33)) + (v35 * v43);
  v39[12] = v36;
  v39[13] = v37;
  v39[14] = v38;
  v39[15] = v29;
  v39[16] = v30;
  v39[17] = v31;
  return (*(**(a1 + 96) + 72))(*(a1 + 96));
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::getActors(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 56))();
  }

  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::setLocalPose(uint64_t a1, unsigned int a2, float *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = sqrtf((((v5 * v5) + (*a3 * *a3)) + (v6 * v6)) + (v7 * v7));
  v9 = *a3 / v8;
  v10 = v5 / v8;
  v11 = v6 / v8;
  v12 = v7 / v8;
  v13 = a3[4];
  v14 = a3[5];
  v15 = a3[6];
  v16 = 28 * a2;
  v17 = (a1 + v16);
  v17[10] = v9;
  v17[11] = v5 / v8;
  v17[12] = v6 / v8;
  v17[13] = v7 / v8;
  v17[14] = v13;
  v17[15] = v14;
  v17[16] = v15;
  v39 = 0;
  v40[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v39, v40);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v40[a2 - 1]);
  v18 = (v13 - v36) + (v13 - v36);
  v19 = (v14 - v37) + (v14 - v37);
  v20 = (v15 - v38) + (v15 - v38);
  v21 = (v35 * v35) + -0.5;
  v22 = (-(v33 * v19) - (v32 * v18)) - (v34 * v20);
  v23 = ((v35 * ((v34 * v19) - (v33 * v20))) + (v18 * v21)) - (v32 * v22);
  v24 = ((v35 * ((v32 * v20) - (v34 * v18))) + (v19 * v21)) - (v33 * v22);
  v25 = ((v35 * ((v33 * v18) - (v32 * v19))) + (v20 * v21)) - (v34 * v22);
  v26 = (((v35 * v10) - (v33 * v12)) - (v34 * v9)) + (v11 * v32);
  v27 = (((v35 * v11) - (v34 * v12)) - (v32 * v10)) + (v9 * v33);
  v28 = (((v9 * v32) + (v35 * v12)) + (v33 * v10)) + (v34 * v11);
  v29 = *(a1 + 96);
  v30 = (*(a1 + 104) + v16);
  v30[4] = (((v35 * v9) - (v32 * v12)) - (v33 * v11)) + (v10 * v34);
  v30[5] = v26;
  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v23;
  v30[9] = v24;
  v30[10] = v25;
  return (*(*v29 + 72))(v29);
}

float physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::getLocalPose@<S0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 28 * a2;
  *a3 = *(v3 + 40);
  *(a3 + 16) = *(v3 + 56);
  result = *(v3 + 64);
  *(a3 + 24) = result;
  return result;
}

float physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::getRelativeTransform@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v72 = 0;
  v73 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v73, &v72);
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 1.0;
  if (v73)
  {
    (*(*v73 + 152))(&v66);
    v5 = 0.0;
    v4 = 1.0;
    v10 = *(&v66 + 1);
    v11 = *&v66;
    v9 = v67;
    v12 = v68;
    v8 = v69;
    v7 = v70;
    v6 = v71;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 44);
  v23 = 0.0;
  v24 = 0.0;
  if (v72)
  {
    v64 = v7;
    v65 = v8;
    v62 = *(a1 + 56);
    v63 = v6;
    v60 = *(a1 + 64);
    v61 = *(a1 + 60);
    (*(*v72 + 152))(&v66);
    v15 = v60;
    v14 = v61;
    v13 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v23 = *(&v66 + 1);
    v24 = *&v66;
    v20 = v67;
    v4 = v68;
    v19 = v69;
    v18 = v70;
    v5 = v71;
  }

  v25 = (((v12 * v17) - (v11 * v21)) - (v10 * v22)) - (v9 * v16);
  v26 = (((v9 * v17) + (v12 * v16)) + (v11 * v22)) - (v21 * v10);
  v27 = (((v10 * v17) + (v12 * v22)) + (v9 * v21)) - (v16 * v11);
  v28 = (((v11 * v17) + (v12 * v21)) + (v10 * v16)) - (v22 * v9);
  v29 = v15 + v15;
  v30 = v14 + v14;
  v31 = ((v10 * (v14 + v14)) + (v11 * (v13 + v13))) + (v9 * v29);
  v32 = (v12 * v12) + -0.5;
  v33 = v6 + (((v12 * ((v11 * (v14 + v14)) - (v10 * (v13 + v13)))) + (v29 * v32)) + (v9 * v31));
  v34 = v7 + (((v12 * ((v9 * (v13 + v13)) - (v11 * v29))) + (v30 * v32)) + (v10 * v31));
  v35 = v8 + (((v12 * ((v10 * v29) - (v9 * v30))) + ((v13 + v13) * v32)) + (v11 * v31));
  v36 = *(a1 + 84) + *(a1 + 84);
  v37 = *(a1 + 88) + *(a1 + 88);
  v38 = *(a1 + 92) + *(a1 + 92);
  v39 = (v4 * v4) + -0.5;
  v40 = ((v23 * v37) + (v24 * v36)) + (v20 * v38);
  v41 = v19 + (((v4 * ((v23 * v38) - (v20 * v37))) + (v36 * v39)) + (v24 * v40));
  v42 = v18 + (((v4 * ((v20 * v36) - (v24 * v38))) + (v37 * v39)) + (v23 * v40));
  v43 = v5 + (((v4 * ((v24 * v37) - (v23 * v36))) + (v38 * v39)) + (v20 * v40));
  v45 = *(a1 + 76);
  v44 = *(a1 + 80);
  v46 = *(a1 + 68);
  v47 = *(a1 + 72);
  v48 = (((v24 * v44) + (v4 * v46)) + (v23 * v45)) - (v47 * v20);
  v49 = (((v23 * v44) + (v4 * v47)) + (v20 * v46)) - (v45 * v24);
  v50 = (((v20 * v44) + (v4 * v45)) + (v24 * v47)) - (v46 * v23);
  v51 = (((v4 * v44) - (v24 * v46)) - (v23 * v47)) - (v20 * v45);
  v52 = (v41 - v35) + (v41 - v35);
  v53 = (v42 - v34) + (v42 - v34);
  v54 = (v43 - v33) + (v43 - v33);
  v55 = (v25 * v25) + -0.5;
  v56 = (-(v27 * v53) - (v28 * v52)) - (v26 * v54);
  v57 = ((v25 * ((v26 * v53) - (v27 * v54))) + (v52 * v55)) - (v28 * v56);
  v58 = ((v25 * ((v28 * v54) - (v26 * v52))) + (v53 * v55)) - (v27 * v56);
  *a2 = (((v25 * v48) - (v28 * v51)) - (v27 * v50)) + (v49 * v26);
  a2[1] = (((v25 * v49) - (v27 * v51)) - (v26 * v48)) + (v50 * v28);
  a2[2] = (((v25 * v50) - (v26 * v51)) - (v28 * v49)) + (v48 * v27);
  a2[3] = (((v28 * v48) + (v25 * v51)) + (v27 * v49)) + (v26 * v50);
  result = ((v25 * ((v27 * v52) - (v28 * v53))) + (v54 * v55)) - (v26 * v56);
  a2[4] = v57;
  a2[5] = v58;
  a2[6] = result;
  return result;
}

float physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::getRelativeLinearVelocity@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v51 = 0;
  v52 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v52, &v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v36, v52);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v52, v50, &v47);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v51, v46, &v43);
  v4 = *(a1 + 56) + *(a1 + 56);
  v5 = *(a1 + 60) + *(a1 + 60);
  v6 = *(a1 + 64) + *(a1 + 64);
  v7 = (v39 * v39) + -0.5;
  v8 = ((v5 * v37) + (v36 * v4)) + (v38 * v6);
  v9 = ((v39 * ((v37 * v6) - (v38 * v5))) + (v4 * v7)) + (v36 * v8);
  v10 = ((v39 * ((v38 * v4) - (v36 * v6))) + (v5 * v7)) + (v37 * v8);
  v11 = ((v39 * ((v36 * v5) - (v37 * v4))) + (v6 * v7)) + (v38 * v8);
  v12 = *(a1 + 84) + *(a1 + 84);
  v13 = *(a1 + 88) + *(a1 + 88);
  v14 = *(a1 + 92) + *(a1 + 92);
  v15 = (v35 * v35) + -0.5;
  v16 = ((v13 * v33) + (v32 * v12)) + (v34 * v14);
  v17 = ((v35 * ((v33 * v14) - (v34 * v13))) + (v12 * v15)) + (v32 * v16);
  v18 = ((v35 * ((v34 * v12) - (v32 * v14))) + (v13 * v15)) + (v33 * v16);
  v19 = ((v35 * ((v32 * v13) - (v33 * v12))) + (v14 * v15)) + (v34 * v16);
  v20 = (v48 * v11) - (v49 * v10);
  v21 = (v49 * v9) - (v47 * v11);
  v22 = (v47 * v10) - (v48 * v9);
  v23 = (((v46[0] - ((v44 * v19) - (v45 * v18))) - v50[0]) + v20) - v40;
  v24 = (((v46[1] - ((v45 * v17) - (v43 * v19))) - v50[1]) + v21) - v41;
  v25 = (((v46[2] - ((v43 * v18) - (v44 * v17))) - v50[2]) + v22) - v42;
  v26 = v23 + v23;
  v27 = v24 + v24;
  v28 = v25 + v25;
  v29 = ((v37 * v27) + (v36 * v26)) + (v38 * v28);
  v30 = ((v27 * v7) - (((v38 * v26) - (v36 * v28)) * v39)) + (v37 * v29);
  result = ((v28 * v7) - (((v36 * v27) - (v37 * v26)) * v39)) + (v38 * v29);
  *a2 = ((v26 * v7) - (((v37 * v28) - (v38 * v27)) * v39)) + (v36 * v29);
  a2[1] = v30;
  a2[2] = result;
  return result;
}

float32_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::getRelativeAngularVelocity@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  v21 = 0;
  v22 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v22, &v21);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(v11, v22);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v22, v20, &v18);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v21, v17, &v15);
  v3 = ((v16 - v19) - v14) + ((v16 - v19) - v14);
  v4.i32[0] = *&v11[8];
  v5 = (v12 * v12) + -0.5;
  v6 = vsub_f32(vsub_f32(v15, v18), v13);
  v7 = vadd_f32(v6, v6);
  v8 = (vmuls_lane_f32(v7.f32[1], *v11, 1) + (*v11 * v7.f32[0])) + (*&v11[8] * v3);
  v9.i32[0] = vdup_lane_s32(v7, 1).u32[0];
  v9.f32[1] = v3;
  result = ((v3 * v5) - (((-*&v11[4] * v7.f32[0]) + (*v11 * v7.f32[1])) * v12)) + (*&v11[8] * v8);
  *a2 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v9, vneg_f32(vzip1_s32(v4, *v11))), vext_s8(v9, v7, 4uLL), *&v11[4])), v12), v7, v5), *v11, v8);
  a2[1].f32[0] = result;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::setConstraintFlags(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 96);
  v4 = *a2;
  return (*(*v2 + 80))(v2, &v4);
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::setInvMassScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  **(v2 + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::setInvInertiaScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 4) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::setInvMassScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::setInvInertiaScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 12) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::getScene(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::requiresObjects(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(a1 + 96));
  v5 = 0;
  v6 = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v6, &v5);
  if (v6)
  {
    result = (*(*a2 + 16))(a2);
  }

  if (v5)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::onComShift(uint64_t a1, unsigned int a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v30, v31);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v23, v31[a2 - 1]);
  v4 = 28 * a2;
  v5 = (*(a1 + v4 + 56) - v27) + (*(a1 + v4 + 56) - v27);
  v6 = (*(a1 + v4 + 60) - v28) + (*(a1 + v4 + 60) - v28);
  v7 = (*(a1 + v4 + 64) - v29) + (*(a1 + v4 + 64) - v29);
  v8 = (v26 * v26) + -0.5;
  v9 = (-(v24 * v6) - (v23 * v5)) - (v25 * v7);
  v10 = ((v26 * ((v25 * v6) - (v24 * v7))) + (v5 * v8)) - (v23 * v9);
  v11 = ((v26 * ((v23 * v7) - (v25 * v5))) + (v6 * v8)) - (v24 * v9);
  v12 = ((v26 * ((v24 * v5) - (v23 * v6))) + (v7 * v8)) - (v25 * v9);
  v14 = *(a1 + v4 + 48);
  v13 = *(a1 + v4 + 52);
  v15 = *(a1 + v4 + 40);
  v16 = *(a1 + v4 + 44);
  v17 = (((v26 * v16) - (v24 * v13)) - (v25 * v15)) + (v14 * v23);
  v18 = (((v26 * v14) - (v25 * v13)) - (v23 * v16)) + (v15 * v24);
  v19 = (((v23 * v15) + (v26 * v13)) + (v24 * v16)) + (v25 * v14);
  v20 = *(a1 + 96);
  v21 = (*(a1 + 104) + v4);
  v21[4] = (((v26 * v15) - (v23 * v13)) - (v24 * v14)) + (v16 * v25);
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v10;
  v21[9] = v11;
  v21[10] = v12;
  return (*(*v20 + 72))(v20);
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::onOriginShift(uint64_t a1, float *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v15, v16);
  if (v15)
  {
    if (v16[0])
    {
      return result;
    }

    v5 = 68;
    v6 = 64;
    v7 = 60;
    v8 = 92;
    v9 = 88;
    v10 = 84;
  }

  else
  {
    v5 = 40;
    v6 = 36;
    v7 = 32;
    v8 = 64;
    v9 = 60;
    v10 = 56;
  }

  v11 = a2[1];
  *(a1 + v10) = *(a1 + v10) - *a2;
  *(a1 + v9) = *(a1 + v9) - v11;
  *(a1 + v8) = *(a1 + v8) - a2[2];
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = a2[1];
  *(v13 + v7) = *(v13 + v7) - *a2;
  *(v13 + v6) = *(v13 + v6) - v14;
  *(v13 + v5) = *(v13 + v5) - a2[2];
  return (*(*v12 + 72))(v12);
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::onConstraintRelease(void *a1)
{
  if (a1[13])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a1[13] = 0;
  v2 = *(*a1 + 32);

  return v2(a1);
}

uint64_t non-virtual thunk tophysx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::getExternalReference(uint64_t a1, _DWORD *a2)
{
  result = a1 - 24;
  *a2 = 0;
  return result;
}

void non-virtual thunk tophysx::Ext::RevoluteJoint::~RevoluteJoint(physx::Ext::RevoluteJoint *this)
{
  physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::~Joint(this - 24);
}

{
  physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::~Joint(this - 24);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

double physx::Ext::PrismaticJoint::PrismaticJoint(uint64_t a1, float *a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v12 = 3;
  v7 = physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::Joint(a1, 258, &v12, a3, a4, a5, a6, 0x80u);
  *v7 = &unk_1F5D28D68;
  v7[3] = &unk_1F5D28F20;
  v8 = v7[13];
  v9 = fminf(*a2 * 0.01, 1.1116e38);
  v10 = *a2 + *a2;
  *(v8 + 80) = 0;
  *(v8 + 84) = v10;
  *(v8 + 88) = 0;
  *(v8 + 96) = v9;
  result = -1.428678e302;
  *(v8 + 100) = xmmword_1E3118C40;
  *(v8 + 116) = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::Joint(uint64_t a1, __int16 a2, __int16 *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, float32x4_t *a7, unsigned int a8)
{
  v13 = *a3;
  *(a1 + 8) = a2;
  *(a1 + 10) = v13;
  *a1 = &unk_1F5D292C8;
  *(a1 + 24) = &unk_1F5D29470;
  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0;
  if (a8)
  {
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtJoint.h", 454);
  }

  else
  {
    v14 = 0;
  }

  v15 = a5[1].i32[2];
  _Q1 = *a5;
  _Q2 = vmulq_f32(_Q1, _Q1);
  _S3 = a5->i64[1];
  __asm { FMLA            S2, S3, V1.S[2] }

  _S3 = HIDWORD(*a5);
  __asm { FMLA            S2, S3, V1.S[3] }

  _Q2.f32[0] = sqrtf(_Q2.f32[0]);
  v24 = vdivq_f32(*a5, vdupq_lane_s32(*_Q2.f32, 0));
  _Q2.i64[0] = a5[1].i64[0];
  *(a1 + 40) = v24;
  *(a1 + 56) = _Q2.i64[0];
  *(a1 + 64) = v15;
  _Q0 = *a7;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _Q2.i32[0] = a7->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q2.i32[0] = HIDWORD(*a7);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  _Q2.i32[0] = a7[1].i32[2];
  v27 = a7[1].i64[0];
  *(a1 + 68) = vdivq_f32(*a7, vdupq_lane_s32(*_Q1.f32, 0));
  *(a1 + 84) = v27;
  *(a1 + 92) = _Q2.i32[0];
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a4);
  v28 = v63;
  v29 = (a5[1].f32[0] - v65) + (a5[1].f32[0] - v65);
  v30 = (a5[1].f32[1] - v66) + (a5[1].f32[1] - v66);
  v31 = (a5[1].f32[2] - v67) + (a5[1].f32[2] - v67);
  v32 = (v64 * v64) + -0.5;
  v33 = (-(v62 * v30) - (v61 * v29)) - (v63 * v31);
  v34 = ((v64 * ((v63 * v30) - (v62 * v31))) + (v29 * v32)) - (v61 * v33);
  v35 = (v64 * ((v61 * v31) - (v63 * v29))) + (v30 * v32);
  v36 = (v64 * ((v62 * v29) - (v61 * v30))) + (v31 * v32);
  v38 = a5->f32[2];
  v37 = a5->f32[3];
  v39 = a5->f32[1];
  v40 = (((v64 * v39) - (v62 * v37)) - (v63 * a5->f32[0])) + (v38 * v61);
  v41 = (((v64 * v38) - (v63 * v37)) - (v61 * v39)) + (a5->f32[0] * v62);
  v42 = v35 - (v62 * v33);
  v43 = (((v61 * a5->f32[0]) + (v64 * v37)) + (v62 * v39)) + (v63 * v38);
  *(v14 + 16) = (((v64 * a5->f32[0]) - (v61 * v37)) - (v62 * v38)) + (v39 * v63);
  *(v14 + 20) = v40;
  *(v14 + 24) = v41;
  *(v14 + 28) = v43;
  *(v14 + 32) = v34;
  *(v14 + 36) = v42;
  *(v14 + 40) = v36 - (v28 * v33);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a6);
  v44 = v63;
  v45 = (a7[1].f32[0] - v65) + (a7[1].f32[0] - v65);
  v46 = (a7[1].f32[1] - v66) + (a7[1].f32[1] - v66);
  v47 = (a7[1].f32[2] - v67) + (a7[1].f32[2] - v67);
  v48 = (v64 * v64) + -0.5;
  v49 = (-(v62 * v46) - (v61 * v45)) - (v63 * v47);
  v50 = ((v64 * ((v63 * v46) - (v62 * v47))) + (v45 * v48)) - (v61 * v49);
  v51 = ((v64 * ((v61 * v47) - (v63 * v45))) + (v46 * v48)) - (v62 * v49);
  v52 = ((v64 * ((v62 * v45) - (v61 * v46))) + (v47 * v48)) - (v63 * v49);
  v54 = a7->f32[2];
  v53 = a7->f32[3];
  v55 = a7->f32[1];
  v56 = (((v64 * v55) - (v62 * v53)) - (v63 * a7->f32[0])) + (v54 * v61);
  v57 = (((v64 * v54) - (v63 * v53)) - (v61 * v55)) + (a7->f32[0] * v62);
  v58 = ((v61 * a7->f32[0]) + (v64 * v53)) + (v62 * v55);
  *(v14 + 44) = (((v64 * a7->f32[0]) - (v61 * v53)) - (v62 * v54)) + (v55 * v63);
  *(v14 + 48) = v56;
  *(v14 + 52) = v57;
  *(v14 + 56) = v58 + (v44 * v54);
  *(v14 + 60) = v50;
  *(v14 + 64) = v51;
  *(v14 + 68) = v52;
  __asm { FMOV            V0.4S, #1.0 }

  *v14 = _Q0;
  *(a1 + 104) = v14;
  return a1;
}

double physx::Ext::RevoluteJoint::RevoluteJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v9 = 3;
  v6 = physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::Joint(a1, 257, &v9, a3, a4, a5, a6, 0x90u);
  *v6 = &unk_1F5D29000;
  v6[3] = &unk_1F5D291E8;
  v7 = v6[13];
  *(v7 + 124) = 1078530011;
  *(v7 + 80) = xmmword_1E3118C50;
  *(v7 + 96) = 1056964608;
  *(v7 + 100) = 0;
  result = 0.195796399;
  *(v7 + 108) = xmmword_1E3118C60;
  *(v7 + 128) = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::Joint(uint64_t a1, __int16 a2, __int16 *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, float32x4_t *a7, unsigned int a8)
{
  v13 = *a3;
  *(a1 + 8) = a2;
  *(a1 + 10) = v13;
  *a1 = &unk_1F5D294D8;
  *(a1 + 24) = &unk_1F5D296B0;
  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0;
  if (a8)
  {
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtJoint.h", 454);
  }

  else
  {
    v14 = 0;
  }

  v15 = a5[1].i32[2];
  _Q1 = *a5;
  _Q2 = vmulq_f32(_Q1, _Q1);
  _S3 = a5->i64[1];
  __asm { FMLA            S2, S3, V1.S[2] }

  _S3 = HIDWORD(*a5);
  __asm { FMLA            S2, S3, V1.S[3] }

  _Q2.f32[0] = sqrtf(_Q2.f32[0]);
  v24 = vdivq_f32(*a5, vdupq_lane_s32(*_Q2.f32, 0));
  _Q2.i64[0] = a5[1].i64[0];
  *(a1 + 40) = v24;
  *(a1 + 56) = _Q2.i64[0];
  *(a1 + 64) = v15;
  _Q0 = *a7;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _Q2.i32[0] = a7->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q2.i32[0] = HIDWORD(*a7);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  _Q2.i32[0] = a7[1].i32[2];
  v27 = a7[1].i64[0];
  *(a1 + 68) = vdivq_f32(*a7, vdupq_lane_s32(*_Q1.f32, 0));
  *(a1 + 84) = v27;
  *(a1 + 92) = _Q2.i32[0];
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a4);
  v28 = v63;
  v29 = (a5[1].f32[0] - v65) + (a5[1].f32[0] - v65);
  v30 = (a5[1].f32[1] - v66) + (a5[1].f32[1] - v66);
  v31 = (a5[1].f32[2] - v67) + (a5[1].f32[2] - v67);
  v32 = (v64 * v64) + -0.5;
  v33 = (-(v62 * v30) - (v61 * v29)) - (v63 * v31);
  v34 = ((v64 * ((v63 * v30) - (v62 * v31))) + (v29 * v32)) - (v61 * v33);
  v35 = (v64 * ((v61 * v31) - (v63 * v29))) + (v30 * v32);
  v36 = (v64 * ((v62 * v29) - (v61 * v30))) + (v31 * v32);
  v38 = a5->f32[2];
  v37 = a5->f32[3];
  v39 = a5->f32[1];
  v40 = (((v64 * v39) - (v62 * v37)) - (v63 * a5->f32[0])) + (v38 * v61);
  v41 = (((v64 * v38) - (v63 * v37)) - (v61 * v39)) + (a5->f32[0] * v62);
  v42 = v35 - (v62 * v33);
  v43 = (((v61 * a5->f32[0]) + (v64 * v37)) + (v62 * v39)) + (v63 * v38);
  *(v14 + 16) = (((v64 * a5->f32[0]) - (v61 * v37)) - (v62 * v38)) + (v39 * v63);
  *(v14 + 20) = v40;
  *(v14 + 24) = v41;
  *(v14 + 28) = v43;
  *(v14 + 32) = v34;
  *(v14 + 36) = v42;
  *(v14 + 40) = v36 - (v28 * v33);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a6);
  v44 = v63;
  v45 = (a7[1].f32[0] - v65) + (a7[1].f32[0] - v65);
  v46 = (a7[1].f32[1] - v66) + (a7[1].f32[1] - v66);
  v47 = (a7[1].f32[2] - v67) + (a7[1].f32[2] - v67);
  v48 = (v64 * v64) + -0.5;
  v49 = (-(v62 * v46) - (v61 * v45)) - (v63 * v47);
  v50 = ((v64 * ((v63 * v46) - (v62 * v47))) + (v45 * v48)) - (v61 * v49);
  v51 = ((v64 * ((v61 * v47) - (v63 * v45))) + (v46 * v48)) - (v62 * v49);
  v52 = ((v64 * ((v62 * v45) - (v61 * v46))) + (v47 * v48)) - (v63 * v49);
  v54 = a7->f32[2];
  v53 = a7->f32[3];
  v55 = a7->f32[1];
  v56 = (((v64 * v55) - (v62 * v53)) - (v63 * a7->f32[0])) + (v54 * v61);
  v57 = (((v64 * v54) - (v63 * v53)) - (v61 * v55)) + (a7->f32[0] * v62);
  v58 = ((v61 * a7->f32[0]) + (v64 * v53)) + (v62 * v55);
  *(v14 + 44) = (((v64 * a7->f32[0]) - (v61 * v53)) - (v62 * v54)) + (v55 * v63);
  *(v14 + 48) = v56;
  *(v14 + 52) = v57;
  *(v14 + 56) = v58 + (v44 * v54);
  *(v14 + 60) = v50;
  *(v14 + 64) = v51;
  *(v14 + 68) = v52;
  __asm { FMOV            V0.4S, #1.0 }

  *v14 = _Q0;
  *(a1 + 104) = v14;
  return a1;
}

uint64_t physx::shdfnd::Array<physx::PxShape *,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxShape *>>>::resize(uint64_t result, unsigned int a2, uint64_t *a3)
{
  v5 = result;
  if ((*(result + 148) & 0x7FFFFFFFu) < a2)
  {
    result = physx::shdfnd::Array<physx::PxShape *,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxShape *>>>::recreate(result, a2);
  }

  v6 = *(v5 + 144);
  if (v6 < a2)
  {
    v7 = 0;
    v8 = *(v5 + 136);
    v9 = (v8 + 8 * v6 + 8);
    v10 = v8 + 8 * a2;
    if (v9 > v10)
    {
      v10 = v8 + 8 * v6 + 8;
    }

    v11 = v10 + ~v8;
    v12 = *a3;
    v13 = (v11 - 8 * v6) >> 3;
    v14 = vdupq_n_s64(v13);
    v15 = (v13 + 2) & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v16 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v7), xmmword_1E3049620)));
      if (v16.i8[0])
      {
        *(v9 - 1) = v12;
      }

      if (v16.i8[4])
      {
        *v9 = v12;
      }

      v7 += 2;
      v9 += 2;
    }

    while (v15 != v7);
  }

  *(v5 + 144) = a2;
  return result;
}

uint64_t physx::shdfnd::Array<physx::PxShape *,physx::shdfnd::InlineAllocator<128u,physx::shdfnd::ReflectionAllocator<physx::PxShape *>>>::recreate(uint64_t result, int a2)
{
  v3 = result;
  v4 = (8 * a2);
  if (v4 > 0x80 || (*(result + 128) & 1) != 0)
  {
    result = physx::shdfnd::ReflectionAllocator<physx::PxShape *>::allocate(result, v4, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v5 = result;
  }

  else
  {
    *(result + 128) = 1;
    v5 = result;
  }

  v6 = *(v3 + 144);
  v7 = *(v3 + 136);
  if (v6)
  {
    v8 = &v5[v6];
    v9 = v5;
    do
    {
      v10 = *v7++;
      *v9++ = v10;
    }

    while (v9 < v8);
    v7 = *(v3 + 136);
  }

  if ((*(v3 + 148) & 0x80000000) == 0)
  {
    if (v7 == v3)
    {
      *(v3 + 128) = 0;
    }

    else if (v7)
    {
      result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }
  }

  *(v3 + 136) = v5;
  *(v3 + 148) = a2;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxPrismaticJoint,physx::PxPrismaticJointGeneratedValues>::~Joint(uint64_t a1)
{
  *a1 = &unk_1F5D292C8;
  *(a1 + 24) = &unk_1F5D29470;
  if (*(a1 + 10))
  {
    if (*(a1 + 104))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

uint64_t physx::Ext::Joint<physx::PxRevoluteJoint,physx::PxRevoluteJointGeneratedValues>::~Joint(uint64_t a1)
{
  *a1 = &unk_1F5D294D8;
  *(a1 + 24) = &unk_1F5D296B0;
  if (*(a1 + 10))
  {
    if (*(a1 + 104))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

void *physx::PxSphericalJointCreate(uint64_t a1, uint64_t a2, float32x4_t *a3, uint64_t a4, float32x4_t *a5)
{
  v10 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v11 = "static const char *physx::shdfnd::ReflectionAllocator<physx::Ext::SphericalJoint>::getName() [T = physx::Ext::SphericalJoint]";
  }

  else
  {
    v11 = "<allocation names disabled>";
  }

  v12 = (*(*(v10 + 24) + 16))(v10 + 24, 112, v11, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtSphericalJoint.cpp", 47);
  v13 = (*(*a1 + 40))(a1);
  v14 = physx::Ext::SphericalJoint::SphericalJoint(v12, v13, a2, a3, a4, a5);
  v15 = (*(*a1 + 216))(a1, a2, a4, v12 + 3, &physx::Ext::SphericalJoint::sShaders, 128, v14);
  v12[12] = v15;
  if (!v15)
  {
    (*(*v12 + 32))(v12);
    return 0;
  }

  return v12;
}

uint64_t physx::Ext::SphericalJoint::setProjectionLinearTolerance(physx::Ext::SphericalJoint *this, float a2)
{
  v2 = this + 96;
  v3 = *(this + 12);
  *(*(v2 + 1) + 108) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::SphericalJoint::setLimitCone(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 104);
  v3 = *a2;
  *(v2 + 92) = *(a2 + 12);
  *(v2 + 80) = v3;
  return (*(**(a1 + 96) + 72))();
}

float physx::Ext::SphericalJoint::getLimitCone@<S0>(physx::Ext::SphericalJoint *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 13);
  *a2 = *(v2 + 80);
  result = *(v2 + 96);
  *(a2 + 16) = result;
  *(a2 + 20) = *(v2 + 100);
  return result;
}

uint64_t physx::Ext::SphericalJoint::setSphericalJointFlag(uint64_t a1, __int16 a2, int a3)
{
  v3 = *(a1 + 104);
  if (a3)
  {
    v4 = *(v3 + 112) | a2;
  }

  else
  {
    v4 = *(v3 + 112) & ~a2;
  }

  *(v3 + 112) = v4;
  return (*(**(a1 + 96) + 72))();
}

float physx::Ext::SphericalJoint::getSwingYAngle(physx::Ext::SphericalJoint *this)
{
  (*(*this + 80))(&v9);
  if (*&v9 == 0.0)
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 1.0;
  }

  else
  {
    v1 = sqrtf(((*&v9 * *&v9) + 0.0) + (v11 * v11));
    v2 = *&v9 / v1;
    v3 = 0.0 / v1;
    v4 = v11 / v1;
  }

  v5 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
  v6 = -((((*(&v9 + 1) * v4) - (v11 * v3)) - (v10 * v2)) + (v3 * *&v9));
  v7 = -v5;
  if (v5 >= 0.0)
  {
    v7 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
    v6 = (((*(&v9 + 1) * v4) - (v11 * v3)) - (v10 * v2)) + (v3 * *&v9);
  }

  return atan2f(v6, v7 + 1.0) * 4.0;
}

float physx::Ext::SphericalJoint::getSwingZAngle(physx::Ext::SphericalJoint *this)
{
  (*(*this + 80))(&v9);
  if (*&v9 == 0.0)
  {
    v2 = 0.0;
    v3 = 0.0;
    v4 = 1.0;
  }

  else
  {
    v1 = sqrtf(((*&v9 * *&v9) + 0.0) + (v11 * v11));
    v2 = *&v9 / v1;
    v3 = 0.0 / v1;
    v4 = v11 / v1;
  }

  v5 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
  v6 = -((((v10 * v4) - (v11 * v3)) - (*&v9 * v3)) + (v2 * *(&v9 + 1)));
  v7 = -v5;
  if (v5 >= 0.0)
  {
    v7 = (((*&v9 * v2) + (v11 * v4)) + (*(&v9 + 1) * v3)) + (v10 * v3);
    v6 = (((v10 * v4) - (v11 * v3)) - (*&v9 * v3)) + (v2 * *(&v9 + 1));
  }

  return atan2f(v6, v7 + 1.0) * 4.0;
}

uint64_t physx::Ext::SphericalJoint::exportExtraData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104))
  {
    (*(*a2 + 24))(a2, 16);
    (*(*a2 + 16))(a2, *(a1 + 104), 128);
  }

  v4 = *(a1 + 32);
  v5 = *(*a2 + 32);

  return v5(a2, v4);
}

uint64_t SphericalJointSolverPrep(uint64_t a1, float32x2_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, int8x16_t a9, int8x16_t a10, uint64_t a11, __int128 *a12, uint64_t a13, float32x2_t *a14, float32x2_t *a15, uint64_t a16, float32x2_t *a17, float32x2_t *a18)
{
  physx::Ext::joint::ConstraintHelper::ConstraintHelper(&v64, a1, a12, &v71, &v66, a2, a13, a14, a3, a4, a5, a6, a7, a8, a9, a10, a15);
  v21 = v66.f32[1];
  v22 = v66.f32[0];
  v23 = v71;
  v24 = v67;
  v25 = v68;
  v26 = v72;
  v27 = v73;
  if ((((vmuls_lane_f32(v66.f32[1], v71, 1) + (v66.f32[0] * v71.f32[0])) + (v67 * v72)) + (v68 * v73)) < 0.0)
  {
    v22 = -v66.f32[0];
    v21 = -v66.f32[1];
    v24 = -v67;
    v66.f32[0] = -v66.f32[0];
    v66.f32[1] = -v66.f32[1];
    v25 = -v68;
    v67 = -v67;
    v68 = -v68;
  }

  if ((*(a13 + 112) & 2) != 0)
  {
    v28 = (((v73 * v22) - (v71.f32[0] * v25)) - (v71.f32[1] * v24)) + (v21 * v72);
    v29 = (((v73 * v21) - (v71.f32[1] * v25)) - (v72 * v22)) + (v24 * v71.f32[0]);
    v30 = (((v73 * v24) - (v72 * v25)) - (v71.f32[0] * v21)) + (v22 * v71.f32[1]);
    v31 = (((v71.f32[0] * v22) + (v73 * v25)) + (v71.f32[1] * v21)) + (v72 * v24);
    v32 = 0.0;
    if (v28 == 0.0)
    {
      v36 = 1.0;
      v34 = 0.0;
      v35 = 0.0;
    }

    else
    {
      v33 = sqrtf(((v28 * v28) + 0.0) + (v31 * v31));
      v34 = v28 / v33;
      v35 = 0.0 / v33;
      v36 = v31 / v33;
    }

    v61.f32[0] = (((v28 * v36) - (v31 * v34)) - (v29 * v35)) + (v35 * v30);
    v61.f32[1] = (((v29 * v36) - (v31 * v35)) - (v30 * v34)) + (v35 * v28);
    v62 = (((v30 * v36) - (v31 * v35)) - (v28 * v35)) + (v34 * v29);
    v63 = (((v28 * v34) + (v31 * v36)) + (v29 * v35)) + (v30 * v35);
    v58 = 0;
    if (*(a13 + 92) <= 0.0 && *(a13 + 88) <= 0.0)
    {
      v32 = *(a13 + 96);
    }

    v56 = *(a13 + 100);
    v57 = v32;
    if (physx::Cm::ConeLimitHelperTanLess::getLimit(&v56, &v61, &v59, &v58))
    {
      v37 = v72;
      v38 = (v73 * v73) + -0.5;
      v39 = (((v59.f32[1] + v59.f32[1]) * v71.f32[1]) + (v71.f32[0] * (v59.f32[0] + v59.f32[0]))) + (v72 * (v60 + v60));
      v40 = ((v73 * ((v71.f32[1] * (v60 + v60)) - (v72 * (v59.f32[1] + v59.f32[1])))) + ((v59.f32[0] + v59.f32[0]) * v38)) + (v71.f32[0] * v39);
      v41 = ((v73 * ((v72 * (v59.f32[0] + v59.f32[0])) - (v71.f32[0] * (v60 + v60)))) + ((v59.f32[1] + v59.f32[1]) * v38)) + (v71.f32[1] * v39);
      v42 = (v73 * ((v71.f32[0] * (v59.f32[1] + v59.f32[1])) - (v71.f32[1] * (v59.f32[0] + v59.f32[0])))) + ((v60 + v60) * v38);
      v43 = v58;
      v44 = v65;
      v65 += 80;
      *(v44 + 78) = 0;
      *v44 = 0;
      v45 = v42 + (v37 * v39);
      *(v44 + 8) = 0;
      *(v44 + 20) = v41;
      *(v44 + 24) = v45;
      *(v44 + 32) = 0;
      *(v44 + 40) = 0;
      *(v44 + 48) = v40;
      *(v44 + 52) = v41;
      *(v44 + 56) = v45;
      *(v44 + 12) = v43;
      *(v44 + 16) = v40;
      *(v44 + 76) |= 0x40u;
      physx::Ext::joint::ConstraintHelper::addLimit(&v64, v44, a13 + 80);
    }

    v23 = v71;
    v26 = v72;
    v27 = v73;
  }

  v46 = (v70 - v75) + (v70 - v75);
  v47 = (v27 * v27) + -0.5;
  v48 = vdup_lane_s32(v23, 0);
  v48.f32[0] = v26;
  v49 = vsub_f32(v69, v74);
  v50 = vadd_f32(v49, v49);
  v51.i32[0] = vdup_lane_s32(v50, 1).u32[0];
  v52 = (vmuls_lane_f32(v23.f32[1], v50, 1) + (v23.f32[0] * v50.f32[0])) + (v26 * v46);
  v51.f32[1] = v46;
  v56 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v51, vneg_f32(v48)), vext_s8(v51, v50, 4uLL), vext_s8(v23, v48, 4uLL))), v27), v50, v47), v23, v52);
  v57 = ((v46 * v47) - (((-v23.f32[1] * v50.f32[0]) + (v23.f32[0] * v50.f32[1])) * v27)) + (v26 * v52);
  physx::Ext::joint::ConstraintHelper::prepareLockedAxes(&v64, &v71, &v66, &v56, 7, 0, &v61, &v59);
  v53 = v62 + a14[3].f32[0];
  *a17 = vadd_f32(v61, a14[2]);
  a17[1].f32[0] = v53;
  v54 = v60 + a15[3].f32[0];
  *a18 = vadd_f32(v59, a15[2]);
  a18[1].f32[0] = v54;
  return -858993459 * ((v65 - v64) >> 4);
}

float SphericalJointProject(float *a1, float *a2, float *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x16_t a11, int8x16_t a12)
{
  physx::Ext::joint::computeDerived(a1, a2, a3, &v112, &v105, &v98, 1, a5, a6, a7, a8, a9, a10, a11, a12);
  result = a1[27];
  v17 = ((v103 * v103) + (v102 * v102)) + (v104 * v104);
  if (v17 > (result * result))
  {
    v18 = 1.0 / sqrtf(v17);
    v19 = result * (v102 * v18);
    v20 = result * (v103 * v18);
    v21 = result * (v104 * v18);
    if (a4)
    {
      v22 = a1[15] * -2.0;
      v23 = a1[16] * -2.0;
      v24 = a1[17] * -2.0;
      v26 = a1[13];
      v25 = a1[14];
      v27 = (v25 * v25) + -0.5;
      v28 = a1[11];
      v29 = a1[12];
      v30 = ((v23 * v29) + (v28 * v22)) + (v26 * v24);
      v31 = ((v22 * v27) - (((v29 * v24) - (v26 * v23)) * v25)) + (v28 * v30);
      v32 = ((v23 * v27) - (((v26 * v22) - (v28 * v24)) * v25)) + (v29 * v30);
      v33 = ((v24 * v27) - (((v28 * v23) - (v29 * v22)) * v25)) + (v26 * v30);
      v34 = v31 + v31;
      v35 = v32 + v32;
      v36 = v33 + v33;
      v37 = (v101 * v101) + -0.5;
      v38 = ((v99 * (v32 + v32)) + (v98 * (v31 + v31))) + (v100 * v36);
      v39 = ((v101 * ((v99 * v36) - (v100 * (v32 + v32)))) + ((v31 + v31) * v37)) + (v98 * v38);
      v40 = ((v101 * ((v100 * v34) - (v98 * v36))) + ((v32 + v32) * v37)) + (v99 * v38);
      v41 = v21 + (((v101 * ((v98 * v35) - (v99 * v34))) + (v36 * v37)) + (v100 * v38));
      v42 = (((v98 * v25) - (v101 * v28)) - (v99 * v26)) + (v29 * v100);
      v43 = (((v99 * v25) - (v101 * v29)) - (v100 * v28)) + (v26 * v98);
      v44 = (((v100 * v25) - (v101 * v26)) - (v98 * v29)) + (v28 * v99);
      v45 = (((v98 * v28) + (v101 * v25)) + (v99 * v29)) + (v100 * v26);
      v46 = (v19 + v39) + (v19 + v39);
      v47 = (v20 + v40) + (v20 + v40);
      v48 = (v115 * v115) + -0.5;
      v49 = ((v113 * v47) + (v112 * v46)) + (v114 * (v41 + v41));
      v50 = ((v115 * ((v113 * (v41 + v41)) - (v114 * v47))) + (v46 * v48)) + (v112 * v49);
      v51 = ((v115 * ((v114 * v46) - (v112 * (v41 + v41)))) + (v47 * v48)) + (v113 * v49);
      v52 = ((v115 * ((v112 * v47) - (v113 * v46))) + ((v41 + v41) * v48)) + (v114 * v49);
      v53 = v116 + v50;
      v54 = v117 + v51;
      v55 = v118 + v52;
      result = (((v45 * v112) + (v115 * v42)) + (v113 * v44)) - (v43 * v114);
      v56 = (((v45 * v113) + (v115 * v43)) + (v114 * v42)) - (v44 * v112);
      v57 = (((v45 * v114) + (v115 * v44)) + (v112 * v43)) - (v42 * v113);
      v58 = (((v115 * v45) - (v112 * v42)) - (v113 * v43)) - (v114 * v44);
      *a3 = result;
      a3[1] = v56;
      a3[2] = v57;
      a3[3] = v58;
      a3[4] = v53;
      a3[5] = v54;
      a3[6] = v55;
      v59 = sqrtf((((v56 * v56) + (result * result)) + (v57 * v57)) + (v58 * v58));
      if (v59 != 0.0)
      {
        *a3 = result / v59;
        a3[1] = v56 / v59;
        result = v57 / v59;
        a3[2] = v57 / v59;
        a3[3] = v58 / v59;
      }
    }

    else
    {
      v60 = a1[8] * -2.0;
      v61 = a1[9] * -2.0;
      v62 = a1[10] * -2.0;
      v64 = a1[6];
      v63 = a1[7];
      v65 = (v63 * v63) + -0.5;
      v66 = a1[4];
      v67 = a1[5];
      v68 = ((v61 * v67) + (v66 * v60)) + (v64 * v62);
      v69 = ((v60 * v65) - (((v67 * v62) - (v64 * v61)) * v63)) + (v66 * v68);
      v70 = ((v61 * v65) - (((v64 * v60) - (v66 * v62)) * v63)) + (v67 * v68);
      v71 = (((v62 * v65) - (((v66 * v61) - (v67 * v60)) * v63)) + (v64 * v68)) - v21;
      v72 = (v69 - v19) + (v69 - v19);
      v73 = (v70 - v20) + (v70 - v20);
      v74 = v71 + v71;
      v75 = (v101 * v101) + -0.5;
      v76 = (-(v99 * v73) - (v98 * v72)) - (v100 * v74);
      v77 = ((v101 * ((v100 * v73) - (v99 * v74))) + (v72 * v75)) - (v98 * v76);
      v78 = ((v101 * ((v98 * v74) - (v100 * v72))) + (v73 * v75)) - (v99 * v76);
      v79 = ((v101 * ((v99 * v72) - (v98 * v73))) + (v74 * v75)) - (v100 * v76);
      v80 = ((-(v98 * v63) - (v101 * v66)) + (v99 * v64)) - (v67 * v100);
      v81 = ((-(v99 * v63) - (v101 * v67)) + (v100 * v66)) - (v64 * v98);
      v82 = ((-(v100 * v63) - (v101 * v64)) + (v98 * v67)) - (v66 * v99);
      v83 = (((v101 * v63) - (v66 * v98)) - (v99 * v67)) - (v100 * v64);
      v84 = v77 + v77;
      v85 = v78 + v78;
      v86 = (v108 * v108) + -0.5;
      v87 = ((v106 * (v78 + v78)) + (v105 * (v77 + v77))) + (v107 * (v79 + v79));
      v88 = ((v108 * ((v106 * (v79 + v79)) - (v107 * (v78 + v78)))) + (v84 * v86)) + (v105 * v87);
      v89 = ((v108 * ((v107 * v84) - (v105 * (v79 + v79)))) + (v85 * v86)) + (v106 * v87);
      v90 = ((v108 * ((v105 * v85) - (v106 * v84))) + ((v79 + v79) * v86)) + (v107 * v87);
      v91 = v109 + v88;
      v92 = v110 + v89;
      v93 = v111 + v90;
      result = (((v83 * v105) + (v108 * v80)) + (v106 * v82)) - (v81 * v107);
      v94 = (((v83 * v106) + (v108 * v81)) + (v107 * v80)) - (v82 * v105);
      v95 = (((v83 * v107) + (v108 * v82)) + (v105 * v81)) - (v80 * v106);
      v96 = (((v108 * v83) - (v105 * v80)) - (v106 * v81)) - (v107 * v82);
      *a2 = result;
      a2[1] = v94;
      a2[2] = v95;
      a2[3] = v96;
      a2[4] = v91;
      a2[5] = v92;
      a2[6] = v93;
      v97 = sqrtf((((v94 * v94) + (result * result)) + (v95 * v95)) + (v96 * v96));
      if (v97 != 0.0)
      {
        *a2 = result / v97;
        a2[1] = v94 / v97;
        result = v95 / v97;
        a2[2] = v95 / v97;
        a2[3] = v96 / v97;
      }
    }
  }

  return result;
}

void SphericalJointVisualize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, int8x16_t a12, int8x16_t a13)
{
  v16 = physx::Ext::joint::computeJointFrames(&v51, &v47, a2, a3, a4, a6, a7, a8, a9, a10, a11, a12, a13);
  if (a5)
  {
    (*(*a1 + 16))(a1, &v51, &v47, v16);
  }

  if ((a5 & 2) != 0 && (*(a2 + 112) & 2) != 0)
  {
    v18 = v47;
    v17 = v48;
    v19 = v49;
    v20 = v50;
    if (((((v52 * v48) + (v51 * v47)) + (v53 * v49)) + (v54 * v50)) < 0.0)
    {
      v18 = -v47;
      v17 = -v48;
      v19 = -v49;
      v47 = -v47;
      v48 = -v48;
      v20 = -v50;
      v49 = -v49;
      v50 = -v50;
    }

    v21 = (((v54 * v18) - (v51 * v20)) - (v52 * v19)) + (v17 * v53);
    v22 = (((v54 * v17) - (v52 * v20)) - (v53 * v18)) + (v19 * v51);
    v23 = (((v54 * v19) - (v53 * v20)) - (v51 * v17)) + (v18 * v52);
    v24 = (((v51 * v18) + (v54 * v20)) + (v52 * v17)) + (v53 * v19);
    v25 = 0;
    if (v21 == 0.0)
    {
      v29 = 1.0;
      v27 = 0.0;
      v28 = 0.0;
    }

    else
    {
      v26 = sqrtf(((v21 * v21) + 0.0) + (v24 * v24));
      v27 = v21 / v26;
      v28 = 0.0 / v26;
      v29 = v24 / v26;
    }

    v30 = (((v22 * v29) - (v24 * v28)) - (v23 * v27)) + (v28 * v21);
    v31 = (((v23 * v29) - (v24 * v28)) - (v21 * v28)) + (v27 * v22);
    v32 = (((v21 * v27) + (v24 * v29)) + (v22 * v28)) + (v23 * v28);
    if (*(a2 + 92) <= 0.0 && *(a2 + 88) <= 0.0)
    {
      v25.i32[0] = *(a2 + 96);
    }

    v44 = v25;
    v33 = v32 + 1.0;
    v45 = atan2f(v30, v32 + 1.0);
    v34 = __PAIR64__(COERCE_UNSIGNED_INT(atan2f(v31, v33)), LODWORD(v45));
    __asm { FMOV            V0.2S, #4.0 }

    v40 = vmul_f32(v34, _D0);
    v46 = *(a2 + 100);
    v41 = tanf(vmuls_lane_f32(0.25, v46, 1));
    v42.n128_u32[0] = tanf(0.25 * v46.f32[0]);
    v43 = vdiv_f32(vadd_f32(vdup_lane_s32(v44, 0), vabs_f32(v40)), v46);
    (*(*a1 + 40))(a1, &v51, vaddv_f32(vmul_f32(v43, v43)) > 1.0, v41, v42);
  }
}

uint64_t physx::PxMeshOverlapUtil::findOverlap(uint64_t *a1, float *a2, float32x4_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  result = physx::PxMeshQuery::findOverlapTriangleMesh(a2, a3, a4, a5, *a1, *(a1 + 259), 0, &v13);
  if (v13 == 1)
  {
    result = (*(**(a4 + 40) + 80))(*(a4 + 40));
    if (result)
    {
      v11 = result;
      v12 = *a1;
      if (*(a1 + 259) >= result)
      {
        v11 = *(a1 + 259);
      }

      else
      {
        if (v12 != a1 + 1 && v12)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *a1);
        }

        v12 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v11, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtTriangleMeshExt.cpp", 72);
        *a1 = v12;
        *(a1 + 259) = v11;
      }

      result = physx::PxMeshQuery::findOverlapTriangleMesh(a2, a3, a4, a5, v12, v11, 0, &v13);
    }
  }

  *(a1 + 258) = result;
  return result;
}

uint64_t physx::PxMeshOverlapUtil::findOverlap(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4, float *a5, double a6, double a7, double a8)
{
  v20 = 1;
  result = physx::PxMeshQuery::findOverlapHeightField(a2, a3, a4, a5, *a1, *(a1 + 259), 0, &v20, a6, a7, a8);
  if (v20 == 1)
  {
    v14 = (*(**(a4 + 8) + 64))(*(a4 + 8));
    v15 = 2 * v14 * (*(**(a4 + 8) + 72))(*(a4 + 8));
    if (v15)
    {
      v19 = *a1;
      if (*(a1 + 259) >= v15)
      {
        v15 = *(a1 + 259);
      }

      else
      {
        if (v19 != a1 + 1 && v19)
        {
          (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24, *a1);
        }

        v19 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, 4 * v15, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtTriangleMeshExt.cpp", 102);
        *a1 = v19;
        *(a1 + 259) = v15;
      }

      result = physx::PxMeshQuery::findOverlapHeightField(a2, a3, a4, a5, v19, v15, 0, &v20, v16, v17, v18);
    }

    else
    {
      result = 0;
    }
  }

  *(a1 + 258) = result;
  return result;
}

void physx::Ext::SphericalJoint::~SphericalJoint(physx::Ext::SphericalJoint *this)
{
  if (physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::~Joint(this))
  {
    v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v1();
  }
}

BOOL physx::PxSphericalJoint::isKindOf(physx::PxSphericalJoint *this, const char *a2)
{
  if (!strcmp("PxSphericalJoint", a2))
  {
    return 1;
  }

  return physx::PxJoint::isKindOf(this, a2);
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::setActors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 96) + 64))(*(a1 + 96));
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a2);
  v6 = v43;
  v7 = (*(a1 + 56) - v45) + (*(a1 + 56) - v45);
  v8 = (*(a1 + 60) - v46) + (*(a1 + 60) - v46);
  v9 = (*(a1 + 64) - v47) + (*(a1 + 64) - v47);
  v10 = (v44 * v44) + -0.5;
  v11 = (-(v42 * v8) - (v41 * v7)) - (v43 * v9);
  v12 = ((v44 * ((v43 * v8) - (v42 * v9))) + (v7 * v10)) - (v41 * v11);
  v13 = (v44 * ((v41 * v9) - (v43 * v7))) + (v8 * v10);
  v14 = (v44 * ((v42 * v7) - (v41 * v8))) + (v9 * v10);
  v16 = *(a1 + 48);
  v15 = *(a1 + 52);
  v17 = *(a1 + 40);
  v18 = *(a1 + 44);
  v19 = (((v44 * v18) - (v42 * v15)) - (v43 * v17)) + (v16 * v41);
  v20 = (((v44 * v16) - (v43 * v15)) - (v41 * v18)) + (v17 * v42);
  v21 = v13 - (v42 * v11);
  v22 = (((v41 * v17) + (v44 * v15)) + (v42 * v18)) + (v43 * v16);
  v23 = *(a1 + 104);
  v23[4] = (((v44 * v17) - (v41 * v15)) - (v42 * v16)) + (v18 * v43);
  v23[5] = v19;
  v23[6] = v20;
  v23[7] = v22;
  v23[8] = v12;
  v23[9] = v21;
  v23[10] = v14 - (v6 * v11);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v41, a3);
  v24 = (*(a1 + 84) - v45) + (*(a1 + 84) - v45);
  v25 = (*(a1 + 88) - v46) + (*(a1 + 88) - v46);
  v26 = (*(a1 + 92) - v47) + (*(a1 + 92) - v47);
  v27 = (v44 * v44) + -0.5;
  v28 = (-(v42 * v25) - (v41 * v24)) - (v43 * v26);
  v29 = ((v44 * ((v43 * v25) - (v42 * v26))) + (v24 * v27)) - (v41 * v28);
  v30 = ((v44 * ((v41 * v26) - (v43 * v24))) + (v25 * v27)) - (v42 * v28);
  v31 = ((v44 * ((v42 * v24) - (v41 * v25))) + (v26 * v27)) - (v43 * v28);
  v33 = *(a1 + 76);
  v32 = *(a1 + 80);
  v34 = *(a1 + 68);
  v35 = *(a1 + 72);
  v36 = (((v44 * v35) - (v42 * v32)) - (v43 * v34)) + (v33 * v41);
  v37 = (((v44 * v33) - (v43 * v32)) - (v41 * v35)) + (v34 * v42);
  v38 = (((v41 * v34) + (v44 * v32)) + (v42 * v35)) + (v43 * v33);
  v39 = *(a1 + 104);
  v39[11] = (((v44 * v34) - (v41 * v32)) - (v42 * v33)) + (v35 * v43);
  v39[12] = v36;
  v39[13] = v37;
  v39[14] = v38;
  v39[15] = v29;
  v39[16] = v30;
  v39[17] = v31;
  return (*(**(a1 + 96) + 72))(*(a1 + 96));
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::getActors(uint64_t a1, void *a2, void *a3)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 56))();
  }

  *a2 = 0;
  *a3 = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::setLocalPose(uint64_t a1, unsigned int a2, float *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = a3[2];
  v7 = a3[3];
  v8 = sqrtf((((v5 * v5) + (*a3 * *a3)) + (v6 * v6)) + (v7 * v7));
  v9 = *a3 / v8;
  v10 = v5 / v8;
  v11 = v6 / v8;
  v12 = v7 / v8;
  v13 = a3[4];
  v14 = a3[5];
  v15 = a3[6];
  v16 = 28 * a2;
  v17 = (a1 + v16);
  v17[10] = v9;
  v17[11] = v5 / v8;
  v17[12] = v6 / v8;
  v17[13] = v7 / v8;
  v17[14] = v13;
  v17[15] = v14;
  v17[16] = v15;
  v39 = 0;
  v40[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v39, v40);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v40[a2 - 1]);
  v18 = (v13 - v36) + (v13 - v36);
  v19 = (v14 - v37) + (v14 - v37);
  v20 = (v15 - v38) + (v15 - v38);
  v21 = (v35 * v35) + -0.5;
  v22 = (-(v33 * v19) - (v32 * v18)) - (v34 * v20);
  v23 = ((v35 * ((v34 * v19) - (v33 * v20))) + (v18 * v21)) - (v32 * v22);
  v24 = ((v35 * ((v32 * v20) - (v34 * v18))) + (v19 * v21)) - (v33 * v22);
  v25 = ((v35 * ((v33 * v18) - (v32 * v19))) + (v20 * v21)) - (v34 * v22);
  v26 = (((v35 * v10) - (v33 * v12)) - (v34 * v9)) + (v11 * v32);
  v27 = (((v35 * v11) - (v34 * v12)) - (v32 * v10)) + (v9 * v33);
  v28 = (((v9 * v32) + (v35 * v12)) + (v33 * v10)) + (v34 * v11);
  v29 = *(a1 + 96);
  v30 = (*(a1 + 104) + v16);
  v30[4] = (((v35 * v9) - (v32 * v12)) - (v33 * v11)) + (v10 * v34);
  v30[5] = v26;
  v30[6] = v27;
  v30[7] = v28;
  v30[8] = v23;
  v30[9] = v24;
  v30[10] = v25;
  return (*(*v29 + 72))(v29);
}

float physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::getLocalPose@<S0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1 + 28 * a2;
  *a3 = *(v3 + 40);
  *(a3 + 16) = *(v3 + 56);
  result = *(v3 + 64);
  *(a3 + 24) = result;
  return result;
}

float physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::getRelativeTransform@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v72 = 0;
  v73 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v73, &v72);
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 1.0;
  if (v73)
  {
    (*(*v73 + 152))(&v66);
    v5 = 0.0;
    v4 = 1.0;
    v10 = *(&v66 + 1);
    v11 = *&v66;
    v9 = v67;
    v12 = v68;
    v8 = v69;
    v7 = v70;
    v6 = v71;
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 60);
  v15 = *(a1 + 64);
  v16 = *(a1 + 48);
  v17 = *(a1 + 52);
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = *(a1 + 40);
  v22 = *(a1 + 44);
  v23 = 0.0;
  v24 = 0.0;
  if (v72)
  {
    v64 = v7;
    v65 = v8;
    v62 = *(a1 + 56);
    v63 = v6;
    v60 = *(a1 + 64);
    v61 = *(a1 + 60);
    (*(*v72 + 152))(&v66);
    v15 = v60;
    v14 = v61;
    v13 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v23 = *(&v66 + 1);
    v24 = *&v66;
    v20 = v67;
    v4 = v68;
    v19 = v69;
    v18 = v70;
    v5 = v71;
  }

  v25 = (((v12 * v17) - (v11 * v21)) - (v10 * v22)) - (v9 * v16);
  v26 = (((v9 * v17) + (v12 * v16)) + (v11 * v22)) - (v21 * v10);
  v27 = (((v10 * v17) + (v12 * v22)) + (v9 * v21)) - (v16 * v11);
  v28 = (((v11 * v17) + (v12 * v21)) + (v10 * v16)) - (v22 * v9);
  v29 = v15 + v15;
  v30 = v14 + v14;
  v31 = ((v10 * (v14 + v14)) + (v11 * (v13 + v13))) + (v9 * v29);
  v32 = (v12 * v12) + -0.5;
  v33 = v6 + (((v12 * ((v11 * (v14 + v14)) - (v10 * (v13 + v13)))) + (v29 * v32)) + (v9 * v31));
  v34 = v7 + (((v12 * ((v9 * (v13 + v13)) - (v11 * v29))) + (v30 * v32)) + (v10 * v31));
  v35 = v8 + (((v12 * ((v10 * v29) - (v9 * v30))) + ((v13 + v13) * v32)) + (v11 * v31));
  v36 = *(a1 + 84) + *(a1 + 84);
  v37 = *(a1 + 88) + *(a1 + 88);
  v38 = *(a1 + 92) + *(a1 + 92);
  v39 = (v4 * v4) + -0.5;
  v40 = ((v23 * v37) + (v24 * v36)) + (v20 * v38);
  v41 = v19 + (((v4 * ((v23 * v38) - (v20 * v37))) + (v36 * v39)) + (v24 * v40));
  v42 = v18 + (((v4 * ((v20 * v36) - (v24 * v38))) + (v37 * v39)) + (v23 * v40));
  v43 = v5 + (((v4 * ((v24 * v37) - (v23 * v36))) + (v38 * v39)) + (v20 * v40));
  v45 = *(a1 + 76);
  v44 = *(a1 + 80);
  v46 = *(a1 + 68);
  v47 = *(a1 + 72);
  v48 = (((v24 * v44) + (v4 * v46)) + (v23 * v45)) - (v47 * v20);
  v49 = (((v23 * v44) + (v4 * v47)) + (v20 * v46)) - (v45 * v24);
  v50 = (((v20 * v44) + (v4 * v45)) + (v24 * v47)) - (v46 * v23);
  v51 = (((v4 * v44) - (v24 * v46)) - (v23 * v47)) - (v20 * v45);
  v52 = (v41 - v35) + (v41 - v35);
  v53 = (v42 - v34) + (v42 - v34);
  v54 = (v43 - v33) + (v43 - v33);
  v55 = (v25 * v25) + -0.5;
  v56 = (-(v27 * v53) - (v28 * v52)) - (v26 * v54);
  v57 = ((v25 * ((v26 * v53) - (v27 * v54))) + (v52 * v55)) - (v28 * v56);
  v58 = ((v25 * ((v28 * v54) - (v26 * v52))) + (v53 * v55)) - (v27 * v56);
  *a2 = (((v25 * v48) - (v28 * v51)) - (v27 * v50)) + (v49 * v26);
  a2[1] = (((v25 * v49) - (v27 * v51)) - (v26 * v48)) + (v50 * v28);
  a2[2] = (((v25 * v50) - (v26 * v51)) - (v28 * v49)) + (v48 * v27);
  a2[3] = (((v28 * v48) + (v25 * v51)) + (v27 * v49)) + (v26 * v50);
  result = ((v25 * ((v27 * v52) - (v28 * v53))) + (v54 * v55)) - (v26 * v56);
  a2[4] = v57;
  a2[5] = v58;
  a2[6] = result;
  return result;
}

float physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::getRelativeLinearVelocity@<S0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v51 = 0;
  v52 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v52, &v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v36, v52);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v32, v51);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v52, v50, &v47);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v51, v46, &v43);
  v4 = *(a1 + 56) + *(a1 + 56);
  v5 = *(a1 + 60) + *(a1 + 60);
  v6 = *(a1 + 64) + *(a1 + 64);
  v7 = (v39 * v39) + -0.5;
  v8 = ((v5 * v37) + (v36 * v4)) + (v38 * v6);
  v9 = ((v39 * ((v37 * v6) - (v38 * v5))) + (v4 * v7)) + (v36 * v8);
  v10 = ((v39 * ((v38 * v4) - (v36 * v6))) + (v5 * v7)) + (v37 * v8);
  v11 = ((v39 * ((v36 * v5) - (v37 * v4))) + (v6 * v7)) + (v38 * v8);
  v12 = *(a1 + 84) + *(a1 + 84);
  v13 = *(a1 + 88) + *(a1 + 88);
  v14 = *(a1 + 92) + *(a1 + 92);
  v15 = (v35 * v35) + -0.5;
  v16 = ((v13 * v33) + (v32 * v12)) + (v34 * v14);
  v17 = ((v35 * ((v33 * v14) - (v34 * v13))) + (v12 * v15)) + (v32 * v16);
  v18 = ((v35 * ((v34 * v12) - (v32 * v14))) + (v13 * v15)) + (v33 * v16);
  v19 = ((v35 * ((v32 * v13) - (v33 * v12))) + (v14 * v15)) + (v34 * v16);
  v20 = (v48 * v11) - (v49 * v10);
  v21 = (v49 * v9) - (v47 * v11);
  v22 = (v47 * v10) - (v48 * v9);
  v23 = (((v46[0] - ((v44 * v19) - (v45 * v18))) - v50[0]) + v20) - v40;
  v24 = (((v46[1] - ((v45 * v17) - (v43 * v19))) - v50[1]) + v21) - v41;
  v25 = (((v46[2] - ((v43 * v18) - (v44 * v17))) - v50[2]) + v22) - v42;
  v26 = v23 + v23;
  v27 = v24 + v24;
  v28 = v25 + v25;
  v29 = ((v37 * v27) + (v36 * v26)) + (v38 * v28);
  v30 = ((v27 * v7) - (((v38 * v26) - (v36 * v28)) * v39)) + (v37 * v29);
  result = ((v28 * v7) - (((v36 * v27) - (v37 * v26)) * v39)) + (v38 * v29);
  *a2 = ((v26 * v7) - (((v37 * v28) - (v38 * v27)) * v39)) + (v36 * v29);
  a2[1] = v30;
  a2[2] = result;
  return result;
}

float32_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::getRelativeAngularVelocity@<S0>(uint64_t a1@<X0>, float32x2_t *a2@<X8>)
{
  v21 = 0;
  v22 = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v22, &v21);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(v11, v22);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v22, v20, &v18);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getActorVelocity(v21, v17, &v15);
  v3 = ((v16 - v19) - v14) + ((v16 - v19) - v14);
  v4.i32[0] = *&v11[8];
  v5 = (v12 * v12) + -0.5;
  v6 = vsub_f32(vsub_f32(v15, v18), v13);
  v7 = vadd_f32(v6, v6);
  v8 = (vmuls_lane_f32(v7.f32[1], *v11, 1) + (*v11 * v7.f32[0])) + (*&v11[8] * v3);
  v9.i32[0] = vdup_lane_s32(v7, 1).u32[0];
  v9.f32[1] = v3;
  result = ((v3 * v5) - (((-*&v11[4] * v7.f32[0]) + (*v11 * v7.f32[1])) * v12)) + (*&v11[8] * v8);
  *a2 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vneg_f32(vmla_f32(vmul_f32(v9, vneg_f32(vzip1_s32(v4, *v11))), vext_s8(v9, v7, 4uLL), *&v11[4])), v12), v7, v5), *v11, v8);
  a2[1].f32[0] = result;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::setConstraintFlags(uint64_t a1, __int16 *a2)
{
  v2 = *(a1 + 96);
  v4 = *a2;
  return (*(*v2 + 80))(v2, &v4);
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::setInvMassScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  **(v2 + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::setInvInertiaScale0(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 4) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::setInvMassScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 8) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::setInvInertiaScale1(uint64_t a1, float a2)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  *(*(v2 + 8) + 12) = a2;
  return (*(*v3 + 72))();
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::getScene(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::requiresObjects(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, *(a1 + 96));
  v5 = 0;
  v6 = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v6, &v5);
  if (v6)
  {
    result = (*(*a2 + 16))(a2);
  }

  if (v5)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::onComShift(uint64_t a1, unsigned int a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  (*(**(a1 + 96) + 56))(*(a1 + 96), &v30, v31);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v23, v31[a2 - 1]);
  v4 = 28 * a2;
  v5 = (*(a1 + v4 + 56) - v27) + (*(a1 + v4 + 56) - v27);
  v6 = (*(a1 + v4 + 60) - v28) + (*(a1 + v4 + 60) - v28);
  v7 = (*(a1 + v4 + 64) - v29) + (*(a1 + v4 + 64) - v29);
  v8 = (v26 * v26) + -0.5;
  v9 = (-(v24 * v6) - (v23 * v5)) - (v25 * v7);
  v10 = ((v26 * ((v25 * v6) - (v24 * v7))) + (v5 * v8)) - (v23 * v9);
  v11 = ((v26 * ((v23 * v7) - (v25 * v5))) + (v6 * v8)) - (v24 * v9);
  v12 = ((v26 * ((v24 * v5) - (v23 * v6))) + (v7 * v8)) - (v25 * v9);
  v14 = *(a1 + v4 + 48);
  v13 = *(a1 + v4 + 52);
  v15 = *(a1 + v4 + 40);
  v16 = *(a1 + v4 + 44);
  v17 = (((v26 * v16) - (v24 * v13)) - (v25 * v15)) + (v14 * v23);
  v18 = (((v26 * v14) - (v25 * v13)) - (v23 * v16)) + (v15 * v24);
  v19 = (((v23 * v15) + (v26 * v13)) + (v24 * v16)) + (v25 * v14);
  v20 = *(a1 + 96);
  v21 = (*(a1 + 104) + v4);
  v21[4] = (((v26 * v15) - (v23 * v13)) - (v24 * v14)) + (v16 * v25);
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v10;
  v21[9] = v11;
  v21[10] = v12;
  return (*(*v20 + 72))(v20);
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::onOriginShift(uint64_t a1, float *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16[0] = 0;
  result = (*(**(a1 + 96) + 56))(*(a1 + 96), &v15, v16);
  if (v15)
  {
    if (v16[0])
    {
      return result;
    }

    v5 = 68;
    v6 = 64;
    v7 = 60;
    v8 = 92;
    v9 = 88;
    v10 = 84;
  }

  else
  {
    v5 = 40;
    v6 = 36;
    v7 = 32;
    v8 = 64;
    v9 = 60;
    v10 = 56;
  }

  v11 = a2[1];
  *(a1 + v10) = *(a1 + v10) - *a2;
  *(a1 + v9) = *(a1 + v9) - v11;
  *(a1 + v8) = *(a1 + v8) - a2[2];
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = a2[1];
  *(v13 + v7) = *(v13 + v7) - *a2;
  *(v13 + v6) = *(v13 + v6) - v14;
  *(v13 + v5) = *(v13 + v5) - a2[2];
  return (*(*v12 + 72))(v12);
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::onConstraintRelease(void *a1)
{
  if (a1[13])
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
  }

  a1[13] = 0;
  v2 = *(*a1 + 32);

  return v2(a1);
}

uint64_t non-virtual thunk tophysx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::getExternalReference(uint64_t a1, _DWORD *a2)
{
  result = a1 - 24;
  *a2 = 0;
  return result;
}

void non-virtual thunk tophysx::Ext::SphericalJoint::~SphericalJoint(physx::Ext::SphericalJoint *this)
{
  physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::~Joint(this - 24);
}

{
  physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::~Joint(this - 24);
  v1 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

  v1();
}

double physx::Ext::SphericalJoint::SphericalJoint(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, uint64_t a5, float32x4_t *a6)
{
  v9 = 3;
  v6 = physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::Joint(a1, 256, &v9, a3, a4, a5, a6, 0x80u);
  *v6 = &unk_1F5D29718;
  v6[3] = &unk_1F5D298C0;
  v7 = v6[13];
  *(v7 + 80) = 0x3F00000000000000;
  *(v7 + 88) = 0;
  result = 0.195796399;
  *(v7 + 96) = xmmword_1E3118D90;
  *(v7 + 112) = 0;
  return result;
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::Joint(uint64_t a1, __int16 a2, __int16 *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, float32x4_t *a7, unsigned int a8)
{
  v13 = *a3;
  *(a1 + 8) = a2;
  *(a1 + 10) = v13;
  *a1 = &unk_1F5D299A0;
  *(a1 + 24) = &unk_1F5D29B38;
  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 16) = 0;
  if (a8)
  {
    v14 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, a8, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/physxextensions/src/ExtJoint.h", 454);
  }

  else
  {
    v14 = 0;
  }

  v15 = a5[1].i32[2];
  _Q1 = *a5;
  _Q2 = vmulq_f32(_Q1, _Q1);
  _S3 = a5->i64[1];
  __asm { FMLA            S2, S3, V1.S[2] }

  _S3 = HIDWORD(*a5);
  __asm { FMLA            S2, S3, V1.S[3] }

  _Q2.f32[0] = sqrtf(_Q2.f32[0]);
  v24 = vdivq_f32(*a5, vdupq_lane_s32(*_Q2.f32, 0));
  _Q2.i64[0] = a5[1].i64[0];
  *(a1 + 40) = v24;
  *(a1 + 56) = _Q2.i64[0];
  *(a1 + 64) = v15;
  _Q0 = *a7;
  _Q1 = vmulq_f32(_Q0, _Q0);
  _Q2.i32[0] = a7->i64[1];
  __asm { FMLA            S1, S2, V0.S[2] }

  _Q2.i32[0] = HIDWORD(*a7);
  __asm { FMLA            S1, S2, V0.S[3] }

  _Q1.f32[0] = sqrtf(_Q1.f32[0]);
  _Q2.i32[0] = a7[1].i32[2];
  v27 = a7[1].i64[0];
  *(a1 + 68) = vdivq_f32(*a7, vdupq_lane_s32(*_Q1.f32, 0));
  *(a1 + 84) = v27;
  *(a1 + 92) = _Q2.i32[0];
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a4);
  v28 = v63;
  v29 = (a5[1].f32[0] - v65) + (a5[1].f32[0] - v65);
  v30 = (a5[1].f32[1] - v66) + (a5[1].f32[1] - v66);
  v31 = (a5[1].f32[2] - v67) + (a5[1].f32[2] - v67);
  v32 = (v64 * v64) + -0.5;
  v33 = (-(v62 * v30) - (v61 * v29)) - (v63 * v31);
  v34 = ((v64 * ((v63 * v30) - (v62 * v31))) + (v29 * v32)) - (v61 * v33);
  v35 = (v64 * ((v61 * v31) - (v63 * v29))) + (v30 * v32);
  v36 = (v64 * ((v62 * v29) - (v61 * v30))) + (v31 * v32);
  v38 = a5->f32[2];
  v37 = a5->f32[3];
  v39 = a5->f32[1];
  v40 = (((v64 * v39) - (v62 * v37)) - (v63 * a5->f32[0])) + (v38 * v61);
  v41 = (((v64 * v38) - (v63 * v37)) - (v61 * v39)) + (a5->f32[0] * v62);
  v42 = v35 - (v62 * v33);
  v43 = (((v61 * a5->f32[0]) + (v64 * v37)) + (v62 * v39)) + (v63 * v38);
  *(v14 + 16) = (((v64 * a5->f32[0]) - (v61 * v37)) - (v62 * v38)) + (v39 * v63);
  *(v14 + 20) = v40;
  *(v14 + 24) = v41;
  *(v14 + 28) = v43;
  *(v14 + 32) = v34;
  *(v14 + 36) = v42;
  *(v14 + 40) = v36 - (v28 * v33);
  physx::Ext::Joint<physx::PxD6Joint,physx::PxD6JointGeneratedValues>::getCom(&v61, a6);
  v44 = v63;
  v45 = (a7[1].f32[0] - v65) + (a7[1].f32[0] - v65);
  v46 = (a7[1].f32[1] - v66) + (a7[1].f32[1] - v66);
  v47 = (a7[1].f32[2] - v67) + (a7[1].f32[2] - v67);
  v48 = (v64 * v64) + -0.5;
  v49 = (-(v62 * v46) - (v61 * v45)) - (v63 * v47);
  v50 = ((v64 * ((v63 * v46) - (v62 * v47))) + (v45 * v48)) - (v61 * v49);
  v51 = ((v64 * ((v61 * v47) - (v63 * v45))) + (v46 * v48)) - (v62 * v49);
  v52 = ((v64 * ((v62 * v45) - (v61 * v46))) + (v47 * v48)) - (v63 * v49);
  v54 = a7->f32[2];
  v53 = a7->f32[3];
  v55 = a7->f32[1];
  v56 = (((v64 * v55) - (v62 * v53)) - (v63 * a7->f32[0])) + (v54 * v61);
  v57 = (((v64 * v54) - (v63 * v53)) - (v61 * v55)) + (a7->f32[0] * v62);
  v58 = ((v61 * a7->f32[0]) + (v64 * v53)) + (v62 * v55);
  *(v14 + 44) = (((v64 * a7->f32[0]) - (v61 * v53)) - (v62 * v54)) + (v55 * v63);
  *(v14 + 48) = v56;
  *(v14 + 52) = v57;
  *(v14 + 56) = v58 + (v44 * v54);
  *(v14 + 60) = v50;
  *(v14 + 64) = v51;
  *(v14 + 68) = v52;
  __asm { FMOV            V0.4S, #1.0 }

  *v14 = _Q0;
  *(a1 + 104) = v14;
  return a1;
}

uint64_t physx::Ext::Joint<physx::PxSphericalJoint,physx::PxSphericalJointGeneratedValues>::~Joint(uint64_t a1)
{
  *a1 = &unk_1F5D299A0;
  *(a1 + 24) = &unk_1F5D29B38;
  if (*(a1 + 10))
  {
    if (*(a1 + 104))
    {
      (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))();
    }

    *(a1 + 104) = 0;
  }

  return a1;
}

uint64_t physx::PxTaskManager::createTaskManager(uint64_t a1, uint64_t a2)
{
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTaskMgr>::getName() [T = physx::PxTaskMgr]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 144, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/task/src/TaskManager.cpp", 144);

  return physx::PxTaskMgr::PxTaskMgr(v6, a1, a2);
}

uint64_t physx::PxTaskMgr::PxTaskMgr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F5D29BA0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1061158912;
  *(a1 + 68) = 0xFFFFFFFFLL;
  *(a1 + 76) = 0;
  physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<char const* const,unsigned int>,char const*,physx::shdfnd::Hash<char const*>,physx::shdfnd::internal::HashMapBase<char const*,unsigned int,physx::shdfnd::Hash<char const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 24, 0x40u);
  *(a1 + 80) = 0;
  v4 = physx::shdfnd::Foundation::mInstance;
  if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
  {
    v5 = "static const char *physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>::getName() [T = physx::shdfnd::MutexImpl]";
  }

  else
  {
    v5 = "<allocation names disabled>";
  }

  v6 = (*(*(v4 + 24) + 16))(v4 + 24, 72, v5, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsMutex.h", 138);
  *(a1 + 88) = v6;
  physx::shdfnd::MutexImpl::MutexImpl(v6);
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void physx::PxTaskMgr::~PxTaskMgr(physx::PxTaskMgr *this)
{
  *this = &unk_1F5D29BA0;
  v2 = *(this + 35);
  if ((v2 & 0x80000000) == 0 && (v2 & 0x7FFFFFFF) != 0 && *(this + 16) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v4 = *(this + 31);
  if ((v4 & 0x80000000) == 0 && (v4 & 0x7FFFFFFF) != 0 && *(this + 14) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  v6 = *(this + 27);
  if ((v6 & 0x80000000) == 0 && (v6 & 0x7FFFFFFF) != 0 && *(this + 12) != 0)
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  physx::shdfnd::MutexT<physx::shdfnd::ReflectionAllocator<physx::shdfnd::MutexImpl>>::~MutexT(this + 11);
  if (*(this + 3))
  {
    (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }
}

{
  physx::PxTaskMgr::~PxTaskMgr(this);
  if (v1)
  {
    v2 = *(*(physx::shdfnd::Foundation::mInstance + 24) + 24);

    v2();
  }
}

uint64_t physx::PxTaskMgr::release(uint64_t this)
{
  if (this)
  {
    return (*(*this + 96))();
  }

  return this;
}

uint64_t physx::PxTaskMgr::decrReference(uint64_t this, atomic_uint *a2)
{
  if (atomic_fetch_add(a2 + 8, 0xFFFFFFFF) == 1)
  {
    v2 = *(this + 16);
    if (v2)
    {
      return (**v2)(v2);
    }

    else
    {
      return (*(*a2 + 56))(a2);
    }
  }

  return this;
}

void *physx::PxTaskMgr::resetDependencies(void *this)
{
  v1 = this;
  *(this + 30) = 0;
  *(this + 26) = 0;
  v2 = *(this + 15);
  if (v2 && *(this + 19))
  {
    this = memset(*(this + 6), 255, (4 * v2));
    v3 = *(v1 + 40);
    v4 = (*(v1 + 56) - 1);
    if (*(v1 + 56) == 1)
    {
      v12 = 0;
    }

    else
    {
      _X10 = v3 + 128;
      v6 = 1;
      do
      {
        __asm { PRFM            #0, [X10] }

        *(_X10 - 128) = v6++;
        _X10 += 4;
        --v4;
      }

      while (v4);
      v12 = (*(v1 + 56) - 1);
    }

    *(v3 + 4 * v12) = -1;
    *(v1 + 68) = 0;
    *(v1 + 76) = 0;
  }

  *(v1 + 80) = 0;
  return this;
}

uint64_t physx::PxTaskMgr::startSimulation(uint64_t this)
{
  if (*(this + 80))
  {
    v1 = this;
    v6 = 0;
    if (*(this + 120))
    {
      v2 = 0;
      do
      {
        v3 = *(v1 + 112) + 24 * v2;
        if (*(v3 + 12) != 2 && atomic_fetch_add((v3 + 8), 0xFFFFFFFF) == 1)
        {
          v4 = *(v1 + 136);
          if ((*(v1 + 140) & 0x7FFFFFFFu) <= v4)
          {
            this = physx::shdfnd::Array<unsigned int,physx::shdfnd::ReflectionAllocator<unsigned int>>::growAndPushBack(v1 + 128, &v6);
          }

          else
          {
            *(*(v1 + 128) + 4 * v4) = v6;
            ++*(v1 + 136);
          }
        }

        v2 = v6 + 1;
        v6 = v2;
      }

      while (v2 < *(v1 + 120));
    }

    if (*(v1 + 136))
    {
      v5 = 0;
      do
      {
        this = physx::PxTaskMgr::dispatchTask(v1, *(*(v1 + 128) + 4 * v5++));
      }

      while (v5 < *(v1 + 136));
    }

    *(v1 + 136) = 0;
  }

  return this;
}

uint64_t physx::PxTaskMgr::dispatchTask(pthread_mutex_t **this, unsigned int a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[11]);
  }

  v4 = this[14] + 24 * a2;
  v5 = *(v4 + 12);
  if (!v5)
  {
    result = (*this[2]->__sig)(this[2], *v4);
LABEL_11:
    *(v4 + 12) = 2;
    goto LABEL_12;
  }

  if (v5 == 1)
  {
LABEL_10:
    result = physx::PxTaskMgr::resolveRow(this, a2);
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    (*(this[1]->__sig + 16))(this[1], 2, "Unknown task type", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/task/src/TaskManager.cpp", 448);
    goto LABEL_10;
  }

  result = (*(this[1]->__sig + 16))(this[1], 2, "PxTask dispatched twice", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/task/src/TaskManager.cpp", 431);
LABEL_12:
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v7 = this[11];

    return pthread_mutex_unlock(v7);
  }

  return result;
}

uint64_t physx::PxTaskMgr::getNamedTask(pthread_mutex_t **this, const char *__s2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(this[11]);
  }

  if (!*(this + 19))
  {
    goto LABEL_14;
  }

  v4 = *__s2;
  if (*__s2)
  {
    v5 = __s2 + 1;
    v6 = 5381;
    do
    {
      v6 = (33 * v6) ^ v4;
      v7 = *v5++;
      v4 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 5381;
  }

  v8 = *(&this[6]->__sig + (v6 & (*(this + 15) - 1)));
  if (v8 == -1)
  {
LABEL_14:
    v10 = 0;
  }

  else
  {
    v9 = this[4];
    while (strcmp(*(&v9->__sig + 2 * v8), __s2))
    {
      v8 = *(&this[5]->__sig + v8);
      if (v8 == -1)
      {
        goto LABEL_14;
      }
    }

    v10 = v9 + 16 * v8;
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(this[11]);
    if (v10)
    {
      return *(v10 + 2);
    }
  }

  else if (v10)
  {
    return *(v10 + 2);
  }

  v12 = *&(*this)->__opaque[48];

  return v12(this, 0, __s2, 1);
}

uint64_t physx::PxTaskMgr::getTaskFromID(physx::PxTaskMgr *this, unsigned int a2)
{
  if ((physx::shdfnd::g_alwaysUseLocking & 1) == 0 && (physx::shdfnd::g_isLockingEnabled & 1) == 0)
  {
    return *(*(this + 14) + 24 * a2);
  }

  pthread_mutex_lock(*(this + 11));
  v4 = *(*(this + 14) + 24 * a2);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(this + 11));
  }

  return v4;
}

uint64_t physx::PxTaskMgr::submitNamedTask(uint64_t a1, uint64_t a2, char *__s2, int a4)
{
  if (a2)
  {
    *(a2 + 16) = a1;
    (*(*a2 + 64))(a2);
  }

  v8 = &re::introspect_BOOL(BOOL)::info;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 88));
  }

  if (!*(a1 + 76))
  {
    goto LABEL_16;
  }

  v9 = *__s2;
  if (*__s2)
  {
    v10 = __s2 + 1;
    v11 = 5381;
    do
    {
      v11 = (33 * v11) ^ v9;
      v12 = *v10++;
      v9 = v12;
    }

    while (v12);
  }

  else
  {
    v11 = 5381;
  }

  v13 = *(*(a1 + 48) + 4 * (v11 & (*(a1 + 60) - 1)));
  if (v13 == -1)
  {
LABEL_16:
    atomic_fetch_add((a1 + 80), 1u);
    v15 = *(a1 + 120);
    v16 = *(a1 + 60);
    if (v16)
    {
      v17 = *__s2;
      if (*__s2)
      {
        v18 = __s2 + 1;
        v19 = 5381;
        do
        {
          v19 = (33 * v19) ^ v17;
          v20 = *v18++;
          v17 = v20;
        }

        while (v20);
      }

      else
      {
        v19 = 5381;
      }

      v21 = v19 & (v16 - 1);
      v22 = *(*(a1 + 48) + 4 * v21);
      if (v22 != -1)
      {
        v23 = *(a1 + 32);
        while (strcmp(*(v23 + 16 * v22), __s2))
        {
          v22 = *(*(a1 + 40) + 4 * v22);
          if (v22 == -1)
          {
            v8 = &re::introspect_BOOL(BOOL)::info;
            goto LABEL_28;
          }
        }

        v30 = v23 + 16 * v22;
        v8 = &re::introspect_BOOL(BOOL)::info;
        goto LABEL_44;
      }
    }

    else
    {
      v21 = 0;
    }

LABEL_28:
    if (*(a1 + 76) == *(a1 + 56))
    {
      if (v16)
      {
        v24 = 2 * v16;
      }

      else
      {
        v24 = 16;
      }

      if (v16 < v24)
      {
        physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<char const* const,unsigned int>,char const*,physx::shdfnd::Hash<char const*>,physx::shdfnd::internal::HashMapBase<char const*,unsigned int,physx::shdfnd::Hash<char const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(a1 + 24, v24);
        v16 = *(a1 + 60);
      }

      v25 = *__s2;
      if (*__s2)
      {
        v26 = __s2 + 1;
        v27 = 5381;
        do
        {
          v27 = (33 * v27) ^ v25;
          v28 = *v26++;
          v25 = v28;
        }

        while (v28);
      }

      else
      {
        v27 = 5381;
      }

      v21 = v27 & (v16 - 1);
    }

    v31 = *(a1 + 68);
    *(a1 + 68) = v31 + 1;
    v32 = *(a1 + 48);
    v33 = *(a1 + 32);
    *(*(a1 + 40) + 4 * v31) = *(v32 + 4 * v21);
    *(v32 + 4 * v21) = v31;
    *(a1 + 72) = vadd_s32(*(a1 + 72), 0x100000001);
    v30 = v33 + 16 * v31;
    *v30 = __s2;
LABEL_44:
    *(v30 + 8) = v15;
    if (a2)
    {
      *(a2 + 24) = v15;
    }

    DWORD2(v38) = 1;
    v39 = -1;
    *&v38 = a2;
    HIDWORD(v38) = a4;
    v34 = *(a1 + 120);
    if ((*(a1 + 124) & 0x7FFFFFFFu) <= v34)
    {
      physx::shdfnd::Array<physx::PxTaskTableRow,physx::shdfnd::ReflectionAllocator<physx::PxTaskTableRow>>::growAndPushBack(a1 + 112, &v38);
    }

    else
    {
      v35 = *(a1 + 112) + 24 * v34;
      v36 = v38;
      *(v35 + 16) = v39;
      *v35 = v36;
      ++*(a1 + 120);
    }

    goto LABEL_49;
  }

  v14 = *(a1 + 32);
  while (strcmp(*(v14 + 16 * v13), __s2))
  {
    v13 = *(*(a1 + 40) + 4 * v13);
    if (v13 == -1)
    {
      goto LABEL_16;
    }
  }

  v15 = *(v14 + 16 * v13 + 8);
  if (a2)
  {
    v29 = *(a1 + 112) + 24 * v15;
    *v29 = a2;
    *(v29 + 12) = a4;
    *(a2 + 24) = v15;
  }

LABEL_49:
  if (v8[3416] & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 88));
  }

  return v15;
}

uint64_t physx::PxTaskMgr::submitUnnamedTask(uint64_t a1, uint64_t a2, int a3)
{
  atomic_fetch_add((a1 + 80), 1u);
  *(a2 + 16) = a1;
  (*(*a2 + 64))(a2);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 88));
  }

  v6 = *(a1 + 120);
  *(a2 + 24) = v6;
  DWORD2(v11) = 1;
  v12 = -1;
  *&v11 = a2;
  HIDWORD(v11) = a3;
  if ((*(a1 + 124) & 0x7FFFFFFFu) <= v6)
  {
    physx::shdfnd::Array<physx::PxTaskTableRow,physx::shdfnd::ReflectionAllocator<physx::PxTaskTableRow>>::growAndPushBack(a1 + 112, &v11);
  }

  else
  {
    v7 = *(a1 + 112) + 24 * v6;
    v8 = v11;
    *(v7 + 16) = v12;
    *v7 = v8;
    ++*(a1 + 120);
  }

  v9 = *(a2 + 24);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_unlock(*(a1 + 88));
  }

  return v9;
}

uint64_t physx::PxTaskMgr::taskCompleted(uint64_t a1, uint64_t a2)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 88));
  }

  result = physx::PxTaskMgr::resolveRow(a1, *(a2 + 24));
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v5 = *(a1 + 88);

    return pthread_mutex_unlock(v5);
  }

  return result;
}

uint64_t physx::PxTaskMgr::resolveRow(uint64_t this, unsigned int a2)
{
  v2 = this;
  for (i = *(*(this + 112) + 24 * a2 + 16); i != -1; i = v4[1])
  {
    v4 = (*(v2 + 96) + 8 * i);
    if (atomic_fetch_add((*(v2 + 112) + 24 * *v4 + 8), 0xFFFFFFFF) == 1)
    {
      this = physx::PxTaskMgr::dispatchTask(v2, *v4);
    }
  }

  atomic_fetch_add((v2 + 80), 0xFFFFFFFF);
  return this;
}

uint64_t physx::PxTaskMgr::finishBefore(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 88));
  }

  result = physx::PxTaskTableRow::addDependency(*(a1 + 112) + 24 * *(a2 + 24), a1 + 96, a3);
  atomic_fetch_add((*(a1 + 112) + 24 * a3 + 8), 1u);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v7 = *(a1 + 88);

    return pthread_mutex_unlock(v7);
  }

  return result;
}

uint64_t physx::PxTaskTableRow::addDependency(uint64_t result, uint64_t a2, unsigned int a3)
{
  v4 = result;
  v7 = a3 | 0xFFFFFFFF00000000;
  v5 = *(a2 + 8);
  if ((*(a2 + 12) & 0x7FFFFFFFu) <= v5)
  {
    result = physx::shdfnd::Array<physx::PxTaskDepTableRow,physx::shdfnd::ReflectionAllocator<physx::PxTaskDepTableRow>>::growAndPushBack(a2, &v7);
  }

  else
  {
    *(*a2 + 8 * v5) = v7;
    ++*(a2 + 8);
  }

  v6 = *(v4 + 20);
  if (v6 == -1)
  {
    *(v4 + 16) = v5;
  }

  else
  {
    *(*a2 + 8 * v6 + 4) = v5;
  }

  *(v4 + 20) = v5;
  return result;
}

uint64_t physx::PxTaskMgr::startAfter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    pthread_mutex_lock(*(a1 + 88));
  }

  result = physx::PxTaskTableRow::addDependency(*(a1 + 112) + 24 * a3, a1 + 96, *(a2 + 24));
  atomic_fetch_add((*(a1 + 112) + 24 * *(a2 + 24) + 8), 1u);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v7 = *(a1 + 88);

    return pthread_mutex_unlock(v7);
  }

  return result;
}

uint64_t physx::PxTaskMgr::addReference(uint64_t this, unsigned int a2)
{
  v3 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 88));
  }

  atomic_fetch_add((*(v3 + 112) + 24 * a2 + 8), 1u);
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v4 = *(v3 + 88);

    return pthread_mutex_unlock(v4);
  }

  return this;
}

uint64_t physx::PxTaskMgr::decrReference(uint64_t this, unsigned int a2)
{
  v3 = this;
  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    this = pthread_mutex_lock(*(this + 88));
  }

  if (atomic_fetch_add((*(v3 + 112) + 24 * a2 + 8), 0xFFFFFFFF) == 1)
  {
    this = physx::PxTaskMgr::dispatchTask(v3, a2);
  }

  if (physx::shdfnd::g_alwaysUseLocking & 1) != 0 || (physx::shdfnd::g_isLockingEnabled)
  {
    v4 = *(v3 + 88);

    return pthread_mutex_unlock(v4);
  }

  return this;
}

uint64_t physx::shdfnd::Array<physx::PxTaskDepTableRow,physx::shdfnd::ReflectionAllocator<physx::PxTaskDepTableRow>>::growAndPushBack(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTaskDepTableRow>::getName() [T = physx::PxTaskDepTableRow]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 8 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = &v8[v9];
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v8[v14] = *a2;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

void *physx::shdfnd::internal::HashBase<physx::shdfnd::Pair<char const* const,unsigned int>,char const*,physx::shdfnd::Hash<char const*>,physx::shdfnd::internal::HashMapBase<char const*,unsigned int,physx::shdfnd::Hash<char const*>,physx::shdfnd::NonTrackingAllocator>::GetKey,physx::shdfnd::NonTrackingAllocator,true>::reserveInternal(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 ^ (a2 - 1)) <= a2 - 1)
  {
    v4 = a2 | (a2 >> 1) | ((a2 | (a2 >> 1)) >> 2);
    v5 = v4 | (v4 >> 4) | ((v4 | (v4 >> 4)) >> 8);
    v2 = (v5 | HIWORD(v5)) + 1;
  }

  v6 = *(a1 + 32);
  v7 = (*(a1 + 40) * v2);
  v8 = ((-4 * (v2 + v7)) & 0xC) + 4 * (v2 + v7);
  if (v8 + 16 * v7)
  {
    v9 = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 16))(physx::shdfnd::Foundation::mInstance + 24, v8 + 16 * v7, "NonTrackedAlloc", "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsHashInternals.h", 372);
  }

  else
  {
    v9 = 0;
  }

  v10 = &v9[4 * v2];
  v11 = &v9[v8];
  result = memset(v9, 255, 4 * v2);
  if (*(a1 + 52))
  {
    v13 = 0;
    v14 = *(a1 + 8);
    do
    {
      v15 = (v14 + 16 * v13);
      v16 = *v15;
      v17 = **v15;
      if (**v15)
      {
        v18 = v16 + 1;
        v19 = 5381;
        do
        {
          v19 = (33 * v19) ^ v17;
          v20 = *v18++;
          v17 = v20;
        }

        while (v20);
      }

      else
      {
        v19 = 5381;
      }

      v21 = v19 & (v2 - 1);
      *&v10[4 * v13] = *&v9[4 * v21];
      *&v9[4 * v21] = v13;
      v22 = &v11[16 * v13];
      *v22 = v16;
      *(v22 + 2) = *(v15 + 2);
      ++v13;
    }

    while (v13 < *(a1 + 52));
  }

  if (*a1)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 32) = v7;
  *(a1 + 36) = v2;
  if (*(a1 + 44) == -1)
  {
    *(a1 + 44) = v6;
  }

  return result;
}

uint64_t physx::shdfnd::Array<physx::PxTaskTableRow,physx::shdfnd::ReflectionAllocator<physx::PxTaskTableRow>>::growAndPushBack(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if ((v4 & 0x7FFFFFFF) != 0)
  {
    v5 = 2 * v4;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = physx::shdfnd::Foundation::mInstance;
    if ((*(*physx::shdfnd::Foundation::mInstance + 40))(physx::shdfnd::Foundation::mInstance))
    {
      v7 = "static const char *physx::shdfnd::ReflectionAllocator<physx::PxTaskTableRow>::getName() [T = physx::PxTaskTableRow]";
    }

    else
    {
      v7 = "<allocation names disabled>";
    }

    result = (*(*(v6 + 24) + 16))(v6 + 24, 24 * v5, v7, "/Library/Caches/com.apple.xbs/Sources/REKit/ThirdParty/PhysX/physx/source/foundation/include/PsArray.h", 553);
    v8 = result;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    v10 = v8 + 24 * v9;
    v11 = *v3;
    v12 = v8;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      v12 += 24;
      v11 = (v11 + 24);
    }

    while (v12 < v10);
    v14 = *(v3 + 8);
  }

  else
  {
    v14 = 0;
  }

  v15 = v8 + 24 * v14;
  v16 = *a2;
  *(v15 + 16) = *(a2 + 2);
  *v15 = v16;
  if ((*(v3 + 12) & 0x80000000) == 0 && *v3)
  {
    result = (*(*(physx::shdfnd::Foundation::mInstance + 24) + 24))(physx::shdfnd::Foundation::mInstance + 24);
  }

  *v3 = v8;
  ++*(v3 + 8);
  *(v3 + 12) = v5;
  return result;
}

void *REMaterialRenderStateArrayComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::MaterialRenderStateArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

uint64_t REMaterialRenderStateArrayComponentClear(uint64_t this)
{
  *(this + 48) = 0;
  ++*(this + 56);
  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentResize(uint64_t a1, unint64_t a2)
{
  re::DynamicArray<re::MaterialRenderFlags>::resize((a1 + 32), a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t REMaterialRenderStateArrayComponentSetTriangleFillModeAtIndex(re::ecs2::Component *this, unint64_t a2, char a3)
{
  v6 = *(this + 6);
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v6 = *(this + 6);
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(this + 8) + 20 * a2;
  v9 = *(v7 + 4);
  v8 = (v7 + 4);
  if ((v9 & 1) == 0)
  {
    *v8 = 1;
  }

  v8[1] = a3;

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentGetTriangleFillModeAtIndex(void *a1, unint64_t a2, void *a3)
{
  v6 = a1[6];
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(a1 + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
    v6 = a1[6];
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = a1[8] + 20 * a2;
  v9 = *(v7 + 4);
  v8 = v7 + 4;
  result = (a3 != 0) & v9;
  if (result == 1)
  {
    *a3 = *(v8 + 1);
  }

  return result;
}

BOOL REMaterialRenderStateArrayComponentHasStateSet(void *a1, unint64_t a2)
{
  v4 = a1[6];
  if (v4 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(a1 + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
    v4 = a1[6];
  }

  if (v4 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = re::MaterialRenderFlags::flattenToOverrideFlags((a1[8] + 20 * a2));
  if (HIDWORD(v5))
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

uint64_t REMaterialRenderStateArrayComponentSetCullModeAtIndex(re::ecs2::Component *this, unint64_t a2, char a3)
{
  v6 = *(this + 6);
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v6 = *(this + 6);
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(this + 8) + 20 * a2;
  v9 = *(v7 + 2);
  v8 = (v7 + 2);
  if ((v9 & 1) == 0)
  {
    *v8 = 1;
  }

  v8[1] = a3;

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentGetCullModeAtIndex(void *a1, unint64_t a2, void *a3)
{
  v6 = a1[6];
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(a1 + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
    v6 = a1[6];
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = a1[8] + 20 * a2;
  v9 = *(v7 + 2);
  v8 = v7 + 2;
  result = (a3 != 0) & v9;
  if (result == 1)
  {
    *a3 = *(v8 + 1);
  }

  return result;
}

uint64_t REMaterialRenderStateArrayComponentClearTriangleFillModeAtIndex(re::ecs2::Component *this, unint64_t a2)
{
  v4 = *(this + 6);
  if (v4 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v4 = *(this + 6);
  }

  if (v4 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 8) + 20 * a2;
  v7 = *(v5 + 4);
  v6 = (v5 + 4);
  if (v7 == 1)
  {
    *v6 = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentClearCullModeAtIndex(re::ecs2::Component *this, unint64_t a2)
{
  v4 = *(this + 6);
  if (v4 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v4 = *(this + 6);
  }

  if (v4 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 8) + 20 * a2;
  v7 = *(v5 + 2);
  v6 = (v5 + 2);
  if (v7 == 1)
  {
    *v6 = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentSetReadsDepthAtIndex(re::ecs2::Component *this, unint64_t a2, char a3)
{
  v6 = *(this + 6);
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v6 = *(this + 6);
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(this + 8) + 20 * a2;
  v9 = *(v7 + 12);
  v8 = (v7 + 12);
  if ((v9 & 1) == 0)
  {
    *v8 = 1;
  }

  v8[1] = a3;

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentGetReadsDepthAtIndex(void *a1, unint64_t a2, _BYTE *a3)
{
  v6 = a1[6];
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(a1 + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
    v6 = a1[6];
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = a1[8] + 20 * a2;
  v9 = *(v7 + 12);
  v8 = v7 + 12;
  result = (a3 != 0) & v9;
  if (result == 1)
  {
    *a3 = *(v8 + 1);
  }

  return result;
}

uint64_t REMaterialRenderStateArrayComponentClearReadsDepthAtIndex(re::ecs2::Component *this, unint64_t a2)
{
  v4 = *(this + 6);
  if (v4 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v4 = *(this + 6);
  }

  if (v4 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 8) + 20 * a2;
  v7 = *(v5 + 12);
  v6 = (v5 + 12);
  if (v7 == 1)
  {
    *v6 = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentSetWritesDepthAtIndex(re::ecs2::Component *this, unint64_t a2, char a3)
{
  v6 = *(this + 6);
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v6 = *(this + 6);
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(this + 8) + 20 * a2;
  v9 = *(v7 + 10);
  v8 = (v7 + 10);
  if ((v9 & 1) == 0)
  {
    *v8 = 1;
  }

  v8[1] = a3;

  return re::ecs2::Component::enqueueMarkDirty(this);
}

uint64_t REMaterialRenderStateArrayComponentGetWritesDepthAtIndex(void *a1, unint64_t a2, _BYTE *a3)
{
  v6 = a1[6];
  if (v6 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(a1 + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(a1);
    v6 = a1[6];
  }

  if (v6 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = a1[8] + 20 * a2;
  v9 = *(v7 + 10);
  v8 = v7 + 10;
  result = (a3 != 0) & v9;
  if (result == 1)
  {
    *a3 = *(v8 + 1);
  }

  return result;
}

uint64_t REMaterialRenderStateArrayComponentClearWritesDepthAtIndex(re::ecs2::Component *this, unint64_t a2)
{
  v4 = *(this + 6);
  if (v4 <= a2)
  {
    re::DynamicArray<re::MaterialRenderFlags>::resize(this + 4, a2 + 1);
    re::ecs2::Component::enqueueMarkDirty(this);
    v4 = *(this + 6);
  }

  if (v4 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(this + 8) + 20 * a2;
  v7 = *(v5 + 10);
  v6 = (v5 + 10);
  if (v7 == 1)
  {
    *v6 = 0;
  }

  return re::ecs2::Component::enqueueMarkDirty(this);
}

double RETransformServiceGetWorldMatrix4x4F(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::worldMatrix(a1, a2, 0, &v5);
  return *v5.i64;
}

void *flushDirtyComponentsQueue(void *result)
{
  if (result)
  {
    do
    {
      v1 = result;
      result = result[4];
    }

    while (result);
    v2 = v1[3];
    if (v2)
    {
      result = *(v2 + 56);
      if (result)
      {
        return (*(*result + 248))();
      }
    }
  }

  return result;
}

double RETransformServiceGetParentWorldMatrix4x4F(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::parentWorldMatrix(a1, a2, 0, &v5);
  return *&v5;
}

double RETransformServiceGetWorldUnanimatedMatrix4x4F(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::worldMatrix(a1, a2, 2, &v5);
  return *v5.i64;
}

double RETransformServiceGetParentWorldUnanimatedMatrix4x4F(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::parentWorldMatrix(a1, a2, 2, &v5);
  return *&v5;
}

double RETransformServiceGetWorldPose(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::worldTransform(a1, a2, 0, v5);
  return *&v5[4];
}

double RETransformServiceGetWorldPosition(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::worldTransform(a1, a2, 0, v5);
  return *&v5[4];
}

double RETransformServiceGetWorldOrientation(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::worldTransform(a1, a2, 0, v5);
  return *&v5[2];
}

double RETransformServiceGetWorldScale(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::worldTransform(a1, a2, 0, v5);
  return v5[0];
}

double RETransformServiceGetWorldSRT(uint64_t a1, re::ecs2::Entity *a2)
{
  flushDirtyComponentsQueue(a2);
  re::TransformService::worldTransform(a1, a2, 0, &v5);
  return *&v5;
}

uint64_t REPbrMaterialParametersSetColorTint(uint64_t a1, int a2, int8x16_t a3)
{
  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*a3.i32 == *(v4 + 368) && *&a3.i32[1] == *(v4 + 372) && (v5 = vceq_f32(*&vextq_s8(a3, a3, 8uLL), *(v4 + 376)), (v5.i8[0] & 1) != 0) && (v5.i8[4] & 1) != 0 && *(v4 + 384) == a2)
  {
    v6 = *(v4 + 520);
  }

  else
  {
    *(v4 + 368) = a3;
    *(v4 + 384) = a2;
    v6 = *(v4 + 520) | 1;
  }

  v7 = *(v4 + 516);
  *(v4 + 516) = v7 | 1;
  *(v4 + 520) = v7 | v6;

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t REPbrMaterialParametersClearColorTint(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFFFE;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetColorTint(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v6 = *(v5 + 516);
  if (v6)
  {
    v7 = *(v5 + 384);
    *a2 = *(v5 + 368);
    *a3 = v7;
  }

  return v6 & 1;
}

uint64_t REPbrMaterialParametersSetColorTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 32);
  *(v3 + 32) = v7;
  v7 = v4;
  v5 = *(v3 + 48);
  *(v3 + 48) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetAmbientOcclusionTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 56);
  *(v3 + 56) = v7;
  v7 = v4;
  v5 = *(v3 + 72);
  *(v3 + 72) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetMetallicScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 388) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 388) = a2;
    v4 = *(v3 + 520) | 2;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 2;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearMetallicScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFFFD;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetMetallicScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 2) != 0)
  {
    *a2 = *(v3 + 388);
  }

  return (v4 >> 1) & 1;
}

uint64_t REPbrMaterialParametersSetMetallicTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 104);
  *(v3 + 104) = v7;
  v7 = v4;
  v5 = *(v3 + 120);
  *(v3 + 120) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetRoughnessScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 396) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 396) = a2;
    v4 = *(v3 + 520) | 8;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 8;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearRoughnessScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFFF7;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetRoughnessScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 8) != 0)
  {
    *a2 = *(v3 + 396);
  }

  return (v4 >> 3) & 1;
}

uint64_t REPbrMaterialParametersSetRoughnessTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 128);
  *(v3 + 128) = v7;
  v7 = v4;
  v5 = *(v3 + 144);
  *(v3 + 144) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetEmissiveColor(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::PbrMaterialParameters::setValue<re::ColorGamut3F>(v4 + 32, v4 + 400, a3.n128_u32[0] | (a3.n128_u32[1] << 32), a3.n128_u32[2] | (a2 << 32), 4);

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t REPbrMaterialParametersClearEmissiveColor(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFFEF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetEmissiveColor(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v7 = *(v5 + 516);
  if ((v7 & 0x10) != 0)
  {
    v8 = *(v5 + 408);
    *&v6 = *(v5 + 400);
    DWORD2(v6) = v8;
    *a2 = v6;
    *a3 = BYTE4(v8);
  }

  return (v7 >> 4) & 1;
}

uint64_t REPbrMaterialParametersSetEmissiveScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 416) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 416) = a2;
    v4 = *(v3 + 520) | 0x20;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 0x20;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearEmissiveScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFFDF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetEmissiveScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x20) != 0)
  {
    *a2 = *(v3 + 416);
  }

  return (v4 >> 5) & 1;
}

uint64_t REPbrMaterialParametersSetEmissiveTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 80);
  *(v3 + 80) = v7;
  v7 = v4;
  v5 = *(v3 + 96);
  *(v3 + 96) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetSpecularScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 392) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 392) = a2;
    v4 = *(v3 + 520) | 4;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 4;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearSpecularScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFFFB;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetSpecularScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 4) != 0)
  {
    *a2 = *(v3 + 392);
  }

  return (v4 >> 2) & 1;
}

uint64_t REPbrMaterialParametersSetSpecularTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 152);
  *(v3 + 152) = v7;
  v7 = v4;
  v5 = *(v3 + 168);
  *(v3 + 168) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetOpacity(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 380) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 380) = a2;
    v4 = *(v3 + 520) | 1;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 1;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersGetOpacity(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if (v4)
  {
    *a2 = *(v3 + 380);
  }

  return v4 & 1;
}

uint64_t REPbrMaterialParametersSetOpacityTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 200);
  *(v3 + 200) = v7;
  v7 = v4;
  v5 = *(v3 + 216);
  *(v3 + 216) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetClearcoatScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 424) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 424) = a2;
    v4 = *(v3 + 520) | 0x80;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 0x80;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearClearcoatScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFF7F;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetClearcoatScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x80) != 0)
  {
    *a2 = *(v3 + 424);
  }

  return (v4 >> 7) & 1;
}

uint64_t REPbrMaterialParametersSetClearcoatTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 296);
  *(v3 + 296) = v7;
  v7 = v4;
  v5 = *(v3 + 312);
  *(v3 + 312) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetClearcoatRoughnessScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 428) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 428) = a2;
    v4 = *(v3 + 520) | 0x100;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 0x100;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearClearcoatRoughnessScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFEFF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetClearcoatRoughnessScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x100) != 0)
  {
    *a2 = *(v3 + 428);
  }

  return (v4 >> 8) & 1;
}

uint64_t REPbrMaterialParametersSetClearcoatRoughnessTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 272);
  *(v3 + 272) = v7;
  v7 = v4;
  v5 = *(v3 + 288);
  *(v3 + 288) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetClearcoatNormalTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 344);
  *(v3 + 344) = v7;
  v7 = v4;
  v5 = *(v3 + 360);
  *(v3 + 360) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetAnisotropyLevelScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 432) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 432) = a2;
    v4 = *(v3 + 520) | 0x200;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 0x200;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearAnisotropyLevelScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFDFF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetAnisotropyLevelScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x200) != 0)
  {
    *a2 = *(v3 + 432);
  }

  return (v4 >> 9) & 1;
}

uint64_t REPbrMaterialParametersSetAnisotropyLevelTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 224);
  *(v3 + 224) = v7;
  v7 = v4;
  v5 = *(v3 + 240);
  *(v3 + 240) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetAnisotropyAngleScale(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 436) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 436) = a2;
    v4 = *(v3 + 520) | 0x400;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 0x400;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearAnisotropyAngleScale(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFFBFF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetAnisotropyAngleScale(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x400) != 0)
  {
    *a2 = *(v3 + 436);
  }

  return (v4 >> 10) & 1;
}

uint64_t REPbrMaterialParametersSetAnisotropyAngleTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 248);
  *(v3 + 248) = v7;
  v7 = v4;
  v5 = *(v3 + 264);
  *(v3 + 264) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetSheenColorTint(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::PbrMaterialParameters::setValue<re::ColorGamut3F>(v4 + 32, v4 + 440, a3.n128_u32[0] | (a3.n128_u32[1] << 32), a3.n128_u32[2] | (a2 << 32), 11);

  return re::ecs2::Component::enqueueMarkDirty(v4);
}

uint64_t REPbrMaterialParametersClearSheenColorTint(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFF7FF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetSheenColorTint(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v7 = *(v5 + 516);
  if ((v7 & 0x800) != 0)
  {
    v8 = *(v5 + 448);
    *&v6 = *(v5 + 440);
    DWORD2(v6) = v8;
    *a2 = v6;
    *a3 = BYTE4(v8);
  }

  return (v7 >> 11) & 1;
}

uint64_t REPbrMaterialParametersSetSheenColorTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 320);
  *(v3 + 320) = v7;
  v7 = v4;
  v5 = *(v3 + 336);
  *(v3 + 336) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersSetUVTransform0(uint64_t a1, float32x4_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if ((vminvq_u32(vceqq_f32(v2[29], a2)) & 0x80000000) != 0)
  {
    v3 = v2[32].i32[2];
  }

  else
  {
    v2[29] = a2;
    v3 = v2[32].i32[2] | 0x1000;
  }

  v4 = v2[32].i32[1];
  v2[32].i32[1] = v4 | 0x1000;
  v2[32].i32[2] = v4 | v3;

  return re::ecs2::Component::enqueueMarkDirty(v2);
}

uint64_t REPbrMaterialParametersClearUVTransform0(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFEFFF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetUVTransform0(uint64_t a1, void *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x1000) != 0)
  {
    v5 = *(v3 + 472);
    *a2 = *(v3 + 464);
    a2[1] = v5;
  }

  return (v4 >> 12) & 1;
}

uint64_t REPbrMaterialParametersSetUVOffset0(uint64_t a1, float32x2_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = vceq_f32(v3[62], a2);
  if ((vpmin_u32(v4, v4).u32[0] & 0x80000000) != 0)
  {
    v5 = v3[65].i32[0];
  }

  else
  {
    v3[62] = a2;
    v5 = v3[65].i32[0] | 0x4000;
  }

  v6 = v3[64].i32[1];
  v3[64].i32[1] = v6 | 0x4000;
  v3[65].i32[0] = v6 | v5;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearUVOffset0(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFBFFF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetUVOffset0(uint64_t a1, void *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x4000) != 0)
  {
    *a2 = *(v3 + 496);
  }

  return (v4 >> 14) & 1;
}

uint64_t REPbrMaterialParametersSetUVTransform1(uint64_t a1, float32x4_t a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if ((vminvq_u32(vceqq_f32(v2[30], a2)) & 0x80000000) != 0)
  {
    v3 = v2[32].i32[2];
  }

  else
  {
    v2[30] = a2;
    v3 = v2[32].i32[2] | 0x2000;
  }

  v4 = v2[32].i32[1];
  v2[32].i32[1] = v4 | 0x2000;
  v2[32].i32[2] = v4 | v3;

  return re::ecs2::Component::enqueueMarkDirty(v2);
}

uint64_t REPbrMaterialParametersClearUVTransform1(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFFDFFF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetUVTransform1(uint64_t a1, void *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x2000) != 0)
  {
    v5 = *(v3 + 488);
    *a2 = *(v3 + 480);
    a2[1] = v5;
  }

  return (v4 >> 13) & 1;
}

uint64_t REPbrMaterialParametersSetUVOffset1(uint64_t a1, float32x2_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = vceq_f32(v3[63], a2);
  if ((vpmin_u32(v4, v4).u32[0] & 0x80000000) != 0)
  {
    v5 = v3[65].i32[0];
  }

  else
  {
    v3[63] = a2;
    v5 = v3[65].i32[0] | 0x8000;
  }

  v6 = v3[64].i32[1];
  v3[64].i32[1] = v6 | 0x8000;
  v3[65].i32[0] = v6 | v5;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersClearUVOffset1(uint64_t a1)
{
  result = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v2 = *(result + 516);
  *(result + 516) = v2 & 0xFFFF7FFF;
  *(result + 520) |= v2;
  return result;
}

uint64_t REPbrMaterialParametersGetUVOffset1(uint64_t a1, void *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x8000) != 0)
  {
    *a2 = *(v3 + 504);
  }

  return (v4 >> 15) & 1;
}

uint64_t REPbrMaterialParametersSetNormalTexture(uint64_t a1, uint64_t a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::AssetAPIHelper::assetHandleCreate(a2, &v7);
  v4 = *(v3 + 176);
  *(v3 + 176) = v7;
  v7 = v4;
  v5 = *(v3 + 192);
  *(v3 + 192) = v8;
  v8 = v5;
  re::AssetHandle::~AssetHandle(&v7);
  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t REPbrMaterialParametersGetOpacityThreshold(uint64_t a1, _DWORD *a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v4 = *(v3 + 516);
  if ((v4 & 0x40) != 0)
  {
    *a2 = *(v3 + 420);
  }

  return (v4 >> 6) & 1;
}

uint64_t REPbrMaterialParametersSetOpacityThreshold(uint64_t a1, float a2)
{
  v3 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (*(v3 + 420) == a2)
  {
    v4 = *(v3 + 520);
  }

  else
  {
    *(v3 + 420) = a2;
    v4 = *(v3 + 520) | 0x40;
  }

  v5 = *(v3 + 516);
  *(v3 + 516) = v5 | 0x40;
  *(v3 + 520) = v5 | v4;

  return re::ecs2::Component::enqueueMarkDirty(v3);
}

uint64_t re::PbrMaterialParameters::setValue<re::ColorGamut3F>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *a2 == *&a3 && *(a2 + 4) == *(&a3 + 1) && *(a2 + 8) == *&a4;
  if (v6 && *(a2 + 12) == BYTE4(a4))
  {
    v7 = *(result + 488);
    v8 = 1 << a5;
  }

  else
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    *(a2 + 12) = BYTE4(a4);
    v8 = 1 << a5;
    v7 = *(result + 488) | (1 << a5);
  }

  v9 = *(result + 484);
  *(result + 484) = v9 | v8;
  *(result + 488) = v9 | v7;
  return result;
}

void *REAudioMixGroupsComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::AudioMixGroupsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
}

unint64_t REAudioMixGroupsComponentCreateMixGroupID()
{
  for (__buf = 0; __buf < 0x3E8; result = __buf)
  {
    arc4random_buf(&__buf, 8uLL);
  }

  return result;
}

void REAudioMixGroupsComponentUpdateGroup(re::ecs2::AudioPlayerComponent *a1, uint64_t a2, char a3, float a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v7 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v9);
  if (v7)
  {
    *(v7 + 104) = a4;
    *(v7 + 88) = a3;
    re::ecs2::AudioPlayerComponent::markDirtyAndMarkDirtyForNetwork(a1);
  }

  else
  {
    v8 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v9;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "REAudioMixGroupsComponentUpdateGroup could not find a group with id %llu.", buf, 0xCu);
    }
  }
}

void REAudioMixGroupsComponentUpdateGroupGain(re::ecs2::AudioPlayerComponent *a1, uint64_t a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v9);
  if (v5)
  {
    v6 = 15.0;
    if (a3 <= 15.0)
    {
      v6 = a3;
    }

    v7 = fmaxf(v6, -60.0);
    *(v5 + 112) = v7;
    *(v5 + 116) = v7;
    *(v5 + 108) = 0;
    *(v5 + 100) = 0;
    ++*(v5 + 124);
    re::ecs2::AudioPlayerComponent::markDirtyAndMarkDirtyForNetwork(a1);
  }

  else
  {
    v8 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v9;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "REAudioMixGroupsComponentUpdateGroupGain could not find a group with id %llu.", buf, 0xCu);
    }
  }
}

void REAudioMixGroupsComponentFadeGroup(re::ecs2::AudioMixGroupsComponent *a1, unint64_t a2, float a3, double a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v7 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v11);
  if (v7)
  {
    v8 = v7;
    isMixGroupGainDirty = re::ecs2::AudioMixGroupsComponent::isMixGroupGainDirty(a1, v11);
    re::AudioMixGroup::fadeToGainWithDuration(v8, a3, a4, isMixGroupGainDirty);
    re::ecs2::AudioPlayerComponent::markDirtyAndMarkDirtyForNetwork(a1);
  }

  else
  {
    v10 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = v11;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "REAudioMixGroupsComponentFadeGroup could not find a group with id %llu.", buf, 0xCu);
    }
  }
}

void REAudioMixGroupsComponentRemoveGroup(uint64_t a1, unint64_t a2)
{
  v9 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 32, &v9, v3 ^ (v3 >> 31), v10);
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 48);
    v6 = *(v5 + 152 * v12) & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 40) + 4 * v11) = v6;
      v4 = v12;
    }

    else
    {
      *(v5 + 152 * v13) = *(v5 + 152 * v13) & 0x80000000 | v6;
    }

    re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1 + 32, v4);
    v7 = v12;
    v8 = *(a1 + 72);
    *(*(a1 + 48) + 152 * v12) = *(*(a1 + 48) + 152 * v12) & 0x80000000 | *(a1 + 68);
    --*(a1 + 60);
    *(a1 + 68) = v7;
    *(a1 + 72) = v8 + 1;
  }
}

CFTypeRef REAudioMixGroupsComponentGetGroups(uint64_t a1)
{
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v47 = 0x7FFFFFFFLL;
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 60) <= 3u ? 3 : *(a1 + 60);
    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(&v44, v1, v3);
    v4 = *(a1 + 64);
    if (v4)
    {
      v5 = 0;
      for (i = 0; i < v4; ++i)
      {
        v7 = *(a1 + 48);
        if ((*(v7 + v5) & 0x80000000) != 0)
        {
          v8 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v44, *(v7 + v5 + 144) % DWORD2(v45), *(v7 + v5 + 144));
          v9 = *(a1 + 48) + v5;
          *(v8 + 8) = *(v9 + 8);
          re::DynamicString::DynamicString((v8 + 16), (v9 + 16));
          *(v8 + 48) = *(v9 + 48);
          re::DynamicArray<char const*>::DynamicArray(v8 + 64, (v9 + 64));
          v10 = *(v9 + 104);
          v11 = *(v9 + 120);
          *(v8 + 136) = *(v9 + 136);
          *(v8 + 120) = v11;
          *(v8 + 104) = v10;
          v4 = *(a1 + 64);
        }

        v5 += 152;
      }
    }
  }

  v12 = [MEMORY[0x1E695DF70] array];
  if (v46)
  {
    v13 = 0;
    v14 = v45;
    while (1)
    {
      v15 = *v14;
      v14 += 38;
      if (v15 < 0)
      {
        break;
      }

      if (v46 == ++v13)
      {
        v13 = v46;
        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (v46 != v13)
  {
    v16 = v45;
    LODWORD(v17) = v13;
    do
    {
      v18 = v16 + 152 * v13;
      re::DynamicString::DynamicString(&v34, (v18 + 16));
      v37 = *(v18 + 48);
      re::DynamicArray<char const*>::DynamicArray(v38, (v18 + 64));
      v19 = *(v18 + 104);
      v20 = *(v18 + 120);
      v43 = *(v18 + 136);
      v42 = v20;
      v41 = v19;
      v21 = [MEMORY[0x1E695DF90] dictionary];
      if (v35)
      {
        v22 = *&v36[7];
      }

      else
      {
        v22 = v36;
      }

      v23 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:4];
      [v21 setObject:v23 forKey:@"Name"];

      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v37];
      [v21 setObject:v24 forKey:@"ID"];

      LODWORD(v25) = HIDWORD(v42);
      v26 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
      [v21 setObject:v26 forKey:@"Gain"];

      LODWORD(v27) = v42;
      v28 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
      [v21 setObject:v28 forKey:@"Speed"];

      v29 = [MEMORY[0x1E696AD98] numberWithBool:v41];
      [v21 setObject:v29 forKey:@"MuteState"];

      [v12 addObject:v21];
      if (v38[0])
      {
        if (v40)
        {
          (*(*v38[0] + 40))();
        }

        v40 = 0;
        memset(v38, 0, sizeof(v38));
        ++v39;
      }

      if (v34 && (v35 & 1) != 0)
      {
        (*(*v34 + 40))();
      }

      if (v46 <= v17 + 1)
      {
        v30 = (v17 + 1);
      }

      else
      {
        v30 = v46;
      }

      v16 = v45;
      while (v30 - 1 != v17)
      {
        v17 = (v17 + 1);
        if ((*(v45 + 152 * v17) & 0x80000000) != 0)
        {
          v13 = v17;
          LODWORD(v30) = v17;
          goto LABEL_36;
        }
      }

      v13 = v30;
LABEL_36:
      LODWORD(v17) = v30;
    }

    while (v46 != v30);
  }

  v31 = v12;
  v32 = CFAutorelease(v31);

  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v44);
  return v32;
}

CFTypeRef REAudioMixGroupsComponentGetGroup(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v2 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v17);
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    if (*(v3 + 8))
    {
      v5 = *(v3 + 16);
    }

    else
    {
      v5 = v3 + 9;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:4];
    [v4 setObject:v8 forKey:@"Name"];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(v3 + 32)];
    [v4 setObject:v9 forKey:@"ID"];

    LODWORD(v10) = *(v3 + 116);
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    [v4 setObject:v11 forKey:@"Gain"];

    LODWORD(v12) = *(v3 + 104);
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    [v4 setObject:v13 forKey:@"Speed"];

    v14 = [MEMORY[0x1E696AD98] numberWithBool:*(v3 + 88)];
    [v4 setObject:v14 forKey:@"MuteState"];

    v15 = v4;
    v7 = CFAutorelease(v15);
  }

  else
  {
    v6 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v19 = v17;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "REAudioMixGroupsComponentGetGroup could not find a group with id %llu.", buf, 0xCu);
    }

    return 0;
  }

  return v7;
}

float REAudioMixGroupsComponentGetGroupFadeTargetGain(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v2 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v6);
  if (v2)
  {
    return *(v2 + 116);
  }

  v4 = *re::audioLogObjects(0);
  v3 = -1.0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v8 = v6;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "REAudioMixGroupsComponentGetGroupFadeTargetGain could not find a group with id %llu. The returned value is meaningless.", buf, 0xCu);
  }

  return v3;
}

float REAudioMixGroupsComponentGetGroupFadeDuration(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v2 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v6);
  if (v2)
  {
    return *(v2 + 108);
  }

  v4 = *re::audioLogObjects(0);
  v3 = -1.0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v8 = v6;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "REAudioMixGroupsComponentGetGroupFadeDuration could not find a group with id %llu. The returned value is meaningless.", buf, 0xCu);
  }

  return v3;
}

float REAudioMixGroupsGetGroupSpeed(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v2 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v6);
  if (v2)
  {
    return *(v2 + 104);
  }

  v4 = *re::audioLogObjects(0);
  v3 = 0.0;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v8 = v6;
    _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "REAudioMixGroupsGetGroupSpeed could not find a group with id %llu. The returned value is meaningless.", buf, 0xCu);
  }

  return v3;
}

uint64_t REAudioMixGroupsGetGroupMuteState(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v2 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, &v6);
  if (v2)
  {
    v3 = *(v2 + 88);
  }

  else
  {
    v4 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = v6;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "REAudioMixGroupsGetGroupMuteState could not find a group with id %llu. The returned value is meaningless.", buf, 0xCu);
    }

    v3 = 0;
  }

  return v3 & 1;
}

double REColorManagerSetWorkingColorGamut(unsigned __int8 *a1, int a2)
{
  if (*a1 != a2)
  {
    v9 = v2;
    v10 = v3;
    *a1 = a2;
    re::ColorHelpers::computeGamutTransformMatrix(a2, a1[1], v7);
    v5 = v7[1];
    *(a1 + 1) = v7[0];
    *(a1 + 2) = v5;
    result = *&v8;
    *(a1 + 3) = v8;
  }

  return result;
}

double REColorManagerSetTargetDisplayColorGamut(unsigned __int8 *a1, unsigned int a2)
{
  if (a1[1] != a2)
  {
    v9 = v2;
    v10 = v3;
    a1[1] = a2;
    re::ColorHelpers::computeGamutTransformMatrix(*a1, a2, v7);
    v5 = v7[1];
    *(a1 + 1) = v7[0];
    *(a1 + 2) = v5;
    result = *&v8;
    *(a1 + 3) = v8;
  }

  return result;
}

void RECGColorToWorkingColorGamut(unsigned __int8 *a1, CGColor *a2, float32x4_t *a3)
{
  re::ColorGamut4F::ColorGamut4F(&v8, a2, 1);
  v5 = *a1;
  if (v9 == v5)
  {
    v6 = v8;
  }

  else
  {
    re::ColorHelpers::computeGamutTransformMatrix(v9, v5, v10);
    v7 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v10[0], v8.f32[0]), v10[1], v8.f32[1]), v10[2], v8.f32[2]);
    v7.i32[3] = 0;
    v6 = vmaxnmq_f32(v7, 0);
    v6.i32[3] = v8.i32[3];
  }

  *a3 = v6;
}

double RECGColorToColorGamut(CGColorRef color, _OWORD *a2, _BYTE *a3)
{
  re::ColorGamut4F::ColorGamut4F(&v6, color, 1);
  result = *&v6;
  *a2 = v6;
  *a3 = v7;
  return result;
}

CGColorRef RECreateCGColorFromColorGamut(char a1, __n128 a2)
{
  v3 = a2;
  v4 = a1;
  return re::ColorGamut4F::createCGColor(&v3);
}

double REColorManagerSetToeStrength(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6[0] = *(a1 + 136);
  v6[1] = v4;
  v7[0] = *(a1 + 168);
  *(v7 + 12) = *(a1 + 180);
  *v6 = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetToeLength(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6[0] = *(a1 + 136);
  v6[1] = v4;
  v7[0] = *(a1 + 168);
  *(v7 + 12) = *(a1 + 180);
  *(v6 + 1) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetShoulderStrength(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6[0] = *(a1 + 136);
  v6[1] = v4;
  v7[0] = *(a1 + 168);
  *(v7 + 12) = *(a1 + 180);
  *(v6 + 2) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetShoulderLength(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6[0] = *(a1 + 136);
  v6[1] = v4;
  v7[0] = *(a1 + 168);
  *(v7 + 12) = *(a1 + 180);
  *(v6 + 3) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetShoulderAngle(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6 = *(a1 + 136);
  v7 = v4;
  v8[0] = *(a1 + 168);
  *(v8 + 12) = *(a1 + 180);
  *&v7 = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, &v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetGamma(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6 = *(a1 + 136);
  v7 = v4;
  v8[0] = *(a1 + 168);
  *(v8 + 12) = *(a1 + 180);
  *(&v7 + 1) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, &v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetContrast(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6 = *(a1 + 136);
  v7 = v4;
  v8[0] = *(a1 + 168);
  *(v8 + 12) = *(a1 + 180);
  *(&v7 + 2) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, &v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetExposure(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 152);
  v6 = *(a1 + 136);
  v7 = v4;
  v8[0] = *(a1 + 168);
  *(v8 + 12) = *(a1 + 180);
  *(&v7 + 3) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, &v6, a4).n128_u64[0];
  return result;
}

double REColorManagerSetExposureCompensationEnabled(uint64_t a1, char a2, const re::TonemapUserParameters *a3)
{
  v3 = *(a1 + 168);
  v4 = *(a1 + 152);
  v6[0] = *(a1 + 136);
  v6[1] = v4;
  v7[0] = v3;
  *(v7 + 12) = *(a1 + 180);
  LOBYTE(v7[0]) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v6, a3).n128_u64[0];
  return result;
}

double REColorManagerSetExposureCompensationInputScalar(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 168);
  v5 = *(a1 + 152);
  v7[0] = *(a1 + 136);
  v7[1] = v5;
  v8[0] = v4;
  *(v8 + 12) = *(a1 + 180);
  *(v8 + 1) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v7, a4).n128_u64[0];
  return result;
}

double REColorManagerSetExposureCompensationTargetScalar(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  v4 = *(a1 + 168);
  v5 = *(a1 + 152);
  v7[0] = *(a1 + 136);
  v7[1] = v5;
  v8[0] = v4;
  *(v8 + 12) = *(a1 + 180);
  *(v8 + 2) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v7, a4).n128_u64[0];
  return result;
}

double REColorManagerSetRABEnabled(uint64_t a1, char a2, const re::TonemapUserParameters *a3)
{
  v6[0] = *(a1 + 168);
  *(v6 + 12) = *(a1 + 180);
  v3 = *(a1 + 152);
  v5[0] = *(a1 + 136);
  v5[1] = v3;
  BYTE12(v6[0]) = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v5, a3).n128_u64[0];
  return result;
}

double REColorManagerSetSystemScalarMode(uint64_t a1, int a2, const re::TonemapUserParameters *a3)
{
  *&v6[12] = *(a1 + 180);
  v3 = *(a1 + 152);
  v5[0] = *(a1 + 136);
  v5[1] = v3;
  *v6 = *(a1 + 168);
  *&v6[16] = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v5, a3).n128_u64[0];
  return result;
}

double REColorManagerSetTargetSDRNits(uint64_t a1, float a2, uint64_t a3, const re::TonemapUserParameters *a4)
{
  *&v7[12] = *(a1 + 180);
  v4 = *(a1 + 152);
  v6[0] = *(a1 + 136);
  v6[1] = v4;
  *v7 = *(a1 + 168);
  *&v7[20] = a2;
  *&result = re::ColorManager::setTonemapUserParameters(a1, v6, a4).n128_u64[0];
  return result;
}

uint64_t REColorManagerGetTonemapLut(uint64_t a1, void *__dst, unint64_t a3)
{
  if (a3 < 0x1000)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 4096;
  memcpy(__dst, (a1 + 224), 0x1000uLL);
  return v3;
}

uint64_t REColorManagerGetTonemapInverseLut(uint64_t a1, void *__dst, unint64_t a3)
{
  if (a3 < 0x1000)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 4096;
  memcpy(__dst, (a1 + 4320), 0x1000uLL);
  return v3;
}

float REColorManagerSetAverageAREnvLightIntensity(uint64_t a1, float a2)
{
  result = *(a1 + 12528) + ((a2 - *(a1 + 12528)) * 0.05);
  *(a1 + 12528) = result;
  return result;
}

void *REHierarchicalTintComponentGetComponentType()
{
  if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
  }

  return re::ecs2::ComponentImpl<re::ecs2::HierarchicalTintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
}

uint64_t REHierarchicalTintComponentSetTintAmount(float *a1, re::ecs2::Component *a2, float a3)
{
  a1[7] = a3;
  re::ecs2::NetworkComponent::markComponentDirty(a1, a2);

  return re::ecs2::Component::enqueueMarkDirty(a1);
}

uint64_t getRenderCallbacksComponent(re::ecs2::Scene *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = re::ecs2::ComponentHelper::privateSceneDataEntity(a1, 1);
    if (v1)
    {
      result = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderCallbacksComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (result)
      {
        return result;
      }

      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315138;
        v6 = "getRenderCallbacksComponent";
        v4 = "%s: invalid component\n";
LABEL_10:
        _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, v4, &v5, 0xCu);
      }
    }

    else
    {
      v3 = *re::graphicsLogObjects(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315138;
        v6 = "getRenderCallbacksComponent";
        v4 = "%s: invalid private scene entity\n";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v3 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "getRenderCallbacksComponent";
      v4 = "%s: invalid scene\n";
      goto LABEL_10;
    }
  }

  return 0;
}

id RERenderCallbacksPostProcessGetDevice(id *a1)
{
  if (a1)
  {
    v1 = *a1;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  return v1;
}

id RERenderCallbacksPostProcessGetCommandBuffer(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  v2 = v1;

  return v1;
}

id *RERenderCallbacksPostProcessGetSourceColorTexture(id *a1)
{
  if (a1)
  {
    a1 = a1[2];
  }

  v1 = a1;
  v2 = v1;
  if (v1)
  {
  }

  return v2;
}

id *RERenderCallbacksPostProcessGetSourceDepthTexture(id *a1)
{
  if (a1)
  {
    a1 = a1[3];
  }

  v1 = a1;
  v2 = v1;
  if (v1)
  {
  }

  return v2;
}

id *RERenderCallbacksPostProcessGetTargetColorTexture(id *a1)
{
  if (a1)
  {
    a1 = a1[4];
  }

  v1 = a1;
  v2 = v1;
  if (v1)
  {
  }

  return v2;
}

double RERenderCallbacksPostProcessGetSimulationTime(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0.0;
  }
}

__n128 RERenderCallbacksPostProcessGetProjection(uint64_t a1)
{
  v1 = a1 + 48;
  if (!a1)
  {
    v1 = MEMORY[0x1E69E9B18];
  }

  return *v1;
}

void RESceneSetPostProcessRenderCallback(re::ecs2::Scene *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  RenderCallbacksComponent = getRenderCallbacksComponent(a1);
  if (RenderCallbacksComponent)
  {
    v7 = RenderCallbacksComponent;
    v8 = _Block_copy(v5);
    re::ObjCObject::operator=((v7 + 32), v8);

    re::ObjCObject::operator=((v7 + 40), v9);
  }
}

void *REScenePostProcessRenderCallbackAddOneOffCameraViewHandle(re::ecs2::Scene *a1, uint64_t a2)
{
  v3 = a2;
  result = getRenderCallbacksComponent(a1);
  if (result)
  {
    return re::DynamicArray<unsigned long>::add(result + 13, &v3);
  }

  return result;
}

uint64_t REScenePostProcessRenderCallbackAddCameraViewHandle(re::ecs2::Scene *a1, unint64_t a2)
{
  v11 = a2;
  result = getRenderCallbacksComponent(a1);
  if (result)
  {
    v4 = result;
    v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v6 = v5 ^ (v5 >> 31);
    v7 = *(result + 80);
    if (v7)
    {
      v8 = v6 % v7;
      v9 = *(*(result + 64) + 4 * (v6 % v7));
      if (v9 != 0x7FFFFFFF)
      {
        v10 = *(result + 72);
        if (*(v10 + 24 * v9 + 16) == a2)
        {
          return result;
        }

        while (1)
        {
          LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
          if (v9 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v10 + 24 * v9 + 16) == a2)
          {
            return result;
          }
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    result = re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(result + 56, v8, v6, &v11, &v11);
    ++*(v4 + 96);
  }

  return result;
}

uint64_t REScenePostProcessRenderCallbackRemoveCameraViewHandle(re::ecs2::Scene *a1, unint64_t a2)
{
  result = getRenderCallbacksComponent(a1);
  if (result)
  {
    v4 = *(result + 80);
    if (v4)
    {
      v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
      v6 = (v5 ^ (v5 >> 31)) % v4;
      v7 = *(result + 64);
      v8 = *(v7 + 4 * v6);
      if (v8 != 0x7FFFFFFF)
      {
        v9 = *(result + 72);
        if (*(v9 + 24 * v8 + 16) == a2)
        {
          *(v7 + 4 * v6) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
LABEL_9:
          v11 = *(result + 72);
          v12 = v11 + 24 * v8;
          v15 = *(v12 + 8);
          v14 = (v12 + 8);
          v13 = v15;
          if (v15 < 0)
          {
            *v14 = v13 & 0x7FFFFFFF;
            v11 = *(result + 72);
            v13 = *(v11 + 24 * v8 + 8);
          }

          v16 = *(result + 96);
          *(v11 + 24 * v8 + 8) = *(result + 92) | v13 & 0x80000000;
          --*(result + 84);
          *(result + 92) = v8;
          *(result + 96) = v16 + 1;
        }

        else
        {
          while (1)
          {
            v10 = v8;
            LODWORD(v8) = *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
            if (v8 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v9 + 24 * v8 + 16) == a2)
            {
              *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v8 + 8) & 0x7FFFFFFF;
              goto LABEL_9;
            }
          }
        }
      }
    }
  }

  return result;
}

void REScenePostProcessRenderCallbackClearCameraViewHandles(re::ecs2::Scene *a1)
{
  RenderCallbacksComponent = getRenderCallbacksComponent(a1);
  if (RenderCallbacksComponent)
  {
    v2 = RenderCallbacksComponent + 56;

    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(v2);
  }
}

id *RESceneGetPostProcessRenderCallback(re::ecs2::Scene *a1)
{
  RenderCallbacksComponent = getRenderCallbacksComponent(a1);
  if (RenderCallbacksComponent)
  {
    RenderCallbacksComponent = RenderCallbacksComponent[5];
  }

  return RenderCallbacksComponent;
}

void RESceneSetPrepareWithDeviceRenderCallback(re::ecs2::Scene *a1, void *a2)
{
  aBlock = a2;
  RenderCallbacksComponent = getRenderCallbacksComponent(a1);
  if (RenderCallbacksComponent)
  {
    v4 = RenderCallbacksComponent;
    v5 = _Block_copy(aBlock);
    re::ObjCObject::operator=((v4 + 48), v5);
  }
}

id *RESceneGetPrepareWithDeviceRenderCallback(re::ecs2::Scene *a1)
{
  RenderCallbacksComponent = getRenderCallbacksComponent(a1);
  if (RenderCallbacksComponent)
  {
    RenderCallbacksComponent = _Block_copy(RenderCallbacksComponent[6]);
  }

  return RenderCallbacksComponent;
}

uint64_t REBindPointCreateReferenceForEntity(re *a1, const char *a2)
{
  result = REBindPointCreateReferenceForEntityString(a1, a2);
  if (!result)
  {
    result = REBindPointCreateReferenceForEntityBool(a1, a2);
    if (!result)
    {
      result = REBindPointCreateReferenceForEntityInt8(a1, a2);
      if (!result)
      {
        result = REBindPointCreateReferenceForEntityUInt8(a1, a2);
        if (!result)
        {
          result = REBindPointCreateReferenceForEntityInt16(a1, a2);
          if (!result)
          {
            result = REBindPointCreateReferenceForEntityUInt16(a1, a2);
            if (!result)
            {
              result = REBindPointCreateReferenceForEntityInt32(a1, a2);
              if (!result)
              {
                result = REBindPointCreateReferenceForEntityUInt32(a1, a2);
                if (!result)
                {
                  result = REBindPointCreateReferenceForEntityInt64(a1, a2);
                  if (!result)
                  {
                    result = REBindPointCreateReferenceForEntityFloat(a1, a2);
                    if (!result)
                    {
                      result = REBindPointCreateReferenceForEntityFloat2(a1, a2);
                      if (!result)
                      {
                        result = REBindPointCreateReferenceForEntityFloat3(a1, a2);
                        if (!result)
                        {
                          result = REBindPointCreateReferenceForEntityFloat4(a1, a2);
                          if (!result)
                          {
                            result = REBindPointCreateReferenceForEntityDouble(a1, a2);
                            if (!result)
                            {
                              result = REBindPointCreateReferenceForEntityDouble2(a1, a2);
                              if (!result)
                              {
                                result = REBindPointCreateReferenceForEntityDouble3(a1, a2);
                                if (!result)
                                {
                                  result = REBindPointCreateReferenceForEntityDouble4(a1, a2);
                                  if (!result)
                                  {
                                    result = REBindPointCreateReferenceForEntityQuatF(a1, a2);
                                    if (!result)
                                    {

                                      return REBindPointCreateReferenceForEntitySRT(a1, a2);
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t REBindPointCreateReferenceForEntityString(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<re::DynamicString>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityBool(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<BOOL>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<char>(BOOL)::info = re::introspect_char(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityUInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<unsigned char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<short>(BOOL)::info = re::introspect_short(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityUInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<unsigned short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityUInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<unsigned int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityInt64(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<long long>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityFloat(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<float>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityFloat2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Vector2<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityFloat3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Vector3<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityFloat4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Vector4<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityDouble(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<double>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityDouble2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A48))
    {
      _MergedGlobals_585 = re::introspect_Vector2D(0);
      __cxa_guard_release(&qword_1EE1C4A48);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, _MergedGlobals_585, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityDouble3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A58))
    {
      qword_1EE1C4A50 = re::introspect_Vector3D(0);
      __cxa_guard_release(&qword_1EE1C4A58);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, qword_1EE1C4A50, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityDouble4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A68))
    {
      qword_1EE1C4A60 = re::introspect_Vector4D(0);
      __cxa_guard_release(&qword_1EE1C4A68);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, qword_1EE1C4A60, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityQuatF(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Quaternion<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntitySRT(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::GenericSRT<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponent(re *a1, const char *a2)
{
  result = REBindPointCreateReferenceForComponentString(a1, a2);
  if (!result)
  {
    result = REBindPointCreateReferenceForComponentBool(a1, a2);
    if (!result)
    {
      result = REBindPointCreateReferenceForComponentInt8(a1, a2);
      if (!result)
      {
        result = REBindPointCreateReferenceForComponentUInt8(a1, a2);
        if (!result)
        {
          result = REBindPointCreateReferenceForComponentInt16(a1, a2);
          if (!result)
          {
            result = REBindPointCreateReferenceForComponentUInt16(a1, a2);
            if (!result)
            {
              result = REBindPointCreateReferenceForComponentInt32(a1, a2);
              if (!result)
              {
                result = REBindPointCreateReferenceForComponentUInt32(a1, a2);
                if (!result)
                {
                  result = REBindPointCreateReferenceForComponentInt64(a1, a2);
                  if (!result)
                  {
                    result = REBindPointCreateReferenceForComponentFloat(a1, a2);
                    if (!result)
                    {
                      result = REBindPointCreateReferenceForComponentFloat2(a1, a2);
                      if (!result)
                      {
                        result = REBindPointCreateReferenceForComponentFloat3(a1, a2);
                        if (!result)
                        {
                          result = REBindPointCreateReferenceForComponentFloat4(a1, a2);
                          if (!result)
                          {
                            result = REBindPointCreateReferenceForComponentDouble(a1, a2);
                            if (!result)
                            {
                              result = REBindPointCreateReferenceForComponentDouble2(a1, a2);
                              if (!result)
                              {
                                result = REBindPointCreateReferenceForComponentDouble3(a1, a2);
                                if (!result)
                                {
                                  result = REBindPointCreateReferenceForComponentDouble4(a1, a2);
                                  if (!result)
                                  {
                                    result = REBindPointCreateReferenceForComponentQuatF(a1, a2);
                                    if (!result)
                                    {

                                      return REBindPointCreateReferenceForComponentSRT(a1, a2);
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t REBindPointCreateReferenceForComponentString(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<re::DynamicString>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentBool(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<BOOL>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<char>(BOOL)::info = re::introspect_char(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentUInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<unsigned char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<short>(BOOL)::info = re::introspect_short(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentUInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<unsigned short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentUInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<unsigned int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentInt64(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<long long>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentFloat(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<float>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentFloat2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Vector2<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentFloat3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Vector3<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentFloat4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Vector4<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentDouble(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPoint(v17, re::introspect<double>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentDouble2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A48))
    {
      _MergedGlobals_585 = re::introspect_Vector2D(0);
      __cxa_guard_release(&qword_1EE1C4A48);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, _MergedGlobals_585, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentDouble3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A58))
    {
      qword_1EE1C4A50 = re::introspect_Vector3D(0);
      __cxa_guard_release(&qword_1EE1C4A58);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, qword_1EE1C4A50, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentDouble4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A68))
    {
      qword_1EE1C4A60 = re::introspect_Vector4D(0);
      __cxa_guard_release(&qword_1EE1C4A68);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, qword_1EE1C4A60, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentQuatF(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::Quaternion<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentSRT(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPoint(v16, re::introspect<re::GenericSRT<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValues(re *a1, const char *a2)
{
  result = REBindPointCreateReferenceForEntityAnimatedValuesString(a1, a2);
  if (!result)
  {
    result = REBindPointCreateReferenceForEntityAnimatedValuesBool(a1, a2);
    if (!result)
    {
      result = REBindPointCreateReferenceForEntityAnimatedValuesInt8(a1, a2);
      if (!result)
      {
        result = REBindPointCreateReferenceForEntityAnimatedValuesUInt8(a1, a2);
        if (!result)
        {
          result = REBindPointCreateReferenceForEntityAnimatedValuesInt16(a1, a2);
          if (!result)
          {
            result = REBindPointCreateReferenceForEntityAnimatedValuesUInt16(a1, a2);
            if (!result)
            {
              result = REBindPointCreateReferenceForEntityAnimatedValuesInt32(a1, a2);
              if (!result)
              {
                result = REBindPointCreateReferenceForEntityAnimatedValuesUInt32(a1, a2);
                if (!result)
                {
                  result = REBindPointCreateReferenceForEntityAnimatedValuesInt64(a1, a2);
                  if (!result)
                  {
                    result = REBindPointCreateReferenceForEntityAnimatedValuesFloat(a1, a2);
                    if (!result)
                    {
                      result = REBindPointCreateReferenceForEntityAnimatedValuesFloat2(a1, a2);
                      if (!result)
                      {
                        result = REBindPointCreateReferenceForEntityAnimatedValuesFloat3(a1, a2);
                        if (!result)
                        {
                          result = REBindPointCreateReferenceForEntityAnimatedValuesFloat4(a1, a2);
                          if (!result)
                          {
                            result = REBindPointCreateReferenceForEntityAnimatedValuesDouble(a1, a2);
                            if (!result)
                            {
                              result = REBindPointCreateReferenceForEntityAnimatedValuesDouble2(a1, a2);
                              if (!result)
                              {
                                result = REBindPointCreateReferenceForEntityAnimatedValuesDouble3(a1, a2);
                                if (!result)
                                {
                                  result = REBindPointCreateReferenceForEntityAnimatedValuesDouble4(a1, a2);
                                  if (!result)
                                  {
                                    result = REBindPointCreateReferenceForEntityAnimatedValuesQuatF(a1, a2);
                                    if (!result)
                                    {

                                      return REBindPointCreateReferenceForEntityAnimatedValuesSRT(a1, a2);
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesString(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<re::DynamicString>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesBool(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<BOOL>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<char>(BOOL)::info = re::introspect_char(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesUInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<unsigned char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<short>(BOOL)::info = re::introspect_short(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesUInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<unsigned short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesUInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<unsigned int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesInt64(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<long long>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesFloat(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<float>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesFloat2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::Vector2<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesFloat3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::Vector3<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesFloat4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::Vector4<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesDouble(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<double>(BOOL)::info = re::introspect_double(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<double>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesDouble2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A48))
    {
      _MergedGlobals_585 = re::introspect_Vector2D(0);
      __cxa_guard_release(&qword_1EE1C4A48);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, _MergedGlobals_585, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesDouble3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A58))
    {
      qword_1EE1C4A50 = re::introspect_Vector3D(0);
      __cxa_guard_release(&qword_1EE1C4A58);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, qword_1EE1C4A50, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesDouble4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    if ((atomic_load_explicit(&qword_1EE1C4A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1C4A68))
    {
      qword_1EE1C4A60 = re::introspect_Vector4D(0);
      __cxa_guard_release(&qword_1EE1C4A68);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, qword_1EE1C4A60, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesQuatF(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Quaternion<float>>(BOOL)::info = re::introspect_QuaternionF(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::Quaternion<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForEntityAnimatedValuesSRT(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::GenericSRT<float>>(BOOL)::info = re::introspect_SRT(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::GenericSRT<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValues(re *a1, const char *a2)
{
  result = REBindPointCreateReferenceForComponentAnimatedValuesString(a1, a2);
  if (!result)
  {
    result = REBindPointCreateReferenceForComponentAnimatedValuesBool(a1, a2);
    if (!result)
    {
      result = REBindPointCreateReferenceForComponentAnimatedValuesInt8(a1, a2);
      if (!result)
      {
        result = REBindPointCreateReferenceForComponentAnimatedValuesUInt8(a1, a2);
        if (!result)
        {
          result = REBindPointCreateReferenceForComponentAnimatedValuesInt16(a1, a2);
          if (!result)
          {
            result = REBindPointCreateReferenceForComponentAnimatedValuesUInt16(a1, a2);
            if (!result)
            {
              result = REBindPointCreateReferenceForComponentAnimatedValuesInt32(a1, a2);
              if (!result)
              {
                result = REBindPointCreateReferenceForComponentAnimatedValuesUInt32(a1, a2);
                if (!result)
                {
                  result = REBindPointCreateReferenceForComponentAnimatedValuesInt64(a1, a2);
                  if (!result)
                  {
                    result = REBindPointCreateReferenceForComponentAnimatedValuesFloat(a1, a2);
                    if (!result)
                    {
                      result = REBindPointCreateReferenceForComponentAnimatedValuesFloat2(a1, a2);
                      if (!result)
                      {
                        result = REBindPointCreateReferenceForComponentAnimatedValuesFloat3(a1, a2);
                        if (!result)
                        {
                          result = REBindPointCreateReferenceForComponentAnimatedValuesFloat4(a1, a2);
                          if (!result)
                          {
                            result = REBindPointCreateReferenceForComponentAnimatedValuesDouble(a1, a2);
                            if (!result)
                            {
                              result = REBindPointCreateReferenceForComponentAnimatedValuesDouble2(a1, a2);
                              if (!result)
                              {
                                result = REBindPointCreateReferenceForComponentAnimatedValuesDouble3(a1, a2);
                                if (!result)
                                {
                                  result = REBindPointCreateReferenceForComponentAnimatedValuesDouble4(a1, a2);
                                  if (!result)
                                  {
                                    result = REBindPointCreateReferenceForComponentAnimatedValuesQuatF(a1, a2);
                                    if (!result)
                                    {

                                      return REBindPointCreateReferenceForComponentAnimatedValuesSRT(a1, a2);
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
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesString(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<re::DynamicString>(BOOL)::info = re::IntrospectionInfo<re::DynamicString>::get(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<re::DynamicString>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesBool(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<BOOL>(BOOL)::info = re::introspect_BOOL(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<BOOL>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<char>(BOOL)::info = re::introspect_char(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesUInt8(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned char>(BOOL)::info = re::introspect_uint8_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<unsigned char>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<short>(BOOL)::info = re::introspect_short(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesUInt16(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned short>(BOOL)::info = re::introspect_uint16_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<unsigned short>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<int>(BOOL)::info = re::introspect_int(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesUInt32(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<unsigned int>(BOOL)::info = re::introspect_uint32_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<unsigned int>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesInt64(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<long long>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat(re *a1, const char *a2)
{
  v2 = 0;
  v17[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v17);
    {
      re::introspect<float>(BOOL)::info = re::introspect_float(0, v9);
    }

    v10[0] = a2;
    v10[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v17, re::introspect<float>(BOOL)::info, v10, &v11);
    re::BindNode::deinit(v17);
    if (v14)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v13;
      *v2 = v11;
      *(v2 + 16) = v6;
      v7 = v14;
      *(v2 + 8) = v12;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      *(v2 + 40) = v16;
      v16 = 0;
      ++v15;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v12);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat2(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector2<float>>(BOOL)::info = re::introspect_Vector2F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::Vector2<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat3(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector3<float>>(BOOL)::info = re::introspect_Vector3F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::Vector3<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}

uint64_t REBindPointCreateReferenceForComponentAnimatedValuesFloat4(re *a1, const char *a2)
{
  v2 = 0;
  v16[4] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    re::makeBindNode(a1, v16);
    {
      re::introspect<re::Vector4<float>>(BOOL)::info = re::introspect_Vector4F(0);
    }

    v9[0] = a2;
    v9[1] = strlen(a2);
    re::BindNode::bindPointWithOverride(v16, re::introspect<re::Vector4<float>>(BOOL)::info, v9, &v10);
    re::BindNode::deinit(v16);
    if (v13)
    {
      v5 = re::globalAllocators(v4);
      v2 = (*(*v5[2] + 32))(v5[2], 48, 8);
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      *(v2 + 8) = 0;
      *(v2 + 32) = 0;
      v6 = v12;
      *v2 = v10;
      *(v2 + 16) = v6;
      v7 = v13;
      *(v2 + 8) = v11;
      *(v2 + 40) = 0;
      *(v2 + 24) = v7;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      *(v2 + 40) = v15;
      v15 = 0;
      ++v14;
      ++*(v2 + 32);
    }

    else
    {
      v2 = 0;
    }

    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11);
  }

  return v2;
}