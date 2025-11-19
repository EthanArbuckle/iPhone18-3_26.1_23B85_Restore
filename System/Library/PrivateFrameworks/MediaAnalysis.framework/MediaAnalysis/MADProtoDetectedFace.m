@interface MADProtoDetectedFace
+ (id)protoFromPhotosFace:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)vcpPhotosFace;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAgeType:(BOOL)a3;
- (void)setHasBlurScore:(BOOL)a3;
- (void)setHasBodyCenterX:(BOOL)a3;
- (void)setHasBodyCenterY:(BOOL)a3;
- (void)setHasBodyHeight:(BOOL)a3;
- (void)setHasBodyWidth:(BOOL)a3;
- (void)setHasCenterX:(BOOL)a3;
- (void)setHasCenterY:(BOOL)a3;
- (void)setHasClusterSequenceNumber:(BOOL)a3;
- (void)setHasDetectionType:(BOOL)a3;
- (void)setHasEthnicityType:(BOOL)a3;
- (void)setHasEyesState:(BOOL)a3;
- (void)setHasFaceAlgorithmVersion:(BOOL)a3;
- (void)setHasFaceExpressionType:(BOOL)a3;
- (void)setHasFacialHairType:(BOOL)a3;
- (void)setHasGazeAngle:(BOOL)a3;
- (void)setHasGazeCenterX:(BOOL)a3;
- (void)setHasGazeCenterY:(BOOL)a3;
- (void)setHasGazeConfidence:(BOOL)a3;
- (void)setHasGazeType:(BOOL)a3;
- (void)setHasGlassesType:(BOOL)a3;
- (void)setHasHairColorType:(BOOL)a3;
- (void)setHasHairType:(BOOL)a3;
- (void)setHasHasFaceMask:(BOOL)a3;
- (void)setHasHasSmile:(BOOL)a3;
- (void)setHasHeadgearType:(BOOL)a3;
- (void)setHasHidden:(BOOL)a3;
- (void)setHasIsInTrash:(BOOL)a3;
- (void)setHasIsLeftEyeClosed:(BOOL)a3;
- (void)setHasIsRightEyeClosed:(BOOL)a3;
- (void)setHasManual:(BOOL)a3;
- (void)setHasPoseType:(BOOL)a3;
- (void)setHasPoseYaw:(BOOL)a3;
- (void)setHasQuality:(BOOL)a3;
- (void)setHasQualityMeasure:(BOOL)a3;
- (void)setHasRoll:(BOOL)a3;
- (void)setHasSexType:(BOOL)a3;
- (void)setHasSize:(BOOL)a3;
- (void)setHasSkintoneType:(BOOL)a3;
- (void)setHasSmileType:(BOOL)a3;
- (void)setHasSourceHeight:(BOOL)a3;
- (void)setHasSourceWidth:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MADProtoDetectedFace

+ (id)protoFromPhotosFace:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MADProtoDetectedFace);
  v5 = [v3 localIdentifier];
  [(MADProtoDetectedFace *)v4 setFaceLocalIdentifier:v5];

  [v3 size];
  [(MADProtoDetectedFace *)v4 setSize:?];
  [v3 centerX];
  [(MADProtoDetectedFace *)v4 setCenterX:?];
  [v3 centerY];
  [(MADProtoDetectedFace *)v4 setCenterY:?];
  [v3 bodyCenterX];
  [(MADProtoDetectedFace *)v4 setBodyCenterX:?];
  [v3 bodyCenterY];
  [(MADProtoDetectedFace *)v4 setBodyCenterY:?];
  [v3 bodyWidth];
  [(MADProtoDetectedFace *)v4 setBodyWidth:?];
  [v3 bodyHeight];
  [(MADProtoDetectedFace *)v4 setBodyHeight:?];
  -[MADProtoDetectedFace setDetectionType:](v4, "setDetectionType:", [v3 detectionType]);
  -[MADProtoDetectedFace setQualityMeasure:](v4, "setQualityMeasure:", [v3 qualityMeasure]);
  [v3 quality];
  [(MADProtoDetectedFace *)v4 setQuality:?];
  -[MADProtoDetectedFace setSourceWidth:](v4, "setSourceWidth:", [v3 sourceWidth]);
  -[MADProtoDetectedFace setSourceHeight:](v4, "setSourceHeight:", [v3 sourceHeight]);
  [v3 roll];
  [(MADProtoDetectedFace *)v4 setRoll:?];
  -[MADProtoDetectedFace setHidden:](v4, "setHidden:", [v3 isHidden]);
  -[MADProtoDetectedFace setIsInTrash:](v4, "setIsInTrash:", [v3 isInTrash]);
  -[MADProtoDetectedFace setManual:](v4, "setManual:", [v3 manual]);
  -[MADProtoDetectedFace setHasSmile:](v4, "setHasSmile:", [v3 hasSmile]);
  [v3 blurScore];
  [(MADProtoDetectedFace *)v4 setBlurScore:?];
  -[MADProtoDetectedFace setIsLeftEyeClosed:](v4, "setIsLeftEyeClosed:", [v3 isLeftEyeClosed]);
  -[MADProtoDetectedFace setIsRightEyeClosed:](v4, "setIsRightEyeClosed:", [v3 isRightEyeClosed]);
  v6 = [v3 adjustmentVersion];
  [v6 timeIntervalSinceReferenceDate];
  [(MADProtoDetectedFace *)v4 setAdjustmentVersion:?];

  [v3 poseYaw];
  [(MADProtoDetectedFace *)v4 setPoseYaw:?];
  -[MADProtoDetectedFace setFaceAlgorithmVersion:](v4, "setFaceAlgorithmVersion:", [v3 faceAlgorithmVersion]);
  -[MADProtoDetectedFace setAgeType:](v4, "setAgeType:", [v3 ageType]);
  -[MADProtoDetectedFace setSexType:](v4, "setSexType:", [v3 sexType]);
  -[MADProtoDetectedFace setEyesState:](v4, "setEyesState:", [v3 eyesState]);
  -[MADProtoDetectedFace setSmileType:](v4, "setSmileType:", [v3 smileType]);
  -[MADProtoDetectedFace setFacialHairType:](v4, "setFacialHairType:", [v3 facialHairType]);
  -[MADProtoDetectedFace setHairColorType:](v4, "setHairColorType:", [v3 hairColorType]);
  -[MADProtoDetectedFace setGlassesType:](v4, "setGlassesType:", [v3 glassesType]);
  -[MADProtoDetectedFace setFaceExpressionType:](v4, "setFaceExpressionType:", [v3 faceExpressionType]);
  -[MADProtoDetectedFace setHeadgearType:](v4, "setHeadgearType:", [v3 headgearType]);
  -[MADProtoDetectedFace setHairType:](v4, "setHairType:", [v3 hairType]);
  -[MADProtoDetectedFace setPoseType:](v4, "setPoseType:", [v3 poseType]);
  -[MADProtoDetectedFace setSkintoneType:](v4, "setSkintoneType:", [v3 skintoneType]);
  -[MADProtoDetectedFace setEthnicityType:](v4, "setEthnicityType:", [v3 ethnicityType]);
  -[MADProtoDetectedFace setHasFaceMask:](v4, "setHasFaceMask:", [v3 hasFaceMask]);
  -[MADProtoDetectedFace setGazeType:](v4, "setGazeType:", [v3 gazeType]);
  [v3 gazeCenterX];
  [(MADProtoDetectedFace *)v4 setGazeCenterX:?];
  [v3 gazeCenterY];
  [(MADProtoDetectedFace *)v4 setGazeCenterY:?];
  [v3 gazeRect];
  v7 = [VCPProtoBounds boundsWithCGRect:?];
  [(MADProtoDetectedFace *)v4 setGazeRect:v7];

  [v3 gazeAngle];
  [(MADProtoDetectedFace *)v4 setGazeAngle:?];
  [v3 gazeConfidence];
  [(MADProtoDetectedFace *)v4 setGazeConfidence:?];
  v8 = [v3 faceClusteringProperties];

  v9 = [v8 faceprint];
  v10 = [MADProtoFaceprint protoFromPhotosFaceprint:v9];
  [(MADProtoDetectedFace *)v4 setFaceprint:v10];

  v11 = [v8 groupingIdentifier];
  [(MADProtoDetectedFace *)v4 setGroupingIdentifier:v11];

  return v4;
}

