@interface CFXCameraStreamAdapter
+ (void)notifyExternalImageData:(id)a3 orientation:(int64_t)a4 effectComposition:(id)a5;
@end

@implementation CFXCameraStreamAdapter

+ (void)notifyExternalImageData:(id)a3 orientation:(int64_t)a4 effectComposition:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([MEMORY[0x277CE5280] isSupported] && (objc_msgSend(MEMORY[0x277D75418], "currentDevice"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "jfx_hasTrueDepthFrontCamera"), v9, v10))
  {
    v11 = objc_opt_new();
    [v7 cameraIntrinsics];
    [v11 setCameraIntrinsics:?];
    [v11 setCameraPosition:{objc_msgSend(v7, "cameraPosition")}];
    v12 = [v7 faceData];
    v13 = [v12 detectedFaces];
    [v11 setHasValidFaceData:{objc_msgSend(v13, "count") != 0}];

    [v11 setOrientation:a4];
    [v11 setPixelBuffer:{objc_msgSend(v7, "pixelBuffer")}];
    [v7 timestamp];
    [v11 setTimestamp:?];
    [v11 setRequiresFaceTracking:{objc_msgSend(v8, "requiresFaceTracking")}];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __80__CFXCameraStreamAdapter_notifyExternalImageData_orientation_effectComposition___block_invoke;
    v39[3] = &unk_278D79D20;
    v40 = v7;
    v14 = MEMORY[0x245D22230](v39);
    v15 = +[JFXVideoCameraController sharedInstance];
    [v15 notifyExternalARKitFaceTrackedImageData:v11 completion:v14];

    v16 = v40;
  }

  else
  {
    v11 = objc_opt_new();
    [v11 setPixelBuffer:{objc_msgSend(v7, "pixelBuffer")}];
    [v7 timestamp];
    [v11 setTimestamp:?];
    [v11 setCaptureFramesPerSecond:{objc_msgSend(v7, "captureFramesPerSecond")}];
    [v7 cameraIntrinsics];
    [v11 setCameraIntrinsics:?];
    [v11 setCameraPosition:{objc_msgSend(v7, "cameraPosition")}];
    v17 = [v7 faceData];
    v18 = [v17 detectedFaces];
    [v11 setHasValidFaceData:{objc_msgSend(v18, "count") != 0}];

    [v11 setRequiresFaceTracking:{objc_msgSend(v8, "requiresFaceTracking")}];
    [v11 setOrientation:a4];
    v19 = [v7 faceData];
    v20 = [v19 detectedFaces];
    if ([v20 count])
    {
      v21 = +[JFXVideoCameraController sharedInstance];
      v22 = [v21 faceTrackingEnabled];

      v23 = v22 ^ 1;
    }

    else
    {
      v23 = 1;
    }

    v24 = +[JFXVideoCameraController sharedInstance];
    if ([v24 sessionRequiresFaceTracking])
    {
      v25 = 0;
    }

    else
    {
      v25 = [v8 requiresFaceTracking] ^ 1;
    }

    if (((v23 | v25) & 1) == 0)
    {
      v26 = [v7 faceData];
      v27 = [v26 detectedFaces];

      v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v27, "count")}];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __80__CFXCameraStreamAdapter_notifyExternalImageData_orientation_effectComposition___block_invoke_2;
      v37[3] = &unk_278D7A820;
      v29 = v28;
      v38 = v29;
      [v27 enumerateObjectsUsingBlock:v37];
      v30 = +[JFXVideoCameraController sharedInstance];
      v31 = [v30 updateCurrentlyTrackedFaceID:v29];

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __80__CFXCameraStreamAdapter_notifyExternalImageData_orientation_effectComposition___block_invoke_3;
      v35[3] = &unk_278D7A848;
      v32 = v31;
      v36 = v32;
      v33 = [v27 indexOfObjectPassingTest:v35];
      if (v33 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = [v27 objectAtIndexedSubscript:v33];
        [v34 boundingBox];
        [v11 setNormalizedFaceRect:?];
        [v34 rollAngleInDegrees];
        [v11 setRollAngle:?];
      }
    }

    v16 = +[JFXVideoCameraController sharedInstance];
    [v16 notifyExternalImageData:v11 completion:0];
  }
}

void __80__CFXCameraStreamAdapter_notifyExternalImageData_orientation_effectComposition___block_invoke(uint64_t a1)
{
  v3 = +[JFXVideoCameraController sharedInstance];
  v2 = [v3 arCameraSessionController];
  [v2 processExternalSensorData:*(a1 + 32)];
}

void __80__CFXCameraStreamAdapter_notifyExternalImageData_orientation_effectComposition___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "ID")}];
  [v2 addObject:v3];
}

@end