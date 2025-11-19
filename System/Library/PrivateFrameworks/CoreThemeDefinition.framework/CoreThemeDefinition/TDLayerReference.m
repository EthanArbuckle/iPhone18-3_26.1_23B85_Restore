@interface TDLayerReference
- (id)cuiLayerReference;
@end

@implementation TDLayerReference

- (id)cuiLayerReference
{
  v3 = objc_alloc_init(MEMORY[0x277D026D0]);
  v4 = [-[TDLayerReference reference](self "reference")];
  [v3 setLayerName:{-[TDLayerReference name](self, "name")}];
  [(TDAbstractLayerReference *)self frameRect];
  [v3 setFrame:?];
  [-[TDLayerReference opacity](self "opacity")];
  [v3 setOpacity:v5];
  [v3 setBlendMode:{objc_msgSend(-[TDLayerReference blendMode](self, "blendMode"), "intValue")}];
  [v3 setGradientOrColorName:{-[TDLayerReference gradientOrColorName](self, "gradientOrColorName")}];
  [(TDLayerReference *)self blurStrength];
  [v3 setBlurStrength:?];
  [v3 setHasLightingEffects:{-[TDLayerReference hasLightingEffects](self, "hasLightingEffects")}];
  [v3 setGathersSpecularByElement:{-[TDLayerReference gathersSpecularByElement](self, "gathersSpecularByElement")}];
  [v3 setShadowStyle:{objc_msgSend(-[TDLayerReference shadowStyle](self, "shadowStyle"), "intValue")}];
  [-[TDLayerReference shadowOpacity](self "shadowOpacity")];
  [v3 setShadowOpacity:v6];
  [v3 setHasSpecular:{-[TDLayerReference hasSpecular](self, "hasSpecular")}];
  [-[TDLayerReference translucency](self "translucency")];
  [v3 setTranslucency:v7];
  v8 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(v4, "key")}];
  [v3 setReferenceKey:v8];

  [objc_msgSend(v3 "referenceKey")];
  return v3;
}

@end