- (id)vcpPhotosFace
{
  v3 = [(MADProtoDetectedFace *)self faceLocalIdentifier];
  v4 = [VCPPhotosFace faceWithLocalIdentifier:v3];

  [(MADProtoDetectedFace *)self size];
  [v4 setSize:?];
  [(MADProtoDetectedFace *)self centerX];
  [v4 setCenterX:?];
  [(MADProtoDetectedFace *)self centerY];
  [v4 setCenterY:?];
  [(MADProtoDetectedFace *)self bodyCenterX];
  [v4 setBodyCenterX:?];
  [(MADProtoDetectedFace *)self bodyCenterY];
  [v4 setBodyCenterY:?];
  [(MADProtoDetectedFace *)self bodyWidth];
  [v4 setBodyWidth:?];
  [(MADProtoDetectedFace *)self bodyHeight];
  [v4 setBodyHeight:?];
  [v4 setDetectionType:{-[MADProtoDetectedFace detectionType](self, "detectionType")}];
  [v4 setQualityMeasure:{-[MADProtoDetectedFace qualityMeasure](self, "qualityMeasure")}];
  [(MADProtoDetectedFace *)self quality];
  [v4 setQuality:?];
  [v4 setSourceWidth:{-[MADProtoDetectedFace sourceWidth](self, "sourceWidth")}];
  [v4 setSourceHeight:{-[MADProtoDetectedFace sourceHeight](self, "sourceHeight")}];
  [(MADProtoDetectedFace *)self roll];
  [v4 setRoll:?];
  [v4 setHidden:{-[MADProtoDetectedFace hidden](self, "hidden")}];
  [v4 setIsInTrash:{-[MADProtoDetectedFace isInTrash](self, "isInTrash")}];
  [v4 setManual:{-[MADProtoDetectedFace manual](self, "manual")}];
  [v4 setHasSmile:{-[MADProtoDetectedFace hasSmile](self, "hasSmile")}];
  [(MADProtoDetectedFace *)self blurScore];
  [v4 setBlurScore:?];
  [v4 setIsLeftEyeClosed:{-[MADProtoDetectedFace isLeftEyeClosed](self, "isLeftEyeClosed")}];
  [v4 setIsRightEyeClosed:{-[MADProtoDetectedFace isRightEyeClosed](self, "isRightEyeClosed")}];
  v5 = MEMORY[0x1E695DF00];
  [(MADProtoDetectedFace *)self adjustmentVersion];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  [v4 setAdjustmentVersion:v6];

  [(MADProtoDetectedFace *)self poseYaw];
  [v4 setPoseYaw:?];
  [v4 setAlgorithmVersion:{-[MADProtoDetectedFace faceAlgorithmVersion](self, "faceAlgorithmVersion")}];
  [v4 setAgeType:{-[MADProtoDetectedFace ageType](self, "ageType")}];
  [v4 setSexType:{-[MADProtoDetectedFace sexType](self, "sexType")}];
  [v4 setEyesState:{-[MADProtoDetectedFace eyesState](self, "eyesState")}];
  [v4 setSmileType:{-[MADProtoDetectedFace smileType](self, "smileType")}];
  [v4 setFacialHairType:{-[MADProtoDetectedFace facialHairType](self, "facialHairType")}];
  [v4 setHairColorType:{-[MADProtoDetectedFace hairColorType](self, "hairColorType")}];
  [v4 setGlassesType:{-[MADProtoDetectedFace glassesType](self, "glassesType")}];
  [v4 setExpressionType:{-[MADProtoDetectedFace faceExpressionType](self, "faceExpressionType")}];
  [v4 setHeadgearType:{-[MADProtoDetectedFace headgearType](self, "headgearType")}];
  [v4 setHairType:{-[MADProtoDetectedFace hairType](self, "hairType")}];
  [v4 setPoseType:{-[MADProtoDetectedFace poseType](self, "poseType")}];
  [v4 setSkintoneType:{-[MADProtoDetectedFace skintoneType](self, "skintoneType")}];
  [v4 setEthnicityType:{-[MADProtoDetectedFace ethnicityType](self, "ethnicityType")}];
  [v4 setHasFaceMask:{-[MADProtoDetectedFace hasFaceMask](self, "hasFaceMask")}];
  [v4 setGazeType:{-[MADProtoDetectedFace gazeType](self, "gazeType")}];
  [(MADProtoDetectedFace *)self gazeCenterX];
  [v4 setGazeCenterX:?];
  [(MADProtoDetectedFace *)self gazeCenterY];
  [v4 setGazeCenterY:?];
  v7 = [(MADProtoDetectedFace *)self gazeRect];
  [v7 rectValue];
  [v4 setGazeRect:?];

  [(MADProtoDetectedFace *)self gazeAngle];
  [v4 setGazeAngle:?];
  [(MADProtoDetectedFace *)self gazeConfidence];
  [v4 setGazeConfidence:?];
  v8 = [(MADProtoDetectedFace *)self faceprint];
  v9 = [v8 vcpFaceprintWithDetectionType:{-[MADProtoDetectedFace detectionType](self, "detectionType")}];
  [v4 setImageprintWrapper:v9];

  v10 = [(MADProtoDetectedFace *)self groupingIdentifier];
  [v4 setGroupingIdentifier:v10];

  return v4;
}

