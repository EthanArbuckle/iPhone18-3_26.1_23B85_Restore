@interface VCPVideoCNNBackbone
+ (id)sharedModel:(id)model outputNames:(id)names properties:(id)properties;
- (VCPVideoCNNBackbone)initWithConfig:(id)config;
- (int)inference:(float *)inference settling:(BOOL)settling;
@end

@implementation VCPVideoCNNBackbone

+ (id)sharedModel:(id)model outputNames:(id)names properties:(id)properties
{
  modelCopy = model;
  namesCopy = names;
  propertiesCopy = properties;
  v10 = +[VCPSharedInstanceManager sharedManager];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__VCPVideoCNNBackbone_sharedModel_outputNames_properties___block_invoke;
  v16[3] = &unk_1E834E480;
  v11 = modelCopy;
  v17 = v11;
  v12 = namesCopy;
  v18 = v12;
  v13 = propertiesCopy;
  v19 = v13;
  v14 = [v10 sharedInstanceWithIdentifier:@"VCPVideoCNNBackboneEspresso" andCreationBlock:v16];

  return v14;
}

VCPCNNModelEspresso *__58__VCPVideoCNNBackbone_sharedModel_outputNames_properties___block_invoke(void *a1)
{
  v1 = [[VCPCNNModelEspresso alloc] initWithParameters:a1[4] inputNames:0 outputNames:a1[5] properties:a1[6]];

  return v1;
}

- (VCPVideoCNNBackbone)initWithConfig:(id)config
{
  v24[2] = *MEMORY[0x1E69E9840];
  configCopy = config;
  self->_outputBeforeFc = 0;
  self->_outputBeforeFcSettling = 0;
  vcp_mediaAnalysisBundle = [MEMORY[0x1E696AAE8] vcp_mediaAnalysisBundle];
  resourceURL = [vcp_mediaAnalysisBundle resourceURL];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"video_backbone.espresso.net" relativeToURL:resourceURL];
  v22.receiver = self;
  v22.super_class = VCPVideoCNNBackbone;
  v8 = [(VCPVideoCNNBackbone *)&v22 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  outputNames = v8->_outputNames;
  v8->_outputNames = &unk_1F49BEB30;

  v11 = DeviceGeqD5x();
  v23[0] = @"forceNNGraph";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v11 ^ 1];
  v24[0] = v12;
  v23[1] = @"sharedContext";
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v11];
  v24[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];

  if (DeviceHasANE())
  {
    v15 = [objc_opt_class() sharedModel:v7 outputNames:v9->_outputNames properties:v14];
  }

  else
  {
    v15 = [[VCPCNNModelEspresso alloc] initWithParameters:v7 inputNames:0 outputNames:v9->_outputNames properties:v14];
  }

  modelEspresso = v9->_modelEspresso;
  v9->_modelEspresso = v15;

  v17 = v9->_modelEspresso;
  if (!v17)
  {

    goto LABEL_9;
  }

  v18 = [(VCPCNNModelEspresso *)v17 prepareModelWithConfig:configCopy];

  if (v18)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v19 = v9;
LABEL_10:
  v20 = v19;

  return v20;
}

- (int)inference:(float *)inference settling:(BOOL)settling
{
  settlingCopy = settling;
  v6 = [(VCPCNNModelEspresso *)self->_modelEspresso espressoForward:inference];
  if (!v6)
  {
    if (settlingCopy)
    {
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      self->_outputBeforeFcSettling = __p[21];
      operator delete(__p);
    }

    else
    {
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      self->_outputBeforeSpatiialPooling = *__p;
      operator delete(__p);
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      self->_outputBeforeFc = __p[21];
      operator delete(__p);
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      self->_outputRes4 = __p[42];
      operator delete(__p);
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      self->_outputBeforeTemporalPooling = __p[63];
      operator delete(__p);
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      v7 = __p[65];
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      v8 = v18[66];
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      v9 = v17[67];
      [(VCPCNNModelEspresso *)self->_modelEspresso outputBlobs];
      v10 = v16[68];
      operator delete(v16);
      if (v17)
      {
        operator delete(v17);
      }

      v11 = v8 * v7;
      if (v18)
      {
        operator delete(v18);
      }

      v12 = v9 * v11;
      if (__p)
      {
        operator delete(__p);
      }

      v13 = [MEMORY[0x1E695DEF0] dataWithBytes:self->_outputBeforeTemporalPooling length:4 * v12 * v10];
      tensorBeforeTemporalPooling = self->_tensorBeforeTemporalPooling;
      self->_tensorBeforeTemporalPooling = v13;
    }
  }

  return v6;
}

@end