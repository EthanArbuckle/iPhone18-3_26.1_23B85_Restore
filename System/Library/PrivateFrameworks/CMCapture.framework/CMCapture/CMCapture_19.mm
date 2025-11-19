uint64_t __nrfp_createStateMachine_block_invoke_2_0(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  if (a2)
  {
    [OUTLINED_FUNCTION_34_0(88) setOutput:?];
    [*(a2 + 88) resetState];
  }

  [(BWNRFProcessorController *)a2 _serviceNextRequest];
  objc_autoreleasePoolPop(v3);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_3_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _prepareProcessor];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_4_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processSingleImage];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_5_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processOriginalImage];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_6_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processUBFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_7_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processDigitalFlash];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_8_0(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processDeepFusion];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_9(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processDigitalFlash];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

uint64_t __nrfp_createStateMachine_block_invoke_10(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = OUTLINED_FUNCTION_27_0();
  [(BWNRFProcessorController *)v5 _processLearnedHRNR];
  objc_autoreleasePoolPop(v2);

  return [(BWNRFProcessorController *)a2 _updateStateIfNeeded];
}

void AppleCVALibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *AppleCVALibrary(void)") description:{@"BWAppleCVASoftLinking.m", 14, @"%s", *a1}];
  __break(1u);
}

void getkCVAFaceTracking_AddDebugInfo_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_AddDebugInfo) (*)(void))0)()) getkCVAFaceTracking_AddDebugInfo(void)") description:{@"BWAppleCVASoftLinking.m", 16, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_AddMesh_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_AddMesh) (*)(void))0)()) getkCVAFaceTracking_AddMesh(void)") description:{@"BWAppleCVASoftLinking.m", 17, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Callback_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Callback) (*)(void))0)()) getkCVAFaceTracking_Callback(void)") description:{@"BWAppleCVASoftLinking.m", 18, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_CameraColor_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_CameraColor) (*)(void))0)()) getkCVAFaceTracking_CameraColor(void)") description:{@"BWAppleCVASoftLinking.m", 19, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_CameraDepth_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_CameraDepth) (*)(void))0)()) getkCVAFaceTracking_CameraDepth(void)") description:{@"BWAppleCVASoftLinking.m", 20, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Color_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Color) (*)(void))0)()) getkCVAFaceTracking_Color(void)") description:{@"BWAppleCVASoftLinking.m", 21, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_ColorMetaData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_ColorMetaData) (*)(void))0)()) getkCVAFaceTracking_ColorMetaData(void)") description:{@"BWAppleCVASoftLinking.m", 22, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_ColorOnly_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_ColorOnly) (*)(void))0)()) getkCVAFaceTracking_ColorOnly(void)") description:{@"BWAppleCVASoftLinking.m", 23, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Depth_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Depth) (*)(void))0)()) getkCVAFaceTracking_Depth(void)") description:{@"BWAppleCVASoftLinking.m", 24, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthMetaData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthMetaData) (*)(void))0)()) getkCVAFaceTracking_DepthMetaData(void)") description:{@"BWAppleCVASoftLinking.m", 25, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthSource_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthSource) (*)(void))0)()) getkCVAFaceTracking_DepthSource(void)") description:{@"BWAppleCVASoftLinking.m", 26, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthSource_Pearl_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthSource_Pearl) (*)(void))0)()) getkCVAFaceTracking_DepthSource_Pearl(void)") description:{@"BWAppleCVASoftLinking.m", 27, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthSource_SMPRaw_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthSource_SMPRaw) (*)(void))0)()) getkCVAFaceTracking_DepthSource_SMPRaw(void)") description:{@"BWAppleCVASoftLinking.m", 28, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DepthUnit_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DepthUnit) (*)(void))0)()) getkCVAFaceTracking_DepthUnit(void)") description:{@"BWAppleCVASoftLinking.m", 29, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFaceAngleInfoRoll_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFaceAngleInfoRoll) (*)(void))0)()) getkCVAFaceTracking_DetectedFaceAngleInfoRoll(void)") description:{@"BWAppleCVASoftLinking.m", 30, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFaceFaceID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFaceFaceID) (*)(void))0)()) getkCVAFaceTracking_DetectedFaceFaceID(void)") description:{@"BWAppleCVASoftLinking.m", 31, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFaceRect_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFaceRect) (*)(void))0)()) getkCVAFaceTracking_DetectedFaceRect(void)") description:{@"BWAppleCVASoftLinking.m", 32, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DetectedFacesArray_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DetectedFacesArray) (*)(void))0)()) getkCVAFaceTracking_DetectedFacesArray(void)") description:{@"BWAppleCVASoftLinking.m", 33, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DisparityInvalidValue_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DisparityInvalidValue) (*)(void))0)()) getkCVAFaceTracking_DisparityInvalidValue(void)") description:{@"BWAppleCVASoftLinking.m", 34, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DisparityNormalizationMultiplier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DisparityNormalizationMultiplier) (*)(void))0)()) getkCVAFaceTracking_DisparityNormalizationMultiplier(void)") description:{@"BWAppleCVASoftLinking.m", 35, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_DisparityNormalizationOffset_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_DisparityNormalizationOffset) (*)(void))0)()) getkCVAFaceTracking_DisparityNormalizationOffset(void)") description:{@"BWAppleCVASoftLinking.m", 36, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Extrinsics_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Extrinsics) (*)(void))0)()) getkCVAFaceTracking_Extrinsics(void)") description:{@"BWAppleCVASoftLinking.m", 37, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_FaceID_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_FaceID) (*)(void))0)()) getkCVAFaceTracking_FaceID(void)") description:{@"BWAppleCVASoftLinking.m", 38, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_FailureType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_FailureType) (*)(void))0)()) getkCVAFaceTracking_FailureType(void)") description:{@"BWAppleCVASoftLinking.m", 39, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Geometry_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Geometry) (*)(void))0)()) getkCVAFaceTracking_Geometry(void)") description:{@"BWAppleCVASoftLinking.m", 40, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_GeometryLandmarks_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_GeometryLandmarks) (*)(void))0)()) getkCVAFaceTracking_GeometryLandmarks(void)") description:{@"BWAppleCVASoftLinking.m", 41, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Intrinsics_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Intrinsics) (*)(void))0)()) getkCVAFaceTracking_Intrinsics(void)") description:{@"BWAppleCVASoftLinking.m", 43, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_LuxLevel_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_LuxLevel) (*)(void))0)()) getkCVAFaceTracking_LuxLevel(void)") description:{@"BWAppleCVASoftLinking.m", 44, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_NetworkFailureThresholdMultiplier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_NetworkFailureThresholdMultiplier) (*)(void))0)()) getkCVAFaceTracking_NetworkFailureThresholdMultiplier(void)") description:{@"BWAppleCVASoftLinking.m", 45, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_NormalizedDisparity_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_NormalizedDisparity) (*)(void))0)()) getkCVAFaceTracking_NormalizedDisparity(void)") description:{@"BWAppleCVASoftLinking.m", 46, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_NumTrackedFaces_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_NumTrackedFaces) (*)(void))0)()) getkCVAFaceTracking_NumTrackedFaces(void)") description:{@"BWAppleCVASoftLinking.m", 47, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Pose_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Pose) (*)(void))0)()) getkCVAFaceTracking_Pose(void)") description:{@"BWAppleCVASoftLinking.m", 48, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Rotation_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Rotation) (*)(void))0)()) getkCVAFaceTracking_Rotation(void)") description:{@"BWAppleCVASoftLinking.m", 49, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_SetCameraDepthFromColor_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_SetCameraDepthFromColor) (*)(void))0)()) getkCVAFaceTracking_SetCameraDepthFromColor(void)") description:{@"BWAppleCVASoftLinking.m", 50, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_SmoothData_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_SmoothData) (*)(void))0)()) getkCVAFaceTracking_SmoothData(void)") description:{@"BWAppleCVASoftLinking.m", 51, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_StructuredLightOccluded_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_StructuredLightOccluded) (*)(void))0)()) getkCVAFaceTracking_StructuredLightOccluded(void)") description:{@"BWAppleCVASoftLinking.m", 52, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_ThreadPriority_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_ThreadPriority) (*)(void))0)()) getkCVAFaceTracking_ThreadPriority(void)") description:{@"BWAppleCVASoftLinking.m", 53, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Timestamp_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Timestamp) (*)(void))0)()) getkCVAFaceTracking_Timestamp(void)") description:{@"BWAppleCVASoftLinking.m", 54, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_TrackedFacesArray_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_TrackedFacesArray) (*)(void))0)()) getkCVAFaceTracking_TrackedFacesArray(void)") description:{@"BWAppleCVASoftLinking.m", 55, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_TrackingFailureFieldOfViewModifier_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_TrackingFailureFieldOfViewModifier) (*)(void))0)()) getkCVAFaceTracking_TrackingFailureFieldOfViewModifier(void)") description:{@"BWAppleCVASoftLinking.m", 56, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_Translation_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_Translation) (*)(void))0)()) getkCVAFaceTracking_Translation(void)") description:{@"BWAppleCVASoftLinking.m", 57, @"%s", dlerror()}];
  __break(1u);
}

void getkCVA_tmrLADzZUFnL94QtJ4Eb9fgi_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVA_tmrLADzZUFnL94QtJ4Eb9fgi) (*)(void))0)()) getkCVA_tmrLADzZUFnL94QtJ4Eb9fgi(void)") description:{@"BWAppleCVASoftLinking.m", 58, @"%s", dlerror()}];
  __break(1u);
}

void getkCVAFaceTracking_UseRecognition_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"typeof (((typeof (kCVAFaceTracking_UseRecognition) (*)(void))0)()) getkCVAFaceTracking_UseRecognition(void)") description:{@"BWAppleCVASoftLinking.m", 59, @"%s", dlerror()}];
  __break(1u);
}

void soft_CVAFaceTrackingCreate_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_CVAFaceTrackingCreate(CFAllocatorRef description:{CFDictionaryRef, CVAFaceTrackingRef *)"), @"BWAppleCVASoftLinking.m", 61, @"%s", dlerror()}];
  __break(1u);
}

void soft_CVAFaceTrackingProcess_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_CVAFaceTrackingProcess(CVAFaceTrackingRef description:{CFDictionaryRef)"), @"BWAppleCVASoftLinking.m", 63, @"%s", dlerror()}];
  __break(1u);
}

uint64_t sicn_cameraCalibrationDataMetadataAttachmentDictionaryFromCalibrationMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t sicn_cameraCalibrationDataMetadataAttachmentDictionaryFromCalibrationMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t FigDraw420Rectangle_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_3_52();
  FigDebugAssert3();
  OUTLINED_FUNCTION_4_11();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t BWUBCreateDeferredContainerControllerConfiguration(void *a1)
{
  if (![a1 deferredCaptureSupportEnabled])
  {
    return 0;
  }

  v2 = objc_alloc_init(BWDeferredCaptureControllerConfiguration);
  v3 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v3 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  return v1;
}

uint64_t BWUBCreateDeferredProcessorControllerConfiguration(void *a1)
{
  if (![a1 deferredPhotoProcessorEnabled])
  {
    return 0;
  }

  v3 = objc_alloc_init(BWDeferredProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 deferredCaptureSupportEnabled];
  [OUTLINED_FUNCTION_4() setDeferredCaptureSupportEnabled:?];
  [a1 deferredPhotoProcessorEnabled];
  [OUTLINED_FUNCTION_4() setDeferredPhotoProcessorEnabled:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 inferenceScheduler];
  [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  return v1;
}

uint64_t BWUBCreateDeepFusionProcessorControllerConfiguration(void *a1)
{
  if (!-[BWUBNodeConfiguration deepFusionSupportEnabled](a1) || ([a1 deferredCaptureSupportEnabled] & 1) != 0)
  {
    return 0;
  }

  v3 = objc_alloc_init(BWDeepFusionProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [a1 deferredCaptureSupportEnabled];
  [OUTLINED_FUNCTION_4() setDeferredCaptureSupportEnabled:?];
  [a1 deferredPhotoProcessorEnabled];
  [OUTLINED_FUNCTION_4() setDeferredPhotoProcessorEnabled:?];
  [(BWUBNodeConfiguration *)a1 stillImageFusionScheme];
  [OUTLINED_FUNCTION_4() setStillImageFusionScheme:?];
  [(BWUBNodeConfiguration *)a1 rawColorCalibrationsByPortType];
  [OUTLINED_FUNCTION_4() setRawColorCalibrationsByPortType:?];
  [(BWUBNodeConfiguration *)a1 rawLensShadingCorrectionCoefficientsByPortType];
  [OUTLINED_FUNCTION_4() setRawLensShadingCorrectionCoefficientsByPortType:?];
  return v1;
}

BWLearnedNRProcessorControllerConfiguration *BWUBCreateLearnedNRProcessorControllerConfiguration(void *a1)
{
  if (([(BWUBNodeConfiguration *)a1 learnedNRMode]& 5) == 0)
  {
    return 0;
  }

  v2 = objc_alloc_init(BWLearnedNRProcessorControllerConfiguration);
  [(BWStillImageProcessorControllerConfiguration *)v2 setSensorConfigurationsByPortType:[(BWUBNodeConfiguration *)a1 sensorConfigurationsByPortType]];
  -[BWStillImageProcessorControllerConfiguration setMetalCommandQueue:](v2, "setMetalCommandQueue:", [a1 metalCommandQueue]);
  -[BWStillImageProcessorControllerConfiguration setInferenceScheduler:](v2, "setInferenceScheduler:", [a1 inferenceScheduler]);
  -[BWStillImageProcessorControllerConfiguration setFigThreadPriority:](v2, "setFigThreadPriority:", [a1 figThreadPriority]);
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BWUBNodeConfiguration *)a1 portTypesWithGeometricDistortionCorrectionEnabled];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 setObject:&unk_1F224A850 forKeyedSubscript:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  [(BWLearnedNRProcessorControllerConfiguration *)v2 setFinalCropRectOverscanMultiplierByPortType:v3];
  return v2;
}

void *BWUBCreateInferenceControllerConfiguration(void *a1)
{
  if ([a1 deferredPhotoProcessorEnabled])
  {
    return 0;
  }

  v3 = ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]|| [(BWUBNodeConfiguration *)a1 semanticDevelopmentVersion]) && (([(BWUBNodeConfiguration *)a1 unifiedBracketingFusionSupportEnabled]& 1) != 0 || [(BWUBNodeConfiguration *)a1 learnedNRMode]!= 0);
  [-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](a1) count];
  v4 = OUTLINED_FUNCTION_27_0();
  if (([(BWUBNodeConfiguration *)v4 redEyeReductionEnabled]& 1) != 0 || v3 || ([(BWUBNodeConfiguration *)a1 semanticStyleRenderingEnabled]& 1) != 0 || v1)
  {
    v5 = objc_alloc_init(BWInferenceEngineControllerConfiguration);
    v6 = OUTLINED_FUNCTION_27_0();
    [(BWUBNodeConfiguration *)v6 sensorConfigurationsByPortType];
    [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
    [a1 metalCommandQueue];
    [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
    [a1 inferenceScheduler];
    [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
    [a1 figThreadPriority];
    [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
    [v1 setFastMattingEnabled:-[BWUBNodeConfiguration semanticRenderingVersion](a1) > 1];
    v7 = [MEMORY[0x1E695DFA8] set];
    if ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]< 1)
    {
      v8 = 0;
    }

    else
    {
      [v7 addObject:@"PersonSemanticsSkin"];
      [v7 addObject:0x1F219E750];
      v8 = 2;
    }

    if ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]> 1)
    {
      [v7 addObject:0x1F21AAD30];
    }

    if ([(BWUBNodeConfiguration *)a1 semanticRenderingVersion]>= 3)
    {
      BWInferenceLowResPersonInstanceMaskKeys();
      [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
      v8 |= 0x10uLL;
    }

    if ([(BWUBNodeConfiguration *)a1 semanticDevelopmentVersion])
    {
      v8 |= 8uLL;
    }

    if ([(BWUBNodeConfiguration *)a1 semanticStyleRenderingEnabled])
    {
      [v7 addObject:@"PersonSemanticsSkin"];
      [v7 addObject:0x1F21AAD30];
      [v7 addObject:0x1F219E750];
      [v1 setSmartCameraClassificationsEnabled:1];
    }

    v23 = v1;
    v9 = [(BWUBNodeConfiguration *)a1 redEyeReductionEnabled];
    v10 = v8 | 6;
    v30 = 0u;
    v31 = 0u;
    if (!v9)
    {
      v10 = v8;
    }

    v22 = v10;
    v32 = 0uLL;
    v33 = 0uLL;
    v11 = [(BWUBNodeConfiguration *)a1 providedInferenceAttachedMediaByMode];
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](a1) objectForKeyedSubscript:*(*(&v30 + 1) + 8 * i)];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [v7 addObject:{*(*(&v25 + 1) + 8 * j), v22}];
              }

              v18 = [v16 countByEnumeratingWithState:&v25 objects:v24 count:16];
            }

            while (v18);
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v13);
    }

    v1 = v23;
    [v23 setMattingOutputValidContentDetectionEnabled:{objc_msgSend(-[BWUBNodeConfiguration providedInferenceAttachedMediaByMode](a1), "objectForKeyedSubscript:", &unk_1F2244320) != 0}];
    [v7 allObjects];
    [OUTLINED_FUNCTION_4() setEnabledInferenceMasks:?];
    [v23 setEnabledVisionInferences:v22];
    [(BWUBNodeConfiguration *)a1 personSemanticsVersion];
    [OUTLINED_FUNCTION_4() setPersonSemanticsVersion:?];
  }

  return v1;
}