- (void)setHasSize:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasCenterX:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasCenterY:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasBodyCenterX:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasBodyCenterY:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasBodyWidth:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasBodyHeight:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasDetectionType:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasClusterSequenceNumber:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasQualityMeasure:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasQuality:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasSourceWidth:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasSourceHeight:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasRoll:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasHidden:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasIsInTrash:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasManual:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasHasSmile:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasBlurScore:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasIsLeftEyeClosed:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasIsRightEyeClosed:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasPoseYaw:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasFaceAlgorithmVersion:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasAgeType:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasSexType:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasEyesState:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasSmileType:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasFacialHairType:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasHairColorType:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasGlassesType:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasFaceExpressionType:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasHeadgearType:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasHairType:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasPoseType:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasSkintoneType:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasEthnicityType:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasHasFaceMask:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasGazeType:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasGazeCenterX:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasGazeCenterY:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasGazeAngle:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasGazeConfidence:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoDetectedFace;
  v4 = [(MADProtoDetectedFace *)&v8 description];
  v5 = [(MADProtoDetectedFace *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v5 = v3;
  faceLocalIdentifier = self->_faceLocalIdentifier;
  if (faceLocalIdentifier)
  {
    [v3 setObject:faceLocalIdentifier forKey:@"faceLocalIdentifier"];
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size];
    [v5 setObject:v19 forKey:@"size"];

    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_5:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_58;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithDouble:self->_centerX];
  [v5 setObject:v20 forKey:@"centerX"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_59;
  }

LABEL_58:
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:self->_centerY];
  [v5 setObject:v21 forKey:@"centerY"];

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_59:
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyCenterX];
  [v5 setObject:v22 forKey:@"bodyCenterX"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_61;
  }

LABEL_60:
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyCenterY];
  [v5 setObject:v23 forKey:@"bodyCenterY"];

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_61:
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyWidth];
  [v5 setObject:v24 forKey:@"bodyWidth"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_62:
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bodyHeight];
  [v5 setObject:v25 forKey:@"bodyHeight"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_63:
  v26 = [MEMORY[0x1E696AD98] numberWithInt:self->_detectionType];
  [v5 setObject:v26 forKey:@"detectionType"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_64:
  v27 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_clusterSequenceNumber];
  [v5 setObject:v27 forKey:@"clusterSequenceNumber"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_66;
  }

LABEL_65:
  v28 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_qualityMeasure];
  [v5 setObject:v28 forKey:@"qualityMeasure"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_67;
  }

LABEL_66:
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_quality];
  [v5 setObject:v29 forKey:@"quality"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_68;
  }

LABEL_67:
  v30 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sourceWidth];
  [v5 setObject:v30 forKey:@"sourceWidth"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_69;
  }

LABEL_68:
  v31 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sourceHeight];
  [v5 setObject:v31 forKey:@"sourceHeight"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_70;
  }

LABEL_69:
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_roll];
  [v5 setObject:v32 forKey:@"roll"];

  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_70:
  v33 = [MEMORY[0x1E696AD98] numberWithBool:self->_hidden];
  [v5 setObject:v33 forKey:@"hidden"];

  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

LABEL_71:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInTrash];
  [v5 setObject:v34 forKey:@"isInTrash"];

  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_73;
  }

LABEL_72:
  v35 = [MEMORY[0x1E696AD98] numberWithBool:self->_manual];
  [v5 setObject:v35 forKey:@"manual"];

  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_21:
    if ((*&has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_74;
  }

LABEL_73:
  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasSmile];
  [v5 setObject:v36 forKey:@"hasSmile"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_75;
  }

LABEL_74:
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_blurScore];
  [v5 setObject:v37 forKey:@"blurScore"];

  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_76;
  }

LABEL_75:
  v38 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLeftEyeClosed];
  [v5 setObject:v38 forKey:@"isLeftEyeClosed"];

  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_24:
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_77;
  }

LABEL_76:
  v39 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRightEyeClosed];
  [v5 setObject:v39 forKey:@"isRightEyeClosed"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

LABEL_77:
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:self->_adjustmentVersion];
  [v5 setObject:v40 forKey:@"adjustmentVersion"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_79;
  }

LABEL_78:
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:self->_poseYaw];
  [v5 setObject:v41 forKey:@"poseYaw"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_27:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_80;
  }

LABEL_79:
  v42 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_faceAlgorithmVersion];
  [v5 setObject:v42 forKey:@"faceAlgorithmVersion"];

  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_81;
  }

LABEL_80:
  v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ageType];
  [v5 setObject:v43 forKey:@"ageType"];

  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_82;
  }

LABEL_81:
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sexType];
  [v5 setObject:v44 forKey:@"sexType"];

  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_83;
  }

LABEL_82:
  v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_eyesState];
  [v5 setObject:v45 forKey:@"eyesState"];

  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_84;
  }

LABEL_83:
  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_smileType];
  [v5 setObject:v46 forKey:@"smileType"];

  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_85;
  }

LABEL_84:
  v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_facialHairType];
  [v5 setObject:v47 forKey:@"facialHairType"];

  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_86;
  }

LABEL_85:
  v48 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_hairColorType];
  [v5 setObject:v48 forKey:@"hairColorType"];

  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_87;
  }

LABEL_86:
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_glassesType];
  [v5 setObject:v49 forKey:@"glassesType"];

  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_35:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_88;
  }

LABEL_87:
  v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_faceExpressionType];
  [v5 setObject:v50 forKey:@"faceExpressionType"];

  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_89;
  }

LABEL_88:
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_headgearType];
  [v5 setObject:v51 forKey:@"headgearType"];

  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_90;
  }

LABEL_89:
  v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_hairType];
  [v5 setObject:v52 forKey:@"hairType"];

  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_91;
  }

LABEL_90:
  v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_poseType];
  [v5 setObject:v53 forKey:@"poseType"];

  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_92;
  }

LABEL_91:
  v54 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_skintoneType];
  [v5 setObject:v54 forKey:@"skintoneType"];

  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_40:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_93;
  }

LABEL_92:
  v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ethnicityType];
  [v5 setObject:v55 forKey:@"ethnicityType"];

  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_94;
  }

LABEL_93:
  v56 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasFaceMask];
  [v5 setObject:v56 forKey:@"hasFaceMask"];

  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_95;
  }

LABEL_94:
  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_gazeType];
  [v5 setObject:v57 forKey:@"gazeType"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_43:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_95:
  v58 = [MEMORY[0x1E696AD98] numberWithDouble:self->_gazeCenterX];
  [v5 setObject:v58 forKey:@"gazeCenterX"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_44:
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_gazeCenterY];
    [v5 setObject:v8 forKey:@"gazeCenterY"];
  }

LABEL_45:
  gazeRect = self->_gazeRect;
  if (gazeRect)
  {
    v10 = [(VCPProtoBounds *)gazeRect dictionaryRepresentation];
    [v5 setObject:v10 forKey:@"gazeRect"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x2000000) != 0)
  {
    *&v4 = self->_gazeAngle;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v12 forKey:@"gazeAngle"];

    v11 = self->_has;
  }

  if ((*&v11 & 0x4000000) != 0)
  {
    *&v4 = self->_gazeConfidence;
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v13 forKey:@"gazeConfidence"];
  }

  faceprint = self->_faceprint;
  if (faceprint)
  {
    v15 = [(MADProtoFaceprint *)faceprint dictionaryRepresentation];
    [v5 setObject:v15 forKey:@"faceprint"];
  }

  groupingIdentifier = self->_groupingIdentifier;
  if (groupingIdentifier)
  {
    [v5 setObject:groupingIdentifier forKey:@"groupingIdentifier"];
  }

  v17 = v5;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_faceLocalIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    PBDataWriterWriteDoubleField();
    v4 = v7;
    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_5:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_60:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  PBDataWriterWriteInt32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

