@interface _NUVisionInstanceSegmentationResult
- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstance:(SEL)a3;
- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstances:(SEL)a3;
- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstance:(SEL)a3;
- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstances:(SEL)a3;
- (CGSize)observationScale;
- (NSIndexSet)backgroundInstances;
- (NSIndexSet)foregroundInstances;
- (NSIndexSet)instances;
- (_NUVisionInstanceSegmentationResult)initWithObservation:(id)a3 usingTargetPoints:(BOOL)a4 observationOrientation:(int64_t)a5 observationScale:(CGSize)a6 perInstanceProperties:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)instancesForCategory:(id)a3;
- (id)newMaskForInstance:(unint64_t)a3 error:(id *)a4;
- (id)newMaskForInstances:(id)a3 error:(id *)a4;
@end

@implementation _NUVisionInstanceSegmentationResult

- (CGSize)observationScale
{
  width = self->_observationScale.width;
  height = self->_observationScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstance:(SEL)a3
{
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
  [(_NUVisionInstanceSegmentationResult *)self fullExtentForInstances:v6];

  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstance:(SEL)a3
{
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
  [(_NUVisionInstanceSegmentationResult *)self tightBoundsForInstances:v6];

  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstances:(SEL)a3
{
  v6 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x4010000000;
  v13 = &unk_1C03FE0EF;
  v14 = NUPixelRectNull;
  v15 = unk_1C03C4308;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62___NUVisionInstanceSegmentationResult_fullExtentForInstances___block_invoke;
  v9[3] = &unk_1E8109F08;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateIndexesUsingBlock:v9];
  v7 = *(v11 + 3);
  retstr->var0 = *(v11 + 2);
  retstr->var1 = v7;
  _Block_object_dispose(&v10, 8);

  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstances:(SEL)a3
{
  v6 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x4010000000;
  v13 = &unk_1C03FE0EF;
  v14 = NUPixelRectNull;
  v15 = unk_1C03C4308;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___NUVisionInstanceSegmentationResult_tightBoundsForInstances___block_invoke;
  v9[3] = &unk_1E8109F08;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateIndexesUsingBlock:v9];
  v7 = *(v11 + 3);
  retstr->var0 = *(v11 + 2);
  retstr->var1 = v7;
  _Block_object_dispose(&v10, 8);

  return result;
}

- (id)newMaskForInstance:(unint64_t)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:a3];
  v7 = [(_NUVisionInstanceSegmentationResult *)self newMaskForInstances:v6 error:a4];

  return v7;
}

- (id)newMaskForInstances:(id)a3 error:(id *)a4
{
  observation = self->_observation;
  v7 = a3;
  v8 = [(_NUVisionInstanceSegmentationResult *)self observationOrientation];
  [(_NUVisionInstanceSegmentationResult *)self observationScale];
  v11 = GenerateMaskForInstances(v7, observation, v8, a4, v9, v10);

  return v11;
}

- (NSIndexSet)backgroundInstances
{
  observation = self->_observation;
  v3 = *MEMORY[0x1E69849A0];
  v6 = 0;
  v4 = [(VNInstanceMaskObservation *)observation instancesForFeature:v3 error:&v6];
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v4;
}

- (id)instancesForCategory:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    observation = self->_observation;
    v9 = 0;
    v6 = [(VNInstanceMaskObservation *)observation instancesForCategory:v4 error:&v9];
    v7 = v9;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  v6 = [MEMORY[0x1E696AC90] indexSet];
LABEL_6:

  return v6;
}

- (NSIndexSet)foregroundInstances
{
  observation = self->_observation;
  v3 = *MEMORY[0x1E69849A8];
  v6 = 0;
  v4 = [(VNInstanceMaskObservation *)observation instancesForFeature:v3 error:&v6];
  if (!v4)
  {
    v4 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v4;
}

- (NSIndexSet)instances
{
  if ([(_NUVisionInstanceSegmentationResult *)self usingTargetPoints])
  {
    v3 = [(VNInstanceMaskObservation *)self->_observation allInstances];
  }

  else
  {
    v4 = [(_NUVisionInstanceSegmentationResult *)self backgroundInstances];
    v5 = [v4 mutableCopy];

    v6 = [(_NUVisionInstanceSegmentationResult *)self foregroundInstances];
    [v5 addIndexes:v6];

    v3 = [v5 copy];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(VNInstanceMaskObservation *)self->_observation copyWithZone:a3];
  usingTargetPoints = self->_usingTargetPoints;
  v8 = [(_NUVisionInstanceSegmentationResult *)self observationOrientation];
  [(_NUVisionInstanceSegmentationResult *)self observationScale];
  v10 = v9;
  v12 = v11;
  v13 = [(_NUVisionInstanceSegmentationResult *)self perInstanceProperties];
  v14 = [v5 initWithObservation:v6 usingTargetPoints:usingTargetPoints observationOrientation:v8 observationScale:v13 perInstanceProperties:{v10, v12}];

  v15 = [(NSIndexSet *)self->_gatedInstances copyWithZone:a3];
  v16 = v14[6];
  v14[6] = v15;

  return v14;
}

- (_NUVisionInstanceSegmentationResult)initWithObservation:(id)a3 usingTargetPoints:(BOOL)a4 observationOrientation:(int64_t)a5 observationScale:(CGSize)a6 perInstanceProperties:(id)a7
{
  height = a6.height;
  width = a6.width;
  v13 = a3;
  v14 = a7;
  v33.receiver = self;
  v33.super_class = _NUVisionInstanceSegmentationResult;
  v15 = [(_NUVisionInstanceSegmentationResult *)&v33 init];
  observation = v15->_observation;
  v15->_observation = v13;
  v17 = v13;

  v15->_usingTargetPoints = a4;
  v15->_observationOrientation = a5;
  v15->_observationScale.width = width;
  v15->_observationScale.height = height;
  v18 = [v14 copy];
  perInstanceProperties = v15->_perInstanceProperties;
  v15->_perInstanceProperties = v18;

  +[NUGlobalSettings inpaintMinimumArea];
  v21 = v20;
  +[NUGlobalSettings inpaintMaximumArea];
  v23 = v22;
  v24 = [(VNInstanceMaskObservation *)v17 allInstances];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __139___NUVisionInstanceSegmentationResult_initWithObservation_usingTargetPoints_observationOrientation_observationScale_perInstanceProperties___block_invoke;
  v29[3] = &unk_1E8109EE0;
  v30 = v14;
  v31 = v21;
  v32 = v23;
  v25 = v14;
  v26 = [v24 indexesPassingTest:v29];
  gatedInstances = v15->_gatedInstances;
  v15->_gatedInstances = v26;

  return v15;
}

@end