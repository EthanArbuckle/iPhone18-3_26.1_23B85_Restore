@interface NUExportRequest
- (NUExportRequest)initWithComposition:(id)a3 destinationURL:(id)a4;
- (NUExportRequest)initWithMedia:(id)a3 destinationURL:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_commonInit;
@end

@implementation NUExportRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = NUExportRequest;
  v4 = [(NURenderRequest *)&v8 copyWithZone:a3];
  if (v4)
  {
    v5 = [(NSURL *)self->_destinationURL copy];
    v6 = *(v4 + 20);
    *(v4 + 20) = v5;

    objc_storeStrong(v4 + 21, self->_scalePolicy);
  }

  return v4;
}

- (NUExportRequest)initWithMedia:(id)a3 destinationURL:(id)a4
{
  v6 = a4;
  v7 = [(NURenderRequest *)self initWithMedia:a3];
  v8 = [v6 copy];

  destinationURL = v7->_destinationURL;
  v7->_destinationURL = v8;

  return v7;
}

- (NUExportRequest)initWithComposition:(id)a3 destinationURL:(id)a4
{
  v6 = a4;
  v7 = [(NURenderRequest *)self initWithComposition:a3];
  v8 = [v6 copy];

  destinationURL = v7->_destinationURL;
  v7->_destinationURL = v8;

  return v7;
}

- (void)_commonInit
{
  v5.receiver = self;
  v5.super_class = NUExportRequest;
  [(NURenderRequest *)&v5 _commonInit];
  v3 = +[NUFixedScalePolicy oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;
}

@end