LABEL_70:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_74:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_21:
    if ((*&has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_24:
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_27:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  PBDataWriterWriteInt64Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_35:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_40:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  PBDataWriterWriteBOOLField();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  PBDataWriterWriteUint32Field();
  v4 = v7;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_43:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_97:
  PBDataWriterWriteDoubleField();
  v4 = v7;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_44:
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

LABEL_45:
  if (self->_gazeRect)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x2000000) != 0)
  {
    PBDataWriterWriteFloatField();
    v4 = v7;
    v6 = self->_has;
  }

  if ((*&v6 & 0x4000000) != 0)
  {
    PBDataWriterWriteFloatField();
    v4 = v7;
  }

  if (self->_faceprint)
  {
    PBDataWriterWriteSubmessage();
    v4 = v7;
  }

  if (self->_groupingIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_faceLocalIdentifier)
  {
    [v4 setFaceLocalIdentifier:?];
    v4 = v7;
  }

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(v4 + 17) = *&self->_size;
    *(v4 + 276) |= 0x10000uLL;
    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_5:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_60;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 7) = *&self->_centerX;
  *(v4 + 276) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v4 + 8) = *&self->_centerY;
  *(v4 + 276) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_7:
    if ((*&has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v4 + 3) = *&self->_bodyCenterX;
  *(v4 + 276) |= 4uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_8:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v4 + 4) = *&self->_bodyCenterY;
  *(v4 + 276) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_9:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v4 + 6) = *&self->_bodyWidth;
  *(v4 + 276) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_10:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v4 + 5) = *&self->_bodyHeight;
  *(v4 + 276) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v4 + 41) = self->_detectionType;
  *(v4 + 276) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v4 + 9) = self->_clusterSequenceNumber;
  *(v4 + 276) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_13:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 15) = self->_qualityMeasure;
  *(v4 + 276) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_14:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 14) = *&self->_quality;
  *(v4 + 276) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_15:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 19) = self->_sourceWidth;
  *(v4 + 276) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v4 + 18) = self->_sourceHeight;
  *(v4 + 276) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 16) = *&self->_roll;
  *(v4 + 276) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_73;
  }

LABEL_72:
  v4[270] = self->_hidden;
  *(v4 + 276) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_74;
  }

LABEL_73:
  v4[271] = self->_isInTrash;
  *(v4 + 276) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4[274] = self->_manual;
  *(v4 + 276) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_21:
    if ((*&has & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_76;
  }

LABEL_75:
  v4[269] = self->_hasSmile;
  *(v4 + 276) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v4 + 2) = *&self->_blurScore;
  *(v4 + 276) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_78;
  }

LABEL_77:
  v4[272] = self->_isLeftEyeClosed;
  *(v4 + 276) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_24:
    if ((*&has & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_79;
  }

LABEL_78:
  v4[273] = self->_isRightEyeClosed;
  *(v4 + 276) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_25:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v4 + 1) = *&self->_adjustmentVersion;
  *(v4 + 276) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v4 + 13) = *&self->_poseYaw;
  *(v4 + 276) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_27:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v4 + 10) = self->_faceAlgorithmVersion;
  *(v4 + 276) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v4 + 40) = self->_ageType;
  *(v4 + 276) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v4 + 64) = self->_sexType;
  *(v4 + 276) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v4 + 43) = self->_eyesState;
  *(v4 + 276) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v4 + 66) = self->_smileType;
  *(v4 + 276) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v4 + 50) = self->_facialHairType;
  *(v4 + 276) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v4 + 60) = self->_hairColorType;
  *(v4 + 276) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v4 + 57) = self->_glassesType;
  *(v4 + 276) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_35:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v4 + 44) = self->_faceExpressionType;
  *(v4 + 276) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v4 + 62) = self->_headgearType;
  *(v4 + 276) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v4 + 61) = self->_hairType;
  *(v4 + 276) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v4 + 63) = self->_poseType;
  *(v4 + 276) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v4 + 65) = self->_skintoneType;
  *(v4 + 276) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_40:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v4 + 42) = self->_ethnicityType;
  *(v4 + 276) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  v4[268] = self->_hasFaceMask;
  *(v4 + 276) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(v4 + 56) = self->_gazeType;
  *(v4 + 276) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_43:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_97:
  *(v4 + 11) = *&self->_gazeCenterX;
  *(v4 + 276) |= 0x400uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_44:
    *(v4 + 12) = *&self->_gazeCenterY;
    *(v4 + 276) |= 0x800uLL;
  }

LABEL_45:
  if (self->_gazeRect)
  {
    [v7 setGazeRect:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((*&v6 & 0x2000000) != 0)
  {
    *(v4 + 51) = LODWORD(self->_gazeAngle);
    *(v4 + 276) |= 0x2000000uLL;
    v6 = self->_has;
  }

  if ((*&v6 & 0x4000000) != 0)
  {
    *(v4 + 52) = LODWORD(self->_gazeConfidence);
    *(v4 + 276) |= 0x4000000uLL;
  }

  if (self->_faceprint)
  {
    [v7 setFaceprint:?];
    v4 = v7;
  }

  if (self->_groupingIdentifier)
  {
    [v7 setGroupingIdentifier:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_faceLocalIdentifier copyWithZone:a3];
  v7 = *(v5 + 184);
  *(v5 + 184) = v6;

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(v5 + 136) = self->_size;
    *(v5 + 276) |= 0x10000uLL;
    has = self->_has;
    if ((*&has & 0x40) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_50;
    }
  }

  else if ((*&has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 56) = self->_centerX;
  *(v5 + 276) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 64) = self->_centerY;
  *(v5 + 276) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 24) = self->_bodyCenterX;
  *(v5 + 276) |= 4uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 32) = self->_bodyCenterY;
  *(v5 + 276) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_7:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 48) = self->_bodyWidth;
  *(v5 + 276) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 40) = self->_bodyHeight;
  *(v5 + 276) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 164) = self->_detectionType;
  *(v5 + 276) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 72) = self->_clusterSequenceNumber;
  *(v5 + 276) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 120) = self->_qualityMeasure;
  *(v5 + 276) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 112) = self->_quality;
  *(v5 + 276) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 152) = self->_sourceWidth;
  *(v5 + 276) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_14:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 144) = self->_sourceHeight;
  *(v5 + 276) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_15:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 128) = self->_roll;
  *(v5 + 276) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 270) = self->_hidden;
  *(v5 + 276) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 271) = self->_isInTrash;
  *(v5 + 276) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 274) = self->_manual;
  *(v5 + 276) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_19:
    if ((*&has & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v5 + 269) = self->_hasSmile;
  *(v5 + 276) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_20:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v5 + 16) = self->_blurScore;
  *(v5 + 276) |= 2uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 272) = self->_isLeftEyeClosed;
  *(v5 + 276) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_22:
    if ((*&has & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 273) = self->_isRightEyeClosed;
  *(v5 + 276) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_23:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 8) = self->_adjustmentVersion;
  *(v5 + 276) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_24:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 104) = self->_poseYaw;
  *(v5 + 276) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_25:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v5 + 80) = self->_faceAlgorithmVersion;
  *(v5 + 276) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_26:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v5 + 160) = self->_ageType;
  *(v5 + 276) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v5 + 256) = self->_sexType;
  *(v5 + 276) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_28:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v5 + 172) = self->_eyesState;
  *(v5 + 276) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v5 + 264) = self->_smileType;
  *(v5 + 276) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v5 + 200) = self->_facialHairType;
  *(v5 + 276) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v5 + 240) = self->_hairColorType;
  *(v5 + 276) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v5 + 228) = self->_glassesType;
  *(v5 + 276) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_33:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v5 + 176) = self->_faceExpressionType;
  *(v5 + 276) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v5 + 248) = self->_headgearType;
  *(v5 + 276) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v5 + 244) = self->_hairType;
  *(v5 + 276) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v5 + 252) = self->_poseType;
  *(v5 + 276) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v5 + 260) = self->_skintoneType;
  *(v5 + 276) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_38:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v5 + 168) = self->_ethnicityType;
  *(v5 + 276) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v5 + 268) = self->_hasFaceMask;
  *(v5 + 276) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v5 + 224) = self->_gazeType;
  *(v5 + 276) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_41:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_87:
  *(v5 + 88) = self->_gazeCenterX;
  *(v5 + 276) |= 0x400uLL;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_42:
    *(v5 + 96) = self->_gazeCenterY;
    *(v5 + 276) |= 0x800uLL;
  }

