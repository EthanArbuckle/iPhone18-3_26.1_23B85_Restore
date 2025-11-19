@interface JFX
@end

@implementation JFX

void __JFX_CaptureSessionInterruptionReasonsList_block_invoke()
{
  v2[5] = *MEMORY[0x277D85DE8];
  v2[0] = @"VideoDeviceNotAvailableInBackground";
  v2[1] = @"AudioDeviceInUseByAnotherClient";
  v2[2] = @"VideoDeviceInUseByAnotherClient";
  v2[3] = @"VideoDeviceNotAvailableWithMultipleForegroundApps";
  v2[4] = @"VideoDeviceNotAvailableDueToSystemPressure";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:5];
  v1 = JFX_CaptureSessionInterruptionReasonsList_interruptionReasonsArray;
  JFX_CaptureSessionInterruptionReasonsList_interruptionReasonsArray = v0;
}

uint64_t __JFX_LogCategory_block_invoke(uint64_t a1)
{
  **(a1 + 32) = os_log_create("com.apple.CameraEffectsKit", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void __JFX_isDrawInstructionGraphNodesEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"JFX_DEBUG_DrawInstructionGraphNodes"];

  v1 = v2;
  if (v2)
  {
    JFX_isDrawInstructionGraphNodesEnabled_enabled = [v2 BOOLValue];
    v1 = v2;
  }
}

void __JFX_isShowHDRBadgeInPreviewEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  JFX_isShowHDRBadgeInPreviewEnabled_showHDRBadgeInPreview = [v0 BOOLForKey:@"JFX_ShowHDRBadgeInPreview"];
}

void __JFX_isDrawOverlayBoundsEnabled_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v0 objectForKey:@"JFX_DEBUG_DrawOverlayBounds"];

  v1 = v2;
  if (v2)
  {
    JFX_isDrawOverlayBoundsEnabled_drawOverlayBounds = [v2 BOOLValue];
    v1 = v2;
  }
}

void __JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowDocumentBoundingBox"];
  v1 = JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowDocumentBoundingBoxEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowObjectAlignedBoundingBox"];
  v1 = JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowObjectAlignedBoundingBoxEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTextBoundingBoxes"];
  v1 = JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowTextBoundingBoxesEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowHitAreaBoundingBox"];
  v1 = JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowHitAreaBoundingBoxEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowFaceRect"];
  v1 = JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowFaceRectEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTapPoints"];
  v1 = JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowTapPointsEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowCornerPoints"];
  v1 = JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowCornerPointsEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTextCornerPoints"];
  v1 = JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowTextCornerPointsEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowHitAreaPoints"];
  v1 = JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowHitAreaPointsEnabled_n = v0;
}

void __JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled_block_invoke()
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v0 = [v2 objectForKey:@"JFX_DEBUG_DrawOverlayBoundsOptionShowAdditionalRects"];
  v1 = JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled_n;
  JFX_isDrawOverlayBoundsOptionShowAdditionalRectsEnabled_n = v0;
}

void __JFX_getFrontAndBackCameras_block_invoke()
{
  v0 = dispatch_group_create();
  v1 = JFX_getFrontAndBackCameras_s_group;
  JFX_getFrontAndBackCameras_s_group = v0;

  v2 = JFX_getFrontAndBackCameras_s_group;
  v3 = dispatch_get_global_queue(21, 0);
  dispatch_group_async(v2, v3, &__block_literal_global_662);
}

void __JFX_getFrontAndBackCameras_block_invoke_2()
{
  v6[7] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CE5860];
  v6[0] = *MEMORY[0x277CE5868];
  v6[1] = v0;
  v1 = *MEMORY[0x277CE5840];
  v6[2] = *MEMORY[0x277CE5848];
  v6[3] = v1;
  v2 = *MEMORY[0x277CE5870];
  v6[4] = *MEMORY[0x277CE5878];
  v6[5] = v2;
  v6[6] = *MEMORY[0x277CE5850];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:7];
  v4 = [MEMORY[0x277CE5AD0] discoverySessionWithDeviceTypes:v3 mediaType:*MEMORY[0x277CE5EA8] position:0];
  v5 = [v4 devices];
  [v5 enumerateObjectsUsingBlock:&__block_literal_global_666];
}

void __JFX_getFrontAndBackCameras_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v14 = a2;
  v6 = [v14 position];
  v7 = v6;
  if (JFX_getFrontAndBackCameras_s_frontCamera)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 2;
  }

  if (v8)
  {
    objc_storeStrong(&JFX_getFrontAndBackCameras_s_frontCamera, a2);
    [JFX_getFrontAndBackCameras_s_frontCamera jfx_highestQualityColorSpace];
  }

  else
  {
    if (JFX_getFrontAndBackCameras_s_backCamera)
    {
      v9 = 0;
    }

    else
    {
      v9 = v6 == 1;
    }

    if (v9)
    {
      objc_storeStrong(&JFX_getFrontAndBackCameras_s_backCamera, a2);
      [JFX_getFrontAndBackCameras_s_backCamera jfx_highestQualityColorSpace];
      goto LABEL_19;
    }
  }

  if (JFX_getFrontAndBackCameras_s_frontUltraWideCamera)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7 == 2;
  }

  if (v10)
  {
    v11 = [v14 deviceType];
    v12 = *MEMORY[0x277CE5870];

    if (v11 == v12)
    {
      objc_storeStrong(&JFX_getFrontAndBackCameras_s_frontUltraWideCamera, a2);
    }
  }

LABEL_19:
  v13 = 0;
  if (JFX_getFrontAndBackCameras_s_frontCamera && JFX_getFrontAndBackCameras_s_backCamera)
  {
    v13 = JFX_getFrontAndBackCameras_s_frontUltraWideCamera != 0;
  }

  *a4 = v13;
}

void __JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice_block_invoke()
{
  v0 = +[JFXVideoCameraController sharedInstance];
  JFX_adjustFaceAnchorCaptureInterfaceOrientationForDevice_s_isStreamingMode = [v0 cameraMode] == 0;
}

uint64_t __JFX_LogCategory_block_invoke_0(uint64_t a1)
{
  **(a1 + 32) = os_log_create("com.apple.CameraEffectsKit", *(a1 + 40));

  return MEMORY[0x2821F96F8]();
}

void __JFX_descriptionForEffectAssetContentType_block_invoke()
{
  v0 = JFX_descriptionForEffectAssetContentType_values;
  JFX_descriptionForEffectAssetContentType_values = &unk_28556D968;
}

void __JFX_descriptionForEffectAssetAspectRatio_block_invoke()
{
  v0 = JFX_descriptionForEffectAssetAspectRatio_values;
  JFX_descriptionForEffectAssetAspectRatio_values = &unk_28556D980;
}

void __JFX_descriptionForEffectAssetUsageMode_block_invoke()
{
  v0 = JFX_descriptionForEffectAssetUsageMode_values;
  JFX_descriptionForEffectAssetUsageMode_values = &unk_28556D998;
}

@end