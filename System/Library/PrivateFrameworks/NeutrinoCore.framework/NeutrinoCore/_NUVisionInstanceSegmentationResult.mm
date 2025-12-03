@interface _NUVisionInstanceSegmentationResult
- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstance:(SEL)instance;
- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstances:(SEL)instances;
- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstance:(SEL)instance;
- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstances:(SEL)instances;
- (CGSize)observationScale;
- (NSIndexSet)backgroundInstances;
- (NSIndexSet)foregroundInstances;
- (NSIndexSet)instances;
- (_NUVisionInstanceSegmentationResult)initWithObservation:(id)observation usingTargetPoints:(BOOL)points observationOrientation:(int64_t)orientation observationScale:(CGSize)scale perInstanceProperties:(id)properties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)instancesForCategory:(id)category;
- (id)newMaskForInstance:(unint64_t)instance error:(id *)error;
- (id)newMaskForInstances:(id)instances error:(id *)error;
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

- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstance:(SEL)instance
{
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
  [(_NUVisionInstanceSegmentationResult *)self fullExtentForInstances:v6];

  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstance:(SEL)instance
{
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:a4];
  [(_NUVisionInstanceSegmentationResult *)self tightBoundsForInstances:v6];

  return result;
}

- ($41299696D20B6C925B74A5D5E4D5CC87)fullExtentForInstances:(SEL)instances
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

- ($41299696D20B6C925B74A5D5E4D5CC87)tightBoundsForInstances:(SEL)instances
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

- (id)newMaskForInstance:(unint64_t)instance error:(id *)error
{
  v6 = [MEMORY[0x1E696AC90] indexSetWithIndex:instance];
  v7 = [(_NUVisionInstanceSegmentationResult *)self newMaskForInstances:v6 error:error];

  return v7;
}

- (id)newMaskForInstances:(id)instances error:(id *)error
{
  observation = self->_observation;
  instancesCopy = instances;
  observationOrientation = [(_NUVisionInstanceSegmentationResult *)self observationOrientation];
  [(_NUVisionInstanceSegmentationResult *)self observationScale];
  v11 = GenerateMaskForInstances(instancesCopy, observation, observationOrientation, error, v9, v10);

  return v11;
}

- (NSIndexSet)backgroundInstances
{
  observation = self->_observation;
  v3 = *MEMORY[0x1E69849A0];
  v6 = 0;
  indexSet = [(VNInstanceMaskObservation *)observation instancesForFeature:v3 error:&v6];
  if (!indexSet)
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  return indexSet;
}

- (id)instancesForCategory:(id)category
{
  categoryCopy = category;
  if (objc_opt_respondsToSelector())
  {
    observation = self->_observation;
    v9 = 0;
    indexSet = [(VNInstanceMaskObservation *)observation instancesForCategory:categoryCopy error:&v9];
    v7 = v9;
    if (indexSet)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
  }

  indexSet = [MEMORY[0x1E696AC90] indexSet];
LABEL_6:

  return indexSet;
}

- (NSIndexSet)foregroundInstances
{
  observation = self->_observation;
  v3 = *MEMORY[0x1E69849A8];
  v6 = 0;
  indexSet = [(VNInstanceMaskObservation *)observation instancesForFeature:v3 error:&v6];
  if (!indexSet)
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  return indexSet;
}

- (NSIndexSet)instances
{
  if ([(_NUVisionInstanceSegmentationResult *)self usingTargetPoints])
  {
    allInstances = [(VNInstanceMaskObservation *)self->_observation allInstances];
  }

  else
  {
    backgroundInstances = [(_NUVisionInstanceSegmentationResult *)self backgroundInstances];
    v5 = [backgroundInstances mutableCopy];

    foregroundInstances = [(_NUVisionInstanceSegmentationResult *)self foregroundInstances];
    [v5 addIndexes:foregroundInstances];

    allInstances = [v5 copy];
  }

  return allInstances;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(VNInstanceMaskObservation *)self->_observation copyWithZone:zone];
  usingTargetPoints = self->_usingTargetPoints;
  observationOrientation = [(_NUVisionInstanceSegmentationResult *)self observationOrientation];
  [(_NUVisionInstanceSegmentationResult *)self observationScale];
  v10 = v9;
  v12 = v11;
  perInstanceProperties = [(_NUVisionInstanceSegmentationResult *)self perInstanceProperties];
  v14 = [v5 initWithObservation:v6 usingTargetPoints:usingTargetPoints observationOrientation:observationOrientation observationScale:perInstanceProperties perInstanceProperties:{v10, v12}];

  v15 = [(NSIndexSet *)self->_gatedInstances copyWithZone:zone];
  v16 = v14[6];
  v14[6] = v15;

  return v14;
}

- (_NUVisionInstanceSegmentationResult)initWithObservation:(id)observation usingTargetPoints:(BOOL)points observationOrientation:(int64_t)orientation observationScale:(CGSize)scale perInstanceProperties:(id)properties
{
  height = scale.height;
  width = scale.width;
  observationCopy = observation;
  propertiesCopy = properties;
  v33.receiver = self;
  v33.super_class = _NUVisionInstanceSegmentationResult;
  v15 = [(_NUVisionInstanceSegmentationResult *)&v33 init];
  observation = v15->_observation;
  v15->_observation = observationCopy;
  v17 = observationCopy;

  v15->_usingTargetPoints = points;
  v15->_observationOrientation = orientation;
  v15->_observationScale.width = width;
  v15->_observationScale.height = height;
  v18 = [propertiesCopy copy];
  perInstanceProperties = v15->_perInstanceProperties;
  v15->_perInstanceProperties = v18;

  +[NUGlobalSettings inpaintMinimumArea];
  v21 = v20;
  +[NUGlobalSettings inpaintMaximumArea];
  v23 = v22;
  allInstances = [(VNInstanceMaskObservation *)v17 allInstances];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __139___NUVisionInstanceSegmentationResult_initWithObservation_usingTargetPoints_observationOrientation_observationScale_perInstanceProperties___block_invoke;
  v29[3] = &unk_1E8109EE0;
  v30 = propertiesCopy;
  v31 = v21;
  v32 = v23;
  v25 = propertiesCopy;
  v26 = [allInstances indexesPassingTest:v29];
  gatedInstances = v15->_gatedInstances;
  v15->_gatedInstances = v26;

  return v15;
}

@end