LABEL_43:
  v9 = [(VCPProtoBounds *)self->_gazeRect copyWithZone:a3];
  v10 = *(v5 + 216);
  *(v5 + 216) = v9;

  v11 = self->_has;
  if ((*&v11 & 0x2000000) != 0)
  {
    *(v5 + 204) = self->_gazeAngle;
    *(v5 + 276) |= 0x2000000uLL;
    v11 = self->_has;
  }

  if ((*&v11 & 0x4000000) != 0)
  {
    *(v5 + 208) = self->_gazeConfidence;
    *(v5 + 276) |= 0x4000000uLL;
  }

  v12 = [(MADProtoFaceprint *)self->_faceprint copyWithZone:a3];
  v13 = *(v5 + 192);
  *(v5 + 192) = v12;

  v14 = [(NSString *)self->_groupingIdentifier copyWithZone:a3];
  v15 = *(v5 + 232);
  *(v5 + 232) = v14;

  v16 = v5;
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_247;
  }

  faceLocalIdentifier = self->_faceLocalIdentifier;
  if (faceLocalIdentifier | *(v4 + 23))
  {
    if (![(NSString *)faceLocalIdentifier isEqual:?])
    {
      goto LABEL_247;
    }
  }

  has = self->_has;
  v7 = *(v4 + 276);
  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_size != *(v4 + 17))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_centerX != *(v4 + 7))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_centerY != *(v4 + 8))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_bodyCenterX != *(v4 + 3))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_bodyCenterY != *(v4 + 4))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_bodyWidth != *(v4 + 6))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_bodyHeight != *(v4 + 5))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_detectionType != *(v4 + 41))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_clusterSequenceNumber != *(v4 + 9))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_qualityMeasure != *(v4 + 15))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_quality != *(v4 + 14))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_sourceWidth != *(v4 + 19))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_sourceHeight != *(v4 + 18))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_roll != *(v4 + 16))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0)
    {
      goto LABEL_247;
    }

    if (self->_hidden)
    {
      if ((v4[270] & 1) == 0)
      {
        goto LABEL_247;
      }
    }

    else if (v4[270])
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0)
    {
      goto LABEL_247;
    }

    if (self->_isInTrash)
    {
      if ((v4[271] & 1) == 0)
      {
        goto LABEL_247;
      }
    }

    else if (v4[271])
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_247;
    }

    if (self->_manual)
    {
      if ((v4[274] & 1) == 0)
      {
        goto LABEL_247;
      }
    }

    else if (v4[274])
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x40000000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_247;
    }

    if (self->_hasSmile)
    {
      if ((v4[269] & 1) == 0)
      {
        goto LABEL_247;
      }
    }

    else if (v4[269])
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_blurScore != *(v4 + 2))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v7 & 0x10000000000) == 0)
    {
      goto LABEL_247;
    }

    if (self->_isLeftEyeClosed)
    {
      if ((v4[272] & 1) == 0)
      {
        goto LABEL_247;
      }
    }

    else if (v4[272])
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x10000000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x20000000000) != 0)
  {
    if ((v7 & 0x20000000000) == 0)
    {
      goto LABEL_247;
    }

    if (self->_isRightEyeClosed)
    {
      if ((v4[273] & 1) == 0)
      {
        goto LABEL_247;
      }
    }

    else if (v4[273])
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x20000000000) != 0)
  {
    goto LABEL_247;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_adjustmentVersion != *(v4 + 1))
    {
      goto LABEL_247;
    }
  }

  else if (v7)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_poseYaw != *(v4 + 13))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_faceAlgorithmVersion != *(v4 + 10))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) == 0 || self->_ageType != *(v4 + 40))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x80000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_sexType != *(v4 + 64))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_eyesState != *(v4 + 43))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0 || self->_smileType != *(v4 + 66))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_facialHairType != *(v4 + 50))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0 || self->_hairColorType != *(v4 + 60))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0 || self->_glassesType != *(v4 + 57))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_faceExpressionType != *(v4 + 44))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0 || self->_headgearType != *(v4 + 62))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0 || self->_hairType != *(v4 + 61))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0 || self->_poseType != *(v4 + 63))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_skintoneType != *(v4 + 65))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_ethnicityType != *(v4 + 42))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0)
    {
      goto LABEL_247;
    }

    if (self->_hasFaceMask)
    {
      if ((v4[268] & 1) == 0)
      {
        goto LABEL_247;
      }
    }

    else if (v4[268])
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_gazeType != *(v4 + 56))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_gazeCenterX != *(v4 + 11))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_gazeCenterY != *(v4 + 12))
    {
      goto LABEL_247;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_247;
  }

  gazeRect = self->_gazeRect;
  if (gazeRect | *(v4 + 27))
  {
    if ([(VCPProtoBounds *)gazeRect isEqual:?])
    {
      has = self->_has;
      goto LABEL_233;
    }

LABEL_247:
    v12 = 0;
    goto LABEL_248;
  }

