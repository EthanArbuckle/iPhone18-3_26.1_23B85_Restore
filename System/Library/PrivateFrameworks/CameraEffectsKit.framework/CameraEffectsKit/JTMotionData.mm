@interface JTMotionData
+ (id)sharedInstance;
- ($01BB1521EC52D44A8E7628F5261DCEC8)currentAttitude;
- ($01BB1521EC52D44A8E7628F5261DCEC8)currentOrientation;
- ($01BB1521EC52D44A8E7628F5261DCEC8)getOrientation:(id)result;
- ($01BB1521EC52D44A8E7628F5261DCEC8)syntheticOrientation;
- (JTMotionData)init;
- (double)pitchRadians;
- (double)rollRadians;
- (double)yawRadians;
- (void)startMotion;
- (void)stopMotion;
@end

@implementation JTMotionData

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__JTMotionData_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_sharedMotionData;

  return v2;
}

uint64_t __30__JTMotionData_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedMotionData = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (JTMotionData)init
{
  v6.receiver = self;
  v6.super_class = JTMotionData;
  v2 = [(JTMotionData *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1CD8]);
    [(JTMotionData *)v2 setMotionManager:v3];
    [v3 setDeviceMotionUpdateInterval:0.0333333333];
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v4 setName:@"motion queue"];
    [(JTMotionData *)v2 setMotionQueue:v4];
  }

  return v2;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)getOrientation:(id)result
{
  if (result.var0 == 0.0 && result.var1 == 0.0 && result.var2 == 0.0 && result.var3 == 0.0)
  {
    *&result.var0 = getOrientation__previous_value_0;
    *&result.var1 = getOrientation__previous_value_1;
    *&result.var2 = getOrientation__previous_value_2;
    *&result.var3 = getOrientation__previous_value_3;
  }

  else
  {
    getOrientation__previous_value_0 = *&result.var0;
    getOrientation__previous_value_1 = *&result.var1;
    getOrientation__previous_value_2 = *&result.var2;
    getOrientation__previous_value_3 = *&result.var3;
  }

  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)syntheticOrientation
{
  v2 = syntheticOrientation_i % 720;
  v3 = sin((v2 / 719.0 + v2 / 719.0) * 3.14159265);
  syntheticOrientation_i = v2 + 1;
  v5 = __sincos_stret(v3 * 1.57079633 * 0.5);
  v4.f64[0] = v5.__sinval;
  v6 = vmulq_n_f64(xmmword_242B5B850, v5.__sinval);
  *&v4.f64[0] = *&vmulq_f64(v4, 0);
  v4.f64[1] = v5.__cosval;
  v7 = vnegq_f64(v6);
  v8 = vextq_s8(v4, vnegq_f64(v4), 8uLL);
  v9 = vdupq_n_s64(0x3FE6839557CA3B94uLL);
  v10 = vmlaq_f64(vmulq_f64(v4, 0), v9, v8);
  v11 = vdupq_n_s64(0x3FE6BD826298E569uLL);
  v12 = vmulq_f64(v4, v11);
  v13 = vmlaq_f64(vmulq_f64(v6, v11), 0, vextq_s8(v7, v6, 8uLL));
  v14 = vaddq_f64(vmlaq_f64(v12, 0, v8), vmlaq_f64(vmulq_f64(v7, 0), v9, vextq_s8(v6, v7, 8uLL)));
  v15 = vaddq_f64(v13, v10);
  v16 = v15.f64[1];
  v17 = v14.f64[1];
  result.var2 = v14.f64[0];
  result.var0 = v15.f64[0];
  result.var3 = v17;
  result.var1 = v16;
  return result;
}

- (void)startMotion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_started = 1;
  motionManager = [(JTMotionData *)selfCopy motionManager];
  deviceMotion = [motionManager deviceMotion];
  attitude = [deviceMotion attitude];
  refAttitude = selfCopy->_refAttitude;
  selfCopy->_refAttitude = attitude;

  motionManager2 = [(JTMotionData *)selfCopy motionManager];
  motionQueue = [(JTMotionData *)selfCopy motionQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __27__JTMotionData_startMotion__block_invoke;
  v9[3] = &unk_278D7AF80;
  v9[4] = selfCopy;
  [motionManager2 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:motionQueue withHandler:v9];

  objc_sync_exit(selfCopy);
}

