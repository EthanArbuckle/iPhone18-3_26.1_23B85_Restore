@interface CSFComputeDataBuffer
- (CSFComputeDataBuffer)initWithInputArray:(id)a3 name:(id)a4 properties:(id)a5 errOut:(id *)a6;
- (CSFComputeDataBuffer)initWithProperties:(id)a3 name:(id)a4 errOut:(id *)a5;
- (id)_allocateDataWithTensorProperties:(id)a3 error:(id *)a4;
- (id)convertDataToArray;
- (id)description;
- (unint64_t)_getTensorSizeWithProperties:(id)a3;
@end

@implementation CSFComputeDataBuffer

- (id)_allocateDataWithTensorProperties:(id)a3 error:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(CSFComputeDataBuffer *)self _getTensorSizeWithProperties:v6];
  self->_elementSize = v7;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:self->_elementSize];
  }

  else
  {
    if (a4)
    {
      v9 = objc_alloc(MEMORY[0x1E696ABC0]);
      v16 = *MEMORY[0x1E696A578];
      v10 = MEMORY[0x1E696AEC0];
      v11 = [(CSFTensorProperties *)self->_tensorProperties description];
      v12 = [v10 stringWithFormat:@"cannot get element size with property: %@", v11];
      v17[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      *a4 = [v9 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v13];
    }

    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (unint64_t)_getTensorSizeWithProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 shape];
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    if (v4)
    {
      v6 = 0;
      if ([v4 count])
      {
        v7 = 1;
        while (v6 < [v5 count])
        {
          v8 = [v5 objectAtIndexedSubscript:v6];
          v7 *= [v8 intValue];

          ++v6;
        }

        if ([v3 dataType] && objc_msgSend(v3, "dataType") != 1)
        {
          v9 = 0;
        }

        else
        {
          v9 = 4;
        }

        v6 = v9 * v7;
      }
    }
  }

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  tensorName = self->_tensorName;
  v4 = [(CSFTensorProperties *)self->_tensorProperties description];
  v5 = [v2 stringWithFormat:@"<Name:%@ Properties: %@>", tensorName, v4];

  return v5;
}

- (id)convertDataToArray
{
  v42 = *MEMORY[0x1E69E9840];
  p_tensorProperties = &self->_tensorProperties;
  v4 = [(CSFTensorProperties *)self->_tensorProperties shape];
  v5 = [(CSFTensorProperties *)*p_tensorProperties dataType];
  if ([v4 count] > 2 || !objc_msgSend(v4, "count"))
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v37 = "[CSFComputeDataBuffer convertDataToArray]";
      v19 = "%s rank > 2 or == 0 is not supported";
      goto LABEL_36;
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if (!self->_data)
  {
    v15 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v37 = "[CSFComputeDataBuffer convertDataToArray]";
      v19 = "%s data is empty, Cannot convert ComputeData buffer to NSArray";
LABEL_36:
      _os_log_error_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = 0x1E695D000uLL;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(NSData *)self->_data bytes];
  v35 = [(NSData *)self->_data bytes];
  if ([v4 count] == 1)
  {
    for (i = 0; ; ++i)
    {
      v10 = [v4 firstObject];
      v11 = [v10 unsignedLongValue];

      if (i >= v11)
      {
        break;
      }

      elementSize = self->_elementSize;
      if (i >= elementSize)
      {
        v32 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v37 = "[CSFComputeDataBuffer convertDataToArray]";
          v38 = 2048;
          v39 = i;
          v40 = 2048;
          v41 = elementSize;
          _os_log_error_impl(&dword_1DDA4B000, v32, OS_LOG_TYPE_ERROR, "%s index: %lu out of bound: %lu", buf, 0x20u);
        }

        v16 = 0;
        goto LABEL_39;
      }

      if (v5)
      {
        LODWORD(v12) = v8[i];
        [MEMORY[0x1E696AD98] numberWithFloat:v12];
      }

      else
      {
        [MEMORY[0x1E696AD98] numberWithInt:v35[i]];
      }
      v14 = ;
      [v7 addObject:v14];
    }
  }

  else
  {
    v33 = v7;
    v34 = 0;
    v20 = 0;
LABEL_20:
    v21 = [v4 firstObject];
    v22 = [v21 unsignedLongValue];

    if (v34 < v22)
    {
      v23 = objc_alloc_init(*(v6 + 3952));
      for (j = 0; ; ++j)
      {
        v25 = [v4 objectAtIndexedSubscript:1];
        v26 = [v25 unsignedLongValue];

        if (j >= v26)
        {
          v30 = [v23 copy];
          [v33 addObject:v30];
          v6 = 0x1E695D000;

          ++v34;
          goto LABEL_20;
        }

        v28 = self->_elementSize;
        if (v20 >= v28)
        {
          break;
        }

        if (v5)
        {
          LODWORD(v27) = v8[v20];
          [MEMORY[0x1E696AD98] numberWithFloat:v27];
        }

        else
        {
          [MEMORY[0x1E696AD98] numberWithInt:v35[v20]];
        }
        v29 = ;
        [v23 addObject:v29];

        ++v20;
      }

      v31 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v37 = "[CSFComputeDataBuffer convertDataToArray]";
        v38 = 2048;
        v39 = v20;
        v40 = 2048;
        v41 = v28;
        _os_log_error_impl(&dword_1DDA4B000, v31, OS_LOG_TYPE_ERROR, "%s index: %lu out of bound: %lu", buf, 0x20u);
      }

      v16 = 0;
      v7 = v33;
      goto LABEL_39;
    }

    v7 = v33;
  }

  v16 = v7;
