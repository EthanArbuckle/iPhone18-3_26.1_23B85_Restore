@interface MIOModelLayer
- (BOOL)isEqual:(id)equal;
- (MIOModelLayer)initWithMessageStream:(CodedInputStream *)stream error:(id *)error;
- (MIOModelLayer)initWithName:(id)name type:(id)type;
- (MIOModelLayer)initWithName:(id)name type:(id)type histogram:(id)histogram computePrecision:(id)precision storagePrecision:(id)storagePrecision;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOModelLayer

- (MIOModelLayer)initWithName:(id)name type:(id)type
{
  nameCopy = name;
  typeCopy = type;
  v12.receiver = self;
  v12.super_class = MIOModelLayer;
  v8 = [(MIOModelLayer *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeStrong(&v8->_type, type);
  }

  return v8;
}

- (MIOModelLayer)initWithName:(id)name type:(id)type histogram:(id)histogram computePrecision:(id)precision storagePrecision:(id)storagePrecision
{
  nameCopy = name;
  typeCopy = type;
  histogramCopy = histogram;
  precisionCopy = precision;
  storagePrecisionCopy = storagePrecision;
  v27.receiver = self;
  v27.super_class = MIOModelLayer;
  v17 = [(MIOModelLayer *)&v27 init];
  if (v17)
  {
    v18 = [nameCopy copy];
    name = v17->_name;
    v17->_name = v18;

    objc_storeStrong(&v17->_type, type);
    v20 = [histogramCopy copy];
    layerHistogram = v17->_layerHistogram;
    v17->_layerHistogram = v20;

    v22 = [precisionCopy copy];
    computePrecision = v17->_computePrecision;
    v17->_computePrecision = v22;

    v24 = [storagePrecisionCopy copy];
    storagePrecision = v17->_storagePrecision;
    v17->_storagePrecision = v24;
  }

  return v17;
}

- (MIOModelLayer)initWithMessageStream:(CodedInputStream *)stream error:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  MIOParseNeuralNetworkLayerSpecification(stream, &v8);
  v5 = [MIOModelLayer initWithName:"initWithName:type:histogram:computePrecision:storagePrecision:" type:v8 histogram:v9 computePrecision:v10 storagePrecision:?];

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(MIOModelLayer *)self name];
  v5 = [v3 stringWithFormat:@"MIOModelLayer (%p) %@", self, name];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      name = [(MIOModelLayer *)self name];
      name2 = [(MIOModelLayer *)v5 name];
      if ([name isEqual:name2])
      {
        type = [(MIOModelLayer *)self type];
        type2 = [(MIOModelLayer *)v5 type];
        v10 = [type isEqual:type2];
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
  name = [(MIOModelLayer *)self name];
  v4 = [name hash];
  type = [(MIOModelLayer *)self type];
  v6 = [type hash];

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