@interface GCGenericDeviceDataClampExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataClampExpressionModel)initWithCoder:(id)a3;
- (id)buildExpressionWithContext:(id)a3 error:(id *)a4;
- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataClampExpressionModel

- (GCGenericDeviceDataClampExpressionModel)initWithCoder:(id)a3
{
  v12.receiver = self;
  v12.super_class = GCGenericDeviceDataClampExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v12 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v12.receiver, v12.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"minExpression"];
  minExpression = v4->_minExpression;
  v4->_minExpression = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"maxExpression"];

  maxExpression = v4->_maxExpression;
  v4->_maxExpression = v9;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = GCGenericDeviceDataClampExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v8 encodeWithCoder:v4];
  v5 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression:v8.receiver];
  [v4 encodeObject:v5 forKey:@"inputExpression"];

  v6 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  [v4 encodeObject:v6 forKey:@"minExpression"];

  v7 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  [v4 encodeObject:v7 forKey:@"maxExpression"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = GCGenericDeviceDataClampExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v22 isEqual:v4])
  {
    v5 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
    v6 = [v4 inputExpression];
    if (![v5 isEqual:v6])
    {
      v11 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v7 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
    v8 = [v4 minExpression];
    if (v7 == v8)
    {
      [(GCGenericDeviceDataClampExpressionModel *)self maxExpression:v18];
    }

    else
    {
      v9 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
      v10 = [v4 minExpression];
      if (![v9 isEqual:v10])
      {
        v11 = 0;
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      [(GCGenericDeviceDataClampExpressionModel *)self maxExpression:v10];
    }
    v12 = ;
    v13 = [v4 maxExpression];
    v14 = v13;
    if (v12 == v13)
    {

      v11 = 1;
    }

    else
    {
      v15 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
      v16 = [v4 maxExpression];
      v11 = [v15 isEqual:v16];
    }

    v10 = v19;
    v9 = v21;
    if (v7 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)description
{
  v14 = MEMORY[0x1E696AEC0];
  v3 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
  v4 = [v3 description];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v6 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  v7 = [v6 description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  v10 = [v9 description];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v14 stringWithFormat:@"(clamp\n\t%@\n\t%@\n\t%@\n)", v5, v8, v11];

  return v12;
}

- (id)debugDescription
{
  v15 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v16 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
  v4 = [v16 debugDescription];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v6 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  v7 = [v6 debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  v10 = [v9 debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v15 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t min = %@\n\t max = %@\n}", v14, self, v5, v8, v11];

  return v12;
}

- (id)buildExpressionWithContext:(id)a3 error:(id *)a4
{
  v61[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_respondsToSelector();
  v8 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
  v9 = v8;
  if (v7)
  {
    v55 = 0;
    v10 = &v55;
    v11 = [v6 buildExpression:v8 error:&v55];
  }

  else
  {
    v54 = 0;
    v10 = &v54;
    v11 = [v8 buildExpressionWithContext:v6 error:&v54];
  }

  v12 = v11;
  v13 = *v10;

  if (v12)
  {
    v14 = _Block_copy(v12);

    v15 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];

    if (v15)
    {
      v16 = objc_opt_respondsToSelector();
      v17 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
      v18 = v17;
      if (v16)
      {
        v53 = 0;
        v19 = &v53;
        v20 = [v6 buildExpression:v17 error:&v53];
      }

      else
      {
        v52 = 0;
        v19 = &v52;
        v20 = [v17 buildExpressionWithContext:v6 error:&v52];
      }

      v26 = v20;
      v15 = *v19;

      if (!v26)
      {
        if (!a4)
        {
          v25 = 0;
          goto LABEL_22;
        }

        v39 = MEMORY[0x1E696ABC0];
        v58[0] = *MEMORY[0x1E696A578];
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v40 = *MEMORY[0x1E696A588];
        v59[0] = v24;
        v59[1] = @"The 'minExpression' sub-expression failed to build.";
        v41 = *MEMORY[0x1E696AA08];
        v58[1] = v40;
        v58[2] = v41;
        v59[2] = v15;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
        [v39 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v36];
        *a4 = v25 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v15;
    v15 = _Block_copy(v26);

    v28 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];

    if (v28)
    {
      v29 = objc_opt_respondsToSelector();
      v30 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
      v31 = v30;
      if (v29)
      {
        v51 = 0;
        v32 = &v51;
        v33 = [v6 buildExpression:v30 error:&v51];
      }

      else
      {
        v50 = 0;
        v32 = &v50;
        v33 = [v30 buildExpressionWithContext:v6 error:&v50];
      }

      v34 = v33;
      v24 = *v32;

      if (!v34)
      {
        if (!a4)
        {
          v25 = 0;
          goto LABEL_21;
        }

        v42 = MEMORY[0x1E696ABC0];
        v56[0] = *MEMORY[0x1E696A578];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v43 = *MEMORY[0x1E696A588];
        v57[0] = v36;
        v57[1] = @"The 'maxExpression' sub-expression failed to build.";
        v44 = *MEMORY[0x1E696AA08];
        v56[1] = v43;
        v56[2] = v44;
        v57[2] = v24;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];
        *a4 = [v42 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v45];

        v25 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v24 = 0;
      v34 = 0;
    }

    v35 = _Block_copy(v34);

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89__GCGenericDeviceDataClampExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
    aBlock[3] = &unk_1E8414CD0;
    v47 = v14;
    v15 = v15;
    v48 = v15;
    v49 = v35;
    v24 = v35;
    v25 = _Block_copy(aBlock);

    v36 = v47;
LABEL_20:

    goto LABEL_21;
  }

  if (a4)
  {
    v21 = MEMORY[0x1E696ABC0];
    v60[0] = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v61[0] = v15;
    v61[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v60[1] = v22;
    v60[2] = v23;
    v61[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:3];
    [v21 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *a4 = v25 = 0;
    v14 = v13;
LABEL_21:

LABEL_22:
    v13 = v14;
    goto LABEL_23;
  }

  v25 = 0;
LABEL_23:

  v37 = *MEMORY[0x1E69E9840];

  return v25;
}

double __89__GCGenericDeviceDataClampExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  v3 = a1[5];
  if (v3)
  {
    v4 = (*(v3 + 16))();
    if (v4 > v2)
    {
      v2 = v4;
    }
  }

  v5 = a1[6];
  if (v5)
  {
    v6 = (*(v5 + 16))();
    if (v6 < v2)
    {
      return v6;
    }
  }

  return v2;
}

- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5
{
  v85[3] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v51 = a4;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  v77[3] = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x2020000000;
  v76[3] = 0;
  v8 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
  v9 = v8 != 0;

  v10 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
  v11 = v10 != 0;

  v12 = [MEMORY[0x1E695DFB0] null];
  v13 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];

  if (!v13)
  {
LABEL_7:

    v85[0] = v12;
    v19 = [MEMORY[0x1E695DFB0] null];
    v20 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];

    if (v20)
    {
      if (objc_opt_respondsToSelector())
      {
        v21 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
        v22 = v65;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
        v65[3] = &unk_1E8414CF8;
        v65[5] = v77;
        v65[6] = v78;
        v66 = v11;
        v65[7] = v76;
        v67 = v9;
        v65[4] = v51;
        v64 = 0;
        v23 = &v64;
        v24 = [v7 buildReactiveExpression:v21 consumer:v65 error:&v64];
      }

      else
      {
        v21 = [(GCGenericDeviceDataClampExpressionModel *)self minExpression];
        v22 = v61;
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
        v61[3] = &unk_1E8414CF8;
        v61[5] = v77;
        v61[6] = v78;
        v62 = v11;
        v61[7] = v76;
        v63 = v9;
        v61[4] = v51;
        v60 = 0;
        v23 = &v60;
        v24 = [v21 buildReactiveExpressionWithContext:v7 consumer:v61 error:&v60];
      }

      v26 = v24;
      v25 = *v23;

      if (!v26)
      {
        if (!a5)
        {
          v36 = 0;
          goto LABEL_31;
        }

        v39 = MEMORY[0x1E696ABC0];
        v81[0] = *MEMORY[0x1E696A578];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v40 = *MEMORY[0x1E696A588];
        v82[0] = v28;
        v82[1] = @"The 'minExpression' sub-expression failed to build.";
        v41 = *MEMORY[0x1E696AA08];
        v81[1] = v40;
        v81[2] = v41;
        v82[2] = v25;
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:3];
        *a5 = [v39 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v42];

        v36 = 0;
        goto LABEL_29;
      }

      v19 = v26;
    }

    else
    {
      v25 = 0;
    }

    v85[1] = v19;
    v27 = [MEMORY[0x1E695DFB0] null];
    v28 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];

    if (v28)
    {
      if (objc_opt_respondsToSelector())
      {
        v29 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
        v30 = v57;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
        v57[3] = &unk_1E8414CF8;
        v57[5] = v76;
        v57[6] = v78;
        v58 = v11;
        v59 = v9;
        v57[7] = v77;
        v57[4] = v51;
        v56 = 0;
        v31 = &v56;
        v32 = [v7 buildReactiveExpression:v29 consumer:v57 error:&v56];
      }

      else
      {
        v29 = [(GCGenericDeviceDataClampExpressionModel *)self maxExpression];
        v30 = v53;
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
        v53[3] = &unk_1E8414CF8;
        v53[5] = v76;
        v53[6] = v78;
        v54 = v11;
        v55 = v9;
        v53[7] = v77;
        v53[4] = v51;
        v52 = 0;
        v31 = &v52;
        v32 = [v29 buildReactiveExpressionWithContext:v7 consumer:v53 error:&v52];
      }

      v37 = v32;
      v38 = (v30 + 4);
      v28 = *v31;

      if (!v37)
      {
        if (a5)
        {
          v43 = MEMORY[0x1E696ABC0];
          v79[0] = *MEMORY[0x1E696A578];
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
          v45 = *MEMORY[0x1E696A588];
          v80[0] = v44;
          v80[1] = @"The 'maxExpression' sub-expression failed to build.";
          v46 = *MEMORY[0x1E696AA08];
          v79[1] = v45;
          v79[2] = v46;
          v80[2] = v28;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:3];
          *a5 = [v43 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v47];
        }

        v36 = 0;
        goto LABEL_28;
      }

      v27 = v37;
    }

    v85[2] = v27;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
    v28 = v27;
LABEL_28:
    v25 = v19;
LABEL_29:
    v13 = v12;
    goto LABEL_30;
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
    v15 = v73;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v73[3] = &unk_1E8414CF8;
    v74 = v11;
    v73[5] = v78;
    v73[6] = v76;
    v75 = v9;
    v73[7] = v77;
    v73[4] = v51;
    v72 = 0;
    v16 = &v72;
    v17 = [v7 buildReactiveExpression:v14 consumer:v73 error:&v72];
  }

  else
  {
    v14 = [(GCGenericDeviceDataClampExpressionModel *)self inputExpression];
    v15 = v69;
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v69[3] = &unk_1E8414CF8;
    v70 = v11;
    v69[5] = v78;
    v69[6] = v76;
    v71 = v9;
    v69[7] = v77;
    v69[4] = v51;
    v68 = 0;
    v16 = &v68;
    v17 = [v14 buildReactiveExpressionWithContext:v7 consumer:v69 error:&v68];
  }

  v18 = v17;
  v13 = *v16;

  if (v18)
  {
    v12 = v18;
    goto LABEL_7;
  }

  if (a5)
  {
    v33 = MEMORY[0x1E696ABC0];
    v83[0] = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v34 = *MEMORY[0x1E696A588];
    v84[0] = v25;
    v84[1] = @"The 'inputExpression' sub-expression failed to build.";
    v35 = *MEMORY[0x1E696AA08];
    v83[1] = v34;
    v83[2] = v35;
    v84[2] = v13;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v28];
    *a5 = v36 = 0;
LABEL_30:

    v12 = v13;
LABEL_31:

    v13 = v12;
    goto LABEL_32;
  }

  v36 = 0;
LABEL_32:

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v77, 8);
  _Block_object_dispose(v78, 8);

  v48 = *MEMORY[0x1E69E9840];

  return v36;
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 48) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 40) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 48) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 56) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 56) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 40) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 40) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

uint64_t __106__GCGenericDeviceDataClampExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(uint64_t a1, __n128 a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2.n128_u64[0];
  a2.n128_u64[0] = *(*(*(a1 + 48) + 8) + 24);
  if (*(a1 + 64) == 1)
  {
    v2 = *(*(a1 + 40) + 8);
    if (*(v2 + 24) < a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v2 + 24);
    }
  }

  if (*(a1 + 65) == 1)
  {
    v3 = *(*(a1 + 56) + 8);
    if (*(v3 + 24) > a2.n128_f64[0])
    {
      a2.n128_u64[0] = *(v3 + 24);
    }
  }

  return (*(*(a1 + 32) + 16))(a2);
}

@end