LABEL_233:
  v9 = *(v4 + 276);
  if ((*&has & 0x2000000) != 0)
  {
    if ((v9 & 0x2000000) == 0 || self->_gazeAngle != *(v4 + 51))
    {
      goto LABEL_247;
    }
  }

  else if ((v9 & 0x2000000) != 0)
  {
    goto LABEL_247;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v9 & 0x4000000) == 0 || self->_gazeConfidence != *(v4 + 52))
    {
      goto LABEL_247;
    }
  }

  else if ((v9 & 0x4000000) != 0)
  {
    goto LABEL_247;
  }

  faceprint = self->_faceprint;
  if (faceprint | *(v4 + 24) && ![(MADProtoFaceprint *)faceprint isEqual:?])
  {
    goto LABEL_247;
  }

  groupingIdentifier = self->_groupingIdentifier;
  if (groupingIdentifier | *(v4 + 29))
  {
    v12 = [(NSString *)groupingIdentifier isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_248:

  return v12;
}

- (unint64_t)hash
{
  v113 = [(NSString *)self->_faceLocalIdentifier hash];
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    size = self->_size;
    if (size < 0.0)
    {
      size = -size;
    }

    *v3.i64 = floor(size + 0.5);
    v8 = (size - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    centerX = self->_centerX;
    if (centerX < 0.0)
    {
      centerX = -centerX;
    }

    *v3.i64 = floor(centerX + 0.5);
    v12 = (centerX - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&has & 0x80) != 0)
  {
    centerY = self->_centerY;
    if (centerY < 0.0)
    {
      centerY = -centerY;
    }

    *v3.i64 = floor(centerY + 0.5);
    v16 = (centerY - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v17), v4, v3);
    v14 = 2654435761u * *v3.i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&has & 4) != 0)
  {
    bodyCenterX = self->_bodyCenterX;
    if (bodyCenterX < 0.0)
    {
      bodyCenterX = -bodyCenterX;
    }

    *v3.i64 = floor(bodyCenterX + 0.5);
    v20 = (bodyCenterX - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v21), v4, v3);
    v18 = 2654435761u * *v3.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&has & 8) != 0)
  {
    bodyCenterY = self->_bodyCenterY;
    if (bodyCenterY < 0.0)
    {
      bodyCenterY = -bodyCenterY;
    }

    *v3.i64 = floor(bodyCenterY + 0.5);
    v24 = (bodyCenterY - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v25), v4, v3);
    v22 = 2654435761u * *v3.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&has & 0x20) != 0)
  {
    bodyWidth = self->_bodyWidth;
    if (bodyWidth < 0.0)
    {
      bodyWidth = -bodyWidth;
    }

    *v3.i64 = floor(bodyWidth + 0.5);
    v28 = (bodyWidth - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v29), v4, v3);
    v26 = 2654435761u * *v3.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((*&has & 0x10) != 0)
  {
    bodyHeight = self->_bodyHeight;
    if (bodyHeight < 0.0)
    {
      bodyHeight = -bodyHeight;
    }

    *v3.i64 = floor(bodyHeight + 0.5);
    v32 = (bodyHeight - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v33), v4, v3);
    v30 = 2654435761u * *v3.i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&has & 0x100000) != 0)
  {
    v112 = 2654435761 * self->_detectionType;
    if ((*&has & 0x100) != 0)
    {
LABEL_59:
      v111 = 2654435761 * self->_clusterSequenceNumber;
      if ((*&has & 0x4000) != 0)
      {
        goto LABEL_60;
      }

LABEL_67:
      v110 = 0;
      if ((*&has & 0x2000) != 0)
      {
        goto LABEL_61;
      }

LABEL_68:
      v37 = 0;
      goto LABEL_69;
    }
  }

  else
  {
    v112 = 0;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_59;
    }
  }

  v111 = 0;
  if ((*&has & 0x4000) == 0)
  {
    goto LABEL_67;
  }

LABEL_60:
  v110 = 2654435761 * self->_qualityMeasure;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_68;
  }

LABEL_61:
  quality = self->_quality;
  if (quality < 0.0)
  {
    quality = -quality;
  }

  *v3.i64 = floor(quality + 0.5);
  v35 = (quality - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v36), v4, v3);
  v37 = 2654435761u * *v3.i64;
  if (v35 >= 0.0)
  {
    if (v35 > 0.0)
    {
      v37 += v35;
    }
  }

  else
  {
    v37 -= fabs(v35);
  }

LABEL_69:
  if ((*&has & 0x40000) == 0)
  {
    v108 = 0;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_71;
    }

LABEL_77:
    v107 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_72;
    }

LABEL_78:
    v41 = 0;
    goto LABEL_79;
  }

  v108 = 2654435761 * self->_sourceWidth;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_77;
  }

LABEL_71:
  v107 = 2654435761 * self->_sourceHeight;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_78;
  }

LABEL_72:
  roll = self->_roll;
  if (roll < 0.0)
  {
    roll = -roll;
  }

  *v3.i64 = floor(roll + 0.5);
  v39 = (roll - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v40.f64[0] = NAN;
  v40.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v40), v4, v3);
  v41 = 2654435761u * *v3.i64;
  if (v39 >= 0.0)
  {
    if (v39 > 0.0)
    {
      v41 += v39;
    }
  }

  else
  {
    v41 -= fabs(v39);
  }

LABEL_79:
  if ((*&has & 0x4000000000) != 0)
  {
    v105 = 2654435761 * self->_hidden;
    if ((*&has & 0x8000000000) != 0)
    {
LABEL_81:
      v104 = 2654435761 * self->_isInTrash;
      if ((*&has & 0x40000000000) != 0)
      {
        goto LABEL_82;
      }

      goto LABEL_90;
    }
  }

  else
  {
    v105 = 0;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  v104 = 0;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_82:
    v103 = 2654435761 * self->_manual;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_83;
    }

LABEL_91:
    v102 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_84;
    }

LABEL_92:
    v45 = 0;
    goto LABEL_93;
  }

LABEL_90:
  v103 = 0;
  if ((*&has & 0x2000000000) == 0)
  {
    goto LABEL_91;
  }

LABEL_83:
  v102 = 2654435761 * self->_hasSmile;
  if ((*&has & 2) == 0)
  {
    goto LABEL_92;
  }

LABEL_84:
  blurScore = self->_blurScore;
  if (blurScore < 0.0)
  {
    blurScore = -blurScore;
  }

  *v3.i64 = floor(blurScore + 0.5);
  v43 = (blurScore - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v44.f64[0] = NAN;
  v44.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v44), v4, v3);
  v45 = 2654435761u * *v3.i64;
  if (v43 >= 0.0)
  {
    if (v43 > 0.0)
    {
      v45 += v43;
    }
  }

  else
  {
    v45 -= fabs(v43);
  }

LABEL_93:
  if ((*&has & 0x10000000000) == 0)
  {
    v101 = 0;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_95;
    }

LABEL_101:
    v100 = 0;
    if (*&has)
    {
      goto LABEL_96;
    }

LABEL_102:
    v49 = 0;
    goto LABEL_103;
  }

  v101 = 2654435761 * self->_isLeftEyeClosed;
  if ((*&has & 0x20000000000) == 0)
  {
    goto LABEL_101;
  }

