@interface JFXOverlayEffectDebugViewOptions
+ (JFXOverlayEffectDebugViewOptions)debugViewOptionsWithDictionary:(id)a3;
- (JFXOverlayEffectDebugViewOptions)init;
- (id)description;
@end

@implementation JFXOverlayEffectDebugViewOptions

+ (JFXOverlayEffectDebugViewOptions)debugViewOptionsWithDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowDocumentBoundingBox"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowDocumentBoundingBox:{objc_msgSend(v5, "BOOLValue")}];
    }
  }

  v6 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowObjectAlignedBoundingBox"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowObjectAlignedBoundingBox:{objc_msgSend(v6, "BOOLValue")}];
    }
  }

  v7 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTextBoundingBoxes"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowTextBoundingBoxes:{objc_msgSend(v7, "BOOLValue")}];
    }
  }

  v8 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowHitAreaBoundingBox"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowHitAreaBoundingBox:{objc_msgSend(v8, "BOOLValue")}];
    }
  }

  v9 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowFaceRect"];
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowFaceRect:{objc_msgSend(v9, "BOOLValue")}];
    }
  }

  v10 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTapPoints"];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowTapPoints:{objc_msgSend(v10, "BOOLValue")}];
    }
  }

  v11 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowCornerPoints"];
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowCornerPoints:{objc_msgSend(v11, "BOOLValue")}];
    }
  }

  v12 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowTextCornerPoints"];
  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowTextCornerPoints:{objc_msgSend(v12, "BOOLValue")}];
    }
  }

  v13 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowHitAreaPoints"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowHitAreaPoints:{objc_msgSend(v13, "BOOLValue")}];
    }
  }

  v14 = [v3 objectForKeyedSubscript:@"JFX_DEBUG_DrawOverlayBoundsOptionShowAdditionalRects"];
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 setShowAdditionalRects:{objc_msgSend(v14, "BOOLValue")}];
    }
  }

  return v4;
}

