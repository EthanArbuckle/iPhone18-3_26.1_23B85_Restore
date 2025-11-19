@interface MIOModelLayer
- (BOOL)isEqual:(id)a3;
- (MIOModelLayer)initWithMessageStream:(CodedInputStream *)a3 error:(id *)a4;
- (MIOModelLayer)initWithName:(id)a3 type:(id)a4;
- (MIOModelLayer)initWithName:(id)a3 type:(id)a4 histogram:(id)a5 computePrecision:(id)a6 storagePrecision:(id)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOModelLayer

- (MIOModelLayer)initWithName:(id)a3 type:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MIOModelLayer;
  v8 = [(MIOModelLayer *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_type, a4);
  }

  return v8;
}

- (MIOModelLayer)initWithName:(id)a3 type:(id)a4 histogram:(id)a5 computePrecision:(id)a6 storagePrecision:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v27.receiver = self;
  v27.super_class = MIOModelLayer;
  v17 = [(MIOModelLayer *)&v27 init];
  if (v17)
  {
    v18 = [v12 copy];
    name = v17->_name;
    v17->_name = v18;

    objc_storeStrong(&v17->_type, a4);
    v20 = [v14 copy];
    layerHistogram = v17->_layerHistogram;
    v17->_layerHistogram = v20;

    v22 = [v15 copy];
    computePrecision = v17->_computePrecision;
    v17->_computePrecision = v22;

    v24 = [v16 copy];
    storagePrecision = v17->_storagePrecision;
    v17->_storagePrecision = v24;
  }

  return v17;
}

- (MIOModelLayer)initWithMessageStream:(CodedInputStream *)a3 error:(id *)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  MIOParseNeuralNetworkLayerSpecification(a3, &v8);
  v5 = [MIOModelLayer initWithName:"initWithName:type:histogram:computePrecision:storagePrecision:" type:v8 histogram:v9 computePrecision:v10 storagePrecision:?];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MIOModelLayer *)self name];
  v5 = [v3 stringWithFormat:@"MIOModelLayer (%p) %@", self, v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOModelLayer *)self name];
      v7 = [(MIOModelLayer *)v5 name];
      if ([v6 isEqual:v7])
      {
        v8 = [(MIOModelLayer *)self type];
        v9 = [(MIOModelLayer *)v5 type];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(MIOModelLayer *)self name];
  v4 = [v3 hash];
  v5 = [(MIOModelLayer *)self type];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)initWithMessageStream:(uint64_t)a3 error:(void *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = __cxa_begin_catch(a1);
  *a4 = v6;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = (*(*v6 + 16))(v6);
    v10 = 136315138;
    v11 = v9;
    _os_log_error_impl(&dword_1C1BCE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to parse the Layer specification. Error: %s", &v10, 0xCu);
  }

  result = a3 == 0;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

@end