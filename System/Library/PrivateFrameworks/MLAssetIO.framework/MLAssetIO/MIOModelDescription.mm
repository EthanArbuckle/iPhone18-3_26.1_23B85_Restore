@interface MIOModelDescription
- (BOOL)isEqual:(id)a3;
- (MIOModelDescription)initWithSpecification:(const void *)a3 isUpdatable:(BOOL)a4 modelParameters:(id)a5 classLabelsPerFunction:(id)a6 error:(id *)a7;
- (NSArray)functionDescriptions;
- (NSArray)inputDescriptions;
- (NSArray)outputDescriptions;
- (NSArray)stateDescriptions;
- (NSDictionary)metadata;
- (NSString)defaultFunctionName;
- (NSString)predictedFeatureName;
- (NSString)predictedProbabilitiesName;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)_setShortDescription:(id)a3 forInputFeatureWithName:(id)a4 functionName:(id)a5;
- (void)_setShortDescription:(id)a3 forOutputFeatureWithName:(id)a4 functionName:(id)a5;
- (void)_setShortDescription:(id)a3 forStateFeatureWithName:(id)a4 functionName:(id)a5;
- (void)_setShortDescription:(id)a3 forTrainingInputFeatureWithName:(id)a4;
- (void)setMetadata:(id)a3;
@end

@implementation MIOModelDescription

- (MIOModelDescription)initWithSpecification:(const void *)a3 isUpdatable:(BOOL)a4 modelParameters:(id)a5 classLabelsPerFunction:(id)a6 error:(id *)a7
{
  v62 = *MEMORY[0x1E69E9840];
  v52 = a5;
  v53 = a6;
  v58.receiver = self;
  v58.super_class = MIOModelDescription;
  v11 = [(MIOModelDescription *)&v58 init];
  v12 = v11;
  if (!v11)
  {
LABEL_45:
    v43 = v12;
    goto LABEL_46;
  }

  if (*(a3 + 24))
  {
    if ([v53 count] != *(a3 + 24))
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = [v53 count];
    }
  }

  else if ([v53 count] != 1)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = [v53 count];
  }

  CoreML::Specification::ModelDescription::CopyFrom(v11 + 1, a3);
  *(v11 + 192) = a4;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v18 = v52;
  v19 = [v18 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v19)
  {
    v20 = *v55;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v54 + 1) + 8 * i);
        v23 = [v22 key];
        [v17 setObject:v22 forKeyedSubscript:v23];
      }

      v19 = [v18 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v19);
  }

  objc_storeStrong(v11 + 25, v17);
  v24 = [v53 copy];
  v25 = *(v11 + 23);
  *(v11 + 23) = v24;

  v26 = *(a3 + 24);
  if (!v26)
  {
    v27 = 0;
LABEL_42:
    v44 = [v12[23] objectAtIndexedSubscript:v27];
    v45 = [MEMORY[0x1E695DFB0] null];
    v46 = v44 == v45;

    if (!v46)
    {
      v47 = [v12[23] objectAtIndexedSubscript:v27];
      v48 = v12[26];
      v12[26] = v47;
    }

    goto LABEL_45;
  }

  v27 = 0;
  v28 = *(a3 + 19) & 0xFFFFFFFFFFFFFFFELL;
  v29 = *(a3 + 13);
  if (v29)
  {
    v30 = v29 + 8;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v28 + 23);
  if (v31 >= 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = *(v28 + 8);
  }

  v33 = 8 * v26;
  while (1)
  {
    v34 = *(*(v30 + 8 * v27) + 88) & 0xFFFFFFFFFFFFFFFELL;
    v35 = *(v34 + 23);
    v36 = v35;
    if ((v35 & 0x80u) != 0)
    {
      v35 = *(v34 + 8);
    }

    if (v35 == v32)
    {
      v37 = v36 >= 0 ? (*(*(v30 + 8 * v27) + 88) & 0xFFFFFFFFFFFFFFFELL) : *v34;
      v38 = *v28;
      v39 = v31 >= 0 ? v28 : *v28;
      if (!memcmp(v37, v39, v32))
      {
        break;
      }
    }

    ++v27;
    v33 -= 8;
    if (!v33)
    {
      v27 = ((v26 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
      break;
    }
  }

  if (v27 != v26 && v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_42;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MIOModelDescription initWithSpecification:isUpdatable:modelParameters:classLabelsPerFunction:error:];
  }

  if (a7)
  {
    v40 = MEMORY[0x1E696ABC0];
    v59 = *MEMORY[0x1E696A578];
    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The default function was not found."];
    v60 = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    *a7 = [v40 errorWithDomain:@"com.apple.mlassetio" code:1 userInfo:v42];
  }

  v43 = 0;
LABEL_46:

  v49 = *MEMORY[0x1E69E9840];
  return v43;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [MIOMutableModelDescription alloc];
  v5 = [(MIOModelDescription *)self updatable];
  v6 = [(MIOModelDescription *)self parameterDescriptionsByKey];
  v7 = [v6 allValues];
  v8 = [(MIOModelDescription *)v4 initWithSpecification:&self->_modelDescriptionParams isUpdatable:v5 modelParameters:v7 classLabelsPerFunction:self->_classLabelsPerFunction error:0];

  return v8;
}