LABEL_39:

LABEL_14:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (CSFComputeDataBuffer)initWithInputArray:(id)a3 name:(id)a4 properties:(id)a5 errOut:(id *)a6
{
  v69[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v56 = a4;
  v55 = a5;
  v59.receiver = self;
  v59.super_class = CSFComputeDataBuffer;
  v11 = [(CSFComputeDataBuffer *)&v59 init];
  if (!v11)
  {
    goto LABEL_36;
  }

  if (!v10 || (v12 = [v10 count], !v56) || !v12)
  {
    if (a6)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v68 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initialize with inputArray: %@", v10];
      v69[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
      *a6 = [v19 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v21];
    }

    goto LABEL_15;
  }

  v13 = [CSFModelComputeBackendUtils getRankOfTensor:v10];
  if (v13 < 1 || ([v55 shape], v14 = objc_claimAutoreleasedReturnValue(), v15 = v13 == objc_msgSend(v14, "count"), v14, !v15))
  {
    if (a6)
    {
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v66 = *MEMORY[0x1E696A578];
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"initialize with inputArray: %@", v10];
      v67 = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      *a6 = [v22 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v24];
    }

    goto LABEL_15;
  }

  v58 = 0;
  v53 = [(CSFComputeDataBuffer *)v11 _allocateDataWithTensorProperties:v55 error:&v58];
  v16 = v58;
  if (!v16)
  {
    v52 = [v55 shape];
    v26 = [v55 dataType];
    if ([v52 count] == 1)
    {
      v27 = 0;
      v28 = 0;
      while (v27 < [v10 count])
      {
        if (v26 == 1)
        {
          v31 = [v10 objectAtIndexedSubscript:v27];
          [v31 floatValue];
          v33 = v32;

          v57 = v33;
          [(NSData *)v53 replaceBytesInRange:v28 withBytes:4, &v57];
        }

        else
        {
          if (v26)
          {
            if (!a6)
            {
              goto LABEL_47;
            }

            v50 = objc_alloc(MEMORY[0x1E696ABC0]);
            v64 = *MEMORY[0x1E696A578];
            v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compute data type not supported"];
            v65 = v54;
            v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
            v47 = [v50 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v46];
            goto LABEL_44;
          }

          v29 = [v10 objectAtIndexedSubscript:v27];
          v30 = [v29 intValue];

          v57 = v30;
          [(NSData *)v53 replaceBytesInRange:v28 withBytes:4, &v57];
        }

        v28 += 4;
        ++v27;
      }
    }

    else
    {
      if ([v52 count] != 2)
      {
        if (a6)
        {
          v45 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = *MEMORY[0x1E696A578];
          v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Rank > 0 not supported"];
          v61 = v54;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v47 = [v45 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v46];
LABEL_44:
          *a6 = v47;
LABEL_45:

LABEL_46:
        }

LABEL_47:

        goto LABEL_15;
      }

      v34 = 0;
      v51 = 0;
LABEL_26:
      if (v51 < [v10 count])
      {
        v54 = [v10 objectAtIndexedSubscript:?];
        for (i = 0; ; ++i)
        {
          if (i >= [v54 count])
          {

            ++v51;
            goto LABEL_26;
          }

          if (v26 == 1)
          {
            v38 = [v54 objectAtIndexedSubscript:i];
            [v38 floatValue];
            v40 = v39;

            v57 = v40;
            [(NSData *)v53 replaceBytesInRange:v34 withBytes:4, &v57];
          }

          else
          {
            if (v26)
            {
              if (a6)
              {
                v48 = objc_alloc(MEMORY[0x1E696ABC0]);
                v62 = *MEMORY[0x1E696A578];
                v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Compute data type not supported"];
                v63 = v46;
                v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
                *a6 = [v48 initWithDomain:@"com.apple.corespeech" code:2458 userInfo:v49];

                goto LABEL_45;
              }

              goto LABEL_46;
            }

            v36 = [v54 objectAtIndexedSubscript:i];
            v37 = [v36 intValue];

            v57 = v37;
            [(NSData *)v53 replaceBytesInRange:v34 withBytes:4, &v57];
          }

          v34 += 4;
        }
      }
    }

    objc_storeStrong(&v11->_tensorProperties, a5);
    data = v11->_data;
    v11->_data = v53;
    v42 = v53;

    objc_storeStrong(&v11->_tensorName, a4);
LABEL_36:
    v25 = v11;
    goto LABEL_37;
  }

  v17 = v16;
  if (a6)
  {
    v18 = v16;
    *a6 = v17;
  }

LABEL_15:
  v25 = 0;
LABEL_37:

  v43 = *MEMORY[0x1E69E9840];
  return v25;
}

- (CSFComputeDataBuffer)initWithProperties:(id)a3 name:(id)a4 errOut:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v22.receiver = self;
  v22.super_class = CSFComputeDataBuffer;
  v11 = [(CSFComputeDataBuffer *)&v22 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  v21 = 0;
  v13 = [(CSFComputeDataBuffer *)v11 _allocateDataWithTensorProperties:v9 error:&v21];
  v14 = v21;
  if (!v14)
  {
    objc_storeStrong(&v12->_tensorProperties, a3);
    data = v12->_data;
    v12->_data = v13;
    v19 = v13;

    objc_storeStrong(&v12->_tensorName, a4);
LABEL_7:
    v17 = v12;
    goto LABEL_8;
  }

  v15 = v14;
  if (a5)
  {
    v16 = v14;
    *a5 = v15;
  }

  v17 = 0;
LABEL_8:

  return v17;
}

@end