- (JFXOverlayEffectDebugViewOptions)init
{
  v38[4] = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = JFXOverlayEffectDebugViewOptions;
  v2 = [(JFXOverlayEffectDebugViewOptions *)&v34 init];
  v3 = v2;
  if (v2)
  {
    [(JFXOverlayEffectDebugViewOptions *)v2 setShowDocumentBoundingBox:0];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowObjectAlignedBoundingBox:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowTextBoundingBoxes:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowHitAreaBoundingBox:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowFaceRect:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowTapPoints:0];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowMidpoint:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowCornerPoints:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowTextCornerPoints:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowHitAreaPoints:1];
    [(JFXOverlayEffectDebugViewOptions *)v3 setShowAdditionalRects:1];
    v4 = [MEMORY[0x277D75348] magentaColor];
    [(JFXOverlayEffectDebugViewOptions *)v3 setDocumentBoundingBoxColor:v4];

    v5 = [MEMORY[0x277D75348] yellowColor];
    [(JFXOverlayEffectDebugViewOptions *)v3 setOutputROIColor:v5];

    v6 = [MEMORY[0x277D75348] cyanColor];
    [(JFXOverlayEffectDebugViewOptions *)v3 setObjectAlignedBoundingBoxColor:v6];

    v7 = [MEMORY[0x277D75348] colorWithHue:0.261799388 saturation:0.7 brightness:0.9 alpha:1.0];
    v38[0] = v7;
    v8 = [MEMORY[0x277D75348] colorWithHue:0.523598776 saturation:0.7 brightness:0.9 alpha:1.0];
    v38[1] = v8;
    v9 = [MEMORY[0x277D75348] colorWithHue:0.785398163 saturation:0.7 brightness:0.9 alpha:1.0];
    v38[2] = v9;
    v10 = [MEMORY[0x277D75348] colorWithHue:1.57079633 saturation:0.7 brightness:0.9 alpha:1.0];
    v38[3] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [(JFXOverlayEffectDebugViewOptions *)v3 setTextBoundingBoxColors:v11];

    v12 = [MEMORY[0x277D75348] orangeColor];
    [(JFXOverlayEffectDebugViewOptions *)v3 setHitAreaBoundingBoxColor:v12];

    v13 = [MEMORY[0x277D75348] whiteColor];
    [(JFXOverlayEffectDebugViewOptions *)v3 setMidpointColor:v13];

    v14 = [MEMORY[0x277D75348] lightGrayColor];
    [(JFXOverlayEffectDebugViewOptions *)v3 setOverlayCenterColor:v14];

    v15 = [MEMORY[0x277D75348] blackColor];
    [(JFXOverlayEffectDebugViewOptions *)v3 setOriginCrosshairColor:v15];

    v16 = [MEMORY[0x277D75348] redColor];
    v37[0] = v16;
    v17 = [MEMORY[0x277D75348] greenColor];
    v37[1] = v17;
    v18 = [MEMORY[0x277D75348] yellowColor];
    v37[2] = v18;
    v19 = [MEMORY[0x277D75348] blueColor];
    v37[3] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:4];
    [(JFXOverlayEffectDebugViewOptions *)v3 setCornerPointColors:v20];

    v21 = [MEMORY[0x277D75348] redColor];
    v36[0] = v21;
    v22 = [MEMORY[0x277D75348] greenColor];
    v36[1] = v22;
    v23 = [MEMORY[0x277D75348] yellowColor];
    v36[2] = v23;
    v24 = [MEMORY[0x277D75348] blueColor];
    v36[3] = v24;
    v25 = [MEMORY[0x277D75348] magentaColor];
    v36[4] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:5];
    [(JFXOverlayEffectDebugViewOptions *)v3 setTextCornerPointColors:v26];

    v27 = [MEMORY[0x277D75348] redColor];
    v35[0] = v27;
    v28 = [MEMORY[0x277D75348] greenColor];
    v35[1] = v28;
    v29 = [MEMORY[0x277D75348] yellowColor];
    v35[2] = v29;
    v30 = [MEMORY[0x277D75348] blueColor];
    v35[3] = v30;
    v31 = [MEMORY[0x277D75348] magentaColor];
    v35[4] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:5];
    [(JFXOverlayEffectDebugViewOptions *)v3 setHitAreaPointColors:v32];
  }

  return v3;
}

- (id)description
{
  v14 = MEMORY[0x277CCACA8];
  v18.receiver = self;
  v18.super_class = JFXOverlayEffectDebugViewOptions;
  v13 = [(JFXOverlayEffectDebugViewOptions *)&v18 description];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showDocumentBoundingBox](self, "showDocumentBoundingBox")}];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showObjectAlignedBoundingBox](self, "showObjectAlignedBoundingBox")}];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showTextBoundingBoxes](self, "showTextBoundingBoxes")}];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showHitAreaBoundingBox](self, "showHitAreaBoundingBox")}];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showFaceRect](self, "showFaceRect")}];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showTapPoints](self, "showTapPoints")}];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showMidpoint](self, "showMidpoint")}];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showCornerPoints](self, "showCornerPoints")}];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showTextCornerPoints](self, "showTextCornerPoints")}];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showHitAreaPoints](self, "showHitAreaPoints")}];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[JFXOverlayEffectDebugViewOptions showAdditionalRects](self, "showAdditionalRects")}];
  v15 = [v14 stringWithFormat:@"%@\n    showDocumentBoundingBox         %@\n    showObjectAlignedBoundingBox    %@\n    showTextBoundingBoxes           %@\n    showHitAreaBoundingBox          %@\n    showFaceRect                    %@\n    showTapPoints                   %@\n    showMidpoint                    %@\n    showCornerPoints                %@\n    showTextCornerPoints            %@\n    showHitAreaPoints               %@\n    showAdditionalRects             %@", v13, v12, v17, v16, v3, v4, v5, v6, v7, v8, v9, v10];

  return v15;
}

@end