LABEL_95:
  v100 = 2654435761 * self->_isRightEyeClosed;
  if ((*&has & 1) == 0)
  {
    goto LABEL_102;
  }

LABEL_96:
  adjustmentVersion = self->_adjustmentVersion;
  if (adjustmentVersion < 0.0)
  {
    adjustmentVersion = -adjustmentVersion;
  }

  *v3.i64 = floor(adjustmentVersion + 0.5);
  v47 = (adjustmentVersion - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v48.f64[0] = NAN;
  v48.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v48), v4, v3);
  v49 = 2654435761u * *v3.i64;
  if (v47 >= 0.0)
  {
    if (v47 > 0.0)
    {
      v49 += v47;
    }
  }

  else
  {
    v49 -= fabs(v47);
  }

LABEL_103:
  if ((*&has & 0x1000) != 0)
  {
    poseYaw = self->_poseYaw;
    if (poseYaw < 0.0)
    {
      poseYaw = -poseYaw;
    }

    *v3.i64 = floor(poseYaw + 0.5);
    v52 = (poseYaw - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v53.f64[0] = NAN;
    v53.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v53), v4, v3);
    v50 = 2654435761u * *v3.i64;
    if (v52 >= 0.0)
    {
      if (v52 > 0.0)
      {
        v50 += v52;
      }
    }

    else
    {
      v50 -= fabs(v52);
    }
  }

  else
  {
    v50 = 0;
  }

  if ((*&has & 0x200) != 0)
  {
    v98 = 2654435761 * self->_faceAlgorithmVersion;
    if ((*&has & 0x80000) != 0)
    {
LABEL_121:
      v97 = 2654435761 * self->_ageType;
      if ((*&has & 0x200000000) != 0)
      {
        goto LABEL_122;
      }

      goto LABEL_142;
    }
  }

  else
  {
    v98 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_121;
    }
  }

  v97 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_122:
    v96 = 2654435761 * self->_sexType;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_123;
    }

    goto LABEL_143;
  }

LABEL_142:
  v96 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_123:
    v95 = 2654435761 * self->_eyesState;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_124;
    }

    goto LABEL_144;
  }

LABEL_143:
  v95 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_124:
    v94 = 2654435761 * self->_smileType;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_125;
    }

    goto LABEL_145;
  }

LABEL_144:
  v94 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_125:
    v93 = 2654435761 * self->_facialHairType;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_126;
    }

    goto LABEL_146;
  }

LABEL_145:
  v93 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_126:
    v92 = 2654435761 * self->_hairColorType;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_127;
    }

    goto LABEL_147;
  }

LABEL_146:
  v92 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_127:
    v91 = 2654435761 * self->_glassesType;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_128;
    }

    goto LABEL_148;
  }

LABEL_147:
  v91 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_128:
    v90 = 2654435761 * self->_faceExpressionType;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_129;
    }

    goto LABEL_149;
  }

LABEL_148:
  v90 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_129:
    v89 = 2654435761 * self->_headgearType;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_130;
    }

    goto LABEL_150;
  }

LABEL_149:
  v89 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_130:
    v88 = 2654435761 * self->_hairType;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_131;
    }

    goto LABEL_151;
  }

LABEL_150:
  v88 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_131:
    v87 = 2654435761 * self->_poseType;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_132;
    }

    goto LABEL_152;
  }

LABEL_151:
  v87 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_132:
    v86 = 2654435761 * self->_skintoneType;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_133;
    }

    goto LABEL_153;
  }

LABEL_152:
  v86 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_133:
    v85 = 2654435761 * self->_ethnicityType;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_134;
    }

    goto LABEL_154;
  }

LABEL_153:
  v85 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_134:
    v84 = 2654435761 * self->_hasFaceMask;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_135;
    }

LABEL_155:
    v83 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_136;
    }

LABEL_156:
    v57 = 0;
    goto LABEL_157;
  }

LABEL_154:
  v84 = 0;
  if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_155;
  }

LABEL_135:
  v83 = 2654435761 * self->_gazeType;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_156;
  }

LABEL_136:
  gazeCenterX = self->_gazeCenterX;
  if (gazeCenterX < 0.0)
  {
    gazeCenterX = -gazeCenterX;
  }

  *v3.i64 = floor(gazeCenterX + 0.5);
  v55 = (gazeCenterX - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v56.f64[0] = NAN;
  v56.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v56), v4, v3);
  v57 = 2654435761u * *v3.i64;
  if (v55 >= 0.0)
  {
    if (v55 > 0.0)
    {
      v57 += v55;
    }
  }

  else
  {
    v57 -= fabs(v55);
  }

