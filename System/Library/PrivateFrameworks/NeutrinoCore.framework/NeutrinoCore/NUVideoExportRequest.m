@interface NUVideoExportRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)newRenderJob;
- (void)_commonInit;
- (void)submitWithProgress:(id)a3 completion:(id)a4;
@end

@implementation NUVideoExportRequest

- (void)submitWithProgress:(id)a3 completion:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__NUVideoExportRequest_submitWithProgress_completion___block_invoke;
  v8[3] = &unk_1E8109FA8;
  v9 = v6;
  v7 = v6;
  [(NURenderRequest *)self submitGenericConfiguringRequest:v8 completion:a4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = NUVideoExportRequest;
  v4 = [(NUExportRequest *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 23, self->_outputSettings);
    objc_storeStrong(v5 + 24, self->_colorSpace);
    objc_storeStrong(v5 + 25, self->_metadata);
    *(v5 + 176) = self->_bypassOutputSettingsIfNoComposition;
    *(v5 + 178) = self->_applyOrientationAsMetadata;
    *(v5 + 179) = self->_includeCinematicVideoTracks;
    *(v5 + 180) = self->_includeSemanticStyleTracks;
    *(v5 + 181) = self->_computeDigest;
  }

  return v5;
}

- (id)newRenderJob
{
  v3 = [NUVideoExportJob alloc];

  return [(NUVideoExportJob *)v3 initWithVideoExportRequest:self];
}

- (void)_commonInit
{
  v7.receiver = self;
  v7.super_class = NUVideoExportRequest;
  [(NUExportRequest *)&v7 _commonInit];
  outputSettings = self->_outputSettings;
  self->_outputSettings = MEMORY[0x1E695E0F8];

  v4 = [(NURenderRequest *)self internalComposition];
  v5 = [NUVideoUtilities defaultOutputColorSpaceForComposition:v4];
  colorSpace = self->_colorSpace;
  self->_colorSpace = v5;

  self->_applyOrientationAsMetadata = 1;
}

@end