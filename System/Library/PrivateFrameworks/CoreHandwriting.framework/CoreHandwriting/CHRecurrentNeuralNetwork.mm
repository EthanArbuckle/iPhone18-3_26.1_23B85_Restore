@interface CHRecurrentNeuralNetwork
+ (id)normalizedDrawing:(id)drawing scaleFactor:(double)factor interpolationDistance:(double)distance outputPointMap:(void *)map;
- (CHRecurrentNeuralNetwork)initWithModelName:(id)name;
- (id)normalizedDrawing:(id)drawing targetHeight:(double)height minimumDrawingSize:(CGSize)size interpolationDistance:(double)distance outScaleFactor:(double *)factor outputPointMap:(void *)map;
@end

@implementation CHRecurrentNeuralNetwork

- (CHRecurrentNeuralNetwork)initWithModelName:(id)name
{
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = CHRecurrentNeuralNetwork;
  v10 = [(CHRecurrentNeuralNetwork *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_stringByDeletingPathExtension(nameCopy, v5, v6, v7, v8, v9);
    modelName = v10->_modelName;
    v10->_modelName = v11;
  }

  return v10;
}

- (id)normalizedDrawing:(id)drawing targetHeight:(double)height minimumDrawingSize:(CGSize)size interpolationDistance:(double)distance outScaleFactor:(double *)factor outputPointMap:(void *)map
{
  height = size.height;
  drawingCopy = drawing;
  objc_msgSend_averageCharacterHeightEstimation_minChunkHeight_(drawingCopy, v14, v15, v16, v17, v18, 5.0, height * 0.5);
  if (heightCopy <= height)
  {
    heightCopy = height;
  }

  v23 = height / heightCopy;
  v24 = objc_msgSend_normalizedDrawing_scaleFactor_interpolationDistance_outputPointMap_(CHRecurrentNeuralNetwork, v19, drawingCopy, map, v20, v21, v23, distance);
  if (factor)
  {
    *factor = v23;
  }

  return v24;
}

+ (id)normalizedDrawing:(id)drawing scaleFactor:(double)factor interpolationDistance:(double)distance outputPointMap:(void *)map
{
  drawingCopy = drawing;
  objc_msgSend_bounds(drawingCopy, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(drawingCopy, v17, v18, v19, v20, v21, -v15, -v16, factor);
  v27 = objc_msgSend_drawingSpatiallyResampled_outputPointMap_(v22, v23, map, v24, v25, v26, distance);

  return v27;
}

@end