uint64_t BWUBCreateRedEyeProcessorControllerConfiguration(void *a1)
{
  if (![(BWUBNodeConfiguration *)a1 redEyeReductionEnabled])
  {
    return 0;
  }

  v3 = objc_alloc_init(BWStillImageProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  return v1;
}

uint64_t BWUBCreateIntelligentDistortionCorrectionProcessorControllerConfiguration(void *a1)
{
  if (![-[BWUBNodeConfiguration portTypesWithIntelligentDistortionCorrectionEnabled](a1) count] && !objc_msgSend(-[BWUBNodeConfiguration portTypesWithGeometricDistortionCorrectionEnabled](a1), "count"))
  {
    return 0;
  }

  v3 = objc_alloc_init(BWIntelligentDistortionCorrectionProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [(BWUBNodeConfiguration *)a1 portTypesWithGeometricDistortionCorrectionEnabled];
  [OUTLINED_FUNCTION_4() setPortTypesWithGeometricDistortionCorrectionEnabled:?];
  [(BWUBNodeConfiguration *)a1 portTypesWithIntelligentDistortionCorrectionEnabled];
  [OUTLINED_FUNCTION_4() setPortTypesWithIntelligentDistortionCorrectionEnabled:?];
  [(BWUBNodeConfiguration *)a1 geometricDistortionCorrectionExpandedImageDimensions];
  [OUTLINED_FUNCTION_4() setGeometricDistortionCorrectionExpandedImageDimensions:?];
  [(BWUBNodeConfiguration *)a1 intelligentDistortionCorrectionVersion];
  [OUTLINED_FUNCTION_4() setIntelligentDistortionCorrectionVersion:?];
  [(BWUBNodeConfiguration *)a1 intelligentDistortionCorrectionAppliesFinalDimensions];
  [OUTLINED_FUNCTION_4() setIntelligentDistortionCorrectionAppliesFinalDimensions:?];
  [(BWUBNodeConfiguration *)a1 horizontalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setHorizontalSensorBinningFactor:?];
  [(BWUBNodeConfiguration *)a1 verticalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setVerticalSensorBinningFactor:?];
  [(BWUBNodeConfiguration *)a1 providedInferenceAttachedMediaByMode];
  [OUTLINED_FUNCTION_4() setProvidedInferenceAttachedMediaByMode:?];
  return v1;
}

BWDeepZoomProcessorControllerConfiguration *BWUBCreateDeepZoomProcessorControllerConfiguration(void *a1)
{
  if ([(BWUBNodeConfiguration *)a1 deepZoomVersion]< 1)
  {
    return 0;
  }

  if (([a1 deferredPhotoProcessorEnabled] & 1) == 0)
  {
    if (-[BWUBNodeConfiguration deepZoomVersion](a1) >= 2 && ([a1 deferredCaptureSupportEnabled] & 1) == 0)
    {
      v2 = 2;
      goto LABEL_7;
    }

    return 0;
  }

  v2 = 1;
LABEL_7:
  v3 = objc_alloc_init(BWDeepZoomProcessorControllerConfiguration);
  [(BWUBNodeConfiguration *)a1 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_8() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_8() setMetalCommandQueue:?];
  [a1 inferenceScheduler];
  [OUTLINED_FUNCTION_8() setInferenceScheduler:?];
  -[BWStillImageProcessorControllerConfiguration setFigThreadPriority:](v3, "setFigThreadPriority:", [a1 figThreadPriority]);
  [(BWDeepZoomProcessorControllerConfiguration *)v3 setVersion:[(BWUBNodeConfiguration *)a1 deepZoomVersion]];
  [(BWDeepZoomProcessorControllerConfiguration *)v3 setType:v2];
  return v3;
}

uint64_t BWUBCreateStereoDisparityProcessorControllerConfiguration(void *a1)
{
  v3 = [(BWUBNodeConfiguration *)a1 disparityOutputDimensions];
  v4 = v3 < 1 || SHIDWORD(v3) < 1;
  if (v4 || ([(BWUBNodeConfiguration *)a1 generateLiDARDepth]& 1) != 0)
  {
    return 0;
  }

  v5 = objc_alloc_init(BWStereoDisparityProcessorControllerConfiguration);
  v6 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v6 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 inferenceScheduler];
  [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [(BWUBNodeConfiguration *)a1 portTypesWithDepthSegmentationPortraitParameters];
  [OUTLINED_FUNCTION_4() setPortTypesWithDepthSegmentationPortraitParameters:?];
  [(BWUBNodeConfiguration *)a1 disparityOutputDimensions];
  [OUTLINED_FUNCTION_4() setDisparityOutputDimensions:?];
  [a1 depthDataType];
  [OUTLINED_FUNCTION_4() setStillImageDepthDataType:?];
  [(BWUBNodeConfiguration *)a1 shouldComputeDisparityWhenCalibrationFails];
  [OUTLINED_FUNCTION_4() setShouldComputeDisparityWhenCalibrationFails:?];
  return v1;
}

BWJasperColorStillsExecutorControllerConfiguration *BWUBCreateJasperColorStillsExecutorControllerConfiguration(void *a1)
{
  if (![(BWUBNodeConfiguration *)a1 depthDataDeliveryEnabled]|| ![(BWUBNodeConfiguration *)a1 jasperSensorConfiguration]|| ![(BWUBNodeConfiguration *)a1 digitalFlashSupportEnabled])
  {
    return 0;
  }

  v2 = MEMORY[0x1E695DF90];
  [(BWUBNodeConfiguration *)a1 sensorConfigurationsByPortType];
  v3 = [OUTLINED_FUNCTION_4() dictionaryWithDictionary:?];
  [(BWUBNodeConfiguration *)a1 jasperSensorConfiguration];
  v4 = OUTLINED_FUNCTION_27_0();
  [v3 setObject:v2 forKeyedSubscript:{objc_msgSend(-[BWUBNodeConfiguration jasperSensorConfiguration](v4), "portType")}];
  v5 = objc_alloc_init(BWJasperColorStillsExecutorControllerConfiguration);
  [(BWStillImageProcessorControllerConfiguration *)v5 setSensorConfigurationsByPortType:v3];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [(BWUBNodeConfiguration *)a1 horizontalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setHorizontalSensorBinningFactor:?];
  [(BWUBNodeConfiguration *)a1 verticalSensorBinningFactor];
  [OUTLINED_FUNCTION_4() setVerticalSensorBinningFactor:?];
  return v5;
}

uint64_t BWUBCreateJasperDisparityProcessorControllerConfiguration(void *a1)
{
  if (![(BWUBNodeConfiguration *)a1 generateLiDARDepth])
  {
    return 0;
  }

  v3 = objc_alloc_init(BWJasperDisparityProcessorControllerConfiguration);
  v4 = OUTLINED_FUNCTION_27_0();
  [(BWUBNodeConfiguration *)v4 sensorConfigurationsByPortType];
  [OUTLINED_FUNCTION_4() setSensorConfigurationsByPortType:?];
  [a1 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [a1 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  return v1;
}

uint64_t powerBlurNoiseReductionGPUContextInit_internal_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t powerBlurNoiseReductionGPUContextInit_internal_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t powerBlurNoiseReductionGPU_cold_1(_DWORD *a1, _DWORD *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  result = FigDebugAssert3();
  *a2 = *a1;
  return result;
}

uint64_t gl_UtilsCreateProgramFromSources_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

void gl_UtilsCreateProgramFromSources_cold_2(GLuint a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();

  glDeleteShader(a1);
}

uint64_t gl_UtilsCreateProgramFromSources_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t gl_UtilsCreateShader_cold_1_0()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

void *csu_secondaryNativeResolutionZoomFactorsForFormatIndex(void *a1, void *a2, uint64_t a3)
{
  v6 = [a2 objectAtIndexedSubscript:a3];
  v7 = [v6 objectForKeyedSubscript:*off_1E798C998];
  result = [v7 count];
  if (result)
  {
    v31 = v6;
    v32 = a1;
    v9 = [MEMORY[0x1E695DF70] arrayWithArray:v7];
    v10 = 0x1E696A000uLL;
    [MEMORY[0x1E696AD98] numberWithInt:a3];
    [OUTLINED_FUNCTION_17() addObject:?];
    v11 = [MEMORY[0x1E695DFA8] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v13 = OUTLINED_FUNCTION_1_18(v11, v12, &v36, v35);
    if (v13)
    {
      v14 = v13;
      v15 = *v37;
      v16 = MEMORY[0x1E695F058];
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        if (([v18 intValue] & 0x80000000) != 0)
        {
          return 0;
        }

        v19 = v10;
        v20 = [v18 intValue];
        if ([a2 count] <= v20)
        {
          return 0;
        }

        [a2 objectAtIndexedSubscript:{objc_msgSend(v18, "intValue")}];
        v34 = *(v16 + 16);
        if (!FigCFDictionaryGetCGRectIfPresent())
        {
          return 0;
        }

        HIDWORD(v21) = DWORD1(v34);
        *&v21 = *&v34;
        v10 = v19;
        [*(v19 + 3480) numberWithFloat:v21];
        [OUTLINED_FUNCTION_28() addObject:?];
        if (v14 == ++v17)
        {
          v14 = [obj countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v11 count] < 2)
    {
      return 0;
    }

    v22 = [objc_msgSend(v11 "allObjects")];
    v23 = [MEMORY[0x1E695DF70] array];
    v24 = [v22 count];
    if (v24 >= 2)
    {
      for (i = (v24 - 2); i != -1; --i)
      {
        [objc_msgSend(v22 "lastObject")];
        v27 = v26;
        [objc_msgSend(v22 objectAtIndexedSubscript:{i), "floatValue"}];
        *&v29 = v27 / v28;
        [*(v10 + 3480) numberWithFloat:v29];
        [OUTLINED_FUNCTION_8() addObject:?];
      }
    }

    [objc_msgSend(v31 objectForKeyedSubscript:{*off_1E798D3F8), "floatValue"}];
    return BWFilterNonDisruptiveSwitchingFormatZoomFactors(v32, v23, v30);
  }

  return result;
}

uint64_t fcsbp_plistCreateAndPreprocess(__CFString *a1, void *a2)
{
  v61[0] = 0;
  v4 = FigCaptureCFCreatePropertyListForModelWithFileModificationDate(@"AVCaptureSession.plist", a1, v61);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(FigCaptureFlatPlist *)v4 mutableCopy];
    v6 = [v5 objectForKeyedSubscript:@"AVCaptureDevices"];
    if (!v6)
    {
      DeepCopy = 0;
LABEL_17:
      v35 = [v5 copy];
      goto LABEL_18;
    }

    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *MEMORY[0x1E695E480];
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v7, 1uLL);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v17 = OUTLINED_FUNCTION_60_6(DeepCopy, v10, v11, v12, v13, v14, v15, v16, v5, v4, a2, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, 0);
      if (v17)
      {
        v18 = v17;
        v19 = *v58;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v58 != v19)
            {
              objc_enumerationMutation(v7);
            }

            v21 = *(*(&v57 + 1) + 8 * i);
            v22 = [v21 objectForKeyedSubscript:@"deviceInfoBase"];
            if (v22)
            {
              v30 = v22;
              v40 = 0;
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (v31 = FigCaptureCFCreatePropertyListForModelWithFileModificationDate(v30, a1, &v40)) == 0)
              {
                v35 = 0;
                v4 = v38;
                a2 = v39;
                v5 = v37;
                goto LABEL_18;
              }

              v32 = v31;
              v61[0] = [v40 laterDate:v61[0]];
              v33 = CFPropertyListCreateDeepCopy(v8, v32, 1uLL);
              [v33 setObject:0 forKeyedSubscript:@"deviceInfoBase"];
              FigCFDictionaryAddEntriesToDictionaryWithRecursion();
              v22 = [DeepCopy setObject:v33 atIndexedSubscript:{objc_msgSend(v7, "indexOfObject:", v21)}];
            }
          }

          v18 = OUTLINED_FUNCTION_60_6(v22, v23, v24, v25, v26, v27, v28, v29, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      csu_preprocessDeviceDicts(DeepCopy);
      v34 = [DeepCopy copy];
      v5 = v37;
      [OUTLINED_FUNCTION_8_8() setObject:? forKeyedSubscript:?];

      v4 = v38;
      a2 = v39;
      goto LABEL_17;
    }

    v35 = 0;
  }

  else
  {
    v35 = 0;
    v5 = 0;
  }

  DeepCopy = 0;
LABEL_18:
  if (a2)
  {
    *a2 = v61[0];
  }

  return v35;
}

void *csu_createBackingsFromCaptureSourceInfoDict(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  [a1 objectForKeyedSubscript:@"DependentUserDefaults"];
  csu_dependentUserDefaultsDictionary();
  if (!FigCFEqual())
  {
    return 0;
  }

  v2 = [a1 objectForKeyedSubscript:@"FileModificationDate"];
  v18 = 0;
  ModelSpecificName = FigCaptureGetModelSpecificName();

  if (([v2 isEqualToDate:v18] & 1) == 0)
  {
    if (!dword_1EB58DF60)
    {
      return 0;
    }

    v8 = OUTLINED_FUNCTION_3_56();
    v9 = OUTLINED_FUNCTION_24_13(v8);
    if (!OUTLINED_FUNCTION_6(v9))
    {
      goto LABEL_25;
    }

LABEL_12:
    OUTLINED_FUNCTION_10_28();
LABEL_24:
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
    goto LABEL_25;
  }

  v4 = [a1 objectForKeyedSubscript:@"InterpreterBuildDate"];
  if (([v4 isEqualToString:sCurrentInterpreterBuildDate] & 1) == 0)
  {
    if (!dword_1EB58DF60)
    {
      return 0;
    }

    v10 = OUTLINED_FUNCTION_3_56();
    v11 = OUTLINED_FUNCTION_24_13(v10);
    if (!OUTLINED_FUNCTION_6(v11))
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  if (([FigCaptureGetModelSpecificName() isEqualToString:{objc_msgSend(a1, "objectForKeyedSubscript:", @"DeviceModel"}] & 1) == 0)
  {
    if (dword_1EB58DF60)
    {
      v12 = OUTLINED_FUNCTION_3_56();
      if (os_log_type_enabled(v12, v16))
      {
        v13 = v17;
      }

      else
      {
        v13 = v17 & 0xFFFFFFFE;
      }

      if (!v13)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    return 0;
  }

  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"ExperimentsEnabled", "BOOLValue"}])
  {
    if (dword_1EB58DF60)
    {
      v14 = OUTLINED_FUNCTION_3_56();
      v15 = OUTLINED_FUNCTION_24_13(v14);
      if (OUTLINED_FUNCTION_6(v15))
      {
        goto LABEL_24;
      }

LABEL_25:
      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  v5 = csu_createInMemorySourcesArrayFromOnDiskSourcesArray([a1 objectForKeyedSubscript:@"Sources"]);
  v6 = -[FigCaptureSourceBackingsProvider initWithSourceInfoDictionaries:commonSettings:]([FigCaptureSourceBackingsProvider alloc], v5, [a1 objectForKeyedSubscript:@"CommonSettings"]);

  return v6;
}

uint64_t csu_addMetadataAttributes(void *a1, uint64_t a2, int a3, int a4, void *a5)
{
  v54 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E695DF70] array];
  if (a2)
  {
    v11 = *(a2 + 8);
    if (v11 <= 0x14 && ((1 << v11) & 0x100420) != 0)
    {
      v13 = 0;
      if (!a4)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = v11 - 21 < 0xFFFFFFFC;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (![a5 objectForKeyedSubscript:@"faceTrackingSupported"] || objc_msgSend(objc_msgSend(a5, "objectForKeyedSubscript:", @"faceTrackingSupported"), "BOOLValue"))
  {
    [v10 addObject:*MEMORY[0x1E69629E8]];
  }

LABEL_13:
  if (v13)
  {
    [v10 addObject:*MEMORY[0x1E69629D8]];
    [v10 addObject:*off_1E798D150];
    if (MGGetBoolAnswer())
    {
      [v10 addObject:*off_1E798D120];
    }

    if ([objc_msgSend(a1 objectForKeyedSubscript:{@"SmartCameraSupported", "BOOLValue"}])
    {
      [v10 addObject:*off_1E798D148];
    }
  }

  v52 = a2;
  v53 = v10;
  if (a2)
  {
    v14 = *(a2 + 32);
    v15 = (*(a2 + 8) - 17) < 4;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v16 = [MEMORY[0x1E695DF70] array];
  [v16 addObject:*MEMORY[0x1E6960388]];
  v60[0] = @"EyeDetection";
  v60[1] = @"BlinkDetection";
  v61[0] = MEMORY[0x1E695E118];
  v61[1] = MEMORY[0x1E695E118];
  v60[2] = @"SmileDetection";
  v61[2] = MEMORY[0x1E695E118];
  v55 = a1;
  [a1 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v61, v60, 3), @"SupportedOptionalFaceDetectionFeatures"}];
  if (a3)
  {
    [a1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"ObjectsDetection"];
    v17 = [v14 getPropertyIfSupported:*off_1E798C0B8 error:0];
    if (v17)
    {
      v18 = v17;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v19 = [v17 countByEnumeratingWithState:&v56 objects:&v62 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v57;
        v22 = *off_1E798B940;
        do
        {
          v23 = 0;
          do
          {
            if (*v57 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v56 + 1) + 8 * v23);
            if ((!v15 || ([*(*(&v56 + 1) + 8 * v23) isEqualToString:v22] & 1) == 0) && v24)
            {
              if (_MergedGlobals_7 != -1)
              {
                dispatch_once(&_MergedGlobals_7, &__block_literal_global_456);
              }

              if ([qword_1ED844F58 objectForKeyedSubscript:v24])
              {
                [OUTLINED_FUNCTION_28() addObject:?];
              }
            }

            ++v23;
          }

          while (v20 != v23);
          v20 = [v18 countByEnumeratingWithState:&v56 objects:&v62 count:16];
        }

        while (v20);
      }
    }

    else
    {
      v25 = FigCapturePlatformIdentifier();
      v26 = *MEMORY[0x1E6960368];
      v62 = *MEMORY[0x1E6960390];
      v63 = v26;
      v27 = *off_1E798D0E0;
      v64 = *MEMORY[0x1E6960378];
      v65 = v27;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:4];
      [OUTLINED_FUNCTION_28() addObjectsFromArray:?];
      if (!v15)
      {
        [v16 addObject:*MEMORY[0x1E6960398]];
      }

      if (v25 >= 8)
      {
        v28 = *MEMORY[0x1E6960380];
        *&v56 = *MEMORY[0x1E6960370];
        *(&v56 + 1) = v28;
        *&v57 = *off_1E798D0D0;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:3];
        [OUTLINED_FUNCTION_28() addObjectsFromArray:?];
        if (v25 >= 0xA)
        {
          [v16 addObject:*off_1E798D0D8];
        }
      }
    }
  }

  if (v52)
  {
    v29 = *(v52 + 8);
    if (v29 - 17 > 3)
    {
      v31 = 0;
      v37 = v55;
      v38 = v53;
    }

    else
    {
      v30 = *(v52 + 32);
      v31 = [MEMORY[0x1E695DF70] array];
      v32 = [objc_msgSend(objc_msgSend(objc_msgSend(v30 getProperty:*off_1E798C1B8 error:{0), "firstObject"), "objectForKeyedSubscript:", *off_1E798C9A0), "objectForKeyedSubscript:", *off_1E798CA88}];
      v33 = [objc_msgSend(a5 objectForKeyedSubscript:{@"secureMetadataCameraSupported", "BOOLValue"}];
      v34 = [v32 objectForKeyedSubscript:*off_1E798B010];
      v35 = [v32 objectForKeyedSubscript:*off_1E798B018];
      v36 = [v32 objectForKeyedSubscript:*off_1E798B028];
      v37 = v55;
      if (v33)
      {
        [v55 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F219FFF0];
      }

      if ([objc_msgSend(a5 objectForKeyedSubscript:{@"metadataFrameRateControlSupported", "BOOLValue"}])
      {
        [v55 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"MetadataFrameRateControlSupported"];
      }

      v38 = v53;
      if (v29 == 20)
      {
        [v55 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"AttentionDetectionSupported"];
      }

      if (v35)
      {
        [v55 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FaceOcclusionDetectionSupported"];
      }

      if (v34)
      {
        [v31 addObject:*off_1E798D128];
      }

      if (v35)
      {
        [v31 addObject:*off_1E798D130];
      }

      if (v36)
      {
        [v31 addObject:*off_1E798D140];
      }

      v29 = *(v52 + 8);
    }

    if (v29 <= 0x14 && ((1 << v29) & 0x100420) != 0 || v29 - 21 > 0xFFFFFFFB)
    {
      v39 = 0;
      v40 = v54;
      goto LABEL_62;
    }

    v40 = v54;
  }

  else
  {
    v31 = 0;
    v40 = v54;
    v37 = v55;
    v38 = v53;
  }

  v42 = *MEMORY[0x1E6962968];
  v62 = *MEMORY[0x1E6962960];
  v63 = v42;
  v43 = *MEMORY[0x1E6962978];
  v64 = *MEMORY[0x1E6962970];
  v65 = v43;
  v44 = *MEMORY[0x1E6962988];
  v66 = *MEMORY[0x1E6962980];
  v67 = v44;
  v45 = *MEMORY[0x1E6962998];
  v68 = *MEMORY[0x1E6962990];
  v69 = v45;
  v46 = *MEMORY[0x1E69629A8];
  v70 = *MEMORY[0x1E69629A0];
  v71 = v46;
  v47 = *MEMORY[0x1E69629B8];
  v72 = *MEMORY[0x1E69629B0];
  v73 = v47;
  v48 = *off_1E798D0F0;
  v74 = *MEMORY[0x1E69629C0];
  v75 = v48;
  v49 = *off_1E798D100;
  v76 = *off_1E798D0F8;
  v77 = v49;
  v50 = *off_1E798D118;
  v78 = *off_1E798D108;
  v79 = v50;
  v51 = *off_1E798D0E8;
  v80 = *off_1E798D110;
  v81 = v51;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:20];
LABEL_62:
  if ([v38 count])
  {
    [v40 setObject:v38 forKeyedSubscript:@"MetadataGroup-Misc"];
  }

  if ([v16 count])
  {
    [v40 setObject:v16 forKeyedSubscript:@"MetadataGroup-ObjectDetection"];
  }

  if ([v31 count])
  {
    [v40 setObject:v31 forKeyedSubscript:@"MetadataGroup-SecureMetadata"];
  }

  if ([v39 count])
  {
    [v40 setObject:v39 forKeyedSubscript:@"MetadataGroup-MRC"];
  }

  if ([v40 count])
  {
    [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
  }

  result = [objc_msgSend(v37 objectForKeyedSubscript:{0x1F219FFF0), "BOOLValue"}];
  if (result)
  {
    return [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
  }

  return result;
}

uint64_t csu_preprocessVideoDeviceDict(void *a1, void *a2)
{
  v4 = [a1 objectForKeyedSubscript:@"baseCaptureDeviceUniqueName"];
  v5 = [a1 objectForKeyedSubscript:@"uniqueName"];
  if (([(__CFString *)v5 hasPrefix:@"Front"]& 1) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = [(__CFString *)v5 hasPrefix:@"Back"];
  }

  result = [(__CFString *)v5 isEqualToString:@"Back Camera"];
  v24 = v5;
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v8 = kFigCaptureVideoSourceUniqueID_BackWide;
LABEL_6:
    v9 = *v8;
    v10 = 2;
    goto LABEL_22;
  }

  result = [(__CFString *)v5 isEqualToString:@"Back Telephoto Camera"];
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:2";
    v10 = 3;
    goto LABEL_22;
  }

  result = [(__CFString *)v5 isEqualToString:@"Back Ultra Wide Camera"];
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v11 = kFigCaptureVideoSourceUniqueID_BackSuperWide;
LABEL_11:
    v9 = *v11;
    v10 = 7;
    goto LABEL_22;
  }

  result = [(__CFString *)v5 isEqualToString:@"Back Time of Flight Camera"];
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_pointcloud:1";
    v25 = 1;
    v10 = 10;
    goto LABEL_22;
  }

  if ([(__CFString *)v5 isEqualToString:@"Back Dual Camera"])
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:3";
    v33[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v33[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:2";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v21 = 0;
    v22 = result;
    v10 = 4;
    goto LABEL_22;
  }

  if ([(__CFString *)v5 isEqualToString:@"Back Dual Wide Camera"])
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:6";
    v32[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v32[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:5";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    v21 = 0;
    v22 = result;
    v10 = 8;
    goto LABEL_22;
  }

  if ([(__CFString *)v5 isEqualToString:@"Back Triple Camera"])
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:7";
    v31[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v31[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:2";
    v31[2] = @"com.apple.avfoundation.avcapturedevice.built-in_video:5";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v21 = 0;
    v22 = result;
    v10 = 9;
    goto LABEL_22;
  }

  if ([(__CFString *)v5 isEqualToString:@"Back LiDAR Depth Camera"])
  {
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:9";
    v30[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:0";
    v30[1] = @"com.apple.avfoundation.avcapturedevice.private.built-in_pointcloud:1";
    result = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v21 = result;
    v22 = 0;
    v10 = 13;
    goto LABEL_22;
  }

  result = [(__CFString *)v5 isEqualToString:@"Front Camera"];
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v8 = kFigCaptureVideoSourceUniqueID_FrontWide;
    goto LABEL_6;
  }

  result = [(__CFString *)v5 isEqualToString:@"Front Ultra Wide Camera"];
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v11 = kFigCaptureVideoSourceUniqueID_FrontSuperWide;
    goto LABEL_11;
  }

  result = [(__CFString *)v5 isEqualToString:@"Front Virtual Camera"];
  if (result)
  {
    v21 = 0;
    v22 = 0;
    v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
    v24 = @"Front Camera";
    v10 = 11;
  }

  else
  {
    result = [(__CFString *)v5 isEqualToString:@"Front Infrared Camera"];
    if (result)
    {
      v21 = 0;
      v22 = 0;
      v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:99";
      v10 = 5;
    }

    else if ([(__CFString *)v5 isEqualToString:@"Front TrueDepth Camera"])
    {
      v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:4";
      v29[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
      v29[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:99";
      result = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v21 = 0;
      v22 = result;
      v10 = 6;
    }

    else
    {
      if ([(__CFString *)v5 isEqualToString:@"Front Virtual TrueDepth Camera"])
      {
        v9 = @"com.apple.avfoundation.avcapturedevice.built-in_video:4";
        v28[0] = @"com.apple.avfoundation.avcapturedevice.built-in_video:1";
        v28[1] = @"com.apple.avfoundation.avcapturedevice.built-in_video:99";
        result = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
        v21 = 0;
        v22 = result;
        v20 = 12;
        v24 = @"Front TrueDepth Camera";
        goto LABEL_23;
      }

      result = [(__CFString *)v5 isEqualToString:@"Front Metadata Camera"];
      if (result)
      {
        v21 = 0;
        v22 = 0;
        v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:1";
        v10 = 17;
      }

      else
      {
        result = [(__CFString *)v5 isEqualToString:@"Front Virtual Metadata Camera"];
        if (result)
        {
          v21 = 0;
          v22 = 0;
          v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:1";
          v24 = @"Front Metadata Camera";
          v10 = 18;
        }

        else
        {
          result = [(__CFString *)v5 isEqualToString:@"Front Ultra Wide Metadata Camera"];
          if (result)
          {
            v21 = 0;
            v22 = 0;
            v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:2";
            v10 = 19;
          }

          else
          {
            result = [(__CFString *)v5 isEqualToString:@"Front Infrared Metadata Camera"];
            if (!result)
            {
              return result;
            }

            v21 = 0;
            v22 = 0;
            v9 = @"com.apple.avfoundation.avcapturedevice.private.built-in_metadata:3";
            v10 = 20;
          }
        }
      }
    }
  }

LABEL_22:
  v20 = v10;
LABEL_23:
  v23 = v9;
  if (v9 && v25)
  {
    if (v4)
    {
      v12 = 0;
      v13 = *MEMORY[0x1E695E480];
      while (1)
      {
        memset(v27, 0, sizeof(v27));
        result = OUTLINED_FUNCTION_37(result, v7, v27, v26);
        if (result)
        {
          v14 = result;
          while (2)
          {
            v15 = 0;
            do
            {
              OUTLINED_FUNCTION_49_7();
              if (!v16)
              {
                objc_enumerationMutation(a2);
              }

              v17 = *(*(&v27[0] + 1) + 8 * v15);
              [v17 objectForKeyedSubscript:@"uniqueName"];
              result = [OUTLINED_FUNCTION_28() isEqualToString:?];
              if (result)
              {
                v12 = v17;
                goto LABEL_37;
              }

              ++v15;
            }

            while (v14 != v15);
            result = OUTLINED_FUNCTION_37(result, v18, v27, v26);
            v14 = result;
            if (result)
            {
              continue;
            }

            break;
          }
        }

LABEL_37:
        if (!v12)
        {
          break;
        }

        v19 = CFPropertyListCreateDeepCopy(v13, v12, 1uLL);
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
        [a1 removeAllObjects];
        [OUTLINED_FUNCTION_12_0() addEntriesFromDictionary:?];
        result = [v12 objectForKeyedSubscript:@"baseCaptureDeviceUniqueName"];
        if (!result)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
LABEL_39:
      [a1 setObject:v24 forKeyedSubscript:@"localizedName"];
      [a1 setObject:v23 forKeyedSubscript:@"uniqueID"];
      [OUTLINED_FUNCTION_27_1() setObject:? forKeyedSubscript:?];
      [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v20), @"deviceType"}];
      [a1 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v25), @"position"}];
      [a1 setObject:v22 forKeyedSubscript:@"synchronizedStreamUniqueIDs"];
      return [a1 setObject:v21 forKeyedSubscript:@"unsynchronizedStreamUniqueIDs"];
    }
  }

  return result;
}

id csu_createMultiStreamSourceFormatsArrayAndAddAVCompressionSettingsAttribute(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v483 = a5;
  v5 = a2;
  v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"AVCaptureDeviceFormats"}];
  v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", 0x1F217E9D0}];
  v8 = [MEMORY[0x1E695DF70] array];
  k = &v640;
  OUTLINED_FUNCTION_1_68();
  v641 = 3221225472;
  v642 = __csu_removeExperimentalDeviceFormats_block_invoke;
  v643 = &unk_1E7997840;
  v644 = v10;
  [v6 enumerateKeysAndObjectsUsingBlock:&v640];
  [v6 removeObjectsForKeys:v8];
  v11 = [MEMORY[0x1E695DF70] array];
  *&v707 = MEMORY[0x1E69E9820];
  *(&v707 + 1) = 3221225472;
  *&v708 = __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke;
  *(&v708 + 1) = &unk_1E7997868;
  *&v709 = v11;
  [v6 enumerateKeysAndObjectsUsingBlock:&v707];
  [v6 removeObjectsForKeys:v11];
  v12 = [MEMORY[0x1E695DF70] array];
  OUTLINED_FUNCTION_1_68();
  v641 = 3221225472;
  v642 = __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2;
  v643 = &unk_1E7997890;
  v644 = v7;
  v645 = v11;
  v646 = v13;
  [v7 enumerateKeysAndObjectsUsingBlock:&v640];
  [v7 removeObjectsForKeys:v12];
  v605 = v6;
  csu_mergeInCommonEntries(v6);
  [v5 objectForKeyedSubscript:@"localizedName"];
  v14 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", 0x1F217E9D0}];
  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  OUTLINED_FUNCTION_1_68();
  v641 = 3221225472;
  v642 = __csu_resolveSessionPresetAliases_block_invoke;
  v643 = &unk_1E7991CA0;
  v644 = v14;
  v645 = v16;
  [v14 enumerateKeysAndObjectsUsingBlock:&v640];
  [v14 addEntriesFromDictionary:v15];

  v592 = v14;
  csu_mergeInCommonEntries(v14);
  v17 = [objc_msgSend(v5 objectForKeyedSubscript:{@"deviceType", "intValue"}];
  v18 = v17;
  if (v17 <= 9 && ((1 << v17) & 0x310) != 0 && ([+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")] & 1) == 0)
  {
    OUTLINED_FUNCTION_47_9();
    v19 = OUTLINED_FUNCTION_43_10();
    v20 = OUTLINED_FUNCTION_61_5(v19);
    if (OUTLINED_FUNCTION_6(v20))
    {
      LODWORD(v707) = 136315138;
      *(&v707 + 4) = "csu_getDepthDataFormatsDict";
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_58_1();
      LODWORD(v12) = v693;
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"DepthDataFormats"}];
  v581 = v5;
  v582 = v21;
  if (v21)
  {
    v22 = v21;
    csu_mergeInCommonEntries(v21);
    if (v18 != 13)
    {
      v599 = a1 ? *(a1 + 40) : 0;
      memset(v734, 0, 64);
      v595 = [(FigCaptureSourceStreamsContainer *)a1 portTypesSupportingDepth];
      v601 = [v595 countByEnumeratingWithState:v734 objects:&v640 count:16];
      if (v601)
      {
        v600 = **&v734[1];
        v597 = *off_1E798BDE8;
        v12 = *off_1E798AC38;
        v427 = *off_1E798AC30;
        do
        {
          v428 = 0;
          do
          {
            if (**&v734[1] != v600)
            {
              objc_enumerationMutation(v595);
            }

            v604 = v428;
            if (!a1 || ((v429 = *(a1 + 12), v97 = v429 > 8, v430 = (1 << v429) & 0x10E, !v97) ? (v431 = v430 == 0) : (v431 = 1), v431))
            {
              objd = 0;
            }

            else
            {
              objd = [objc_msgSend(v599 objectForKeyedSubscript:{*(*(&v734[0] + 1) + 8 * v428)), "getProperty:error:", v597, 0}];
            }

            v606 = [v22 allKeys];
            v619 = [v606 countByEnumeratingWithState:&v722 objects:&v707 count:16];
            if (v619)
            {
              OUTLINED_FUNCTION_51_9();
              v613 = v432;
              do
              {
                for (i = 0; i != v619; ++i)
                {
                  OUTLINED_FUNCTION_51_9();
                  if (v434 != v613)
                  {
                    objc_enumerationMutation(v606);
                  }

                  v435 = *(v723 + 8 * i);
                  v436 = [OUTLINED_FUNCTION_8_8() objectForKeyedSubscript:?];
                  k = [v436 objectForKeyedSubscript:0x1F216B190];
                  v437 = [v436 objectForKeyedSubscript:0x1F216B1B0];
                  v438 = [objc_msgSend(v436 objectForKeyedSubscript:{0x1F217EE90), "intValue"}];
                  if (!v438)
                  {
                    v438 = [k intValue];
                  }

                  v439 = [objc_msgSend(v436 objectForKeyedSubscript:{0x1F217EEB0), "intValue"}];
                  if (!v439)
                  {
                    v439 = [v437 intValue];
                  }

                  v624 = v435;
                  v440 = [k intValue] < 1 || objc_msgSend(v437, "intValue") < 1;
                  v441 = [objc_msgSend(v436 objectForKeyedSubscript:{0x1F217EED0), "BOOLValue"}];
                  if (!v440 && (v441 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_35_11();
                    v442 = OUTLINED_FUNCTION_59_6();
                    if (v442)
                    {
                      v443 = v442;
                      v444 = *v683;
LABEL_439:
                      v445 = 0;
                      while (1)
                      {
                        if (*v683 != v444)
                        {
                          objc_enumerationMutation(objd);
                        }

                        k = v682[v445];
                        v446 = [objc_msgSend(k objectForKeyedSubscript:{v12), "intValue"}];
                        v447 = [objc_msgSend(k objectForKeyedSubscript:{v427), "intValue"}];
                        if (v438 == v446 && v439 == v447)
                        {
                          break;
                        }

                        if (v438 == v447 && v439 == v446)
                        {
                          break;
                        }

                        if (v443 == ++v445)
                        {
                          v443 = OUTLINED_FUNCTION_59_6();
                          if (v443)
                          {
                            goto LABEL_439;
                          }

                          goto LABEL_452;
                        }
                      }
                    }

                    else
                    {
LABEL_452:
                      [v582 setObject:0 forKeyedSubscript:v624];
                    }
                  }

                  v22 = v582;
                }

                v619 = [v606 countByEnumeratingWithState:&v722 objects:&v707 count:16];
              }

              while (v619);
            }

            v428 = v604 + 1;
            v5 = v581;
          }

          while (v604 + 1 != v601);
          v601 = [v595 countByEnumeratingWithState:v734 objects:&v640 count:16];
        }

        while (v601);
      }
    }
  }

  if (a1 && *(a1 + 8) == 14)
  {
    v532 = [MEMORY[0x1E695DF90] dictionary];
    v527 = [MEMORY[0x1E695DF90] dictionary];
    [objc_msgSend(v5 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"FigCaptureStreamFormats"}];
    v636 = 0u;
    v637 = 0u;
    v638 = 0u;
    v639 = 0u;
    v23 = v605;
    v24 = [v605 countByEnumeratingWithState:&v636 objects:v635 count:16];
    if (v24)
    {
      v12 = v24;
      obj = 0;
      v25 = *v637;
      k = MEMORY[0x1E695E110];
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v637 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v636 + 1) + 8 * j);
          v28 = [v23 objectForKeyedSubscript:v27];
          v29 = [objc_msgSend(v28 objectForKeyedSubscript:{@"Width", "intValue"}];
          v30 = [objc_msgSend(v28 objectForKeyedSubscript:{@"Height", "intValue"}];
          [v28 objectForKeyedSubscript:@"CaptureStreamFormat"];
          if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", @"Binned", "BOOLValue"}")] || v29 != 1920)
          {
            v23 = v605;
          }

          else
          {
            v431 = v30 == 1440;
            v23 = v605;
            if (v431)
            {
              v31 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(v605, "objectForKeyedSubscript:", v27)}];
              [v31 setObject:k forKeyedSubscript:0x1F217F970];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [OUTLINED_FUNCTION_50_10() setObject:? forKeyedSubscript:?];
              [v532 setObject:v31 forKeyedSubscript:v27];
              obj = v27;
            }
          }
        }

        v12 = [v23 countByEnumeratingWithState:&v636 objects:v635 count:16];
      }

      while (v12);
    }

    else
    {
      obj = 0;
    }

    v633 = 0u;
    v634 = 0u;
    v631 = 0u;
    v632 = 0u;
    v33 = [v592 countByEnumeratingWithState:&v631 objects:v630 count:16];
    if (v33)
    {
      v34 = v33;
      v12 = *v632;
      while (2)
      {
        for (k = 0; k != v34; ++k)
        {
          OUTLINED_FUNCTION_49_7();
          if (!v431)
          {
            objc_enumerationMutation(v592);
          }

          v35 = *(*(&v631 + 1) + 8 * k);
          if ([OUTLINED_FUNCTION_8_8() isEqualToString:?])
          {
            [v592 objectForKeyedSubscript:v35];
            v36 = [OUTLINED_FUNCTION_17() dictionaryWithDictionary:?];
            [v36 setObject:obj forKeyedSubscript:@"DeviceFormat"];
            v32 = v527;
            [v527 setObject:v36 forKeyedSubscript:v35];
            goto LABEL_38;
          }
        }

        v34 = [v592 countByEnumeratingWithState:&v631 objects:v630 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }

      v32 = v527;
    }

    else
    {
      v32 = v527;
    }
  }

  else
  {
    v32 = v592;
    v532 = v605;
  }

