@interface CHRecurrentNeuralNetwork
+ (id)normalizedDrawing:(id)a3 scaleFactor:(double)a4 interpolationDistance:(double)a5 outputPointMap:(void *)a6;
- (CHRecurrentNeuralNetwork)initWithModelName:(id)a3;
- (id)normalizedDrawing:(id)a3 targetHeight:(double)a4 minimumDrawingSize:(CGSize)a5 interpolationDistance:(double)a6 outScaleFactor:(double *)a7 outputPointMap:(void *)a8;
@end

@implementation CHRecurrentNeuralNetwork

- (CHRecurrentNeuralNetwork)initWithModelName:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CHRecurrentNeuralNetwork;
  v10 = [(CHRecurrentNeuralNetwork *)&v14 init];
  if (v10)
  {
    v11 = objc_msgSend_stringByDeletingPathExtension(v4, v5, v6, v7, v8, v9);
    modelName = v10->_modelName;
    v10->_modelName = v11;
  }

  return v10;
}

- (id)normalizedDrawing:(id)a3 targetHeight:(double)a4 minimumDrawingSize:(CGSize)a5 interpolationDistance:(double)a6 outScaleFactor:(double *)a7 outputPointMap:(void *)a8
{
  height = a5.height;
  v13 = a3;
  objc_msgSend_averageCharacterHeightEstimation_minChunkHeight_(v13, v14, v15, v16, v17, v18, 5.0, height * 0.5);
  if (v22 <= height)
  {
    v22 = height;
  }

  v23 = a4 / v22;
  v24 = objc_msgSend_normalizedDrawing_scaleFactor_interpolationDistance_outputPointMap_(CHRecurrentNeuralNetwork, v19, v13, a8, v20, v21, v23, a6);
  if (a7)
  {
    *a7 = v23;
  }

  return v24;
}

+ (id)normalizedDrawing:(id)a3 scaleFactor:(double)a4 interpolationDistance:(double)a5 outputPointMap:(void *)a6
{
  v9 = a3;
  objc_msgSend_bounds(v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_drawingTransformedWithTranslation_scaleFactor_(v9, v17, v18, v19, v20, v21, -v15, -v16, a4);
  v27 = objc_msgSend_drawingSpatiallyResampled_outputPointMap_(v22, v23, a6, v24, v25, v26, a5);

  return v27;
}

@end