- (id)description
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"MIOModelDescription (%p)\n", self];
  v4 = [(MIOModelDescription *)self inputDescriptions];
  v5 = [v4 componentsJoinedByString:@"\n    "];
  [v3 appendFormat:@"  inputDescriptions:\n    %@\n", v5];

  v6 = [(MIOModelDescription *)self outputDescriptions];
  v7 = [v6 componentsJoinedByString:@"\n    "];
  [v3 appendFormat:@"  outputDescriptions:\n    %@\n", v7];

  v8 = [(MIOModelDescription *)self metadata];
  v9 = [v8 count];

  if (v9)
  {
    [v3 appendFormat:@"  metadata:\n"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = [(MIOModelDescription *)self metadata];
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v11)
    {
      v12 = *v48;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v48 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v47 + 1) + 8 * i);
          v15 = [(MIOModelDescription *)self metadata];
          v16 = [v15 objectForKeyedSubscript:v14];
          [v3 appendFormat:@"    %@ -> %@\n", v14, v16];
        }

        v11 = [v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v11);
    }
  }

  v17 = [(MIOModelDescription *)self predictedFeatureName];
  v18 = v17 == 0;

  if (!v18)
  {
    v19 = [(MIOModelDescription *)self predictedFeatureName];
    [v3 appendFormat:@"  predictedFeatureName: %@\n", v19];
  }

  v20 = [(MIOModelDescription *)self predictedProbabilitiesName];
  v21 = v20 == 0;

  if (!v21)
  {
    v22 = [(MIOModelDescription *)self predictedProbabilitiesName];
    [v3 appendFormat:@"  predictedProbabilitiesName: %@\n", v22];
  }

  v23 = [(MIOModelDescription *)self updatable];
  v24 = "NO";
  if (v23)
  {
    v24 = "YES";
  }

  [v3 appendFormat:@"  updatable: %s\n", v24];
  if ([(MIOModelDescription *)self updatable])
  {
    v25 = [(MIOModelDescription *)self trainingInputDescriptions];
    v26 = [v25 componentsJoinedByString:@"\n    "];
    [v3 appendFormat:@"  trainingInputDescriptions:\n    %@\n", v26];
  }

  v27 = [(MIOModelDescription *)self parameterDescriptionsByKey];
  v28 = [v27 count] == 0;

  if (!v28)
  {
    [v3 appendFormat:@"  parameterDescriptions:\n"];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v29 = [(MIOModelDescription *)self parameterDescriptionsByKey];
    v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v30)
    {
      v31 = *v44;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v43 + 1) + 8 * j);
          v34 = [(MIOModelDescription *)self parameterDescriptionsByKey];
          v35 = [v34 objectForKeyedSubscript:v33];
          [v3 appendFormat:@"    %@ -> %@\n", v33, v35];
        }

        v30 = [v29 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v30);
    }
  }

  v36 = [(MIOModelDescription *)self defaultFunctionName];
  v37 = v36 == 0;

  if (!v37)
  {
    v38 = [(MIOModelDescription *)self defaultFunctionName];
    [v3 appendFormat:@"  defaultFunctionName: %@\n", v38];

    v39 = [(MIOModelDescription *)self functionDescriptions];
    v40 = [v39 componentsJoinedByString:@"\n    "];
    [v3 appendFormat:@"  functions:\n    %@\n", v40];
  }

  v41 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOModelDescription *)self inputDescriptions];
      v7 = [(MIOModelDescription *)v5 inputDescriptions];
      v8 = [v6 isEqual:v7];

      if ((v8 & 1) == 0)
      {
        goto LABEL_22;
      }

      v9 = [(MIOModelDescription *)self outputDescriptions];
      v10 = [(MIOModelDescription *)v5 outputDescriptions];
      v11 = [v9 isEqual:v10];

      if ((v11 & 1) == 0)
      {
        goto LABEL_22;
      }

      v12 = [(MIOModelDescription *)self stateDescriptions];
      v13 = [(MIOModelDescription *)v5 stateDescriptions];
      v14 = [v12 isEqual:v13];

      if ((v14 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = [(MIOModelDescription *)self metadata];
      v16 = [(MIOModelDescription *)v5 metadata];
      v17 = [v15 isEqual:v16];

      if ((v17 & 1) == 0)
      {
        goto LABEL_22;
      }

      v18 = [(MIOModelDescription *)self predictedFeatureName];
      if (v18)
      {
      }

      else
      {
        v20 = [(MIOModelDescription *)v5 predictedFeatureName];

        if (!v20)
        {
          goto LABEL_13;
        }
      }

      v21 = [(MIOModelDescription *)self predictedFeatureName];
      v22 = [(MIOModelDescription *)v5 predictedFeatureName];
      v23 = [v21 isEqual:v22];

      if ((v23 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_13:
      v24 = [(MIOModelDescription *)self predictedProbabilitiesName];
      if (v24)
      {
      }

      else
      {
        v25 = [(MIOModelDescription *)v5 predictedProbabilitiesName];

        if (!v25)
        {
          goto LABEL_17;
        }
      }

      v26 = [(MIOModelDescription *)self predictedProbabilitiesName];
      v27 = [(MIOModelDescription *)v5 predictedProbabilitiesName];
      v28 = [v26 isEqual:v27];

      if ((v28 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_17:
      v29 = [(MIOModelDescription *)self classLabels];
      if (v29)
      {
      }

      else
      {
        v30 = [(MIOModelDescription *)v5 classLabels];

        if (!v30)
        {
LABEL_21:
          v34 = [(MIOModelDescription *)self updatable];
          if (v34 == [(MIOModelDescription *)v5 updatable])
          {
            if (!-[MIOModelDescription updatable](self, "updatable") || (-[MIOModelDescription trainingInputDescriptions](self, "trainingInputDescriptions"), v36 = objc_claimAutoreleasedReturnValue(), -[MIOModelDescription trainingInputDescriptions](v5, "trainingInputDescriptions"), v37 = objc_claimAutoreleasedReturnValue(), v38 = [v36 isEqual:v37], v37, v36, (v38 & 1) != 0))
            {
              v39 = [(MIOModelDescription *)self parameterDescriptionsByKey];
              v40 = [(MIOModelDescription *)v5 parameterDescriptionsByKey];
              v19 = [v39 isEqual:v40];

              goto LABEL_23;
            }
          }

LABEL_22:
          v19 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }

      v31 = [(MIOModelDescription *)self classLabels];
      v32 = [(MIOModelDescription *)v5 classLabels];
      v33 = [v31 isEqual:v32];

      if ((v33 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v19 = 0;
  }

LABEL_24:

  return v19;
}

- (unint64_t)hash
{
  v18 = [(MIOModelDescription *)self inputDescriptions];
  v15 = [v18 hash];
  v17 = [(MIOModelDescription *)self outputDescriptions];
  v3 = [v17 hash];
  v16 = [(MIOModelDescription *)self metadata];
  v4 = [v16 hash];
  v5 = [(MIOModelDescription *)self predictedFeatureName];
  v6 = [v5 hash];
  v7 = [(MIOModelDescription *)self predictedProbabilitiesName];
  v8 = [v7 hash];
  v9 = [(MIOModelDescription *)self updatable];
  v10 = [(MIOModelDescription *)self trainingInputDescriptions];
  v11 = [v10 hash];
  v12 = [(MIOModelDescription *)self parameterDescriptionsByKey];
  v13 = v11 ^ [v12 hash];

  return v3 ^ v15 ^ v4 ^ v6 ^ v8 ^ v9 ^ v13;
}

- (NSString)defaultFunctionName
{
  if (self->_modelDescriptionParams.functions_.current_size_)
  {
    v3 = self->_modelDescriptionParams.defaultfunctionname_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)functionDescriptions
{
  v3 = self->_classLabelsPerFunction;
  current_size = self->_modelDescriptionParams.functions_.current_size_;
  if (current_size)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:current_size];
    rep = self->_modelDescriptionParams.functions_.rep_;
    if (rep)
    {
      v7 = rep + 8;
    }

    else
    {
      v7 = 0;
    }

    v8 = self->_modelDescriptionParams.functions_.current_size_;
    if (v8)
    {
      v9 = 0;
      v10 = 8 * v8;
      do
      {
        v11 = *&v7[8 * v9];
        v12 = [(NSArray *)v3 objectAtIndexedSubscript:v9];
        v13 = [MEMORY[0x1E695DFB0] null];

        if (v12 == v13)
        {

          v12 = 0;
        }

        v14 = [[MIOFunctionDescription alloc] initWithSpecification:v11 classLabels:v12];
        [v5 addObject:v14];
        ++v9;

        v10 -= 8;
      }

      while (v10);
    }
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSArray)inputDescriptions
{
  p_modelDescriptionParams = &self->_modelDescriptionParams;
  if (self->_modelDescriptionParams.functions_.current_size_)
  {
    p_modelDescriptionParams = defaultFunctionDescriptionSpecification(p_modelDescriptionParams);
    v2 = vars8;
  }

  p_input = &p_modelDescriptionParams->input_;

  return NSArrayFromFeatureDescriptionSpecifications(p_input);
}

- (NSArray)outputDescriptions
{
  p_modelDescriptionParams = &self->_modelDescriptionParams;
  if (self->_modelDescriptionParams.functions_.current_size_)
  {
    p_modelDescriptionParams = defaultFunctionDescriptionSpecification(p_modelDescriptionParams);
    v2 = vars8;
  }

  p_output = &p_modelDescriptionParams->output_;

  return NSArrayFromFeatureDescriptionSpecifications(p_output);
}

- (NSArray)stateDescriptions
{
  p_modelDescriptionParams = &self->_modelDescriptionParams;
  if (self->_modelDescriptionParams.functions_.current_size_)
  {
    p_modelDescriptionParams = defaultFunctionDescriptionSpecification(p_modelDescriptionParams);
    v2 = vars8;
  }

  p_state = &p_modelDescriptionParams->state_;

  return NSArrayFromFeatureDescriptionSpecifications(p_state);
}

- (NSDictionary)metadata
{
  if (self->_modelDescriptionParams.metadata_)
  {
    return NSDictionaryFromModelMetadataSpecification(self->_modelDescriptionParams.metadata_);
  }

  else
  {
    return NSDictionaryFromModelMetadataSpecification(&CoreML::Specification::_Metadata_default_instance_);
  }
}

- (NSString)predictedFeatureName
{
  v2 = self->_modelDescriptionParams.predictedfeaturename_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
}

- (NSString)predictedProbabilitiesName
{
  v2 = self->_modelDescriptionParams.predictedprobabilitiesname_.tagged_ptr_.ptr_ & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:v2];
}

- (void)_setShortDescription:(id)a3 forInputFeatureWithName:(id)a4 functionName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, [v10 UTF8String]);
    rep = self->_modelDescriptionParams.functions_.rep_;
    if (rep)
    {
      v13 = (rep + 8);
    }

    else
    {
      v13 = 0;
    }

    current_size = self->_modelDescriptionParams.functions_.current_size_;
    v15 = &v13[current_size];
    if (current_size)
    {
      if ((v32 & 0x80u) == 0)
      {
        v16 = v32;
      }

      else
      {
        v16 = v31[1];
      }

      if ((v32 & 0x80u) == 0)
      {
        v17 = v31;
      }

      else
      {
        v17 = v31[0];
      }

      v18 = 8 * current_size;
      while (1)
      {
        v19 = *(*v13 + 88) & 0xFFFFFFFFFFFFFFFELL;
        v20 = *(v19 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v19 + 8);
        }

        if (v20 == v16)
        {
          v22 = v21 >= 0 ? (*(*v13 + 88) & 0xFFFFFFFFFFFFFFFELL) : *v19;
          if (!memcmp(v22, v17, v16))
          {
            break;
          }
        }

        ++v13;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_25;
        }
      }
    }

    v23 = v13 == v15;
    v15 = v13;
    if (v23)
    {
LABEL_25:
      v24 = MEMORY[0x1E695DF30];
      v25 = [v11 UTF8String];
      [v24 raise:*MEMORY[0x1E695D940] format:{@"No input feature named: %s was found.", v25}];
    }

    v26 = *v15;
    std::string::basic_string[abi:ne200100]<0>(v29, [v9 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
    setShortDescription(v26 + 16, v29, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v31, [v9 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(v29, [v8 UTF8String]);
    setShortDescription(&self->_modelDescriptionParams.input_, v31, v29);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }
}

- (void)_setShortDescription:(id)a3 forOutputFeatureWithName:(id)a4 functionName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, [v10 UTF8String]);
    rep = self->_modelDescriptionParams.functions_.rep_;
    if (rep)
    {
      v13 = (rep + 8);
    }

    else
    {
      v13 = 0;
    }

    current_size = self->_modelDescriptionParams.functions_.current_size_;
    v15 = &v13[current_size];
    if (current_size)
    {
      if ((v32 & 0x80u) == 0)
      {
        v16 = v32;
      }

      else
      {
        v16 = v31[1];
      }

      if ((v32 & 0x80u) == 0)
      {
        v17 = v31;
      }

      else
      {
        v17 = v31[0];
      }

      v18 = 8 * current_size;
      while (1)
      {
        v19 = *(*v13 + 88) & 0xFFFFFFFFFFFFFFFELL;
        v20 = *(v19 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v19 + 8);
        }

        if (v20 == v16)
        {
          v22 = v21 >= 0 ? (*(*v13 + 88) & 0xFFFFFFFFFFFFFFFELL) : *v19;
          if (!memcmp(v22, v17, v16))
          {
            break;
          }
        }

        ++v13;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_25;
        }
      }
    }

    v23 = v13 == v15;
    v15 = v13;
    if (v23)
    {
LABEL_25:
      v24 = MEMORY[0x1E695DF30];
      v25 = [v11 UTF8String];
      [v24 raise:*MEMORY[0x1E695D940] format:{@"No output feature named: %s was found.", v25}];
    }

    v26 = *v15;
    std::string::basic_string[abi:ne200100]<0>(v29, [v9 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
    setShortDescription(v26 + 40, v29, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v31, [v9 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(v29, [v8 UTF8String]);
    setShortDescription(&self->_modelDescriptionParams.output_, v31, v29);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }
}

- (void)_setShortDescription:(id)a3 forStateFeatureWithName:(id)a4 functionName:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    std::string::basic_string[abi:ne200100]<0>(v31, [v10 UTF8String]);
    rep = self->_modelDescriptionParams.functions_.rep_;
    if (rep)
    {
      v13 = (rep + 8);
    }

    else
    {
      v13 = 0;
    }

    current_size = self->_modelDescriptionParams.functions_.current_size_;
    v15 = &v13[current_size];
    if (current_size)
    {
      if ((v32 & 0x80u) == 0)
      {
        v16 = v32;
      }

      else
      {
        v16 = v31[1];
      }

      if ((v32 & 0x80u) == 0)
      {
        v17 = v31;
      }

      else
      {
        v17 = v31[0];
      }

      v18 = 8 * current_size;
      while (1)
      {
        v19 = *(*v13 + 88) & 0xFFFFFFFFFFFFFFFELL;
        v20 = *(v19 + 23);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(v19 + 8);
        }

        if (v20 == v16)
        {
          v22 = v21 >= 0 ? (*(*v13 + 88) & 0xFFFFFFFFFFFFFFFELL) : *v19;
          if (!memcmp(v22, v17, v16))
          {
            break;
          }
        }

        ++v13;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_25;
        }
      }
    }

    v23 = v13 == v15;
    v15 = v13;
    if (v23)
    {
LABEL_25:
      v24 = MEMORY[0x1E695DF30];
      v25 = [v11 UTF8String];
      [v24 raise:*MEMORY[0x1E695D940] format:{@"No output feature named: %s was found.", v25}];
    }

    v26 = *v15;
    std::string::basic_string[abi:ne200100]<0>(v29, [v9 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(__p, [v8 UTF8String]);
    setShortDescription(v26 + 64, v29, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(v31, [v9 UTF8String]);
    std::string::basic_string[abi:ne200100]<0>(v29, [v8 UTF8String]);
    setShortDescription(&self->_modelDescriptionParams.state_, v31, v29);
  }

  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }
}

- (void)_setShortDescription:(id)a3 forTrainingInputFeatureWithName:(id)a4
{
  v6 = a3;
  v7 = a4;
  std::string::basic_string[abi:ne200100]<0>(v10, [v7 UTF8String]);
  std::string::basic_string[abi:ne200100]<0>(__p, [v6 UTF8String]);
  setShortDescription(&self->_modelDescriptionParams.traininginput_, v10, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

- (void)setMetadata:(id)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:{@"MLModelDescriptionKey", CoreML::Specification::Metadata::Metadata(v47, 0, 0)}];
  v5 = v4 == 0;

  if (!v5)
  {
    v6 = [v3 objectForKeyedSubscript:@"MLModelDescriptionKey"];
    v7 = v6;
    v8 = [v6 UTF8String];
    v9 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v9 = *v9;
    }

    google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(&v50, v8, v9);
  }

  v10 = [v3 objectForKeyedSubscript:@"MLModelVersionStringKey"];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = [v3 objectForKeyedSubscript:@"MLModelVersionStringKey"];
    v13 = v12;
    v14 = [v12 UTF8String];
    v15 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v15 = *v15;
    }

    google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(&v51, v14, v15);
  }

  v16 = [v3 objectForKeyedSubscript:@"MLModelAuthorKey"];
  v17 = v16 == 0;

  if (!v17)
  {
    v18 = [v3 objectForKeyedSubscript:@"MLModelAuthorKey"];
    v19 = v18;
    v20 = [v18 UTF8String];
    v21 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v21 = *v21;
    }

    google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(&v52, v20, v21);
  }

  v22 = [v3 objectForKeyedSubscript:@"MLModelLicenseKey"];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [v3 objectForKeyedSubscript:@"MLModelLicenseKey"];
    v25 = v24;
    v26 = [v24 UTF8String];
    v27 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
    if (v48)
    {
      v27 = *v27;
    }

    google::protobuf::internal::ArenaStringPtr::Set<google::protobuf::internal::ArenaStringPtr::EmptyDefault>(&v53, v26, v27);
  }

  v28 = [v3 objectForKeyedSubscript:@"MLModelCreatorDefinedKey"];
  v29 = v28;
  if (v28)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v31)
    {
      v32 = *v56;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v56 != v32)
          {
            objc_enumerationMutation(v30);
          }

          v34 = *(*(&v55 + 1) + 8 * i);
          v35 = [v30 objectForKeyedSubscript:v34];
          v36 = v35;
          v37 = [v35 UTF8String];
          v38 = v34;
          v54 = [v34 UTF8String];
          google::protobuf::Map<std::string,std::string>::InnerMap::insert<char const*>(v49, &v54, v59);
          MEMORY[0x1C6908830](v59[0] + 24, v37);
        }

        v31 = [v30 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v31);
    }
  }

  metadata = self->_modelDescriptionParams.metadata_;
  if (!metadata)
  {
    ptr = self->_modelDescriptionParams._internal_metadata_.ptr_;
    v41 = (ptr & 0xFFFFFFFFFFFFFFFCLL);
    if (ptr)
    {
      v41 = *v41;
    }

    google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Metadata>(v41);
    self->_modelDescriptionParams.metadata_ = metadata;
  }

  if (metadata != v47)
  {
    v42 = *(metadata + 1);
    if ((v42 & 2) != 0)
    {
      v43 = 0;
    }

    else
    {
      v43 = (v42 & 0xFFFFFFFFFFFFFFFCLL);
      if (v42)
      {
        v43 = *v43;
      }
    }

    if ((v48 & 2) != 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = (v48 & 0xFFFFFFFFFFFFFFFCLL);
      if (v48)
      {
        v44 = *v44;
      }
    }

    if (v43 == v44)
    {
      CoreML::Specification::Metadata::InternalSwap(metadata, v47);
    }

    else
    {
      CoreML::Specification::Metadata::CopyFrom(metadata, v47);
    }
  }

  CoreML::Specification::Metadata::~Metadata(v47);

  v45 = *MEMORY[0x1E69E9840];
}

@end