LABEL_38:
  AllAVCaptureSessionPresets = FigCaptureStreamUtilitiesGetAllAVCaptureSessionPresets();
  v528 = v32;
  v614 = [v32 objectForKeyedSubscript:@"AVCaptureSessionPresetHigh"];
  v693 = 0u;
  v694 = 0u;
  v695 = 0u;
  v696 = 0u;
  obja = AllAVCaptureSessionPresets;
  v39 = OUTLINED_FUNCTION_1_18(v614, v38, &v693, &v640);
  if (v39)
  {
    v12 = v39;
    v40 = *v694;
    do
    {
      for (m = 0; m != v12; ++m)
      {
        if (*v694 != v40)
        {
          objc_enumerationMutation(obja);
        }

        v42 = *(*(&v693 + 1) + 8 * m);
        if (([v42 isEqual:{@"AVCaptureSessionPresetInputPriority", v453, v459}] & 1) == 0)
        {
          v43 = [v528 objectForKeyedSubscript:v42];
          if (v43)
          {
            k = v43;
            v44 = [v43 objectForKeyedSubscript:@"DeviceFormat"];
            v45 = [v532 objectForKeyedSubscript:v44];
            if (v45)
            {
              v46 = v45;
              if (![v45 objectForKeyedSubscript:0x1F217E9D0])
              {
                v47 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v46 setObject:v47 forKeyedSubscript:0x1F217E9D0];
              }

              [OUTLINED_FUNCTION_8_8() addObject:?];
              if (k == v614)
              {
                [v46 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F217E490];
              }

              [k objectForKeyedSubscript:@"MinFrameRate"];
              [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              [k objectForKeyedSubscript:@"MaxFrameRate"];
              [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              v48 = [objc_msgSend(k objectForKeyedSubscript:{@"MaxIntegrationTime", "intValue"}];
              if (v48)
              {
                [MEMORY[0x1E696AD98] numberWithInt:v48];
                [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              }

              if ([k objectForKeyedSubscript:0x1F217E4B0])
              {
                [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
              }
            }

            else
            {
              v722 = 0;
              type[0] = OS_LOG_TYPE_DEFAULT;
              k = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v49 = v722;
              if (os_log_type_enabled(k, type[0]))
              {
                v50 = v49;
              }

              else
              {
                v50 = v49 & 0xFFFFFFFE;
              }

              if (v50)
              {
                LODWORD(v734[0]) = 136315650;
                *(v734 + 4) = "csu_addDeviceFormatDefaultsFromPresets";
                WORD6(v734[0]) = 2114;
                *(v734 + 14) = v44;
                WORD3(v734[1]) = 2114;
                *(&v734[1] + 1) = v42;
                LODWORD(v459) = 32;
                v453 = v734;
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }

      v12 = [obja countByEnumeratingWithState:&v693 objects:&v640 count:16];
    }

    while (v12);
  }

  if (a1)
  {
    v51 = *(a1 + 32);
  }

  else
  {
    v51 = 0;
  }

  v52 = a4;
  v733 = 0;
  v593 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v53 = [objc_msgSend(v581 objectForKeyedSubscript:{@"MultiStream", "objectForKeyedSubscript:", @"FigCaptureStreamFormats"}];
  v546 = [v581 objectForKeyedSubscript:@"mediaType"];
  v615 = [v581 objectForKeyedSubscript:@"localizedName"];
  v562 = v51;
  v54 = [v51 getProperty:*off_1E798C1B8 error:0];
  v55 = off_1E7989000;
  if (v54)
  {
    v56 = v54;
    v540 = v53;
    if (dword_1EB58DF60)
    {
      OUTLINED_FUNCTION_47_9();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (OUTLINED_FUNCTION_63_7(os_log_and_send_and_compose_flags_and_os_log_type))
      {
        LODWORD(v12) = v53;
      }

      else
      {
        LODWORD(v12) = v53 & 0xFFFFFFFE;
      }

      if (v12)
      {
        [v56 count];
        OUTLINED_FUNCTION_8_33(4.8152e-34);
        *(v58 + 14) = v615;
        WORD3(v708) = 1024;
        DWORD2(v708) = v59;
        OUTLINED_FUNCTION_15_20();
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v55 = off_1E7989000;
    }

    v60 = -[__objc2_class sensorIDStringFromModuleInfo:](v55[242], "sensorIDStringFromModuleInfo:", [v562 getProperty:*off_1E798C078 error:{0, v453}]);
    [[(__objc2_class *)v55[242] sharedInstance] cameraTuningParameters];
    [v562 portType];
    if (![objc_msgSend(OUTLINED_FUNCTION_4() "objectForKeyedSubscript:{"objectForKeyedSubscript:", v60}")])
    {
      OUTLINED_FUNCTION_47_9();
      v61 = OUTLINED_FUNCTION_43_10();
      if (OUTLINED_FUNCTION_61_5(v61))
      {
        k = v12;
      }

      else
      {
        k = v12 & 0xFFFFFFFE;
      }

      if (k)
      {
        [v562 portType];
        OUTLINED_FUNCTION_8_33(4.8152e-34);
        *(v62 + 14) = v60;
        WORD3(v708) = v63;
        *(&v708 + 1) = v64;
        OUTLINED_FUNCTION_15_20();
        OUTLINED_FUNCTION_58_1();
      }

      OUTLINED_FUNCTION_1_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v65 = [objc_msgSend(a4 objectForKeyedSubscript:{0x1F21A0730), "BOOLValue"}];
    HIDWORD(v509) = v65;
    v729 = 0u;
    v730 = 0u;
    v731 = 0u;
    v732 = 0u;
    v66 = v53;
    v68 = OUTLINED_FUNCTION_1_18(v65, v67, &v729, v734);
    if (v68)
    {
      v69 = v68;
      v70 = *v730;
      v487 = 0x1F217E410;
      v548 = 0x1F217E5B0;
      v598 = *off_1E798C9A0;
      v610 = *off_1E798CA98;
      v596 = *off_1E798CB50;
      v578 = *off_1E798CB18;
      v577 = *off_1E798CB08;
      v575 = *off_1E798CB20;
      v573 = *off_1E798CB10;
      v544 = 0x1F217E510;
      v558 = 0x1F217E590;
      v560 = 0x1F217E4F0;
      v554 = 0x1F217EC50;
      v556 = 0x1F217EC30;
      v550 = 0x1F217E530;
      v552 = 0x1F217ED10;
      v491 = 0x1F217ED30;
      v485 = 0x1F217E4D0;
      v507 = *off_1E798CA48;
      v505 = *off_1E798C9F8;
      v503 = *off_1E798C9D8;
      v501 = *off_1E798C9F0;
      v499 = *off_1E798BE88;
      v497 = *off_1E798C280;
      v493 = 0x1F217EB90;
      v495 = *off_1E798C288;
      v489 = 0x1F217EF30;
      v534 = 0x1F217F750;
      v536 = 0x1F217EA90;
      v530 = 0x1F217EA50;
      v523 = 0x1F217E850;
      v525 = 0x1F217EA70;
      v519 = 0x1F217E550;
      v521 = 0x1F217F5D0;
      v515 = 0x1F2180050;
      v517 = 0x1F217E570;
      v513 = 0x1F217FE10;
      v511 = *MEMORY[0x1E6966130];
      v579 = v56;
      v538 = *v730;
LABEL_81:
      k = 0;
      v542 = v69;
      while (1)
      {
        if (*v730 != v70)
        {
          objc_enumerationMutation(v66);
        }

        v571 = k;
        v621 = *(*(&v729 + 1) + 8 * k);
        v71 = [v66 objectForKeyedSubscript:?];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v71 = [v66 objectForKeyedSubscript:v71];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_2_5();
            FigDebugAssert3();
          }
        }

        v72 = [objc_msgSend(v71 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}];
        if ((v72 & 1) == 0)
        {
          v74 = OUTLINED_FUNCTION_11_28();
          v72 = OUTLINED_FUNCTION_29_9(v74, v75, &stru_1F216A3D0, v71);
          if ((v72 & 0x80000000) == 0)
          {
            LODWORD(v569) = v72;
            v72 = [v56 count];
            if (v72 > v569)
            {
              v566 = [objc_msgSend(v56 objectAtIndexedSubscript:{v569), "mutableCopy"}];
              [v566 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v569), 0x1F217E450}];
              if (([v546 isEqualToString:@"vide"] & 1) == 0)
              {
                [v566 setObject:v546 forKeyedSubscript:v487];
              }

              context = objc_autoreleasePoolPush();
              n = [v71 objectForKeyedSubscript:v548];
              if (!n)
              {
                if ([objc_msgSend(v71 objectForKeyedSubscript:{@"HasFESCompanionFormat", "BOOLValue"}])
                {
                  v728 = v71;
                  n = [MEMORY[0x1E695DEC8] arrayWithObjects:&v728 count:1];
                }

                else
                {
                  n = 0;
                }
              }

              objb = v71;
              if ([n count])
              {
                v602 = [MEMORY[0x1E695DF70] array];
                v724 = 0u;
                v725 = 0u;
                v726 = 0u;
                v727 = 0u;
                v78 = OUTLINED_FUNCTION_1_18(v602, v77, &v724, &v722);
                if (v78)
                {
                  v79 = v78;
                  v69 = *v725;
                  v612 = n;
                  do
                  {
                    for (n = 0; n != v79; ++n)
                    {
                      if (*v725 != v69)
                      {
                        objc_enumerationMutation(v612);
                      }

                      v80 = *(*(&v724 + 1) + 8 * n);
                      v81 = [objb mutableCopy];
                      [v81 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FES"];
                      OUTLINED_FUNCTION_44_9([v80 objectForKeyedSubscript:@"FESWidth"]);
                      OUTLINED_FUNCTION_44_9([v80 objectForKeyedSubscript:@"FESHeight"]);
                      OUTLINED_FUNCTION_44_9([v80 objectForKeyedSubscript:@"MaxFrameRate"]);
                      [v81 setObject:MEMORY[0x1E695E110] forKeyedSubscript:0x1F217E9B0];
                      v721 = 0;
                      v82 = OUTLINED_FUNCTION_11_28();
                      v85 = csu_resolveFormatIndexForNamedStreamFormat(v82, v83, @"[FESCompanionFormat]", v81, v56, v84);
                      if ((v85 & 0x80000000) == 0)
                      {
                        v86 = v85;
                        if ([v56 count] > v85)
                        {
                          v87 = [v56 objectAtIndexedSubscript:v86];
                          if ([objc_msgSend(v581 objectForKeyedSubscript:{@"geometricDistortionCorrection", "BOOLValue"}])
                          {
                            v88 = 1;
                          }

                          else
                          {
                            v88 = [objc_msgSend(v581 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
                          }

                          v89 = [objc_msgSend(v87 objectForKeyedSubscript:{v598), "objectForKeyedSubscript:", v610}];
                          v90 = [objc_msgSend(v89 objectForKeyedSubscript:{v596), "BOOLValue"}];
                          v91 = 0;
                          if (v88)
                          {
                            v92 = 0;
                            if (v90)
                            {
                              v93 = [objc_msgSend(v89 objectForKeyedSubscript:{v578), "intValue"}];
                              v94 = [objc_msgSend(v89 objectForKeyedSubscript:{v577), "intValue"}];
                              v95 = [objc_msgSend(v89 objectForKeyedSubscript:{v575), "intValue"}];
                              v96 = [objc_msgSend(v89 objectForKeyedSubscript:{v573), "intValue"}];
                              v97 = v95 <= v93 && v96 <= v94;
                              v98 = !v97;
                              if (v98)
                              {
                                v91 = v96;
                              }

                              else
                              {
                                v91 = 0;
                              }

                              if (v98)
                              {
                                v92 = v95;
                              }

                              else
                              {
                                v92 = 0;
                              }
                            }
                          }

                          else
                          {
                            v92 = 0;
                          }

                          *&v693 = 0x1F216B190;
                          *&v707 = [MEMORY[0x1E696AD98] numberWithInt:v721];
                          *(&v693 + 1) = 0x1F216B1B0;
                          *(&v707 + 1) = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v721)];
                          *&v694 = 0x1F217E450;
                          *&v708 = [MEMORY[0x1E696AD98] numberWithInt:v86];
                          *(&v694 + 1) = 0x1F217E5D0;
                          v99 = [objb objectForKeyedSubscript:@"SIFREnabled"];
                          v100 = MEMORY[0x1E695E110];
                          if (v99)
                          {
                            v100 = v99;
                          }

                          *(&v708 + 1) = v100;
                          *&v695 = 0x1F217E6B0;
                          v101 = [v80 objectForKeyedSubscript:?];
                          if (v101)
                          {
                            v102 = v101;
                          }

                          else
                          {
                            v102 = &unk_1F2244590;
                          }

                          *&v709 = v102;
                          *(&v695 + 1) = 0x1F217E6D0;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          *(&v709 + 1) = v103;
                          *&v696 = 0x1F217E7F0;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          *&v710 = v104;
                          *(&v696 + 1) = 0x1F217E810;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          *(&v710 + 1) = v105;
                          v697 = 0x1F217E6F0;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v711 = v106;
                          v698 = 0x1F217E710;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v712 = v107;
                          v699 = 0x1F217E730;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v713 = v108;
                          v700 = 0x1F217E750;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v714 = v109;
                          v701 = 0x1F217E770;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v715 = v110;
                          v702 = 0x1F217E790;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v716 = v111;
                          v703 = 0x1F217EBB0;
                          v717 = [MEMORY[0x1E696AD98] numberWithInt:v92];
                          v704 = 0x1F217EBD0;
                          v718 = [MEMORY[0x1E696AD98] numberWithInt:v91];
                          v705 = 0x1F217E7B0;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v719 = v112;
                          v706 = 0x1F217E7D0;
                          [v80 objectForKeyedSubscript:?];
                          OUTLINED_FUNCTION_7_39();
                          v720 = v113;
                          [v602 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v707, &v693, 18)}];
                          v52 = a4;
                          v56 = v579;
                        }
                      }
                    }

                    v79 = [v612 countByEnumeratingWithState:&v724 objects:&v722 count:16];
                  }

                  while (v79);
                }

                [v566 setObject:v602 forKeyedSubscript:v548];
                v71 = objb;
              }

              if ([v71 objectForKeyedSubscript:v560])
              {
                [v71 objectForKeyedSubscript:v560];
                v69 = [OUTLINED_FUNCTION_53_0() mutableCopy];
                [v69 setObject:MEMORY[0x1E695E110] forKeyedSubscript:0x1F217E5D0];
                [v69 setObject:0 forKeyedSubscript:@"SIFRBinningFactor"];
                if ([n objectForKeyedSubscript:@"SensorWidth"])
                {
                  [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                [n objectForKeyedSubscript:@"FES"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESWidth"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESHeight"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                v114 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_29_9(v114, v115, @"[NonSIFRCompanionFormat]", v69) & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v69)
                {
                  v691[0] = 0x1F217E450;
                  v692[0] = OUTLINED_FUNCTION_32_9();
                  v692[1] = MEMORY[0x1E695E110];
                  v691[1] = 0x1F217E5D0;
                  v691[2] = 0x1F217E6F0;
                  v116 = [n objectForKeyedSubscript:?];
                  v69 = &unk_1F2244590;
                  if (v116)
                  {
                    v117 = v116;
                  }

                  else
                  {
                    v117 = &unk_1F2244590;
                  }

                  v692[2] = v117;
                  v691[3] = 0x1F217E710;
                  [OUTLINED_FUNCTION_118_0() objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v692[3] = v118;
                  [v566 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v692, v691, 4), v560}];
                }
              }

              if ([v71 objectForKeyedSubscript:v544])
              {
                n = [v71 mutableCopy];
                [n setObject:&unk_1F22445A8 forKeyedSubscript:@"SIFRBinningFactor"];
                v119 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_21_18(v119, v120, @"[FullBinSIFRCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v69)
                {
                  OUTLINED_FUNCTION_32_9();
                  v121 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  [OUTLINED_FUNCTION_48_10(v121 v122];
                }
              }

              if ([v71 objectForKeyedSubscript:v550])
              {
                v129 = [v71 objectForKeyedSubscript:v550];
                if (([objc_msgSend(v129 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}] & 1) == 0)
                {
                  n = [v71 mutableCopy];
                  if ([v129 objectForKeyedSubscript:@"SensorWidth"])
                  {
                    OUTLINED_FUNCTION_34_12();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v129 objectForKeyedSubscript:@"SensorHeight"])
                  {
                    OUTLINED_FUNCTION_28_9();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v129 objectForKeyedSubscript:@"FES"])
                  {
                    OUTLINED_FUNCTION_34_12();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v129 objectForKeyedSubscript:@"FESWidth"])
                  {
                    OUTLINED_FUNCTION_34_12();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if ([v129 objectForKeyedSubscript:@"FESHeight"])
                  {
                    [v129 objectForKeyedSubscript:@"FESHeight"];
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  if (OUTLINED_FUNCTION_28_9())
                  {
                    OUTLINED_FUNCTION_28_9();
                    [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  }

                  [n setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"OptimizedForMidFrameSynchronization"];
                  v130 = OUTLINED_FUNCTION_11_28();
                  if ((OUTLINED_FUNCTION_21_18(v130, v131, @"[MidFrameSynchronizationOptimizedCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v129)
                  {
                    OUTLINED_FUNCTION_32_9();
                    v132 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                    [OUTLINED_FUNCTION_48_10(v132 v133];
                  }
                }
              }

              if ([v71 objectForKeyedSubscript:v558])
              {
                v140 = [v71 objectForKeyedSubscript:v558];
                n = [v71 mutableCopy];
                if ([v140 objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v140 objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v140 objectForKeyedSubscript:0x1F217E6F0])
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_39() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_39() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if (OUTLINED_FUNCTION_28_9())
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                v141 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_21_18(v141, v142, @"[ActionCameraCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v140)
                {
                  OUTLINED_FUNCTION_32_9();
                  v143 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  [OUTLINED_FUNCTION_48_10(v143 v144];
                }
              }

              if ([v71 objectForKeyedSubscript:v556])
              {
                [v71 objectForKeyedSubscript:v556];
                v151 = [OUTLINED_FUNCTION_53_0() mutableCopy];
                [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESHeight"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [v151 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FES"];
                if ([n objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SIFRBinningFactor"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                v152 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_29_9(v152, v153, @"[DepthCompanionFormat]", v151) & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v151)
                {
                  *&v675 = 0x1F217E450;
                  *type = OUTLINED_FUNCTION_32_9();
                  *(&v675 + 1) = 0x1F216B190;
                  v154 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                  if (v154)
                  {
                    v155 = v154;
                  }

                  else
                  {
                    v155 = &unk_1F2244590;
                  }

                  v682 = v155;
                  *&v676 = 0x1F216B1B0;
                  [n objectForKeyedSubscript:@"FESHeight"];
                  OUTLINED_FUNCTION_18_16();
                  v683 = v156;
                  *(&v676 + 1) = 0x1F217E5D0;
                  v157 = [v71 objectForKeyedSubscript:@"SIFREnabled"];
                  v158 = MEMORY[0x1E695E110];
                  if (v157)
                  {
                    v158 = v157;
                  }

                  v684 = v158;
                  *&v677 = 0x1F217E6B0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v685 = v159;
                  *(&v677 + 1) = 0x1F217E6D0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v686 = v160;
                  *&v678 = 0x1F217E7F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v687 = v161;
                  *(&v678 + 1) = 0x1F217E810;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v688 = v162;
                  v679 = 0x1F217E6F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v689 = v163;
                  v680 = 0x1F217E710;
                  [OUTLINED_FUNCTION_118_0() objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_18_16();
                  v690 = v164;
                  [v566 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", type, &v675, 10), v556}];
                }
              }

              if ([v71 objectForKeyedSubscript:v554])
              {
                [v71 objectForKeyedSubscript:v554];
                v165 = [OUTLINED_FUNCTION_53_0() mutableCopy];
                [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [n objectForKeyedSubscript:@"FESHeight"];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [v165 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"FES"];
                if ([n objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([n objectForKeyedSubscript:@"SIFRBinningFactor"])
                {
                  OUTLINED_FUNCTION_41_9();
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_23_12() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                }

                v166 = OUTLINED_FUNCTION_11_28();
                if ((OUTLINED_FUNCTION_29_9(v166, v167, @"[FSDNetCompanionFormat]", v165) & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v165)
                {
                  v668[0] = 0x1F217E450;
                  *&v669 = OUTLINED_FUNCTION_32_9();
                  v668[1] = 0x1F216B190;
                  v168 = [OUTLINED_FUNCTION_27_1() objectForKeyedSubscript:?];
                  if (v168)
                  {
                    v169 = v168;
                  }

                  else
                  {
                    v169 = &unk_1F2244590;
                  }

                  *(&v669 + 1) = v169;
                  v668[2] = 0x1F216B1B0;
                  [n objectForKeyedSubscript:@"FESHeight"];
                  OUTLINED_FUNCTION_7_39();
                  *&v670 = v170;
                  v668[3] = 0x1F217E5D0;
                  v171 = [v71 objectForKeyedSubscript:@"SIFREnabled"];
                  v172 = MEMORY[0x1E695E110];
                  if (v171)
                  {
                    v172 = v171;
                  }

                  *(&v670 + 1) = v172;
                  v668[4] = 0x1F217E6B0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *&v671 = v173;
                  v668[5] = 0x1F217E6D0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *(&v671 + 1) = v174;
                  v668[6] = 0x1F217E7F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *&v672 = v175;
                  v668[7] = 0x1F217E810;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  *(&v672 + 1) = v176;
                  v668[8] = 0x1F217E6F0;
                  [n objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  v673 = v177;
                  v668[9] = 0x1F217E710;
                  [OUTLINED_FUNCTION_118_0() objectForKeyedSubscript:?];
                  OUTLINED_FUNCTION_7_39();
                  v674 = v178;
                  [v566 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v669, v668, 10), v554}];
                }
              }

              if ([v71 objectForKeyedSubscript:v552])
              {
                v179 = [v71 objectForKeyedSubscript:v552];
                v180 = [v71 mutableCopy];
                if ([v179 objectForKeyedSubscript:@"SensorWidth"])
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v179 objectForKeyedSubscript:@"SensorHeight"])
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([v179 objectForKeyedSubscript:0x1F217E6F0])
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if ([OUTLINED_FUNCTION_39() objectForKeyedSubscript:?])
                {
                  [OUTLINED_FUNCTION_39() objectForKeyedSubscript:?];
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if (OUTLINED_FUNCTION_28_9())
                {
                  OUTLINED_FUNCTION_28_9();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                if (OUTLINED_FUNCTION_34_12())
                {
                  OUTLINED_FUNCTION_34_12();
                  [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                }

                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
                v181 = OUTLINED_FUNCTION_11_28();
                v71 = objb;
                if ((OUTLINED_FUNCTION_21_18(v181, v182, @"[StereoVideoCompanionFormat]") & 0x80000000) == 0 && OUTLINED_FUNCTION_42_10() > v179)
                {
                  OUTLINED_FUNCTION_32_9();
                  v183 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
                  [OUTLINED_FUNCTION_48_10(v183 v184];
                }
              }

              objc_autoreleasePoolPop(context);
              v191 = v566;
              if ([objc_msgSend(v71 objectForKeyedSubscript:{@"HasSensorHDRCompanionFormat", "BOOLValue"}])
              {
                v192 = [v71 mutableCopy];
                [v192 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HDR"];
                v193 = OUTLINED_FUNCTION_11_28();
                v195 = OUTLINED_FUNCTION_21_18(v193, v194, @"[SensorHDRCompanionFormat]");
                if ((v195 & 0x80000000) == 0)
                {
                  v196 = v195;
                  if ([v56 count] > v195)
                  {
                    [MEMORY[0x1E696AD98] numberWithInt:v196];
                    [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                  }
                }
              }

              if ([objc_msgSend(v581 objectForKeyedSubscript:{@"geometricDistortionCorrection", "BOOLValue"}])
              {
                v197 = 1;
              }

              else
              {
                v197 = [objc_msgSend(v581 objectForKeyedSubscript:{@"geometricDistortionCorrectionForSmartCropEnabled", "BOOLValue"}];
              }

              v198 = [objc_msgSend(v566 objectForKeyedSubscript:{v598), "objectForKeyedSubscript:", v610}];
              v199 = [objc_msgSend(v198 objectForKeyedSubscript:{v596), "BOOLValue"}];
              if (v197 && v199)
              {
                v200 = [objc_msgSend(v198 objectForKeyedSubscript:{v578), "intValue"}];
                v201 = v200;
                v209 = [OUTLINED_FUNCTION_46_9(v200 v202];
                v735.size.width = v201;
                v735.size.height = v209;
                v735.origin.x = 0.0;
                v735.origin.y = 0.0;
                v210 = CGRectCreateDictionaryRepresentation(v735);
                v211 = BWGetGeometricDistortionCorrectionStrengthFromDimensions(v201 | (v209 << 32), SHIDWORD(v509));
                v666[0] = v507;
                v667[0] = OUTLINED_FUNCTION_32_9();
                v666[1] = v505;
                v667[1] = [MEMORY[0x1E696AD98] numberWithInt:v209];
                v667[2] = v210;
                v666[2] = v503;
                v666[3] = v501;
                v667[3] = [MEMORY[0x1E696AD98] numberWithDouble:v211];
                v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v667 forKeys:v666 count:4];
                v664 = v610;
                v665 = v212;
                k = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v665 forKeys:&v664 count:1];
                v733 = [v562 setProperty:v499 value:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v569)}];
                if (v733 || (v733 = [v562 setProperty:v497 value:k]) != 0)
                {
                  OUTLINED_FUNCTION_1_5();
LABEL_461:
                  FigDebugAssert3();
                  break;
                }

                v213 = [v562 getProperty:v495 error:&v733];
                if (v733)
                {
                  OUTLINED_FUNCTION_14_21();
                  goto LABEL_461;
                }

                v214 = [v213 objectForKeyedSubscript:v610];
                if (!v214)
                {
                  v459 = v481;
                  LODWORD(v453) = 0;
                  FigDebugAssert3();
                  v733 = FigSignalErrorAtGM();
                  if (v733)
                  {
                    goto LABEL_251;
                  }

                  goto LABEL_252;
                }

                v191 = v567;
                [v567 setObject:v214 forKeyedSubscript:v493];
                v215 = [objc_msgSend(v198 objectForKeyedSubscript:{v575), "intValue"}];
                v216 = [objc_msgSend(v198 objectForKeyedSubscript:{v573), "intValue"}];
                if (v215 > v201 || v216 > v209)
                {
                  v218 = v216;
                  [MEMORY[0x1E696AD98] numberWithInt:v215];
                  [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                  [MEMORY[0x1E696AD98] numberWithInt:v218];
                  [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                }
              }

              v219 = csu_secondaryNativeResolutionZoomFactorsForFormatIndex([v562 portType], v56, v569);
              if ([v219 count])
              {
                [v191 setObject:v219 forKeyedSubscript:v489];
              }

              v640 = 0x1F217E6F0;
              v641 = 0x1F217E710;
              v642 = @"SensorCenterOffsetX";
              v643 = @"SensorCenterOffsetY";
              v644 = 0x1F217E770;
              v645 = 0x1F217E790;
              v646 = 0x1F217E7B0;
              v647 = 0x1F217E7D0;
              v648 = 0x1F217E7F0;
              v649 = 0x1F217E810;
              v650 = 0x1F217E6B0;
              v651 = 0x1F217E6D0;
              v652 = v536;
              v653 = v534;
              v654 = v530;
              v655 = v525;
              v656 = v523;
              v657 = @"FrontHorizontalScaleFactor";
              v658 = v521;
              v659 = v519;
              v660 = v517;
              v661 = v511;
              v662 = v515;
              v663 = v513;
              BWAddEntriesWithKeysFromDictionaryToDictionary(objb, [MEMORY[0x1E695DEC8] arrayWithObjects:&v640 count:24], v191);
              v72 = [v593 setObject:v191 forKeyedSubscript:v621];
              v70 = v538;
              v66 = v540;
              v69 = v542;
            }
          }
        }

        k = v571 + 1;
        if ((v571 + 1) == v69)
        {
          v69 = OUTLINED_FUNCTION_1_18(v72, v73, &v729, v734);
          if (v69)
          {
            goto LABEL_81;
          }

          break;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_9();
    v450 = OUTLINED_FUNCTION_43_10();
    if (OUTLINED_FUNCTION_63_7(v450))
    {
      v451 = v53;
    }

    else
    {
      v451 = v53 & 0xFFFFFFFE;
    }

    if (v451)
    {
      OUTLINED_FUNCTION_8_33(4.8151e-34);
      *(v452 + 14) = v615;
      OUTLINED_FUNCTION_15_20();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v733)
  {
LABEL_251:
    [v593 removeAllObjects];
  }

LABEL_252:
  v535 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v220 = [MEMORY[0x1E695DF70] array];
  csu_deviceSupportsWideColor(a1, a3);
  if (a1)
  {
    [objc_msgSend(*(a1 + 16) "supportedProperties")];
    v221 = *(a1 + 32);
  }

  else
  {
    [objc_msgSend(0 "supportedProperties")];
    v221 = 0;
  }

  [objc_msgSend(v221 supportedProperties];
  if (a1)
  {
    v222 = *(a1 + 32);
  }

  else
  {
    v222 = 0;
  }

  v545 = v220;
  if (([objc_msgSend(v222 "portType")] & 1) != 0 || (!a1 ? (v223 = 0) : (v223 = *(a1 + 32)), objc_msgSend(objc_msgSend(v223, "portType"), "isEqualToString:", *off_1E798A0F8)))
  {
    if (!a1)
    {
      [v582 count];
      v225 = 0xFFFFFFFFLL;
      goto LABEL_272;
    }

    v224 = *(a1 + 8);
    v225 = 0xFFFFFFFFLL;
    if (v224 <= 0x14 && ((1 << v224) & 0x1E7FFC) != 0)
    {
      v226 = FigCaptureFrontCameraRotationAngle();
      if (v226 % 180 == 90)
      {
        v225 = FigCaptureNormalizeAngle(v226 - 90);
      }
    }
  }

  else
  {
    v225 = 0xFFFFFFFFLL;
  }

  v227 = [v582 count];
  if (a1)
  {
    if (v227)
    {
      v228 = *(a1 + 12);
      if (v228 <= 8 && ((1 << v228) & 0x10E) != 0)
      {
        v229 = [-[FigCaptureSourceStreamsContainer portTypesSupportingDepth](a1) firstObject];
        if (v229)
        {
          [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{v229), "getProperty:error:", *off_1E798BDE8, 0}];
        }
      }
    }
  }

LABEL_272:
  OUTLINED_FUNCTION_36_12();
  v526 = OUTLINED_FUNCTION_62_5(v230, v231, v232, v233, v234, v235, v236, v237, v454, v459, v461, v465, v469, v473, v477, v479, v481, v483, v485, v487, v489, v491, v493, v495, v497, v499, v501, v503, v505, v507, v509, v511, v513, v515, v517, v519, v521, v523, v525, v528, v530, v532);
  if (v526)
  {
    OUTLINED_FUNCTION_51_9();
    v524 = v238;
    v555 = 0x1F217E490;
    v570 = 0x1F217F970;
    v572 = 0x1F217F950;
    v543 = 0x1F217FA50;
    v559 = 0x1F217F6D0;
    v541 = 0x1F217F9B0;
    v539 = 0x1F217FA70;
    v568 = 0x1F217FA90;
    v551 = 0x1F217FAD0;
    v537 = 0x1F217FB30;
    v563 = 0x1F217FE30;
    contexta = @"GeometricDistortionCorrectionCaptureStreamFormat";
    v561 = *MEMORY[0x1E6966130];
    v547 = @"ProResSupported";
    v549 = 0x1F217FFB0;
    v603 = *off_1E798C078;
    v553 = 0x1F217F9F0;
    while (1)
    {
      OUTLINED_FUNCTION_51_9();
      if (v240 != v524)
      {
        v241 = v239;
        objc_enumerationMutation(v533);
        v239 = v241;
      }

      v531 = v239;
      v242 = *(v723 + 8 * v239);
      v557 = [v533 objectForKeyedSubscript:v242];
      if (([v242 hasSuffix:@"CinematicFraming"] & 1) == 0)
      {
        [v242 hasSuffix:@"GeometricDistortionCorrection"];
      }

      v586 = [MEMORY[0x1E695DF90] dictionary];
      v574 = v242;
      [v586 setObject:v557 forKeyedSubscript:v242];
      v243 = [v557 objectForKeyedSubscript:@"Variants"];
      if (v243)
      {
        v244 = v243;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v586 addEntriesFromDictionary:v244];
        }

        [v557 setObject:0 forKeyedSubscript:@"Variants"];
      }

      v576 = [v586 allKeys];
      v245 = [v576 countByEnumeratingWithState:type objects:&v707 count:16];
      v587 = v245;
      if (v245)
      {
        v585 = *v683;
        do
        {
          v253 = 0;
          do
          {
            if (*v683 != v585)
            {
              objc_enumerationMutation(v576);
            }

            v594 = v253;
            v254 = v682[v253];
            v255 = [v586 objectForKeyedSubscript:v254];
            if (([objc_msgSend(v255 objectForKeyedSubscript:{@"Unsupported", "BOOLValue"}] & 1) == 0)
            {
              if (([v254 isEqualToString:v574] & 1) == 0)
              {
                v256 = [v557 mutableCopy];
                [v256 setValuesForKeysWithDictionary:v255];
                [v256 setObject:0 forKeyedSubscript:v555];
                v255 = v256;
              }

              v257 = [objc_msgSend(v255 objectForKeyedSubscript:{v572), "BOOLValue"}];
              v258 = [objc_msgSend(v255 objectForKeyedSubscript:{v570), "BOOLValue"}];
              v259 = a1;
              if (a1)
              {
                v259 = *(a1 + 8) == 14;
              }

              v622 = v254;
              if (((v257 | v258) & 1) != 0 || v259)
              {
                k = [v255 objectForKeyedSubscript:v553];
                v455 = v254;
                v460 = @"CinematicFraming";
                v260 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v261 = [v593 objectForKeyedSubscript:k];
                v262 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v255];
                if (v261)
                {
                  v263 = v262;
                  [v262 setObject:k forKeyedSubscript:@"CaptureStreamFormat"];
                  [v263 setObject:0 forKeyedSubscript:v553];
                  k = v543;
                  v264 = [objc_msgSend(v255 objectForKeyedSubscript:{v543), "intValue"}];
                  if (v264)
                  {
                    v264 = [v263 setObject:objc_msgSend(v255 forKeyedSubscript:{"objectForKeyedSubscript:", v543), @"MaxFrameRateOverride"}];
                  }

                  OUTLINED_FUNCTION_31_11(v264, v265, v266, v267, v268, v269, v270, v271, v455, @"CinematicFraming", v462, v466, v470, v474, v478, v480, v482, v484, v486, v488, v490, v492, v494, v496, v498, v500, v502, v504, v506, v508, v510, v512, v514, v516, v518, v520, v522, v524, v526, v529, v531, v533, v535, v537, v539, v541, v543, v545, v547, v549, v551, v553, v555, v557, v559);
                  OUTLINED_FUNCTION_30_5();
                  v456 = v272;
                  OUTLINED_FUNCTION_9_32();
                  SourceFormatDictFromDeviceFormat = csu_createSourceFormatDictFromDeviceFormat(v273, v274, v275, v276, v277, v278, v279, k, v456, v52, v463, v467, v471, v475);
                  v254 = v622;
                  if (!SourceFormatDictFromDeviceFormat && ([OUTLINED_FUNCTION_46_9(0 v280] & 1) == 0)
                  {
                    [v545 addObject:v260];
                  }

                  v287 = MEMORY[0x1E695E118];
                  [SourceFormatDictFromDeviceFormat setObject:MEMORY[0x1E695E118] forKeyedSubscript:v541];
                  [SourceFormatDictFromDeviceFormat setObject:v287 forKeyedSubscript:v539];
                }

                else
                {
                  SourceFormatDictFromDeviceFormat = 0;
                  v254 = v622;
                }
              }

              else
              {
                SourceFormatDictFromDeviceFormat = 0;
              }

              v288 = v52;
              if ([objc_msgSend(v255 objectForKeyedSubscript:{v568), "BOOLValue"}])
              {
                k = [v255 objectForKeyedSubscript:v551];
                v455 = v254;
                v460 = @"SmartCrop";
                v289 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v290 = [v593 objectForKeyedSubscript:k];
                v291 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v255];
                if (v290)
                {
                  v292 = v291;
                  [v291 setObject:k forKeyedSubscript:@"CaptureStreamFormat"];
                  [v292 setObject:0 forKeyedSubscript:v551];
                  k = v537;
                  v293 = [objc_msgSend(v255 objectForKeyedSubscript:{v537), "intValue"}];
                  if (v293)
                  {
                    v293 = [v292 setObject:objc_msgSend(v255 forKeyedSubscript:{"objectForKeyedSubscript:", v537), @"MaxFrameRateOverride"}];
                  }

                  OUTLINED_FUNCTION_31_11(v293, v294, v295, v296, v297, v298, v299, v300, v455, @"SmartCrop", v462, v466, v470, v474, v478, v480, v482, v484, v486, v488, v490, v492, v494, v496, v498, v500, v502, v504, v506, v508, v510, v512, v514, v516, v518, v520, v522, v524, v526, v529, v531, v533, v535, v537, v539, v541, v543, v545, v547, v549, v551, v553, v555, v557, v559);
                  OUTLINED_FUNCTION_30_5();
                  v457 = v301;
                  OUTLINED_FUNCTION_9_32();
                  v589 = csu_createSourceFormatDictFromDeviceFormat(v302, v303, v304, v305, v306, v307, v308, k, v457, v288, v464, v468, v472, v476);
                  v254 = v622;
                  if (!v589)
                  {
                    [v545 addObject:v289];
                    goto LABEL_309;
                  }
                }

                else
                {
                  v589 = 0;
                  v254 = v622;
                }
              }

              else
              {
LABEL_309:
                v589 = 0;
              }

              if ([v255 objectForKeyedSubscript:contexta])
              {
                v309 = [v255 objectForKeyedSubscript:contexta];
                v455 = v254;
                v460 = @"GeometricDistortionCorrection";
                v616 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v310 = [v593 objectForKeyedSubscript:v309];
                [MEMORY[0x1E695DF90] dictionaryWithDictionary:v255];
                if (v310)
                {
                  OUTLINED_FUNCTION_40_10();
                  [v311 setObject:? forKeyedSubscript:?];
                  [k setObject:0 forKeyedSubscript:contexta];
                  OUTLINED_FUNCTION_30_5();
                  v458 = v312;
                  OUTLINED_FUNCTION_9_32();
                  v327 = csu_createSourceFormatDictFromDeviceFormat(v313, v314, v315, v316, v317, v318, v319, v310, v458, v288, v462, v466, v470, v474);
                  v328 = v563;
                  v254 = v622;
                  if (!v327)
                  {
                    if (([OUTLINED_FUNCTION_46_9(0 v320] & 1) == 0)
                    {
                      [v545 addObject:v616];
                    }

                    v327 = 0;
                  }
                }

                else
                {
                  v327 = 0;
                  v328 = v563;
                  v254 = v622;
                }
              }

              else
              {
                v327 = 0;
                v328 = v563;
              }

              v590 = v327;
              if ([OUTLINED_FUNCTION_12_0() objectForKeyedSubscript:?])
              {
                v329 = [OUTLINED_FUNCTION_12_0() objectForKeyedSubscript:?];
                v455 = v254;
                v460 = @"FastSwitchingMain";
                v330 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@"];
                v331 = [v593 objectForKeyedSubscript:v329];
                [MEMORY[0x1E695DF90] dictionaryWithDictionary:v255];
                if (v331)
                {
                  OUTLINED_FUNCTION_40_10();
                  [v332 setObject:? forKeyedSubscript:?];
                  [k setObject:0 forKeyedSubscript:v328];
                  OUTLINED_FUNCTION_9_32();
                  k = csu_createSourceFormatDictFromDeviceFormat(v333, v334, v335, v336, v337, v338, v339, v331, a3, a4, 0, 0, 0, 0);
                  v327 = v590;
                  v254 = v622;
                  if (!k)
                  {
                    if (([OUTLINED_FUNCTION_46_9(0 v340] & 1) == 0)
                    {
                      [v545 addObject:v330];
                    }

                    goto LABEL_324;
                  }
                }

                else
                {
                  k = 0;
                  v327 = v590;
                  v254 = v622;
                }
              }

              else
              {
LABEL_324:
                k = 0;
              }

              v347 = [v255 objectForKeyedSubscript:v561];
              if (v347)
              {
                v355 = [OUTLINED_FUNCTION_12_0() objectForKeyedSubscript:?];
                v347 = FigCapturePixelFormatTypeFromPlistValue(v355);
                v356 = v347 != 2016686642;
              }

              else
              {
                v356 = 1;
              }

              v357 = [OUTLINED_FUNCTION_46_9(v347 v348];
              v584 = k;
              if ((v357 & 1) != 0 || v356)
              {
                if (v357)
                {
                  goto LABEL_344;
                }
              }

              else
              {
                v358 = [objc_msgSend(v255 objectForKeyedSubscript:{v549), "intValue"}];
                if (![objc_msgSend(a4 objectForKeyedSubscript:{v547), "BOOLValue"}] || BWGetDiskCapacityInGB() < v358)
                {
                  goto LABEL_344;
                }
              }

              OUTLINED_FUNCTION_9_32();
              v367 = csu_createSourceFormatDictFromDeviceFormat(v359, v360, v361, v362, v363, v364, v365, v366, a3, a4, SourceFormatDictFromDeviceFormat, v327, k, v589);
              if (v367)
              {
                v375 = v367;
                v376 = [MEMORY[0x1E695DF70] array];
                [v535 addObject:v375];
                v377 = [OUTLINED_FUNCTION_23_12() addObject:?];
                if (v327)
                {
                  v377 = [OUTLINED_FUNCTION_118_0() addObject:?];
                }

                if (SourceFormatDictFromDeviceFormat)
                {
                  v377 = [v376 addObject:?];
                }

                v583 = v375;
                if (v589)
                {
                  v377 = [OUTLINED_FUNCTION_12_0() addObject:?];
                }
              }

              else
              {
                if (([OUTLINED_FUNCTION_46_9(0 v368] & 1) == 0)
                {
                  [v545 addObject:v254];
                }

LABEL_344:
                v377 = [MEMORY[0x1E695DF70] array];
                v376 = v377;
                v583 = 0;
              }

              v678 = 0u;
              v677 = 0u;
              v676 = 0u;
              v675 = 0u;
              v623 = OUTLINED_FUNCTION_1_18(v377, v378, &v675, &v693);
              if (!v623)
              {
                goto LABEL_386;
              }

              v617 = *v676;
              v607 = v376;
              while (2)
              {
                v379 = 0;
LABEL_348:
                if (*v676 != v617)
                {
                  objc_enumerationMutation(v607);
                }

                v380 = *(*(&v675 + 1) + 8 * v379);
                if (v225 != -1)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:v225];
                  [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  v381 = [v380 objectForKeyedSubscript:0x1F217EC70];
                  v669 = 0u;
                  v670 = 0u;
                  v671 = 0u;
                  v672 = 0u;
                  v382 = [v381 countByEnumeratingWithState:&v669 objects:v734 count:16];
                  if (v382)
                  {
                    v383 = v382;
                    v384 = *v670;
                    do
                    {
                      for (ii = 0; ii != v383; ++ii)
                      {
                        if (*v670 != v384)
                        {
                          objc_enumerationMutation(v381);
                        }

                        k = *(*(&v669 + 1) + 8 * ii);
                        [MEMORY[0x1E696AD98] numberWithInt:v225];
                        [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
                      }

                      v383 = [v381 countByEnumeratingWithState:&v669 objects:v734 count:16];
                    }

                    while (v383);
                  }
                }

                if (![objc_msgSend(v380 objectForKeyedSubscript:{0x1F217EC70), "count"}])
                {
                  [v380 setObject:0 forKeyedSubscript:0x1F217ECF0];
                  [v380 setObject:0 forKeyedSubscript:0x1F217ECD0];
                  [v380 setObject:0 forKeyedSubscript:0x1F217ED50];
                }

                v386 = +[FigCaptureCameraParameters sharedInstance];
                v387 = [(FigCaptureSourceStreamsContainer *)a1 streamProvidingSDOFRenderingParameters];
                if (v387)
                {
                  v388 = [(FigCaptureCameraParameters *)v386 sensorIDDictionaryForStream:v387];
                }

                else
                {
                  v388 = 0;
                }

                if ([v380 objectForKeyedSubscript:0x1F217FF70])
                {
                  if ([v388 valueForKeyPath:@"CinematicVideoParameters.simulatedVideoAperture"])
                  {
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  }

                  k = [v388 valueForKeyPath:@"CinematicVideoParameters.minimumSimulatedVideoAperture"];
                  [k floatValue];
                  if (v389 > 0.0)
                  {
                    [v380 setObject:k forKeyedSubscript:0x1F217EDD0];
                    k = [v388 valueForKeyPath:@"CinematicVideoParameters.maximumSimulatedVideoAperture"];
                    [k floatValue];
                    if (v390 > 0.0)
                    {
                      [v380 setObject:k forKeyedSubscript:0x1F217EDF0];
                    }
                  }
                }

                v391 = [v380 objectForKeyedSubscript:0x1F217F090];
                if (v387 && v391)
                {
                  v392 = [v387 getProperty:v603 error:0];
                  v608 = v388;
                  if ([v387 portType] && (v393 = objc_msgSend(v387, "portType"), v394 = +[FigCaptureCameraParameters sensorIDStringFromModuleInfo:](FigCaptureCameraParameters, "sensorIDStringFromModuleInfo:", v392), LODWORD(v395) = 1.0, v396 = -[FigCaptureCameraParameters sdofRenderingVersionForPortType:sensorIDString:zoomFactor:](v386, "sdofRenderingVersionForPortType:sensorIDString:zoomFactor:", v393, v394, v395), v396))
                  {
                    v398 = v396;
                    LODWORD(v397) = 1.0;
                    v399 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v388 zoomFactor:v397];
                    if (v398 >= 5)
                    {
                      v400 = [MEMORY[0x1E696AD60] stringWithFormat:@"SLMv%d", v398];
                      goto LABEL_377;
                    }
                  }

                  else
                  {
                    v399 = 0;
                  }

                  v400 = @"SLM";
LABEL_377:
                  v401 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.simulatedAperture", v400];
                  v402 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.minimumSimulatedAperture", v400];
                  v455 = v400;
                  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.maximumSimulatedAperture"];
                  if ([v399 valueForKeyPath:v401])
                  {
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  }

                  k = [v399 valueForKeyPath:v402];
                  [k floatValue];
                  if (v403 > 0.0)
                  {
                    [v380 setObject:k forKeyedSubscript:0x1F217EDD0];
                    v404 = [OUTLINED_FUNCTION_39() valueForKeyPath:?];
                    [v404 floatValue];
                    if (v405 > 0.0)
                    {
                      [v380 setObject:v404 forKeyedSubscript:0x1F217EDF0];
                    }
                  }

                  if ([v608 valueForKeyPath:@"PortraitLightingParameters.effectStrength"])
                  {
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                    [v608 valueForKeyPath:@"PortraitLightingParameters.minEffectStrength"];
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                    [v608 valueForKeyPath:@"PortraitLightingParameters.maxEffectStrength"];
                    [OUTLINED_FUNCTION_47() setObject:? forKeyedSubscript:?];
                  }
                }

                if (++v379 == v623)
                {
                  v623 = [v607 countByEnumeratingWithState:&v675 objects:&v693 count:16];
                  if (!v623)
                  {
LABEL_386:

                    v52 = a4;
                    break;
                  }

                  continue;
                }

                goto LABEL_348;
              }
            }

            v253 = v594 + 1;
          }

          while (v594 + 1 != v587);
          v245 = [v576 countByEnumeratingWithState:type objects:&v707 count:16];
          v587 = v245;
        }

        while (v245);
      }

      if (v531 + 1 == v526)
      {
        v526 = OUTLINED_FUNCTION_62_5(v245, v246, v247, v248, v249, v250, v251, v252, v455, v460, v462, v466, v470, v474, v478, v480, v482, v484, v486, v488, v490, v492, v494, v496, v498, v500, v502, v504, v506, v508, v510, v512, v514, v516, v518, v520, v522, v524, v526, v529, v531, v533);
        if (!v526)
        {
          break;
        }
      }
    }
  }

  [v535 sortUsingFunction:csu_compareSourceFormats context:0];
  if ([v545 count])
  {
    *v484 = v545;
  }

  v707 = 0u;
  v708 = 0u;
  v709 = 0u;
  v710 = 0u;
  v406 = v529;
  v409 = OUTLINED_FUNCTION_37(v407, v408, &v707, &v640);
  if (v409)
  {
    v410 = v409;
    objc = 0;
    v411 = *v708;
    v618 = *MEMORY[0x1E6983558];
    v611 = *MEMORY[0x1E69837F0];
    v609 = *MEMORY[0x1E69837C8];
    do
    {
      for (jj = 0; jj != v410; ++jj)
      {
        if (*v708 != v411)
        {
          objc_enumerationMutation(v406);
        }

        v413 = *(*(&v707 + 1) + 8 * jj);
        v414 = [v406 objectForKeyedSubscript:v413];
        v415 = [v414 objectForKeyedSubscript:@"VideoCodec"];
        v416 = [v533 objectForKeyedSubscript:{objc_msgSend(v414, "objectForKeyedSubscript:", @"DeviceFormat"}];
        if (v416)
        {
          v418 = v416;
          v419 = [objc_msgSend(v416 objectForKeyedSubscript:{0x1F216B190), "intValue"}];
          v420 = [objc_msgSend(v418 objectForKeyedSubscript:{0x1F216B1B0), "intValue"}];
          v421 = [objc_msgSend(v414 objectForKeyedSubscript:{@"VideoCompressionProperties", "mutableCopy"}];
          v416 = [v421 objectForKeyedSubscript:v618];
          if (v416)
          {
            [v414 objectForKeyedSubscript:@"MaxFrameRate"];
            [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            [v421 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v611];
            [v421 setObject:&unk_1F22445C0 forKeyedSubscript:v609];
            v422 = MEMORY[0x1E695DF20];
            v423 = [MEMORY[0x1E696AD98] numberWithInt:v419];
            v424 = [v422 dictionaryWithObjectsAndKeys:{v415, @"AVVideoCodecKey", v423, @"AVVideoWidthKey", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v420), @"AVVideoHeightKey", v421, @"AVVideoCompressionPropertiesKey", 0}];
            v425 = objc;
            if (!objc)
            {
              v425 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            objc = v425;
            v416 = [v425 setObject:v424 forKeyedSubscript:v413];
          }

          v52 = a4;
        }

        v406 = v529;
      }

      v410 = OUTLINED_FUNCTION_37(v416, v417, &v707, &v640);
    }

    while (v410);
  }

  else
  {
    objc = 0;
  }

  [v52 setObject:objc forKeyedSubscript:@"AVCaptureSessionPresetCompressionSettings"];

  return v535;
}

uint64_t csu_createVideoCaptureSourceInfoForCaptureDeviceFromModelSpecificPlist_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [(FigCaptureSourceStreamsContainer *)a1 switchOverZoomFactors];
  result = [v6 count];
  if (result)
  {
    [a2 setObject:v6 forKeyedSubscript:a3];
    [(FigCaptureSourceStreamsContainer *)a1 switchOverZoomFactorsWithoutFudge];
    return [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
  }

  return result;
}

uint64_t __csu_removeUnsupportedDeviceFormatsAndDependentPresets_block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __csu_resolveSessionPresetAliases_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

uint64_t __bwvdic_monocularVideoPipelineForNetworkDimensions_block_invoke_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

CGAffineTransform *mscsnu_getTransformFromSensorSpaceToSampleBufferWithNondisruptiveSwitching@<X0>(void *a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  FigCaptureGetTransformFromSensorSpaceToSampleBuffer(a1, a3);
  v21 = *(MEMORY[0x1E695EFD0] + 16);
  v22 = *MEMORY[0x1E695EFD0];
  *&v24.a = *MEMORY[0x1E695EFD0];
  *&v24.c = v21;
  v20 = *(MEMORY[0x1E695EFD0] + 32);
  *&v24.tx = v20;
  v5 = *off_1E798B710;
  if (![a2 objectForKeyedSubscript:*off_1E798B710] || objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", v5), "BOOLValue"))
  {
    v6 = [a2 objectForKeyedSubscript:*off_1E798B220];
    v7 = [a2 objectForKeyedSubscript:*off_1E798B218];
    v8 = v6 ? [v6 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v6, "allKeys"), "firstObject")}] : objc_msgSend(v7, "firstObject");
    v9 = v8;
    if (v8)
    {
      v10 = *off_1E798B508;
      [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
      if (v11 > 0.0)
      {
        v12 = v11;
        [objc_msgSend(v9 objectForKeyedSubscript:{v10), "floatValue"}];
        if (v13 > 0.0)
        {
          v14 = v12 == 2.0;
          if (v13 == 2.0)
          {
            v14 = 1;
          }

          if (v12 != v13 && v14)
          {
            v16 = (v12 / v13);
            *&v26.a = v22;
            *&v26.c = v21;
            *&v26.tx = v20;
            CGAffineTransformScale(&v24, &v26, v16, v16);
            t1 = v24;
            CGAffineTransformTranslate(&v26, &t1, (1.0 / v16 + -1.0) * 0.5, (1.0 / v16 + -1.0) * 0.5);
            v24 = v26;
          }
        }
      }
    }
  }

  v26 = v24;
  result = CGAffineTransformIsIdentity(&v26);
  if ((result & 1) == 0)
  {
    v18 = a3[1];
    *&t1.a = *a3;
    *&t1.c = v18;
    *&t1.tx = a3[2];
    t2 = v24;
    result = CGAffineTransformConcat(&v26, &t1, &t2);
    v19 = *&v26.c;
    *a3 = *&v26.a;
    a3[1] = v19;
    a3[2] = *&v26.tx;
  }

  return result;
}

void BWAddMinimumValidBufferRectForGDCIfNeededToSampleBuffer()
{
  OUTLINED_FUNCTION_12_30();
  v41 = v0;
  v42 = v6;
  v7 = v5;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  if (v5)
  {
    v14 = *v5;
  }

  else
  {
    v14 = 0;
  }

  ValidBufferRect = FigCaptureMetadataUtilitiesGetValidBufferRect();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  FigCaptureMetadataUtilitiesGetFinalCropRect();
  OUTLINED_FUNCTION_26_2();
  v47.origin.x = 0.0;
  v47.origin.y = 0.0;
  v47.size.width = 1.0;
  v47.size.height = 1.0;
  v22 = CGRectEqualToRect(v43, v47);
  v23 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798A690), "BOOLValue"}];
  v24 = [objc_msgSend(v13 objectForKeyedSubscript:{*off_1E798A698), "intValue"}];
  if (!v22 && v23 && v24 != 1)
  {
    memset(v40, 0, sizeof(v40));
    if ([MEMORY[0x1E69916C0] getGDCParams:v40 cameraInfo:v9 metadata:v13])
    {
      goto LABEL_12;
    }

    if (v14)
    {
      if ([v14 updateGDCParams:v40])
      {
LABEL_12:
        OUTLINED_FUNCTION_1_5();
        goto LABEL_23;
      }
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69916C0]) initWithGDCParams:v40];
      if (!v14)
      {
        OUTLINED_FUNCTION_0();
LABEL_23:
        FigDebugAssert3();
        if (!v7)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }
    }

    v26 = OUTLINED_FUNCTION_3_0();
    [v14 preGDCCropRectFromRect:{FigCaptureMetadataUtilitiesNormalizedSensorRectFromNormalizedBufferRect(v27, v28, v26, v29, v30, v31)}];
    v36 = FigCaptureMetadataUtilitiesNormalizedBufferRectFromNormalizedSensorRect(v13, v11, v32, v33, v34, v35);
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v36, v37, v38, v39);
    OUTLINED_FUNCTION_26_2();
    if (!CGRectIsNull(v44))
    {
      v45.origin.x = ValidBufferRect;
      v45.origin.y = v17;
      v45.size.width = v19;
      v45.size.height = v21;
      v48.origin.x = v1;
      v48.origin.y = v2;
      v48.size.width = v3;
      v48.size.height = v4;
      if (!CGRectContainsRect(v45, v48))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3();
      }

      OUTLINED_FUNCTION_3_0();
      FigCaptureMetadataUtilitiesRoundDenormalizedRectToRawSensorCFABoundary(v13);
      v49.origin.x = ValidBufferRect;
      v49.origin.y = v17;
      v49.size.width = v19;
      v49.size.height = v21;
      CGRectIntersection(v46, v49);
      FigCFDictionarySetCGRect();
    }
  }

  if (!v7)
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_19:
  if (!*v7)
  {
    *v7 = v14;
  }

LABEL_25:
  OUTLINED_FUNCTION_11_29();
}

uint64_t BWCreateSampleBufferFromSemanticMasksDictionary_cold_1(uint64_t a1, void *a2, void *a3)
{
  OUTLINED_FUNCTION_1_5();
  result = FigDebugAssert3();
  *a3 = *a2;
  return result;
}

uint64_t CMIOExtensionFigCaptureDeviceCreate()
{
  if (objc_opt_class() && objc_opt_class())
  {
    [MEMORY[0x1E6963468] sharedInstance];

    CMIOExtensionFigCaptureDeviceCreateInternal();
  }

  return 4294954514;
}

uint64_t CMIOExtensionFigCaptureDeviceInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 24) & 1) == 0)
  {
    v1 = DerivedStorage;
    os_unfair_lock_lock((DerivedStorage + 28));
    *(v1 + 24) = 1;

    v2 = *(v1 + 8);
    v11 = OUTLINED_FUNCTION_1_3(v3, v4, v5, v6, v7, v8, v9, v10, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, 0);
    if (v11)
    {
      v19 = v11;
      v20 = MEMORY[0];
      do
      {
        v21 = 0;
        do
        {
          if (MEMORY[0] != v20)
          {
            objc_enumerationMutation(v2);
          }

          v22 = *(8 * v21);
          if (v22)
          {
            VTable = CMBaseObjectGetVTable();
            v24 = *(VTable + 8);
            v11 = VTable + 8;
            v25 = *(v24 + 24);
            if (v25)
            {
              v11 = v25(v22);
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v11 = OUTLINED_FUNCTION_1_3(v11, v12, v13, v14, v15, v16, v17, v18, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v59);
        v19 = v11;
      }

      while (v11);
    }

    os_unfair_lock_unlock((v1 + 28));
  }

  return 0;
}

void CMIOExtensionFigCaptureDeviceFinalize()
{
  CMIOExtensionFigCaptureDeviceInvalidate();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 32);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 32) = 0;
  }
}

void csp_configureMultiStreamCameraNode_cold_6()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_115_2();
}

void csp_configureMultiStreamCameraNode_cold_8()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_115_2();
}

void csp_configureMultiStreamCameraNode_cold_10()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_115_2();
}

uint64_t FigSampleBufferAutofocusProcessorCopyTimestampedExposureModes(uint64_t a1, const __CFArray *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *MEMORY[0x1E695E480];
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  Mutable = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
  FigSimpleMutexLock();
  v8 = 0;
  v9 = DerivedStorage + 17376;
  v10 = *off_1E798A5C0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_5:
  for (i = CFArrayGetCount(a2); v8 < i; i = 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a2, v8);
    CMTimeMakeFromDictionary(&time, ValueAtIndex);
    Seconds = CMTimeGetSeconds(&time);
    v14 = 0;
    Value = 0;
    do
    {
      if (Seconds == *(v9 + v14))
      {
        Value = CFDictionaryGetValue(*(v9 + 16 * v8 + 8), v10);
      }

      v14 += 16;
    }

    while (v14 != 320);
    if (!Value)
    {
      break;
    }

    CFArrayAppendValue(Mutable, Value);
    CFRelease(Value);
    ++v8;
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_6:
    ;
  }

  FigSimpleMutexUnlock();
  if (a3 && v8 >= i)
  {
    if (Mutable)
    {
      v16 = CFRetain(Mutable);
    }

    else
    {
      v16 = 0;
    }

    *a3 = v16;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

uint64_t FigSampleBufferProcessorCreateForAutofocus_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForAutofocus_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForAutofocus_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForAutofocus_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForAutofocus_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferProcessorCreateForAutofocus_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t configureDevice_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t configureDevice_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t configureDevice_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
  fig_log_get_emitter();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t configureDevice_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t configureDevice_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t configureDevice_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t configureDevice_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t configureDevice_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigSampleBufferAutofocusProcessorAddTimestampedMetadata_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_22();
  return FigDebugAssert3();
}

uint64_t processBuffer_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManagerCreate_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_BeginMonitoring_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableURLArray_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceNextAvailableSecurityScopeWrappedURLDataArray_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_11(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_12(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_13(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_14(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_15(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_16(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_18(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigExternalStorageDeviceManager_CopyStorageDeviceProperty_cold_19(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __fedm_startMonitoringForExternalDevices_block_invoke_32_cold_5()
{
  OUTLINED_FUNCTION_0();
  FigDebugAssert3();
  return FigSimpleMutexUnlock();
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fesdm_updateArrayWithNextAvailableURL_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __getPLSimpleDCIMDirectoryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getPLSimpleDCIMDirectoryClass(void)_block_invoke") description:{@"FigExternalStorageDeviceManager.m", 28, @"Unable to find class %s", "PLSimpleDCIMDirectory"}];
  __break(1u);
}

void __getPLSimpleDCIMDirectoryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *PhotoLibraryServicesCoreLibrary(void)") description:{@"FigExternalStorageDeviceManager.m", 27, @"%s", *a1}];
  __break(1u);
}

void __getICCameraDeviceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getICCameraDeviceClass(void)_block_invoke") description:{@"FigExternalStorageDeviceManager.m", 33, @"Unable to find class %s", "ICCameraDevice"}];
  __break(1u);
}

void __getICCameraDeviceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *ImageCaptureCoreLibrary(void)") description:{@"FigExternalStorageDeviceManager.m", 32, @"%s", *a1}];
  __break(1u);
}

uint64_t BWCreateFTCinematicTapRequestFromFocusRequest_cold_2()
{
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

uint64_t CMIOExtensionFigCaptureStreamCreate()
{
  if (initializeGlobalsOnce_initializeGlobalsOnceToken != -1)
  {
    dispatch_once(&initializeGlobalsOnce_initializeGlobalsOnceToken, &__block_literal_global_76);
  }

  if (objc_opt_class())
  {
    FigCaptureStreamGetClassID();
  }

  return 4294954514;
}

id cmioefcs_copyVideoOutputConfigurations()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    return 0;
  }

  v1 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 20));
  v2 = [*(v1 + 96) copy];
  os_unfair_lock_unlock((v1 + 20));
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = *off_1E798CA80;
    v8[0] = *off_1E798CA98;
    v8[1] = v6;
    v9[0] = v3;
    v9[1] = v4;
    v8[2] = *off_1E798CAB8;
    v9[2] = v5;
    v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
  }

  return v2;
}

uint64_t CMIOExtensionFigCaptureStreamInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(DerivedStorage + 16) & 1) == 0)
  {
    v1 = DerivedStorage;
    CMIOExtensionFigCaptureStreamStop();
    os_unfair_lock_lock((v1 + 20));
    *(v1 + 16) = 1;
    *v1 = 0;

    *(v1 + 8) = 0;
    v2 = *(v1 + 24);
    if (v2)
    {
      CFRelease(v2);
    }

    *(v1 + 24) = 0;
    v3 = *(v1 + 32);
    if (v3)
    {
      CFRelease(v3);
    }

    *(v1 + 32) = 0;
    v4 = *(v1 + 40);
    if (v4)
    {
      CFRelease(v4);
    }

    *(v1 + 40) = 0;
    v5 = *(v1 + 48);
    if (v5)
    {
      CFRelease(v5);
    }

    *(v1 + 48) = 0;
    v6 = *(v1 + 56);
    if (v6)
    {
      CFRelease(v6);
    }

    *(v1 + 56) = 0;

    *(v1 + 64) = 0;
    *(v1 + 72) = 0;

    *(v1 + 96) = 0;
    *(v1 + 256) = 0;

    *(v1 + 112) = 0;
    *(v1 + 120) = 0;

    *(v1 + 144) = 0;
    *(v1 + 152) = 0;

    *(v1 + 176) = 0;
    *(v1 + 184) = 0;

    *(v1 + 248) = 0;
    *(v1 + 80) = 0;
    os_unfair_lock_unlock((v1 + 20));
  }

  return 0;
}

id cmioefcs_copyVideoOutputsEnabled()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 16))
  {
    return 0;
  }

  v1 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 20));
  v5[0] = [MEMORY[0x1E696AD98] numberWithBool:{*(v1 + 104), *off_1E798CA98}];
  v4[1] = *off_1E798CA80;
  v5[1] = [MEMORY[0x1E696AD98] numberWithBool:*(v1 + 136)];
  v4[2] = *off_1E798CAB8;
  v5[2] = [MEMORY[0x1E696AD98] numberWithBool:*(v1 + 168)];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t cmioefcs_setObjectDetectionConfiguration_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cmioefcs_captureAsyncStillImage_cold_1(_DWORD *a1)
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t cmioefcs_captureAsyncStillImage_cold_2(_DWORD *a1)
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t flashlightServer_handleReplyMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

BOOL flashlightServer_handleReplyMessage_cold_2()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_3()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

uint64_t flashlightServer_handleReplyMessage_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

BOOL flashlightServer_handleReplyMessage_cold_5()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_6()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

uint64_t flashlightServer_handleReplyMessage_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

BOOL flashlightServer_handleReplyMessage_cold_8()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

uint64_t flashlightServer_handleReplyMessage_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

BOOL flashlightServer_handleReplyMessage_cold_10()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

uint64_t flashlightServer_handleReplyMessage_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

BOOL flashlightServer_handleReplyMessage_cold_12()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

BOOL flashlightServer_handleReplyMessage_cold_13()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

uint64_t flashlightServer_handleReplyMessage_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightServer_handleReplyMessage_cold_15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightServer_handleReplyMessage_cold_16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightServer_handleReplyMessage_cold_17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightServer_handleNoReplyMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

BOOL flashlightServer_handleNoReplyMessage_cold_2()
{
  OUTLINED_FUNCTION_2_74();
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  FigDebugAssert3();
  return OUTLINED_FUNCTION_1_81();
}

uint64_t flashlightServer_handleGlobalFlashlightCreationMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightServer_getAndRetainFlashlightObjectFromMessage_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightServer_getAndRetainFlashlightObjectFromMessage_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t flashlightServer_getAndRetainFlashlightObjectFromMessage_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

void __FigCaptureSessionAttachSession_block_invoke(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 384));
  v4 = *(DerivedStorage + 456);
  os_unfair_lock_unlock((DerivedStorage + 384));
  if (v4 != 2)
  {
    v8 = 1;
    goto LABEL_9;
  }

  if (*(DerivedStorage + 712))
  {
    v8 = 1;
    goto LABEL_9;
  }

  *(*(*(a1 + 32) + 8) + 24) = 2;
  v5 = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((v5 + 384));
  v6 = *(v5 + 512);
  os_unfair_lock_unlock((v5 + 384));
  if (![*(DerivedStorage + 512) supportsAttachingSessionConfiguration:v6])
  {
    v8 = 1;
    goto LABEL_9;
  }

  os_unfair_lock_lock((v5 + 384));
  *(v5 + 712) = CFRetain(*(a1 + 40));
  v7 = *(DerivedStorage + 720);
  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(DerivedStorage + 720) = v7;
  }

  if ([v7 objectForKeyedSubscript:*(v5 + 8)])
  {
    os_unfair_lock_unlock((v5 + 384));
    goto LABEL_8;
  }

  v92 = [[BWFigCaptureSession alloc] initWithFigCaptureSession:?];
  v87 = v5;
  v88 = a1;
  v12 = *(v5 + 512);
  v13 = *(v5 + 8);
  v14 = *(a1 + 40);
  v123 = 0;
  v15 = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v16 = [*(v15 + 752) createAndBeginLiveExtension];
  v17 = *(v15 + 728);
  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    *(v15 + 728) = v17;
  }

  v84 = DerivedStorage;
  v85 = v1;
  v86 = v16;
  [v17 setObject:v16 forKeyedSubscript:v13];
  v95 = v14;
  v18 = [[FigCaptureSessionParsedConfiguration alloc] initWithSessionConfiguration:v12 clientSetsUserInitiatedCaptureRequestTime:captureSession_clientSetsUserInitiatedCaptureRequestTime() restrictions:*(v15 + 496)];
  if (!v18)
  {
    v74 = FigSignalErrorAtGM();
    v76 = v16;
    if (!v74)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v91 = v18;
  obj = [(FigCaptureSessionParsedConfiguration *)v18 parsedCameraSourceConfigurations];
  v19 = [(NSArray *)obj countByEnumeratingWithState:&v119 objects:v118 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v120;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v120 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v119 + 1) + 8 * i);
        v24 = [v23 cameraConfiguration];
        v25 = [*(v15 + 784) cameraSourcePipelineCompatibleWithCameraConfiguration:v24];
        [*(v15 + 784) addCameraSourcePipeline:v25 sessionID:v13];
        [(FigCaptureCameraSourcePipeline *)v25 registerAttachedSessionID:v13];
        v26 = [v24 source];
        [(FigCaptureCameraSourcePipeline *)v25 captureSource];
        v27 = OUTLINED_FUNCTION_26_13();
        v29 = FigVideoCaptureSourceActivateAttachedCaptureSource(v27, v28, v13);
        if (v29)
        {
          v74 = v29;
          OUTLINED_FUNCTION_1_5();
LABEL_65:
          FigDebugAssert3();
          v76 = v86;
          goto LABEL_66;
        }

        os_unfair_lock_lock((v15 + 384));
        v30 = *(v15 + 736);
        if (!v30)
        {
          v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
          *(v15 + 736) = v30;
        }

        [v30 setObject:v26 forKeyedSubscript:v13];
        os_unfair_lock_unlock((v15 + 384));
        v31 = [v23 metadataObjectConnectionConfigurations];
        OUTLINED_FUNCTION_86_0();
        v33 = [v32 countByEnumeratingWithState:? objects:? count:?];
        if (v33)
        {
          v34 = v33;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              OUTLINED_FUNCTION_21_20();
              if (!v9)
              {
                objc_enumerationMutation(v31);
              }

              [(FigCaptureCameraSourcePipeline *)v25 setMetadataObjectConnectionConfiguration:v13 forSessionID:?];
              [(FigCaptureCameraSourcePipeline *)v25 addMetadataOutputNetworksForSessionID:v13 graph:*(v15 + 752), v36, v37, v38, v39, v40, v79, v80, v81, v83, v84, v85, v86, v87, v88, v89, v91, v92, obj, v95, v96, v97, v98, v99, v100, v101];
            }

            OUTLINED_FUNCTION_86_0();
            v34 = OUTLINED_FUNCTION_64(v41, v42, v43, v44);
          }

          while (v34);
        }
      }

      v20 = [(NSArray *)obj countByEnumeratingWithState:&v119 objects:v118 count:16];
    }

    while (v20);
  }

  *v114 = 0u;
  v115 = 0u;
  *v112 = 0u;
  v113 = 0u;
  [(FigCaptureSessionParsedConfiguration *)v91 parsedMetadataSinkConfigurations];
  OUTLINED_FUNCTION_85();
  v90 = v45;
  v46 = v95;
  obja = [v45 countByEnumeratingWithState:? objects:? count:?];
  if (!obja)
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_91_5();
  do
  {
    v47 = 0;
    do
    {
      OUTLINED_FUNCTION_40_12();
      if (!v9)
      {
        objc_enumerationMutation(v90);
      }

      v48 = *(v112[1] + 8 * v47);
      v49 = [*(v15 + 784) cameraSourcePipelineWithSessionID:v13];
      v125[0] = 0;
      v50 = CMBaseObjectGetDerivedStorage();
      if (!_FigIsCurrentDispatchQueue())
      {
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_2_5();
        FigDebugAssert3();
      }

      v51 = [v48 metadataObjectConnectionConfiguration];
      v52 = [(FigCaptureCameraSourcePipeline *)v49 motionAttachmentsSource];
      captureSession_createMetadataSinkPipelineConfiguration(v46, v48, v52, v125);
      if (v125[0])
      {
        OUTLINED_FUNCTION_14_21();
        FigDebugAssert3();
LABEL_52:
        v74 = v125[0];
        if (v125[0])
        {
          goto LABEL_64;
        }

        goto LABEL_53;
      }

      v58 = [(FigCaptureCameraSourcePipeline *)v49 metadataOutputsByCategoryForSessionID:v13 connectionConfiguration:v51, v53, v54, v55, v56, v57, v79, v80, v81, v83, v84, v85, v86, v87, v88, v90, v91, v92, obja, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112[0], v112[1], v113, *(&v113 + 1), v114[0], v114[1], v115, *(&v115 + 1), v116, v117];
      [v49 sourceID];
      v59 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
      if (v59)
      {
        v60 = *(v59 + 24);
        v61 = *(v59 + 32);
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v62 = [v51 underlyingDeviceType];
      FigCaptureBuildSinkPipelineName(v60, v61, v62, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Metadata Sink Pipeline", v13]);
      v63 = [FigCaptureMetadataSinkPipeline alloc];
      v64 = [(FigCaptureCameraSourcePipeline *)v49 captureDevice];
      v65 = captureSession_inferenceScheduler();
      v66 = *(v50 + 36);
      v124[0] = *(v50 + 20);
      v124[1] = v66;
      v82 = v65;
      v83 = v92;
      OUTLINED_FUNCTION_2_5();
      v73 = [FigCaptureMetadataSinkPipeline initWithConfiguration:v67 graph:v68 name:v69 videoPreviewOutput:v70 offlineVISMotionDataSourceOutput:v71 metadataSourceOutputsByCategory:v72 captureDevice:v58 faceTrackingPipelineStage:v64 clientAuditToken:0 inferenceScheduler:v124 delegate:v82];
      if (v73)
      {
        [*(v50 + 784) addMetadataSinkPipeline:v73 sessionID:v13];
        v46 = v95;
        goto LABEL_52;
      }

      OUTLINED_FUNCTION_9_38();
      FigDebugAssert3();
      v74 = FigSignalErrorAtGM();
      v46 = v95;
      if (v74)
      {
LABEL_64:
        OUTLINED_FUNCTION_36_14();
        LODWORD(v79) = v74;
        goto LABEL_65;
      }

LABEL_53:
      v47 = v47 + 1;
    }

    while (obja != v47);
    OUTLINED_FUNCTION_85();
    v75 = [v90 countByEnumeratingWithState:? objects:? count:?];
    obja = v75;
  }

  while (v75);
LABEL_60:
  v76 = v86;
  [*(v15 + 752) commitLiveExtension:v86 withError:&v123];
  if (!v123 || (v74 = [v123 code]) == 0)
  {
LABEL_62:

    v77 = v87;
    v78 = v92;
    [*(v84 + 720) setObject:v92 forKeyedSubscript:*(v87 + 8)];
    v74 = 0;
    a1 = v88;
    goto LABEL_69;
  }

LABEL_66:
  [*(v15 + 752) cancelLiveExtension:{v76, v79}];
  [*(v15 + 728) setObject:0 forKeyedSubscript:v13];
  if (![*(v15 + 728) count])
  {

    *(v15 + 728) = 0;
  }

  v77 = v87;
  a1 = v88;
  v78 = v92;
LABEL_69:

  os_unfair_lock_unlock(v77 + 96);
  if (v74)
  {
    OUTLINED_FUNCTION_36_14();
    FigDebugAssert3();
    v8 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v8 = 1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
LABEL_9:
  if (v8)
  {
    v9 = *(*(*(a1 + 32) + 8) + 24) == 1 || dword_1ED844050 == 0;
    if (!v9)
    {
      LOBYTE(v119) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v119);
      if (OUTLINED_FUNCTION_5_2(v11))
      {
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_16_1();
    }
  }
}

uint64_t FigCaptureSessionMotionCompensatedTemporalFilteringStatusForVideoCaptureConnectionConfiguration(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    result = FigCapturePixelFormatIs420([objc_msgSend(objc_msgSend(result "sourceConfiguration")]);
    if (result)
    {
      if ([v3 stereoVideoCaptureEnabled])
      {
        v4 = FigCapturePlatformIdentifier();
        result = 0;
        if (!a2 || v4 < 12)
        {
          return result;
        }
      }

      else if (!a2)
      {
        return 0;
      }

      [a2 maxFrameRateClientOverride];
      v6 = v5;
      v7 = [objc_msgSend(a2 "requiredFormat")];
      result = 0;
      v8 = HIDWORD(v7);
      v9 = HIDWORD(v7) * v7;
      v11 = v6 == 240 && v9 == 2073600;
      v12 = v9 == 8294400 && v6 == 120;
      if (!v12 && !v11)
      {
        if (FigCapturePlatformIdentifier() <= 11)
        {
          v13 = 290304000;
        }

        else
        {
          v13 = 539136000;
        }

        if ([a2 videoStabilizationStrength] >= 3 && (v7 == 3840 && v8 == 2160 || v7 == 2160 && v8 == 3840))
        {
          v14 = cs_actionCamera2p8kOutputDimensions([a2 videoStabilizationStrength]);
          v9 = HIDWORD(v14) * v14;
        }

        if (v9 * v6 <= v13)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }
  }

  return result;
}

uint64_t FigCaptureSessionMotionCompensatedTemporalFilteringEnabled(void *a1, void *a2, void *a3, void *a4, int a5, int a6, int *a7)
{
  v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"MSTFBand0ModulationOnlyWhenRequired", "BOOLValue"}];
  result = [objc_msgSend(objc_msgSend(a1 "videoSettings")];
  if (result && (!a2 || (result = [a2 isMomentCaptureMovieRecording], result)))
  {
    v15 = FigCapturePlatformIdentifier();
    if (FigCapturePlatformIdentifier() <= 11)
    {
      v16 = 290304000;
    }

    else
    {
      v16 = 539136000;
    }

    v17 = [objc_msgSend(a4 "requiredFormat")];
    if (a6 == 1)
    {
      v18 = a5 & (v13 ^ 1);
      result = 1;
    }

    else if (v15 > 11 || 30 * v17 * HIDWORD(v17) >= v16)
    {
      v18 = 0;
      result = 0;
    }

    else
    {
      result = a6 == 2;
      if ((result & a5) != 0)
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  *a7 = v18;
  return result;
}

uint64_t captureSession_setRestoreForcedOffOverCaptureActiveSlaveStreamEnabled(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(CMBaseObjectGetDerivedStorage() + 776) objectForKeyedSubscript:a2];
  if (v4)
  {
    v4 = v4[2];
  }

  return [v4 setRestorationOfForcedOffOverCaptureActiveSlaveStreamEnabled:a3];
}

uint64_t __FigCaptureSessionDetachFromClient_block_invoke(uint64_t a1)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  if (dword_1ED844050)
  {
    v56 = 0;
    v55 = 0;
    v2 = OUTLINED_FUNCTION_101_3();
    v3 = OUTLINED_FUNCTION_8_26(v2);
    if (OUTLINED_FUNCTION_6(v3))
    {
      v4 = *(a1 + 48);
      v5 = *(*(a1 + 40) + 104);
      *v52 = 136315650;
      *&v52[4] = "FigCaptureSessionDetachFromClient_block_invoke";
      *&v52[12] = 2114;
      *&v52[14] = v5;
      *&v52[22] = 2048;
      *&v52[24] = v4;
      OUTLINED_FUNCTION_29_12();
      v46 = v52;
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  OUTLINED_FUNCTION_94_2();
  *(v6 + 24) = 1;
  *(*(a1 + 40) + 454) = 0;
  captureSession_cleanupSavedPreviewImageQueueData();
  captureSession_destroyAudioSessionForMicPipeline();
  [+[FigCaptureDisplayLayoutMonitor sharedDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedDisplayLayoutMonitor")];
  [*(*(a1 + 40) + 120) invalidate];

  v7 = *(a1 + 40);
  *(v7 + 120) = 0;
  os_unfair_lock_lock((v7 + 84));
  v8 = *(a1 + 40);
  *(v8 + 52) = *(v8 + 20);
  *(v8 + 68) = *(v8 + 36);
  v9 = *(a1 + 40);
  *&v10 = -1;
  *(&v10 + 1) = -1;
  *(v9 + 20) = v10;
  *(v9 + 36) = v10;
  v53 = OUTLINED_FUNCTION_56_10(*(a1 + 40));
  v54 = v11;
  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(&v53);
  v13 = *(a1 + 40);
  v13[4]._os_unfair_lock_opaque = PIDFromAuditToken;
  os_unfair_lock_unlock(v13 + 21);
  v14 = *(a1 + 40);
  v15 = *(v14 + 104);
  *v52 = OUTLINED_FUNCTION_56_10(v14);
  *&v52[16] = v16;
  if (v15)
  {
    v18 = OUTLINED_FUNCTION_56_10(v17);
    *(v15 + 24) = v19;
    *(v15 + 8) = v18;
    v53 = *v52;
    v54 = *&v52[16];
    *(v15 + 40) = FigCaptureGetPIDFromAuditToken(&v53);
    [v15 _updateLoggingPrefix];
  }

  OUTLINED_FUNCTION_41_11();
  captureSession_updateSessionStateWithApplicationAndLayoutState(v20, v21, v22, v23, v24);
  v25 = *(a1 + 40);
  v26 = *(v25 + 368);
  if (v26)
  {
    CFRelease(v26);
    v25 = *(a1 + 40);
    *(v25 + 368) = 0;
  }

  os_unfair_lock_lock((v25 + 384));
  v27 = *(*(a1 + 40) + 504);
  v28 = *(a1 + 40);
  *(v28 + 453) = 0;
  os_unfair_lock_unlock((v28 + 384));
  v29 = 0;
  if (captureSession_shouldEnableDeferredNodePrepare([v27 connectionConfigurations]))
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v30 = [v27 connectionConfigurations];
    v31 = [v30 countByEnumeratingWithState:&v48 objects:v47 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v49;
      v29 = 1;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v49 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v48 + 1) + 8 * i);
          v36 = [objc_msgSend(v35 sinkConfiguration];
          if (v36 <= 0x10 && ((1 << v36) & 0x1A9C0) != 0)
          {
            v36 = [objc_msgSend(v35 "sinkConfiguration")];
            v29 &= v36;
          }
        }

        v32 = OUTLINED_FUNCTION_64(v36, v37, &v48, v47);
      }

      while (v32);
    }

    else
    {
      v29 = 1;
    }
  }

  OUTLINED_FUNCTION_94_2();
  *(v39 + 24) = v29 & 1;
  if (dword_1ED844050)
  {
    v56 = 0;
    v55 = 0;
    v40 = OUTLINED_FUNCTION_101_3();
    v41 = OUTLINED_FUNCTION_8_26(v40);
    if (OUTLINED_FUNCTION_6(v41))
    {
      OUTLINED_FUNCTION_94_2();
      LODWORD(v42) = *(v42 + 24);
      *v52 = 136315394;
      *&v52[4] = "FigCaptureSessionDetachFromClient_block_invoke";
      *&v52[12] = 1024;
      *&v52[14] = v42;
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  OUTLINED_FUNCTION_94_2();
  result = captureSession_transitionToSessionLaunchPrewarmStatus(v44, *(v43 + 24));
  *(*(a1 + 40) + 168) = 0;
  return result;
}

uint64_t captureSession_clientIsVisualIntelligenceCamera(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 0;
  }

  v2 = *(DerivedStorage + 88);

  return FigCaptureClientApplicationIDIsVisualIntelligenceCamera(v2);
}

void captureSession_externalStorageDeviceManagerCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    v6 = DerivedStorage;
    if (*(DerivedStorage + 944))
    {
      if (dword_1ED844050)
      {
        v17 = 0;
        v16 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0();
      }

      dispatch_get_global_queue(0, 0);
      OUTLINED_FUNCTION_8_7();
      v10 = 3221225472;
      v11 = __captureSession_externalStorageDeviceManagerCallback_block_invoke;
      v12 = &__block_descriptor_56_e5_v8__0l;
      v13 = a1;
      v14 = a3;
      v15 = v6;
      dispatch_async(v8, block);
    }
  }
}

void captureSession_teardownGraph()
{
  OUTLINED_FUNCTION_60();
  v1 = v0;
  v132 = v2;
  v135 = v3;
  v5 = v4;
  v7 = v6;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if (dword_1ED844050)
  {
    v183 = 0;
    v182 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = OUTLINED_FUNCTION_111_3(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_31(v9))
    {
      v10 = *(DerivedStorage + 104);
      v11 = *(DerivedStorage + 776);
      LODWORD(v180[0]) = 136315650;
      *(v180 + 4) = "captureSession_teardownGraph";
      WORD6(v180[0]) = 2114;
      *(v180 + 14) = v10;
      WORD3(v180[1]) = 2112;
      *(&v180[1] + 1) = v11;
      OUTLINED_FUNCTION_29_12();
      v130 = v180;
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  if (!v135 && v5)
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v134 = v7;
  v140 = v1;
  if (*(DerivedStorage + 776))
  {
    theArray = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(DerivedStorage + 776), "count")}];
    v138 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(DerivedStorage + 776), "count")}];
    v133 = [*(DerivedStorage + 512) allCameraSourcesAreMetadataCameras];
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v13 = *(DerivedStorage + 776);
    v14 = OUTLINED_FUNCTION_102_2();
    v12 = DerivedStorage;
    if (v14)
    {
      v15 = v14;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v17)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(v12 + 776) objectForKeyedSubscript:{*(*(&v176 + 1) + 8 * i), v130}];
          if (v18)
          {
            v19 = v18;
            if (*(v18 + 8))
            {
              if (*(v18 + 16))
              {
                [(__CFArray *)theArray addObject:?];
                [v138 addObject:*(v19 + 16)];
                [*(v19 + 16) unregisterForAEMatrixMetadata];
                [*(v19 + 16) setStillImageCaptureEnabled:0];
                [*(v19 + 16) setSmartStyleAttachedMediaTimeMachineDelegate:0];
                [*(v19 + 16) setAdaptiveUnifiedBracketingController:0];
                memset(v175, 0, 64);
                v20 = [*(v19 + 16) captureStreams];
                v21 = [v20 countByEnumeratingWithState:v175 objects:v174 count:16];
                if (v21)
                {
                  v22 = v21;
                  do
                  {
                    for (j = 0; j != v22; ++j)
                    {
                      OUTLINED_FUNCTION_10_18();
                      if (!v17)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v24 = [*(*(&v175[0] + 1) + 8 * j) setStillImageCaptureDelegate:0];
                    }

                    v22 = OUTLINED_FUNCTION_1_18(v24, v25, v175, v174);
                  }

                  while (v22);
                }
              }
            }
          }

          v12 = DerivedStorage;
        }

        v15 = OUTLINED_FUNCTION_102_2();
      }

      while (v15);
    }

    v1 = v140;
    if ((v5 & 1) == 0)
    {
      v173 = 0u;
      v172 = 0u;
      v171 = 0u;
      v170 = 0u;
      obj = *(v12 + 776);
      if ([obj countByEnumeratingWithState:&v170 objects:v169 count:16])
      {
        v137 = *v171;
        do
        {
          if (*v171 != v137)
          {
            objc_enumerationMutation(obj);
          }

          v26 = [*(v12 + 776) objectForKeyedSubscript:{**(&v170 + 1), v130}];
          if (v26)
          {
            v12 = *(v26 + 16);
          }

          else
          {
            v12 = 0;
          }

          v27 = [v12 synchronizedStreamsGroup];
          memset(v168, 0, sizeof(v168));
          v28 = [v12 captureStreams];
          v29 = [v28 countByEnumeratingWithState:v168 objects:v167 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = 0;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v17)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v168[0] + 1) + 8 * k);
                if ([objc_msgSend(v33 "stream")])
                {
                  v34 = [v33 stream];
                  if (v34 == [objc_msgSend(v27 "syncGroup")])
                  {
                    v31 = v33;
                  }

                  else
                  {
                    [v33 stop];
                  }
                }
              }

              v30 = [v28 countByEnumeratingWithState:v168 objects:v167 count:16];
            }

            while (v30);
            if (v31)
            {
              [v31 stop];
            }
          }

          v166 = 0u;
          v165 = 0u;
          v164 = 0u;
          v163 = 0u;
          v35 = [v12 captureStreams];
          v36 = [v35 countByEnumeratingWithState:&v163 objects:v162 count:16];
          v1 = v140;
          if (v36)
          {
            v37 = v36;
            v12 = *v164;
            do
            {
              for (m = 0; m != v37; ++m)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v17)
                {
                  objc_enumerationMutation(v35);
                }

                v39 = [*(*(&v163 + 1) + 8 * m) resignStreamStartStopDelegate];
              }

              v37 = OUTLINED_FUNCTION_1_18(v39, v40, &v163, v162);
            }

            while (v37);
          }

          OUTLINED_FUNCTION_83_3();
        }

        while (!v17 || [obj countByEnumeratingWithState:&v170 objects:v169 count:16]);
      }

      FigVideoCaptureSourcesDeactivateWithDevices(theArray, v138, v132);
      if (v1)
      {
        memset(v161, 0, sizeof(v161));
        v43 = *(DerivedStorage + 776);
        v44 = OUTLINED_FUNCTION_1_18(v41, v42, v161, v160);
        if (v44)
        {
          v45 = v44;
          do
          {
            for (n = 0; n != v45; ++n)
            {
              OUTLINED_FUNCTION_10_18();
              if (!v17)
              {
                objc_enumerationMutation(v43);
              }

              v47 = [*(DerivedStorage + 776) objectForKeyedSubscript:{*(*(&v161[0] + 1) + 8 * n), v130}];
              if (v47)
              {
                v47 = v47[2];
              }

              v48 = [v47 invalidateForParallelGraphRebuild];
            }

            v45 = OUTLINED_FUNCTION_1_18(v48, v49, v161, v160);
          }

          while (v45);
        }
      }

      v12 = DerivedStorage;

      *(DerivedStorage + 776) = 0;
    }
  }

  else
  {
    v133 = 0;
    v12 = DerivedStorage;
  }

  if ([objc_msgSend(*(v12 + 784) movieFileSinkPipelines] || objc_msgSend(objc_msgSend(*(v12 + 784), "audioFileSinkPipelines"), "count"))
  {
    v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
    memset(v159, 0, sizeof(v159));
    v51 = [*(v12 + 784) movieFileSinkPipelines];
    v52 = [v51 countByEnumeratingWithState:v159 objects:v158 count:16];
    if (v52)
    {
      v53 = v52;
      do
      {
        for (ii = 0; ii != v53; ++ii)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v17)
          {
            objc_enumerationMutation(v51);
          }

          [*(*(&v159[0] + 1) + 8 * ii) sinkID];
          v55 = [OUTLINED_FUNCTION_8() addObject:?];
        }

        v53 = OUTLINED_FUNCTION_1_18(v55, v56, v159, v158);
      }

      while (v53);
    }

    memset(v157, 0, sizeof(v157));
    v57 = [*(DerivedStorage + 784) audioFileSinkPipelines];
    v58 = [v57 countByEnumeratingWithState:v157 objects:v156 count:16];
    if (v58)
    {
      v60 = v58;
      do
      {
        v61 = 0;
        do
        {
          OUTLINED_FUNCTION_10_18();
          if (!v17)
          {
            objc_enumerationMutation(v57);
          }

          [*(*(&v157[0] + 1) + 8 * v61) sinkID];
          v62 = [OUTLINED_FUNCTION_8() addObject:?];
          ++v61;
        }

        while (v60 != v61);
        v58 = OUTLINED_FUNCTION_1_18(v62, v63, v157, v156);
        v60 = v58;
      }

      while (v58);
    }

    v155 = 0u;
    v154 = 0u;
    v153 = 0u;
    v152 = 0u;
    v64 = OUTLINED_FUNCTION_64(v58, v59, &v152, v151);
    v12 = DerivedStorage;
    if (v64)
    {
      v65 = v64;
      v66 = *v153;
      allocator = *MEMORY[0x1E695E480];
      do
      {
        for (jj = 0; jj != v65; ++jj)
        {
          if (*v153 != v66)
          {
            objc_enumerationMutation(v50);
          }

          v68 = *(*(&v152 + 1) + 8 * jj);
          v69 = [-[FigCaptureMovieFileSinkPipeline movieFileSinkNodes](objc_msgSend(*(DerivedStorage + 784) movieFileSinkPipelineWithSinkID:{v68)), "objectAtIndexedSubscript:", 0}];
          if (!v69)
          {
            v69 = -[FigCaptureAudioFileSinkPipeline audioFileSinkNode]([*(DerivedStorage + 784) audioFileSinkPipelineWithSinkID:v68]);
            if (!v69)
            {
              continue;
            }
          }

          v71 = v69;
          v69 = [v69 lastFileSize];
          if (v69)
          {
            v72 = v69;
            if (!*(DerivedStorage + 880))
            {
              *(DerivedStorage + 880) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            [v71 lastFileDuration];
            v73 = CMTimeCopyAsDictionary(v181, allocator);
            [*(DerivedStorage + 880) setObject:v73 forKeyedSubscript:v68];

            if (!*(DerivedStorage + 888))
            {
              *(DerivedStorage + 888) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            v69 = [*(DerivedStorage + 888) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLongLong:", v72), v68}];
          }
        }

        v65 = OUTLINED_FUNCTION_64(v69, v70, &v152, v151);
      }

      while (v65);
    }

    LOBYTE(v1) = v140;
  }

  memset(v150, 0, sizeof(v150));
  v74 = [*(v12 + 784) previewSinkPipelines];
  v75 = [v74 countByEnumeratingWithState:v150 objects:v149 count:16];
  if (v75)
  {
    v76 = v75;
    do
    {
      for (kk = 0; kk != v76; ++kk)
      {
        OUTLINED_FUNCTION_89();
        if (!v17)
        {
          objc_enumerationMutation(v74);
        }

        v78 = *(*(&v150[0] + 1) + 8 * kk);
        if ([v78 sinkID] && (*(v12 + 452) != 1 || *(v12 + 448) != 1))
        {
          if ([v78 imageQueueSinkNode])
          {
            if (!*(v12 + 560))
            {
              *(v12 + 560) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            if (!*(v12 + 576))
            {
              *(v12 + 576) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
            }

            [v78 previewRotationDegrees];
            [*(v12 + 576) setObject:objc_msgSend(OUTLINED_FUNCTION_17() forKeyedSubscript:{"numberWithInt:"), objc_msgSend(v78, "sinkID")}];
          }

          [*(v12 + 560) setObject:objc_msgSend(v78 forKeyedSubscript:{"imageQueueSinkNode"), objc_msgSend(v78, "sinkID")}];
          if ((v1 & 1) == 0)
          {
            [objc_msgSend(objc_msgSend(objc_msgSend(v78 "imageQueueSinkNode")];
          }
        }

        v79 = [*(v12 + 528) containsObject:v78];
      }

      v76 = OUTLINED_FUNCTION_64(v79, v80, v150, v149);
    }

    while (v76);
  }

  memset(v148, 0, sizeof(v148));
  v81 = [*(v12 + 784) stillImageSinkPipelineSessionStorages];
  v82 = [v81 countByEnumeratingWithState:v148 objects:v147 count:16];
  if (v82)
  {
    v83 = v82;
    do
    {
      for (mm = 0; mm != v83; ++mm)
      {
        OUTLINED_FUNCTION_21_20();
        if (!v17)
        {
          objc_enumerationMutation(v81);
        }

        v85 = *(*(&v148[0] + 1) + 8 * mm);
        v86 = [objc_msgSend(v85 "primaryStillImageSinkPipeline")];
        if ([v85 preparedBracket] && !*(v12 + 592))
        {
          *(v12 + 592) = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
        }

        v87 = [*(v12 + 592) setObject:objc_msgSend(v85 forKeyedSubscript:{"preparedBracket"), v86}];
        if ((v1 & 1) == 0)
        {
          [objc_msgSend(objc_msgSend(v85 "primaryStillImageSinkPipeline")];
          v87 = [objc_msgSend(objc_msgSend(v85 "primaryStillImageSinkPipeline")];
        }
      }

      v83 = OUTLINED_FUNCTION_64(v87, v88, v148, v147);
    }

    while (v83);
  }

  memset(v146, 0, sizeof(v146));
  v139 = [*(v12 + 784) movieFileSinkPipelines];
  if ([v139 countByEnumeratingWithState:v146 objects:v145 count:16])
  {
    OUTLINED_FUNCTION_91_5();
    do
    {
      v89 = 0;
      do
      {
        OUTLINED_FUNCTION_40_12();
        if (!v17)
        {
          objc_enumerationMutation(v139);
        }

        v90 = *(*(&v146[0] + 1) + 8 * v89);
        v91 = CMBaseObjectGetDerivedStorage();
        if (!_FigIsCurrentDispatchQueue())
        {
          OUTLINED_FUNCTION_0();
          OUTLINED_FUNCTION_2_5();
          FigDebugAssert3();
        }

        if ([objc_msgSend(v90 "pendingIrisRecordings")])
        {
          allocatora = v89;
          os_unfair_lock_lock((v91 + 384));
          v92 = *(v91 + 480);
          os_unfair_lock_unlock((v91 + 384));
          if (!v92)
          {
            mach_absolute_time();
          }

          memset(v180, 0, sizeof(v180));
          v93 = [v90 pendingIrisRecordings];
          v94 = [v93 countByEnumeratingWithState:v180 objects:v181 count:16];
          if (v94)
          {
            v95 = v94;
            v12 = **&v180[1];
            do
            {
              for (nn = 0; nn != v95; ++nn)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v17)
                {
                  objc_enumerationMutation(v93);
                }

                v97 = *(*(&v180[0] + 1) + 8 * nn);
                v98 = [v97 irisMovieInfo];
                if (!v98)
                {
                  v98 = +[BWIrisMovieInfo emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:](BWIrisMovieInfo, "emptyIrisMovieInfoWithFigCaptureMovieFileRecordingSettings:", [v97 settings]);
                }

                [v97 enqueuedHostTime];
                [v98 setProcessingTimeInMilliseconds:FigHostTimeToNanoseconds() / 1000000.0];
                [v90 sinkID];
                v99 = OUTLINED_FUNCTION_26_13();
                captureSession_postNotificationsForIrisRequestCompletedWithError(v99, v100, v98, 4294951863);
              }

              v95 = OUTLINED_FUNCTION_1_18(v101, v102, v180, v181);
            }

            while (v95);
          }

          [objc_msgSend(v90 "pendingIrisRecordings")];
          LOBYTE(v1) = v140;
          v89 = allocatora;
        }

        if ((v1 & 1) == 0)
        {
          v103 = [(FigCaptureMovieFileSinkPipeline *)v90 movieFileSinkNodes];
          OUTLINED_FUNCTION_86_0();
          v105 = [v104 countByEnumeratingWithState:? objects:? count:?];
          if (v105)
          {
            v106 = v105;
            v12 = MEMORY[0];
            do
            {
              for (i1 = 0; i1 != v106; ++i1)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v17)
                {
                  objc_enumerationMutation(v103);
                }

                [*(8 * i1) setRecordingStatusDelegate:0];
              }

              OUTLINED_FUNCTION_86_0();
              v106 = OUTLINED_FUNCTION_1_18(v108, v109, v110, v111);
            }

            while (v106);
          }
        }

        OUTLINED_FUNCTION_83_3();
      }

      while (!v17);
    }

    while ([v139 countByEnumeratingWithState:v146 objects:v145 count:16]);
  }

  os_unfair_lock_lock((v12 + 384));
  *(v12 + 337) = [-[FigCaptureMicSourcePipeline sourceNode](objc_msgSend(*(v12 + 784) "micSourcePipeline"))];
  os_unfair_lock_unlock((v12 + 384));
  v112 = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((v112 + 384));
  if (notify_is_valid_token(*(v112 + 664)))
  {
    if (dword_1ED844050)
    {
      v183 = 0;
      v182 = 0;
      v113 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v114 = OUTLINED_FUNCTION_111_3(v113);
      if (OUTLINED_FUNCTION_31(v114))
      {
        v115 = *(v112 + 104);
        v116 = *(v112 + 656);
        LODWORD(v180[0]) = 136315650;
        *(v180 + 4) = "captureSession_stopMonitoringForFigAssetWriterWritingVideoNotification";
        WORD6(v180[0]) = 2114;
        *(v180 + 14) = v115;
        WORD3(v180[1]) = 2112;
        *(&v180[1] + 1) = v116;
        OUTLINED_FUNCTION_29_12();
        v131 = v180;
        OUTLINED_FUNCTION_7_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0();
    }

    *(v112 + 656) = 0;
    notify_cancel(*(v112 + 664));
    *(v112 + 664) = -1;
  }

  *(v112 + 672) = 0;
  os_unfair_lock_unlock((v112 + 384));
  [+[FigCaptureDisplayLayoutMonitor sharedContinuityDisplayLayoutMonitor](FigCaptureDisplayLayoutMonitor "sharedContinuityDisplayLayoutMonitor")];
  if ((v1 & 1) == 0)
  {
    v118 = *(v12 + 832);
    if (v118)
    {
      objc_setProperty_nonatomic(v118, v117, 0, 16);
    }
  }

  *(v12 + 784) = 0;
  *(v12 + 808) = 0;
  *(v12 + 816) = 0;

  *(v12 + 528) = 0;
  *(v12 + 792) = 0;

  *(v12 + 800) = 0;
  *(v12 + 696) = 0;
  os_unfair_lock_lock((v12 + 384));
  v119 = *(v12 + 744);
  if (v119)
  {
    dispatch_group_leave(v119);

    *(v12 + 744) = 0;
  }

  *(v12 + 608) = 0;
  os_unfair_lock_unlock((v12 + 384));

  *(v12 + 752) = 0;
  captureSession_stopMonitoringAudioPlaybackAndRouteChangeNotifications();
  if ((v135 & 1) == 0)
  {
    if ([*(DerivedStorage + 904) count])
    {
      v120 = [*(DerivedStorage + 904) allKeys];
      OUTLINED_FUNCTION_85();
      v122 = [v121 countByEnumeratingWithState:? objects:? count:?];
      if (v122)
      {
        v123 = v122;
        do
        {
          for (i2 = 0; i2 != v123; ++i2)
          {
            OUTLINED_FUNCTION_10_18();
            if (!v17)
            {
              objc_enumerationMutation(v120);
            }

            v125 = *(8 * i2);
            [+[BWFigCaptureDeviceVendor sharedCaptureDeviceVendor](BWFigCaptureDeviceVendor "sharedCaptureDeviceVendor")];
            [*(DerivedStorage + 904) setObject:0 forKeyedSubscript:v125];
          }

          OUTLINED_FUNCTION_85();
          v123 = OUTLINED_FUNCTION_1_18(v126, v127, v128, v129);
        }

        while (v123);
      }
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  OUTLINED_FUNCTION_128_0();
}

void captureSession_stopMonitoringAudioPlaybackAndRouteChangeNotifications()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage || (v1 = DerivedStorage, *DerivedStorage))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  else if (FigCaptureAudiomxdSupportEnabled())
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3();
    }

    if (*(v1 + 44))
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      *(v1 + 44) = 0;
    }

    if (*(v1 + 45))
    {
      [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

      *(v1 + 45) = 0;
    }
  }
}

void __captureSession_startObservingInvalidAudioRecordingState_block_invoke(uint64_t a1)
{
  if (dword_1ED844050)
  {
    LODWORD(v75) = 0;
    type[0] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v3 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_5_24(v3))
    {
      LODWORD(v52[0]) = 136315394;
      OUTLINED_FUNCTION_2_75();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_13_0();
  }

  dispatch_source_cancel(*(*(a1 + 32) + 208));
  dispatch_release(*(*(a1 + 32) + 208));
  *(*(a1 + 32) + 208) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  if ([*(DerivedStorage + 88) isEqualToString:0x1F216ED50])
  {
    v5 = [MEMORY[0x1E69AED10] sharedInstance];
    v6 = [v5 attributeForKey:*MEMORY[0x1E69AEB50]];
    objc_opt_class();
    OUTLINED_FUNCTION_44_11();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v9 = OUTLINED_FUNCTION_64(isKindOfClass, v8, &v75, v74);
      if (v9)
      {
        v10 = v9;
        v11 = *v76;
        v12 = MEMORY[0x1E69AEB48];
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v76 != v11)
            {
              objc_enumerationMutation(v6);
            }

            v14 = *(*(&v75 + 1) + 8 * i);
            *v52 = 0u;
            v53 = 0u;
            [objc_msgSend(v14 objectForKeyedSubscript:{*v12), "getBytes:length:", v52, 32}];
            *type = *v52;
            *&type[16] = v53;
            FigCaptureGetPIDFromAuditToken(type);
            os_unfair_lock_lock((DerivedStorage + 84));
            v15 = *(DerivedStorage + 36);
            *type = *(DerivedStorage + 20);
            *&type[16] = v15;
            if (FigCaptureAuditTokenIsValid(type))
            {
              v16 = *(DerivedStorage + 20);
              v17 = *(DerivedStorage + 36);
            }

            else
            {
              v16 = *(DerivedStorage + 52);
              v17 = *(DerivedStorage + 68);
            }

            *type = v16;
            *&type[16] = v17;
            *v71 = *v52;
            v72 = v53;
            v18 = FigCaptureAuditTokenProcessesAreEqual(type, v71);
            os_unfair_lock_unlock((DerivedStorage + 84));
            if (v18)
            {
              os_unfair_lock_lock((DerivedStorage + 384));
              v21 = *(DerivedStorage + 456);
              os_unfair_lock_unlock((DerivedStorage + 384));
              if (!v21)
              {
                OUTLINED_FUNCTION_69_3();
                v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v30 = OUTLINED_FUNCTION_106_3(v22, v23, v24, v25, v26, v27, v28, v29, v48, v50, v52[0], v52[1], v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
                if (OUTLINED_FUNCTION_6(v30))
                {
                  v31 = *(DerivedStorage + 104);
                  *type = 136315394;
                  *&type[4] = "captureSession_checkForInvalidAudioRecordingState";
                  *&type[12] = 2114;
                  *&type[14] = v31;
                  LODWORD(v51) = 22;
                  v49 = type;
                  OUTLINED_FUNCTION_8_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_17_8();
                FigCaptureGetFrameworkRadarComponent();
                OUTLINED_FUNCTION_69_3();
                v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v40 = OUTLINED_FUNCTION_106_3(v32, v33, v34, v35, v36, v37, v38, v39, v49, v51, v52[0], v52[1], v53, *(&v53 + 1), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71[0]);
                if (OUTLINED_FUNCTION_6(v40))
                {
                  *type = 136315138;
                  *&type[4] = "captureSession_checkForInvalidAudioRecordingState";
                  OUTLINED_FUNCTION_43_0();
                  OUTLINED_FUNCTION_8_0();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_8_1();
                OUTLINED_FUNCTION_17_8();
                LOWORD(v52[0]) = 0;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_13_18();
                OUTLINED_FUNCTION_10();
                FigCapturePleaseFileRadar(v41, v42, v43, v44, v45, 4222, v46, v47, v52);
                free(v10);
                return;
              }
            }
          }

          v10 = OUTLINED_FUNCTION_64(v19, v20, &v75, v74);
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3();
    }
  }
}

uint64_t __captureSession_commitInflightConfiguration_block_invoke_756(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_5();
    FigDebugAssert3();
  }

  v3 = [DerivedStorage[98] cameraSourcePipelineWithSessionID:v1];
  result = [DerivedStorage[91] objectForKeyedSubscript:v1];
  if (result)
  {
    [DerivedStorage[94] prepareLiveExtensionToBecomeLive:result];
    [(FigCaptureCameraSourcePipeline *)v3 activateSecureMetadataOutputConfigurationForSessionID:v1];
    v5 = DerivedStorage[91];

    return [v5 setObject:0 forKeyedSubscript:v1];
  }

  return result;
}

void captureSession_liveReconfigureForOutputAspectRatioChange()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v186 = mach_absolute_time();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v246 = 0u;
  v207 = v2;
  v5 = [v2 connectionConfigurations];
  v6 = [v5 countByEnumeratingWithState:&v243 objects:v242 count:16];
  if (v6)
  {
    v7 = v6;
    v0 = *v244;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v9)
        {
          objc_enumerationMutation(v5);
        }

        m = *(*(&v243 + 1) + 8 * i);
        v11 = [m mediaType];
        if (v11 == 1986618469)
        {
          if (m)
          {
            v208 = [objc_msgSend(m "sourceConfiguration")];
            if (dword_1ED844050)
            {
              v13 = m;
              OUTLINED_FUNCTION_34_14();
              v14 = OUTLINED_FUNCTION_24_16();
              if (os_log_type_enabled(v14, type))
              {
                v15 = v241;
              }

              else
              {
                v15 = v241 & 0xFFFFFFFE;
              }

              if (v15)
              {
                FigCaptureStringForAspectRatio(v208);
                v230 = 136315394;
                OUTLINED_FUNCTION_60_7("captureSession_liveReconfigureForOutputAspectRatioChange");
                *(v17 + 14) = v16;
                OUTLINED_FUNCTION_11_33();
                OUTLINED_FUNCTION_8_0();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              m = v13;
            }

            [*(DerivedStorage + 752) beginConfiguration];
            captureSession_buildGraphDidBecomeLiveObserver(v4, [v207 isMultiCamSession]);
            obj = m;
            v203 = FigCaptureConvertDimensionsForAspectRatio([objc_msgSend(objc_msgSend(m "sourceConfiguration")], v208);
            v18 = [*(DerivedStorage + 784) cameraSourcePipelines];
            memset(v239, 0, 64);
            v19 = [v18 countByEnumeratingWithState:v239 objects:v238 count:16];
            if (v19)
            {
              m = v19;
              do
              {
                v27 = 0;
                do
                {
                  OUTLINED_FUNCTION_6_30();
                  if (!v9)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v28 = *(v239[1] + 8 * v27);
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v29 = OUTLINED_FUNCTION_24_16();
                    v30 = v241;
                    if (os_log_type_enabled(v29, type))
                    {
                      v31 = v30;
                    }

                    else
                    {
                      v31 = v30 & 0xFFFFFFFE;
                    }

                    if (v31)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      *(v32 + 4) = "captureSession_liveReconfigureForOutputAspectRatioChange";
                      v232 = 2114;
                      *(v32 + 14) = v33;
                      v234 = 2114;
                      v235 = *&v28;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_2_4();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  v34 = [(FigCaptureCameraSourcePipeline *)v28 liveReconfigureForOutputDimensions:v203 aspectRatio:v208];
                  ++v27;
                }

                while (m != v27);
                v19 = OUTLINED_FUNCTION_1_18(v34, v35, v239, v238);
                m = v19;
              }

              while (v19);
            }

            v36 = [OUTLINED_FUNCTION_79_3(v19 v20];
            IsSpatial = [(FigCaptureMicSourcePipeline *)v36 sourceNode];
            if (IsSpatial)
            {
              v45 = IsSpatial;
              IsSpatial = BWAudioCaptureModeIsSpatial([IsSpatial audioCaptureMode]);
              if (IsSpatial)
              {
                [objc_msgSend(objc_msgSend(obj "sourceConfiguration")];
                v47 = v46;
                [objc_msgSend(obj "sourceConfiguration")];
                v50 = *&v48;
                if (dword_1ED844050)
                {
                  OUTLINED_FUNCTION_34_14();
                  v51 = OUTLINED_FUNCTION_24_16();
                  LODWORD(m) = v241;
                  v52 = os_log_type_enabled(v51, type);
                  if (OUTLINED_FUNCTION_31(v52))
                  {
                    v230 = 136315906;
                    v231 = "captureSession_liveReconfigureForOutputAspectRatioChange";
                    v232 = 2048;
                    v233 = v47;
                    v234 = 2048;
                    v235 = v50;
                    v236 = 2114;
                    v237 = v45;
                    OUTLINED_FUNCTION_11_33();
                    OUTLINED_FUNCTION_8_0();
                    _os_log_send_and_compose_impl();
                    LODWORD(m) = v241;
                  }

                  OUTLINED_FUNCTION_2_4();
                  OUTLINED_FUNCTION_56_0();
                }

                *&v48 = v47;
                *&v49 = v50;
                IsSpatial = [v45 updateStereoAudioCapturePairedCameraBaseFieldOfView:v48 zoomFactor:v49];
              }
            }

            memset(v229, 0, sizeof(v229));
            obja = [OUTLINED_FUNCTION_79_3(IsSpatial v38];
            v53 = [obja countByEnumeratingWithState:v229 objects:v228 count:16];
            v0 = off_1E7989000;
            if (v53)
            {
              m = v53;
              OUTLINED_FUNCTION_91_5();
              do
              {
                for (j = 0; j != m; ++j)
                {
                  OUTLINED_FUNCTION_40_12();
                  if (!v9)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v55 = *(v229[1] + 8 * j);
                  *&v56 = OUTLINED_FUNCTION_48_13();
                  v57[72] = v56;
                  v57[73] = v56;
                  v57[74] = v56;
                  v57[75] = v56;
                  v58 = [v207 connectionConfigurations];
                  v59 = [v58 countByEnumeratingWithState:v226 objects:v225 count:16];
                  if (v59)
                  {
                    while (2)
                    {
                      for (k = 0; k != v59; ++k)
                      {
                        OUTLINED_FUNCTION_6_30();
                        if (!v9)
                        {
                          objc_enumerationMutation(v58);
                        }

                        v61 = *(v227 + 8 * k);
                        isKindOfClass = [objc_msgSend(v55 "sinkID")];
                        if (isKindOfClass)
                        {
                          objc_opt_class();
                          isKindOfClass = objc_opt_isKindOfClass();
                          if (isKindOfClass)
                          {
                            v64 = [v61 outputWidth];
                            v59 = v64 | ([v61 outputHeight] << 32);
                            goto LABEL_54;
                          }
                        }
                      }

                      v59 = OUTLINED_FUNCTION_37(isKindOfClass, v63, v226, v225);
                      if (v59)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_54:
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v65 = OUTLINED_FUNCTION_24_16();
                    v66 = v241;
                    if (os_log_type_enabled(v65, type))
                    {
                      v67 = v66;
                    }

                    else
                    {
                      v67 = v66 & 0xFFFFFFFE;
                    }

                    if (v67)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      OUTLINED_FUNCTION_15_25(v68, v69);
                      v235 = *&v55;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_2_4();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  [FigCaptureVideoDataSinkPipeline liveReconfigureForOutputDimensions:v55 stabilizationCropDimensions:v59];
                }

                m = [obja countByEnumeratingWithState:v229 objects:v228 count:16];
              }

              while (m);
            }

            v70 = [*(v192 + 784) movieFileSinkPipelines];
            v204 = -[FigCaptureCameraSourcePipeline trueVideoCaptureEnabled]([*(v192 + 784) firstColorCameraSourcePipeline]);
            *&v71 = OUTLINED_FUNCTION_48_13();
            v72[60] = v71;
            v72[61] = v71;
            v72[62] = v71;
            v72[63] = v71;
            objb = v70;
            v75 = OUTLINED_FUNCTION_37(v73, v74, v223, v222);
            if (v75)
            {
              v83 = v75;
              v195 = 0;
              OUTLINED_FUNCTION_91_5();
              do
              {
                v84 = 0;
                do
                {
                  OUTLINED_FUNCTION_40_12();
                  if (!v9)
                  {
                    objc_enumerationMutation(objb);
                  }

                  v85 = *(v224 + 8 * v84);
                  *&v86 = OUTLINED_FUNCTION_48_13();
                  v87[48] = v86;
                  v87[49] = v86;
                  v87[50] = v86;
                  v87[51] = v86;
                  v88 = [v207 connectionConfigurations];
                  v89 = [v88 countByEnumeratingWithState:v220 objects:v219 count:16];
                  if (v89)
                  {
                    v90 = v89;
                    while (2)
                    {
                      for (m = 0; m != v90; ++m)
                      {
                        OUTLINED_FUNCTION_6_30();
                        if (!v9)
                        {
                          objc_enumerationMutation(v88);
                        }

                        v91 = *(v221 + 8 * m);
                        [objc_msgSend(v91 "sinkConfiguration")];
                        [v85 sinkID];
                        v92 = [OUTLINED_FUNCTION_28() isEqual:?];
                        if (v92)
                        {
                          objc_opt_class();
                          v92 = objc_opt_isKindOfClass();
                          if (v92)
                          {
                            v95 = [v91 outputWidth];
                            v94 = v95 | ([v91 outputHeight] << 32);
                            goto LABEL_79;
                          }
                        }
                      }

                      v90 = OUTLINED_FUNCTION_37(v92, v93, v220, v219);
                      if (v90)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v94 = 0;
LABEL_79:
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v96 = OUTLINED_FUNCTION_24_16();
                    if (OUTLINED_FUNCTION_103_4(v96))
                    {
                      v97 = m;
                    }

                    else
                    {
                      v97 = m & 0xFFFFFFFE;
                    }

                    if (v97)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      OUTLINED_FUNCTION_15_25(v98, v99);
                      v235 = *&v85;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                      LODWORD(m) = v241;
                    }

                    OUTLINED_FUNCTION_2_4();
                    OUTLINED_FUNCTION_56_0();
                  }

                  [(FigCaptureMovieFileSinkPipeline *)v85 liveReconfigureForOutputDimensions:v94];
                  if (v204 && [(FigCaptureMovieFileSinkPipeline *)v85 ispProcessingSession:v100])
                  {
                    v195 = [(FigCaptureMovieFileSinkPipeline *)v85 ispProcessingSession:v107];
                  }

                  v84 = v84 + 1;
                }

                while (v84 != v83);
                v75 = [objb countByEnumeratingWithState:v223 objects:v222 count:16];
                v83 = v75;
              }

              while (v75);
            }

            else
            {
              v195 = 0;
            }

            if (v204)
            {
              v114 = *(v192 + 872);
              if (v114)
              {

                v75 = v195;
                *(v192 + 872) = v75;
                if (dword_1ED844050)
                {
                  OUTLINED_FUNCTION_34_14();
                  v115 = OUTLINED_FUNCTION_24_16();
                  v116 = os_log_type_enabled(v115, type);
                  if (OUTLINED_FUNCTION_5_24(v116))
                  {
                    v117 = *(v192 + 104);
                    v118 = *(v192 + 872);
                    v230 = 136315650;
                    v231 = "captureSession_liveReconfigureForOutputAspectRatioChange";
                    v232 = 2114;
                    v233 = v117;
                    v234 = 2048;
                    v235 = v118;
                    OUTLINED_FUNCTION_5_58();
                    OUTLINED_FUNCTION_7_4();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_2_4();
                  v75 = OUTLINED_FUNCTION_13_0();
                }
              }
            }

            v119 = [OUTLINED_FUNCTION_79_3(v75 v76];
            v215 = 0u;
            v216 = 0u;
            v217 = 0u;
            v218 = 0u;
            v201 = v119;
            v120 = [v119 countByEnumeratingWithState:&v215 objects:v214 count:16];
            if (v120)
            {
              v121 = v120;
              v205 = *v216;
              do
              {
                for (n = 0; n != v121; ++n)
                {
                  if (*v216 != v205)
                  {
                    objc_enumerationMutation(v201);
                  }

                  v123 = *(*(&v215 + 1) + 8 * n);
                  *&v124 = OUTLINED_FUNCTION_48_13();
                  v125[24] = v124;
                  v125[25] = v124;
                  v125[26] = v124;
                  v125[27] = v124;
                  v126 = [v207 connectionConfigurations];
                  v127 = [v126 countByEnumeratingWithState:v212 objects:v211 count:16];
                  if (v127)
                  {
                    v128 = v127;
                    while (2)
                    {
                      for (m = 0; m != v128; ++m)
                      {
                        OUTLINED_FUNCTION_6_30();
                        if (!v9)
                        {
                          objc_enumerationMutation(v126);
                        }

                        v129 = *(v213 + 8 * m);
                        v130 = [objc_msgSend(v129 "sinkConfiguration")];
                        if (v130 == 1)
                        {
                          objc_opt_class();
                          v130 = objc_opt_isKindOfClass();
                          if (v130)
                          {
                            v133 = [v129 outputWidth];
                            v132 = v133 | ([v129 outputHeight] << 32);
                            goto LABEL_115;
                          }
                        }
                      }

                      v128 = OUTLINED_FUNCTION_37(v130, v131, v212, v211);
                      if (v128)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v132 = 0;
LABEL_115:
                  if (dword_1ED844050)
                  {
                    OUTLINED_FUNCTION_34_14();
                    v134 = OUTLINED_FUNCTION_24_16();
                    if (OUTLINED_FUNCTION_103_4(v134))
                    {
                      v135 = m;
                    }

                    else
                    {
                      v135 = m & 0xFFFFFFFE;
                    }

                    if (v135)
                    {
                      BWStringFromDimensions();
                      OUTLINED_FUNCTION_67_6(4.8152e-34);
                      OUTLINED_FUNCTION_15_25(v136, v137);
                      v235 = *&v123;
                      OUTLINED_FUNCTION_5_58();
                      OUTLINED_FUNCTION_13();
                      _os_log_send_and_compose_impl();
                      LODWORD(m) = v241;
                    }

                    OUTLINED_FUNCTION_2_4();
                    OUTLINED_FUNCTION_56_0();
                  }

                  [v123 liveReconfigureForOutputDimensions:v132];
                }

                v121 = [v201 countByEnumeratingWithState:&v215 objects:v214 count:16];
              }

              while (v121);
            }

            mach_absolute_time();
            *&v138 = OUTLINED_FUNCTION_48_13();
            v139[12] = v138;
            v139[13] = v138;
            v139[14] = v138;
            v139[15] = v138;
            [OUTLINED_FUNCTION_79_3(v140 v141];
            OUTLINED_FUNCTION_95_0();
            v196 = v148;
            v202 = [v148 countByEnumeratingWithState:? objects:? count:?];
            if (v202)
            {
              objc = *v210;
              do
              {
                v149 = 0;
                do
                {
                  if (*v210 != objc)
                  {
                    objc_enumerationMutation(v196);
                  }

                  v206 = v149;
                  *&v150 = OUTLINED_FUNCTION_48_13();
                  *v151 = v150;
                  v151[1] = v150;
                  v151[2] = v150;
                  v151[3] = v150;
                  v153 = [v152 stillImageSinkPipelines];
                  OUTLINED_FUNCTION_112_0();
                  v155 = [v154 countByEnumeratingWithState:? objects:? count:?];
                  if (v155)
                  {
                    v156 = v155;
                    do
                    {
                      for (ii = 0; ii != v156; ++ii)
                      {
                        OUTLINED_FUNCTION_89();
                        if (!v9)
                        {
                          objc_enumerationMutation(v153);
                        }

                        v158 = *(v209[18] + 8 * ii);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          if (dword_1ED844050)
                          {
                            OUTLINED_FUNCTION_34_14();
                            v159 = OUTLINED_FUNCTION_24_16();
                            v160 = v241;
                            LODWORD(v0) = type;
                            if (os_log_type_enabled(v159, type))
                            {
                              v161 = v160;
                            }

                            else
                            {
                              v161 = v160 & 0xFFFFFFFE;
                            }

                            if (v161)
                            {
                              FigCaptureStringForAspectRatio(v208);
                              OUTLINED_FUNCTION_67_6(4.8152e-34);
                              OUTLINED_FUNCTION_15_25(v162, v163);
                              v235 = *&v158;
                              OUTLINED_FUNCTION_5_58();
                              OUTLINED_FUNCTION_13();
                              _os_log_send_and_compose_impl();
                            }

                            OUTLINED_FUNCTION_2_4();
                            OUTLINED_FUNCTION_13_0();
                          }

                          [v158 liveReconfigureForAspectRatio:v208];
                        }
                      }

                      OUTLINED_FUNCTION_112_0();
                      v156 = [v153 countByEnumeratingWithState:? objects:? count:?];
                    }

                    while (v156);
                  }

                  v149 = v206 + 1;
                }

                while (v206 + 1 != v202);
                OUTLINED_FUNCTION_95_0();
                v202 = [v196 countByEnumeratingWithState:? objects:? count:?];
              }

              while (v202);
            }

            if (dword_1ED844050)
            {
              OUTLINED_FUNCTION_34_14();
              v164 = OUTLINED_FUNCTION_24_16();
              if (OUTLINED_FUNCTION_112_4(v164))
              {
                v165 = v0;
              }

              else
              {
                v165 = v0 & 0xFFFFFFFE;
              }

              if (v165)
              {
                mach_absolute_time();
                FigHostTimeToNanoseconds();
                v230 = 136315650;
                OUTLINED_FUNCTION_60_7("captureSession_liveReconfigureForOutputAspectRatioChange");
                *(v166 + 14) = @"Still pipelines live reconfiguration";
                v234 = 2048;
                v235 = v167;
                OUTLINED_FUNCTION_5_58();
                OUTLINED_FUNCTION_7_4();
                _os_log_send_and_compose_impl();
                LODWORD(v0) = v241;
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_17_8();
            }

            v209[0] = 0;
            if (([*(v194 + 752) commitConfigurationWithID:objc_msgSend(*(v194 + 512) error:{"configurationID"), v209}] & 1) == 0)
            {
              OUTLINED_FUNCTION_34_14();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v173 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
              if (OUTLINED_FUNCTION_5_2(v173))
              {
                v230 = 136315394;
                v231 = "captureSession_liveReconfigureForOutputAspectRatioChange";
                v232 = 2114;
                v233 = *v209;
                OUTLINED_FUNCTION_11_33();
                OUTLINED_FUNCTION_7_4();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_1_4();
              OUTLINED_FUNCTION_16_1();
            }
          }

          goto LABEL_155;
        }
      }

      v7 = OUTLINED_FUNCTION_37(v11, v12, &v243, v242);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_155:
  if (dword_1ED844050)
  {
    OUTLINED_FUNCTION_34_14();
    v168 = OUTLINED_FUNCTION_24_16();
    if (OUTLINED_FUNCTION_112_4(v168))
    {
      v169 = v0;
    }

    else
    {
      v169 = v0 & 0xFFFFFFFE;
    }

    if (v169)
    {
      mach_absolute_time();
      FigHostTimeToNanoseconds();
      v230 = 136315650;
      OUTLINED_FUNCTION_60_7("captureSession_liveReconfigureForOutputAspectRatioChange");
      *(v170 + 14) = @"Graph live reconfiguration";
      v234 = 2048;
      v235 = v171;
      OUTLINED_FUNCTION_5_58();
      OUTLINED_FUNCTION_7_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_17_8();
  }

  OUTLINED_FUNCTION_128_0();
}

void __captureSession_stopGraph_block_invoke(uint64_t a1)
{
  v6 = 0;
  mach_absolute_time();
  [*(a1 + 32) stop:&v6];
  if (*(a1 + 56) == 1)
  {
    mach_absolute_time();
    FigHostTimeToNanoseconds();
    if (dword_1ED844050)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v4 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_5_24(v4))
      {
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0();
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_10();
    kdebug_trace();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    objc_setProperty_nonatomic(v5, v2, 0, 16);
  }
}

void __captureSession_activateCameraCaptureSourcesAndCreateDevices_block_invoke(uint64_t a1, int a2, int a3, int a4, void *a5)
{
  v10 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) referencedObject] && *(*(a1 + 40) + 896) == a2)
  {
    if (dword_1ED844050)
    {
      OUTLINED_FUNCTION_25_15();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v23))
      {
        v12 = v24;
      }

      else
      {
        v12 = v24 & 0xFFFFFFFE;
      }

      if (v12)
      {
        OUTLINED_FUNCTION_7_46();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    switch(a4)
    {
      case 2:
        if ((a3 & 1) == 0)
        {
          OUTLINED_FUNCTION_25_15();
          v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = os_log_type_enabled(v18, v23);
          if (OUTLINED_FUNCTION_31(v19))
          {
            OUTLINED_FUNCTION_7_46();
            OUTLINED_FUNCTION_5();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_1_4();
          OUTLINED_FUNCTION_56_0();
          v13 = 0;
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_25_15();
        v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v17 = os_log_type_enabled(v16, v23);
        if (OUTLINED_FUNCTION_5_24(v17))
        {
          OUTLINED_FUNCTION_2_75();
          OUTLINED_FUNCTION_8_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_1_4();
        OUTLINED_FUNCTION_13_0();
        break;
      case 1:
        v13 = a3 ^ 1;
LABEL_24:
        v20 = OUTLINED_FUNCTION_9_19();
        captureSession_updateSessionStateWithNewInputCondition(v20, v21, v13, v22, 0);
        break;
      case 0:
        v13 = a3 ^ 1;
        if (a5)
        {
          os_unfair_lock_lock((*(a1 + 40) + 384));

          v14 = [a5 copy];
          v15 = *(a1 + 40);
          *(v15 + 408) = v14;
          os_unfair_lock_unlock((v15 + 384));
        }

        goto LABEL_24;
    }
  }

  objc_autoreleasePoolPop(v10);
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_2(uint64_t a1)
{
  if (!**(a1 + 32))
  {
    OUTLINED_FUNCTION_19_20();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v3 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
    if (OUTLINED_FUNCTION_6(v3))
    {
      OUTLINED_FUNCTION_2_75();
      OUTLINED_FUNCTION_8_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_17_8();
    OUTLINED_FUNCTION_41_11();
    captureSession_updateSessionStateWithNewInputCondition(v4, v5, v6, v7, v8);
    [*(*(a1 + 32) + 280) removeObserverForType:1 observer:*(*(a1 + 32) + 344) name:*MEMORY[0x1E698D558]];

    *(*(a1 + 32) + 344) = 0;
  }
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_2_972(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    if (dword_1ED844050)
    {
      OUTLINED_FUNCTION_19_20();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v4 = OUTLINED_FUNCTION_8_5(os_log_and_send_and_compose_flags_and_os_log_type);
      if (OUTLINED_FUNCTION_6(v4))
      {
        OUTLINED_FUNCTION_2_75();
        OUTLINED_FUNCTION_8_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_17_8();
      v1 = *(a1 + 32);
    }

    *(*(a1 + 32) + 280) = 0;
    captureSession_notificationPayloadWithErrorStatus(*(a1 + 56), 4294951751);
    v5 = OUTLINED_FUNCTION_8();
    captureSession_postNotificationWithPayload(v5, @"DidStopRunning", v6);
  }
}

uint64_t __captureSession_createMultiCamClientCompositingCallback_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (![*(a1 + 32) referencedObject])
  {
    v19 = 0;
LABEL_7:
    v20 = 4294954516;
    goto LABEL_5;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v19 = 0;
    v20 = 4294954511;
    goto LABEL_5;
  }

  v18 = DerivedStorage;
  os_unfair_lock_lock((DerivedStorage + 264));
  v19 = *(v18 + 272);
  os_unfair_lock_unlock((v18 + 264));
  if (!v19)
  {
    goto LABEL_7;
  }

  v20 = v19[2](v19, *(a1 + 40), a2, a3, a4, a5, a6, a7, a8, a9);
LABEL_5:

  return v20;
}

id cs_containingBundleIdentifierForSecureCaptureExtensionBundleIdentifier(uint64_t a1)
{
  v4 = 0;
  v1 = [MEMORY[0x1E6963620] bundleRecordWithBundleIdentifier:a1 allowPlaceholder:0 error:&v4];
  if (v4)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  else
  {
    return [objc_msgSend(objc_msgSend(v2 "containingBundleRecord")];
  }
}

uint64_t captureSession_servicePendingIrisRecordings_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_servicePendingIrisRecordings_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_servicePendingIrisRecordings_cold_3()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t cs_removeEmptyPendingIrisRecording_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateRunningCondition_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void FigCaptureSessionPrewarm_cold_3(uint64_t a1, const void *a2, void *a3)
{
  os_unfair_lock_lock(&sPocketDetectionState);
  v6 = qword_1EB58E920;
  qword_1EB58E920 = a2;
  qword_1EB58E928 = a1;
  CFRetain(a2);
  if (v6)
  {
    CFRelease(v6);
  }

  cs_cancelPocketDetectionTimeoutTimer();
  v7 = qword_1EB58E930;
  if (!qword_1EB58E930)
  {
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("com.apple.coremedia.capturesession.timeOutForPocketDetectionNeeded", v8);
    qword_1EB58E930 = v7;
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v7);
  dispatch_time(0, 0x28FA6B000);
  v10 = OUTLINED_FUNCTION_26_13();
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x4190AB00uLL);
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __cs_setPocketDetectionNeeded_block_invoke;
  a3[3] = &unk_1E7990178;
  a3[4] = v9;
  a3[5] = a2;
  dispatch_source_set_event_handler(v9, a3);
  qword_1EB58E938 = v9;
  dispatch_activate(v9);
  os_unfair_lock_unlock(&sPocketDetectionState);
}

uint64_t FigCaptureSessionCreate_cold_2()
{
  v0 = OUTLINED_FUNCTION_50_12();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1();
}

uint64_t FigCaptureSessionCreate_cold_3()
{
  v0 = OUTLINED_FUNCTION_50_12();
  v8 = OUTLINED_FUNCTION_4_1(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_5_2(v8))
  {
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_7_4();
    _os_log_send_and_compose_impl();
  }

  OUTLINED_FUNCTION_1_4();
  return OUTLINED_FUNCTION_16_1();
}

void FigCaptureSessionCreate_cold_4(int a1, CFTypeRef *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_1_5();
  FigDebugAssert3();
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a3 = a1;
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_destroyAudioSessionForMicPipeline_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_startObservingAudioInterruptionNotification_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_startObservingAudioInterruptionNotification_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_startObservingAudioInterruptionNotification_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void cs_isPocketDetectionNeeded_cold_1(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  if (!cs_bundleIdentifierIsSecureCaptureExtension(a1) || (v3 = cs_containingBundleIdentifierForSecureCaptureExtensionBundleIdentifier(v3)) != 0)
  {
    os_unfair_lock_lock(&sPocketDetectionState);
    if (qword_1EB58E920)
    {
      LOBYTE(v3) = CFEqual(v3, qword_1EB58E920) != 0;
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    os_unfair_lock_unlock(&sPocketDetectionState);
  }

  else
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3();
  }

  *a2 = v3;
}

uint64_t captureSession_fileStartRecording_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_fileStartRecording_cold_4()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_fileStartRecording_cold_6(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_5();
  result = FigDebugAssert3();
  if (*a2 == -16805)
  {
    *a2 = -16419;
  }

  *a4 = a3;
  return result;
}

uint64_t captureSession_fileStartRecording_cold_7()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_fileStartRecording_cold_8()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_startDeferredGraphSetup_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_waitForGraphToStart_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_startDeferredGraphSetupWork_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_updateRunningCondition_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_updateRunningCondition_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_stopRunningInternal_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_transitionToSessionStatus_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_transitionToSessionStatus_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_startGraph_cold_5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __captureSession_startAVConferenceBackgroundRunningTrackingTimerIfNeeded_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_stopObservingInvalidAudioRecordingState_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_commitInflightConfiguration_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_commitInflightConfiguration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_commitInflightConfiguration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_commitInflightConfiguration_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_updateGraphConfiguration_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateGraphConfiguration_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_updateGraphConfiguration_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t __captureSession_commitInflightConfiguration_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t __captureSession_commitInflightConfiguration_block_invoke_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_buildGraphWithConfiguration_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_buildGraphWithConfiguration_cold_2()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_buildGraphWithConfiguration_cold_8(uint64_t a1, uint64_t *a2)
{
  if (captureSession_clientIsCameraOrDerivative(a1))
  {
    IsSecureCaptureExtension = 1;
  }

  else
  {
    IsSecureCaptureExtension = cs_bundleIdentifierIsSecureCaptureExtension(*a2);
  }

  os_unfair_lock_lock(&sFigCaptureSessionPrewarming);
  qword_1ED844938 = CFAbsoluteTimeGetCurrent();
  os_unfair_lock_unlock(&sFigCaptureSessionPrewarming);
  return cs_initMemoryPoolSize(IsSecureCaptureExtension, *a2);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_buildGraphWithConfiguration_cold_17()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_18()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_20()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_21(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  [a2 sourceID];
  v6 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
  if (v6)
  {
    v7 = *(v6 + 24);
    v8 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  result = FigCaptureBuildSinkPipelineName(v7, v8, [a3 underlyingDeviceType], @"Movie File Sink Pipeline");
  *a4 = result;
  return result;
}

uint64_t captureSession_buildGraphWithConfiguration_cold_23()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_24()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_25()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_27()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_buildGraphWithConfiguration_cold_28()
{
  OUTLINED_FUNCTION_76_4();
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v0 = FigSignalErrorAtGM();
  return OUTLINED_FUNCTION_28_11(v0);
}

uint64_t captureSession_updateGraphForVideoPreviewSinkConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateGraphForMetadataConnectionConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateGraphForStillImageSinkConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateGraphForSourceConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateGraphForCinematographyConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateGraphForVideoDataSinkConfigurationChanges_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_stopGraph_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateGraphConnectionEnabledState_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateInflightConfigurationWithIrisSinkPropertyForKey_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_startMonitoringForFigAssetWriterWritingVideoNotificationIfNecessary_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_createDepthDataPipelineConfiguration_cold_1(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_1_5();
  result = FigDebugAssert3();
  if (*a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a3;
  }

  *a4 = v8;
  return result;
}

void __captureSession_startObservingForAudiomxdDeath_block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  captureSession_stopMonitoringAudioPlaybackAndRouteChangeNotifications();
  if (!*a2)
  {
    if (*(a2 + 280))
    {
      *a3 = MEMORY[0x1E69E9820];
      a3[1] = 3221225472;
      a3[2] = __captureSession_startObservingForAudiomxdDeath_block_invoke_2;
      a3[3] = &__block_descriptor_56_e5_v8__0l;
      a3[4] = a2;
      a3[5] = *(a4 + 40);
      a3[6] = a1;
      captureSession_performBlockOnWorkerQueueSynchronously(a1, a3);
    }
  }
}

uint64_t captureSession_createStillImageSinkPipeline_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_createStillImageSinkPipeline_cold_14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_createStillImageSinkPipeline_cold_15(void *a1, void *a2, int *a3)
{
  cs_stillImageDepthDataType(a1);
  [OUTLINED_FUNCTION_17() setDepthDataType:?];
  FigCaptureSourceGetIntAttribute([a1 source], @"PearlModuleType", a3);
  [OUTLINED_FUNCTION_17() setPearlModuleType:?];
  if (*a3)
  {
    OUTLINED_FUNCTION_14_21();
    FigDebugAssert3();
    return 0;
  }

  else
  {
    [a2 setSifrStillImageCaptureEnabledIfAvailable:{objc_msgSend(a2, "sifrStillImageCaptureEnabledIfAvailable") & (objc_msgSend(objc_msgSend(a1, "requiredFormat"), "isSIFRStillImageCaptureWithDepthDataDisabled") ^ 1)}];
    return 1;
  }
}

uint64_t captureSession_createStillImageSinkPipeline_cold_17(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_handlePlaybackOrRouteStateChange_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

void __getBMStreamsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getBMStreamsClass(void)_block_invoke") description:{@"FigCaptureSession.m", 204, @"Unable to find class %s", "BMStreams"}];
  __break(1u);
}

void BiomeStreamsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *BiomeStreamsLibrary(void)") description:{@"FigCaptureSession.m", 202, @"%s", *a1}];
  __break(1u);
}

void __getBMDiscoverabilitySignalEventClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getBMDiscoverabilitySignalEventClass(void)_block_invoke") description:{@"FigCaptureSession.m", 203, @"Unable to find class %s", "BMDiscoverabilitySignalEvent"}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_symptom_send(symptom_t)") description:{@"FigCaptureSession.m", 217, @"%s", dlerror()}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"int soft_symptom_set_qualifier(symptom_t description:{uint64_t, uint32_t)"), @"FigCaptureSession.m", 216, @"%s", dlerror()}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"symptom_t soft_symptom_new(symptom_framework_t description:{symptom_ident_t)"), @"FigCaptureSession.m", 215, @"%s", dlerror()}];
  __break(1u);
}

void __captureSession_prepareCellularRadioForNetworkConnection_block_invoke_cold_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"symptom_framework_t soft_symptom_framework_init(symptom_ident_t description:{const char *)"), @"FigCaptureSession.m", 214, @"%s", dlerror()}];
  __break(1u);
}

void SymptomReporterLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *SymptomReporterLibrary(void)") description:{@"FigCaptureSession.m", 213, @"%s", *a1}];
  __break(1u);
}

uint64_t __captureSession_detachFromHostSession_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

CFTypeRef captureSession_CopyProperty_cold_1(uint64_t a1, void *a2)
{
  IsCameraOrDerivative = captureSession_clientIsCameraOrDerivative(a1);
  v4 = MEMORY[0x1E695E4D0];
  if (!IsCameraOrDerivative)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  result = CFRetain(*v4);
  *a2 = result;
  return result;
}

uint64_t captureSession_CopyProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_SetProperty_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_SetProperty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_SetProperty_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void captureSession_SetConfiguration_cold_3()
{
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_22_16();
  FigDebugAssert3();
  v2 = FigSignalErrorAtGM();
  if (v2)
  {
    v3 = v2;
    *v1 = objc_autoreleasePoolPush();
    v4 = cs_notificationPayloadWithConfigurationIDAndErrorStatus([v0 configurationID], v3);
    OUTLINED_FUNCTION_17_24(v4);
  }

  OUTLINED_FUNCTION_24_12();
}

void captureSession_SetConfiguration_cold_4()
{
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_22_16();
  FigDebugAssert3();
  if (FigSignalErrorAtGM())
  {
    *v0 = objc_autoreleasePoolPush();
    v1 = OUTLINED_FUNCTION_9_19();
    v3 = captureSession_notificationPayloadWithErrorStatus(v1, v2);
    OUTLINED_FUNCTION_17_24(v3);
  }

  OUTLINED_FUNCTION_24_12();
}

uint64_t captureSession_FileSinkStartRecording_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_FileSinkStartRecording_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void captureSession_FileSinkStartRecording_cold_3()
{
  OUTLINED_FUNCTION_25_10();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v4 = FigSignalErrorAtGM();
  *v1 = objc_autoreleasePoolPush();
  if (v4)
  {
    v5 = captureSession_notificationPayloadWithErrorStatus(v3, v4);
    OUTLINED_FUNCTION_17_24(v5);
  }

  OUTLINED_FUNCTION_24_12();
}

uint64_t captureSession_FileSinkStopRecording_cold_1()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t captureSession_FileSinkPauseRecording_cold_1()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t captureSession_FileSinkResumeRecording_cold_1()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t captureSession_StillImageSinkCaptureImage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkCaptureImage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkCaptureImage_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void captureSession_StillImageSinkCaptureImage_cold_4()
{
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_22_16();
  FigDebugAssert3();
  if (FigSignalErrorAtGM())
  {
    *v0 = objc_autoreleasePoolPush();
    v1 = OUTLINED_FUNCTION_9_19();
    v3 = captureSession_notificationPayloadWithErrorStatus(v1, v2);
    OUTLINED_FUNCTION_17_24(v3);
  }

  OUTLINED_FUNCTION_24_12();
}

uint64_t captureSession_StillImageSinkPrepareToCaptureBracket_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_StillImageSinkPrepareToCaptureBracket_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void captureSession_StillImageSinkPrepareToCaptureBracket_cold_3()
{
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_22_16();
  FigDebugAssert3();
  if (FigSignalErrorAtGM())
  {
    *v0 = objc_autoreleasePoolPush();
    v1 = OUTLINED_FUNCTION_9_19();
    v3 = captureSession_notificationPayloadWithErrorStatus(v1, v2);
    OUTLINED_FUNCTION_17_24(v3);
  }

  OUTLINED_FUNCTION_24_12();
}

uint64_t captureSession_IrisStillImageSinkCaptureImage_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCaptureImage_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void captureSession_IrisStillImageSinkCaptureImage_cold_3()
{
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_22_16();
  FigDebugAssert3();
  if (FigSignalErrorAtGM())
  {
    *v0 = objc_autoreleasePoolPush();
    v1 = OUTLINED_FUNCTION_9_19();
    v3 = captureSession_notificationPayloadWithErrorStatus(v1, v2);
    OUTLINED_FUNCTION_17_24(v3);
  }

  OUTLINED_FUNCTION_24_12();
}

uint64_t captureSession_IrisStillImageSinkPrepareToCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkPrepareToCapture_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void captureSession_IrisStillImageSinkPrepareToCapture_cold_3()
{
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_22_16();
  FigDebugAssert3();
  if (FigSignalErrorAtGM())
  {
    *v0 = objc_autoreleasePoolPush();
    v1 = OUTLINED_FUNCTION_9_19();
    v3 = captureSession_notificationPayloadWithErrorStatus(v1, v2);
    OUTLINED_FUNCTION_17_24(v3);
  }

  OUTLINED_FUNCTION_24_12();
}

uint64_t captureSession_IrisStillImageSinkBeginMomentCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkBeginMomentCapture_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkBeginMomentCapture_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToStillImageCapture_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCommitMomentCaptureToMovieRecording_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCancelMomentCapture_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_IrisStillImageSinkCancelMomentCapture_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_VisionDataSinkTriggerBurst_cold_1()
{
  OUTLINED_FUNCTION_9_38();
  FigDebugAssert3();
  return FigSignalErrorAtGM();
}

uint64_t captureSession_setPreviewSinkProperty_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_setPreviewSinkProperty_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_setSectionPropertyInternal_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_updateInflightConfigurationWithVideoDataSinkPropertyForKey_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_captureStillImageNow_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_captureStillImageNow_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t captureSession_captureStillImageNow_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t captureSession_captureStillImageNow_cold_9(os_unfair_lock_s *a1, int *a2)
{
  OUTLINED_FUNCTION_4_6();
  FigDebugAssert3();
  v4 = FigSignalErrorAtGM();
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  os_unfair_lock_lock(a1 + 96);
  if (a1[114]._os_unfair_lock_opaque)
  {
    v6 = v5;
  }

  else
  {
    v6 = -16409;
  }

  *a2 = v6;
  os_unfair_lock_unlock(a1 + 96);
  return 0;
}

uint64_t cs_IrisStillImageSinkPrepareMovieRecording_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_5();
  return FigDebugAssert3();
}

uint64_t FigImageControl_Focus_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t FigImageControl_Focus_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigImageControl_Focus_cold_5(const void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_9_1();
  *a2 = FigSignalErrorAtGM();

  CFRelease(a1);
}

uint64_t FigImageControl_Focus_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigImageControl_Focus_cold_8(char a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_9_1();
  *a2 = FigSignalErrorAtGM();
  return a1 & 1;
}

uint64_t FigImageControl_Focus_cold_9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t doFocusNow_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t doFocusNow_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t doPeakTrackingAutofocusNow_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t doPeakTrackingAutofocusNow_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t doAutofocusNow_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t doAutofocusNow_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

uint64_t sisn_createSampleBufferProcessorFunction_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

__SecTask *FigCaptureCurrentProcessHasEntitlement(__CFString *a1)
{
  v4 = 0u;
  v5 = 0u;
  FigCaptureGetCurrentProcessAuditToken(&v4);
  v3[0] = v4;
  v3[1] = v5;
  return FigCaptureClientHasEntitlement(v3, a1);
}

uint64_t ubn_insertOutputRouterForInputAfterPreviousInputForBufferType(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = [objc_msgSend(a3 outputSampleBufferRouterForBufferType:{a4), "outputSampleBufferRouter"}];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  v10 = 1;
  [a2 addOutputSampleBufferRouter:v9 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v13, 1)}];
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
  [a3 addOutputSampleBufferRouter:a1 forBufferTypes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v12, 1)}];
  return v10;
}