LABEL_157:
  v109 = v10;
  v106 = v41;
  v99 = v50;
  v82 = v57;
  if ((*&has & 0x800) != 0)
  {
    gazeCenterY = self->_gazeCenterY;
    if (gazeCenterY < 0.0)
    {
      gazeCenterY = -gazeCenterY;
    }

    *v3.i64 = floor(gazeCenterY + 0.5);
    v61 = (gazeCenterY - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v62.f64[0] = NAN;
    v62.f64[1] = NAN;
    v59 = 2654435761u * *vbslq_s8(vnegq_f64(v62), v4, v3).i64;
    v58 = v37;
    if (v61 >= 0.0)
    {
      if (v61 > 0.0)
      {
        v59 += v61;
      }
    }

    else
    {
      v59 -= fabs(v61);
    }
  }

  else
  {
    v58 = v37;
    v59 = 0;
  }

  v81 = v59;
  v63 = [(VCPProtoBounds *)self->_gazeRect hash];
  v66 = self->_has;
  if ((*&v66 & 0x2000000) == 0)
  {
    v67 = 0;
    v68 = v30;
    v69 = v99;
LABEL_173:
    v73 = v82;
    goto LABEL_174;
  }

  gazeAngle = self->_gazeAngle;
  if (gazeAngle < 0.0)
  {
    gazeAngle = -gazeAngle;
  }

  *v64.i32 = floorf(gazeAngle + 0.5);
  v71 = (gazeAngle - *v64.i32) * 1.8447e19;
  *v65.i32 = *v64.i32 - (truncf(*v64.i32 * 5.421e-20) * 1.8447e19);
  v72.i64[0] = 0x8000000080000000;
  v72.i64[1] = 0x8000000080000000;
  v64 = vbslq_s8(v72, v65, v64);
  v67 = 2654435761u * *v64.i32;
  v68 = v30;
  v69 = v99;
  if (v71 < 0.0)
  {
    v67 -= fabsf(v71);
    goto LABEL_173;
  }

  v73 = v82;
  if (v71 > 0.0)
  {
    v67 += v71;
  }

LABEL_174:
  if ((*&v66 & 0x4000000) != 0)
  {
    gazeConfidence = self->_gazeConfidence;
    if (gazeConfidence < 0.0)
    {
      gazeConfidence = -gazeConfidence;
    }

    *v64.i32 = floorf(gazeConfidence + 0.5);
    v76 = (gazeConfidence - *v64.i32) * 1.8447e19;
    *v65.i32 = *v64.i32 - (truncf(*v64.i32 * 5.421e-20) * 1.8447e19);
    v77.i64[0] = 0x8000000080000000;
    v77.i64[1] = 0x8000000080000000;
    v74 = 2654435761u * *vbslq_s8(v77, v65, v64).i32;
    if (v76 >= 0.0)
    {
      if (v76 > 0.0)
      {
        v74 += v76;
      }
    }

    else
    {
      v74 -= fabsf(v76);
    }
  }

  else
  {
    v74 = 0;
  }

  v78 = v6 ^ v113 ^ v109 ^ v14 ^ v18 ^ v22 ^ v26 ^ v68 ^ v112 ^ v111 ^ v110 ^ v58 ^ v108 ^ v107 ^ v106 ^ v105 ^ v104 ^ v103 ^ v102 ^ v45 ^ v101 ^ v100 ^ v49 ^ v69 ^ v98 ^ v97 ^ v96 ^ v95 ^ v94 ^ v93 ^ v92 ^ v91 ^ v90 ^ v89 ^ v88 ^ v87 ^ v86 ^ v85 ^ v84 ^ v83 ^ v73 ^ v81 ^ v63 ^ v67;
  v79 = v74 ^ [(MADProtoFaceprint *)self->_faceprint hash];
  return v78 ^ v79 ^ [(NSString *)self->_groupingIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (*(v4 + 23))
  {
    [(MADProtoDetectedFace *)self setFaceLocalIdentifier:?];
    v4 = v11;
  }

  v5 = *(v4 + 276);
  if ((v5 & 0x10000) != 0)
  {
    self->_size = *(v4 + 17);
    *&self->_has |= 0x10000uLL;
    v5 = *(v4 + 276);
    if ((v5 & 0x40) == 0)
    {
LABEL_5:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_5;
  }

  self->_centerX = *(v4 + 7);
  *&self->_has |= 0x40uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_centerY = *(v4 + 8);
  *&self->_has |= 0x80uLL;
  v5 = *(v4 + 276);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_bodyCenterX = *(v4 + 3);
  *&self->_has |= 4uLL;
  v5 = *(v4 + 276);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_bodyCenterY = *(v4 + 4);
  *&self->_has |= 8uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_bodyWidth = *(v4 + 6);
  *&self->_has |= 0x20uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_bodyHeight = *(v4 + 5);
  *&self->_has |= 0x10uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x100000) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_detectionType = *(v4 + 41);
  *&self->_has |= 0x100000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_clusterSequenceNumber = *(v4 + 9);
  *&self->_has |= 0x100uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x4000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_qualityMeasure = *(v4 + 15);
  *&self->_has |= 0x4000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_quality = *(v4 + 14);
  *&self->_has |= 0x2000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x40000) == 0)
  {
LABEL_15:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_sourceWidth = *(v4 + 19);
  *&self->_has |= 0x40000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x20000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_sourceHeight = *(v4 + 18);
  *&self->_has |= 0x20000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_roll = *(v4 + 16);
  *&self->_has |= 0x8000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x4000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x8000000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_hidden = v4[270];
  *&self->_has |= 0x4000000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x8000000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_isInTrash = v4[271];
  *&self->_has |= 0x8000000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_manual = v4[274];
  *&self->_has |= 0x40000000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_21:
    if ((v5 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_hasSmile = v4[269];
  *&self->_has |= 0x2000000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 2) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_blurScore = *(v4 + 2);
  *&self->_has |= 2uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_isLeftEyeClosed = v4[272];
  *&self->_has |= 0x10000000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_24:
    if ((v5 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_isRightEyeClosed = v4[273];
  *&self->_has |= 0x20000000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 1) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_adjustmentVersion = *(v4 + 1);
  *&self->_has |= 1uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x1000) == 0)
  {
LABEL_26:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_poseYaw = *(v4 + 13);
  *&self->_has |= 0x1000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x200) == 0)
  {
LABEL_27:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_faceAlgorithmVersion = *(v4 + 10);
  *&self->_has |= 0x200uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x80000) == 0)
  {
LABEL_28:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_ageType = *(v4 + 40);
  *&self->_has |= 0x80000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_sexType = *(v4 + 64);
  *&self->_has |= 0x200000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x400000) == 0)
  {
LABEL_30:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_eyesState = *(v4 + 43);
  *&self->_has |= 0x400000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_smileType = *(v4 + 66);
  *&self->_has |= 0x800000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_facialHairType = *(v4 + 50);
  *&self->_has |= 0x1000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_hairColorType = *(v4 + 60);
  *&self->_has |= 0x20000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_glassesType = *(v4 + 57);
  *&self->_has |= 0x10000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x800000) == 0)
  {
LABEL_35:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_faceExpressionType = *(v4 + 44);
  *&self->_has |= 0x800000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_headgearType = *(v4 + 62);
  *&self->_has |= 0x80000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_hairType = *(v4 + 61);
  *&self->_has |= 0x40000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_poseType = *(v4 + 63);
  *&self->_has |= 0x100000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_skintoneType = *(v4 + 65);
  *&self->_has |= 0x400000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x200000) == 0)
  {
LABEL_40:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_ethnicityType = *(v4 + 42);
  *&self->_has |= 0x200000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_hasFaceMask = v4[268];
  *&self->_has |= 0x1000000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_gazeType = *(v4 + 56);
  *&self->_has |= 0x8000000uLL;
  v5 = *(v4 + 276);
  if ((v5 & 0x400) == 0)
  {
LABEL_43:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_87:
  self->_gazeCenterX = *(v4 + 11);
  *&self->_has |= 0x400uLL;
  if ((*(v4 + 276) & 0x800) != 0)
  {
LABEL_44:
    self->_gazeCenterY = *(v4 + 12);
    *&self->_has |= 0x800uLL;
  }

LABEL_45:
  gazeRect = self->_gazeRect;
  v7 = *(v4 + 27);
  if (gazeRect)
  {
    if (!v7)
    {
      goto LABEL_92;
    }

    [(VCPProtoBounds *)gazeRect mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_92;
    }

    [(MADProtoDetectedFace *)self setGazeRect:?];
  }

  v4 = v11;
LABEL_92:
  v8 = *(v4 + 276);
  if ((v8 & 0x2000000) != 0)
  {
    self->_gazeAngle = *(v4 + 51);
    *&self->_has |= 0x2000000uLL;
    v8 = *(v4 + 276);
  }

  if ((v8 & 0x4000000) != 0)
  {
    self->_gazeConfidence = *(v4 + 52);
    *&self->_has |= 0x4000000uLL;
  }

  faceprint = self->_faceprint;
  v10 = *(v4 + 24);
  if (faceprint)
  {
    if (!v10)
    {
      goto LABEL_102;
    }

    [(MADProtoFaceprint *)faceprint mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_102;
    }

    [(MADProtoDetectedFace *)self setFaceprint:?];
  }

  v4 = v11;
LABEL_102:
  if (*(v4 + 29))
  {
    [(MADProtoDetectedFace *)self setGroupingIdentifier:?];
    v4 = v11;
  }
}

@end