void __27__JTMotionData_startMotion__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v99 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = [v99 attitude];
  [v7 quaternion];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [*(a1 + 32) getOrientation:{v9, v11, v13, v15}];
  v17.f64[0] = v16;
  v17.f64[1] = v18;
  v20.f64[0] = v19;
  v20.f64[1] = v21;
  v22 = vnegq_f64(v20);
  v23 = vmulq_f64(v17, xmmword_242B5BA70);
  v87 = vmulq_f64(v20, 0);
  v88 = vmulq_f64(v23, 0);
  v90 = vextq_s8(v22, v20, 8uLL);
  v92 = vextq_s8(v23, vnegq_f64(v23), 8uLL);
  v86 = vextq_s8(v20, v22, 8uLL);
  v24 = vaddq_f64(v86, vmlaq_f64(v88, 0, v92));
  v25 = vaddq_f64(v92, vmlaq_f64(v87, 0, v90));
  v26 = vnegq_f64(v24);
  v27 = vextq_s8(v25, vnegq_f64(v25), 8uLL);
  v96 = *&v19;
  v97 = v21;
  v98 = v18;
  v95 = *&v16;
  v83 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v25, v18), v27, v16), vmlaq_n_f64(vmulq_n_f64(v26, v21), vextq_s8(v24, v26, 8uLL), v19));
  v84 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v24, v18), vextq_s8(v26, v24, 8uLL), v16), vmlaq_n_f64(vmulq_n_f64(v25, v21), v27, v19));
  v28 = v83.f64[0] + vaddvq_f64(vmulq_f64(v84, 0));
  if (v28 <= 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  if (v28 >= -1.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = -1.0;
  }

  v31 = acos(v30);
  v32 = 0.0;
  if (v31 > 0.00001)
  {
    v33 = vmulq_f64(v83, 0);
    v34 = vmulq_f64(v84, xmmword_242B5B860);
    v34.f64[0] = v33.f64[0] + vaddvq_f64(v34);
    v33.f64[0] = v33.f64[0] + vaddvq_f64(vmulq_f64(v84, xmmword_242B5B850));
    v35 = vmulq_f64(v33, 0);
    v36 = vmlaq_n_f64(vmulq_n_f64(xmmword_242B5B850, v33.f64[0]), xmmword_242B5B860, v34.f64[0]);
    v37 = vmlaq_f64(v35, 0, v34);
    v38 = vmulq_f64(v37, v37);
    v38.f64[0] = 1.0 / sqrt(v38.f64[0] + vaddvq_f64(vmulq_f64(v36, v36)));
    v85 = vmulq_n_f64(v36, v38.f64[0]);
    v82 = vmulq_f64(vmulq_f64(v37, v38), 0);
    v39 = v82.f64[0] + vaddvq_f64(vmulq_f64(v85, xmmword_242B5B860));
    if (v39 <= 1.0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 1.0;
    }

    if (v39 >= -1.0)
    {
      v41 = v40;
    }

    else
    {
      v41 = -1.0;
    }

    v42 = acos(v41);
    if (v82.f64[0] + vaddvq_f64(vmulq_f64(v85, xmmword_242B5B850)) < 0.0)
    {
      v42 = 6.28318531 - v42;
    }

    v32 = v42 + 1.57079633;
  }

  v43 = fmod(v32, 6.28318531);
  if (v32 < 0.0)
  {
    v43 = v43 + 6.28318531;
  }

  [*(a1 + 32) setYawRadians:{v43, *&v82}];
  v44 = vdupq_lane_s64(v96, 0);
  v45 = vdupq_lane_s64(v95, 0);
  v46 = vmlaq_f64(vaddq_f64(v92, v88), 0, v86);
  v47 = vmlaq_f64(vaddq_f64(v90, v87), 0, v92);
  v48 = vnegq_f64(v46);
  v49 = vextq_s8(v47, vnegq_f64(v47), 8uLL);
  v91 = vaddq_f64(vmlaq_f64(vmulq_n_f64(v47, v98), v49, v45), vmlaq_f64(vmulq_n_f64(v48, v97), vextq_s8(v46, v48, 8uLL), v44));
  v93 = vaddq_f64(vmlaq_f64(vmulq_n_f64(v46, v98), vextq_s8(v48, v46, 8uLL), v45), vmlaq_f64(vmulq_n_f64(v47, v97), v49, v44));
  v50 = __sincos_stret(v32 * 0.5);
  v89 = vmulq_n_f64(0, v50.__sinval);
  v52 = __sincos_stret(v31 * 0.5);
  v51.f64[0] = v52.__sinval;
  v53 = vmulq_n_f64(xmmword_242B5B860, v52.__sinval);
  *&v51.f64[0] = *&vmulq_f64(v51, 0);
  v51.f64[1] = v52.__cosval;
  v54 = vnegq_f64(v53);
  v55 = vextq_s8(v51, vnegq_f64(v51), 8uLL);
  v56 = vmlaq_n_f64(vmulq_n_f64(v51, v50.__cosval), v55, v50.__sinval);
  v57 = vmlaq_n_f64(vmulq_laneq_f64(v51, v89, 1), v55, v89.f64[0]);
  v58 = vaddq_f64(v56, vmlaq_n_f64(vmulq_laneq_f64(v54, v89, 1), vextq_s8(v53, v54, 8uLL), v89.f64[0]));
  v59 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v53, v50.__cosval), vextq_s8(v54, v53, 8uLL), v50.__sinval), v57);
  v60 = vnegq_f64(v59);
  v61 = vmulq_f64(v58, xmmword_242B5BA70);
  v62 = vextq_s8(v59, v60, 8uLL);
  v63 = vextq_s8(v61, vnegq_f64(v61), 8uLL);
  v64 = vextq_s8(v60, v59, 8uLL);
  v65 = vmulq_f64(v61, 0);
  v66 = vmlaq_f64(vmlaq_f64(v61, 0, v63), 0, v62);
  v67 = vmlaq_f64(vmlaq_f64(v59, 0, v64), 0, v63);
  v68 = vnegq_f64(v66);
  v69 = vextq_s8(v67, vnegq_f64(v67), 8uLL);
  v70 = vmlaq_f64(vaddq_f64(v63, v65), 0, v62);
  v71 = vmlaq_f64(vaddq_f64(v64, vmulq_f64(v59, 0)), 0, v63);
  v72 = vnegq_f64(v70);
  v73 = vextq_s8(v71, vnegq_f64(v71), 8uLL);
  v74 = vaddq_f64(vzip1q_s64(vmulq_f64(v91, vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v71, v58, 1), v73, v58.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v72, v59, 1), vextq_s8(v70, v72, 8uLL), v59.f64[0]))), vmulq_f64(v91, vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v67, v58, 1), v69, v58.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v68, v59, 1), vextq_s8(v66, v68, 8uLL), v59.f64[0])))), vpaddq_f64(vmulq_f64(v93, vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v70, v58, 1), vextq_s8(v72, v70, 8uLL), v58.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v71, v59, 1), v73, v59.f64[0]))), vmulq_f64(v93, vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v66, v58, 1), vextq_s8(v68, v66, 8uLL), v58.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v67, v59, 1), v69, v59.f64[0])))));
  *&v58.f64[0] = vmovn_s64(vcgtq_f64(v74, xmmword_242B5B860));
  v94 = BYTE4(v58.f64[0]);
  v75 = (LOBYTE(v58.f64[0]) & 1) == 0;
  v76 = 1.0;
  if (v75)
  {
    v76 = v74.f64[0];
  }

  if (v74.f64[0] >= -1.0)
  {
    v77 = v76;
  }

  else
  {
    v77 = -1.0;
  }

  v78 = acos(v77);
  if (v94)
  {
    v79 = -v78;
  }

  else
  {
    v79 = v78;
  }

  v80 = fmod(v79, 6.28318531);
  if (v79 < 0.0)
  {
    v80 = v80 + 6.28318531;
  }

  [*(a1 + 32) setRollRadians:v80];
  v81 = fmod(v31, 6.28318531);
  if (v31 < 0.0)
  {
    v81 = v81 + 6.28318531;
  }

  [*(a1 + 32) setPitchRadians:v81];
  [*(a1 + 32) setCurrentAttitude:{*&v96, v97, *&v95, v98}];
  objc_sync_exit(v6);
}