uint64_t pgs_iir_TestCorrectionFitsForSmoothParameter(uint64_t a1, double *a2, uint64_t *a3, double *a4, uint64_t a5, float32x2_t *a6, float32x2_t *a7, BOOL *a8, float a9)
{
  if (!a8)
  {
    OUTLINED_FUNCTION_2_8();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2_8();
    v24 = FigSignalErrorAtGM();
    goto LABEL_8;
  }

  FigMotionInterpolateQuaternionsByAngle(a3, a4, a9);
  v29[0] = v16;
  v29[1] = v17;
  v29[2] = v18;
  v29[3] = v19;
  v28[0] = FigMotionMultiplyByInverseOfQuaternion(v29, a3);
  v28[1] = v20;
  v28[2] = v21;
  v28[3] = v22;
  v23 = pgs_computeTransformFromCameraMotion(v28, a2, a6, a7, v27, *(a5 + 4));
  if (v23)
  {
    v24 = v23;
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_8;
  }

  *(a1 + 44) = 1065353216;
  v24 = pgs_limitTransformToOverscan(a1, (a5 + 88), v27);
  if (v24)
  {
LABEL_8:
    v25 = 0;
    goto LABEL_5;
  }

  v25 = *(a1 + 44) >= 1.0;
LABEL_5:
  *a8 = v25;
  return v24;
}