- (void)stopMotion
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  if (obj->_started)
  {
    motionManager = [(JTMotionData *)obj motionManager];
    [motionManager stopDeviceMotionUpdates];

    v2 = obj;
  }

  objc_sync_exit(v2);
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)currentOrientation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  x = selfCopy->_currentAttitude.x;
  y = selfCopy->_currentAttitude.y;
  z = selfCopy->_currentAttitude.z;
  w = selfCopy->_currentAttitude.w;
  objc_sync_exit(selfCopy);

  v7 = x;
  v8 = y;
  v9 = z;
  v10 = w;
  result.var3 = v10;
  result.var2 = v9;
  result.var1 = v8;
  result.var0 = v7;
  return result;
}

- (double)yawRadians
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  yawRadians = selfCopy->_yawRadians;
  objc_sync_exit(selfCopy);

  return yawRadians;
}

- (double)rollRadians
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rollRadians = selfCopy->_rollRadians;
  objc_sync_exit(selfCopy);

  return rollRadians;
}

- (double)pitchRadians
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pitchRadians = selfCopy->_pitchRadians;
  objc_sync_exit(selfCopy);

  return pitchRadians;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)currentAttitude
{
  x = self->_currentAttitude.x;
  y = self->_currentAttitude.y;
  z = self->_currentAttitude.z;
  w = self->_currentAttitude.w;
  result.var3 = w;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end