uint64_t pgs_computeTransformFromCameraMotion_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void fcdv_handleDeviceUnrecoverableError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  [objc_msgSend(a5 objectForKeyedSubscript:{*off_1E7989F68), "intValue"}];

  [BWFigCaptureDeviceVendor _handleDeviceUnrecoverableError:a2 fromDevice:?];
}

BOOL mv2ip_pixelBufferContainsValidContent(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  HasAttachment = CVBufferHasAttachment(a1, *MEMORY[0x1E6965D70]);
  v7 = 1;
  if (PixelFormatType == 1278226536 && !HasAttachment)
  {
    v7 = 1;
    if (!CVPixelBufferLockBaseAddress(a1, 1uLL))
    {
      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      if (BaseAddress)
      {
        v9 = BaseAddress;
        if (mv2ip_getFP16MinMaxFromBuffer_onceToken != -1)
        {
          dispatch_once(&mv2ip_getFP16MinMaxFromBuffer_onceToken, &__block_literal_global_83);
        }

        v10 = vld1q_dup_s16(v9);
        if (Height)
        {
          v11 = 0;
          v12 = (Width & 0x3F) - (Width & 0x38);
          do
          {
            if (Width >= 0x40)
            {
              v14 = v9;
              v15 = Width >> 6;
              do
              {
                v10 = vmaxq_f16(vmaxq_f16(vmaxq_f16(vmaxq_f16(*v14, v14[1]), vmaxq_f16(v14[2], v14[3])), vmaxq_f16(vmaxq_f16(v14[4], v14[5]), vmaxq_f16(v14[6], v14[7]))), v10);
                v14 += 8;
                --v15;
              }

              while (v15);
              v13 = &v9[64 * (Width >> 6)];
            }

            else
            {
              v13 = v9;
            }

            if ((Width & 0x3F) >= 8)
            {
              v16 = v13;
              v17 = (Width >> 3) & 7;
              do
              {
                v18 = *v16++;
                v10 = vmaxq_f16(v18, v10);
                --v17;
              }

              while (v17);
            }

            if (v12)
            {
              v24 = v10;
              __memcpy_chk();
              if (v12 <= 7)
              {
                v19 = *(&v25.i16[-1] + 2 * (Width & 0x3F) - ((2 * Width) & 0x70));
                v20 = (Width & 0x3F) - (Width & 0x38);
                do
                {
                  v25.i16[v20++] = v19;
                }

                while (v20 != 8);
              }

              v10 = vmaxq_f16(v25, v24);
            }

            v9 += BytesPerRow >> 1;
            ++v11;
          }

          while (v11 != Height);
        }

        v21 = vpmax_f16(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
        v22 = vpmax_f16(v21, v21);
        return vcvtq_f32_f16(vpmax_f16(v22, v22)).f32[0] > 0.49804;
      }

      else
      {
        return 1;
      }
    }
  }

  return v7;
}

void *FigCaptureCinematicFramingUpdateSampleBufferMetadata(void *a1, CMAttachmentBearerRef target, int a3)
{
  HIDWORD(v50) = a3;
  v3 = target;
  result = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (result)
  {
    v6 = result;
    v109 = 0u;
    v110 = 0u;
    v7 = *off_1E798B220;
    v8 = [result objectForKeyedSubscript:*off_1E798B220];
    v9 = MEMORY[0x1E695E480];
    v51 = v6;
    if (v8)
    {
      v48 = v7;
      DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v8, 1uLL);
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v60 = [DeepCopy countByEnumeratingWithState:&v105 objects:v104 count:16];
      if (v60)
      {
        v56 = *v106;
        v11 = *off_1E798ACE8;
        v58 = DeepCopy;
        v54 = *off_1E798ACE8;
        do
        {
          v12 = 0;
          do
          {
            if (*v106 != v56)
            {
              objc_enumerationMutation(DeepCopy);
            }

            v64 = v12;
            v13 = *(*(&v105 + 1) + 8 * v12);
            v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v62 = v13;
            v15 = [objc_msgSend(DeepCopy objectForKeyedSubscript:{v13), "objectForKeyedSubscript:", v11}];
            v16 = [v15 countByEnumeratingWithState:&v100 objects:v99 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v101;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v101 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v100 + 1) + 8 * i);
                  FigCaptureUpdateToDisplayCoordinates(a1);
                  FigCaptureUpdateToDisplayCoordinates(a1);
                  FigCaptureUpdateToDisplayCoordinates(a1);
                  if (FigCFDictionaryGetCGRectIfPresent() && OUTLINED_FUNCTION_0_81())
                  {
                    [v14 addObject:v20];
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v100 objects:v99 count:16];
              }

              while (v17);
            }

            DeepCopy = v58;
            v11 = v54;
            [objc_msgSend(v58 objectForKeyedSubscript:{v62, v48), "setObject:forKeyedSubscript:", v14, v54}];
            v12 = v64 + 1;
          }

          while (v64 + 1 != v60);
          v60 = [v58 countByEnumeratingWithState:&v105 objects:v104 count:16];
        }

        while (v60);
      }

      v6 = v51;
      [v51 setObject:DeepCopy forKeyedSubscript:{v48, v48}];

      v9 = MEMORY[0x1E695E480];
    }

    v21 = *off_1E798B218;
    v22 = [v6 objectForKeyedSubscript:*off_1E798B218];
    if (v22)
    {
      v23 = CFPropertyListCreateDeepCopy(*v9, v22, 1uLL);
      v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v32 = OUTLINED_FUNCTION_9_15(v24, v25, v26, v27, v28, v29, v30, v31, v47, v50, v51, v3, v54, v56, v58, v60, v62, v21, v66, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86, v88, v90, v92, v94, v96, 0);
      if (v32)
      {
        v33 = v32;
        v34 = MEMORY[0];
        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (MEMORY[0] != v34)
            {
              objc_enumerationMutation(v23);
            }

            v36 = *(8 * j);
            FigCaptureUpdateToDisplayCoordinates(a1);
            FigCaptureUpdateToDisplayCoordinates(a1);
            FigCaptureUpdateToDisplayCoordinates(a1);
            CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
            if (CGRectIfPresent)
            {
              CGRectIfPresent = OUTLINED_FUNCTION_0_81();
              if (CGRectIfPresent)
              {
                CGRectIfPresent = [v24 addObject:v36];
              }
            }
          }

          v33 = OUTLINED_FUNCTION_9_15(CGRectIfPresent, v38, v39, v40, v41, v42, v43, v44, v49, v50, v52, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v81, v83, v85, v87, v89, v91, v93, v95, v97, v98);
        }

        while (v33);
      }

      v6 = v52;
      [v52 setObject:v24 forKeyedSubscript:v65];

      v3 = v53;
    }

    if (HIDWORD(v50))
    {
      v45 = *off_1E798A518;
      v46 = CMGetAttachment(v3, *off_1E798A518, 0);
      if (!v46)
      {
        v46 = [MEMORY[0x1E695DF90] dictionary];
      }

      [v46 setValuesForKeysWithDictionary:{objc_msgSend(a1, "manualFramingStateMetadata")}];
      CMSetAttachment(v3, v45, v46, 1u);
    }

    return [v6 removeObjectForKey:*off_1E798A5C8];
  }

  return result;
}