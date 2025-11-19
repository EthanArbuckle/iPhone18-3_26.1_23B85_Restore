@interface GCGenericDeviceDataInterpolateExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataInterpolateExpressionModel)initWithCoder:(id)a3;
- (id)buildExpressionWithContext:(id)a3 error:(id *)a4;
- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataInterpolateExpressionModel

- (GCGenericDeviceDataInterpolateExpressionModel)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = GCGenericDeviceDataInterpolateExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v16 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v16.receiver, v16.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"inputMinExpression"];
  inputMinExpression = v4->_inputMinExpression;
  v4->_inputMinExpression = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"inputMaxExpression"];
  inputMaxExpression = v4->_inputMaxExpression;
  v4->_inputMaxExpression = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"outputMinExpression"];
  outputMinExpression = v4->_outputMinExpression;
  v4->_outputMinExpression = v11;

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"outputMaxExpression"];

  outputMaxExpression = v4->_outputMaxExpression;
  v4->_outputMaxExpression = v13;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = GCGenericDeviceDataInterpolateExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v10 encodeWithCoder:v4];
  v5 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression:v10.receiver];
  [v4 encodeObject:v5 forKey:@"inputExpression"];

  v6 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  [v4 encodeObject:v6 forKey:@"inputMinExpression"];

  v7 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
  [v4 encodeObject:v7 forKey:@"inputMaxExpression"];

  v8 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
  [v4 encodeObject:v8 forKey:@"outputMinExpression"];

  v9 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
  [v4 encodeObject:v9 forKey:@"outputMaxExpression"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = GCGenericDeviceDataInterpolateExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v18 isEqual:v4])
  {
    v5 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
    v6 = [v4 inputExpression];
    if ([v5 isEqual:v6])
    {
      v7 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
      v8 = [v4 inputMinExpression];
      if ([v7 isEqual:v8])
      {
        v9 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
        v10 = [v4 inputMaxExpression];
        if ([v9 isEqual:v10])
        {
          v11 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
          v12 = [v4 outputMinExpression];
          if ([v11 isEqual:v12])
          {
            v16 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
            [v4 outputMaxExpression];
            v13 = v17 = v11;
            v14 = [v16 isEqual:v13];

            v11 = v17;
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v20 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
  v19 = [v20 description];
  v13 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  v17 = [v18 description];
  v3 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v14 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
  v4 = [v14 description];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v6 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
  v7 = [v6 description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
  v10 = [v9 description];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v16 = [v15 stringWithFormat:@"(interpolate\n\t%@\n\t%@\n\t%@\n\t%@\n\t%@\n)", v13, v3, v5, v8, v11];

  return v16;
}

- (id)debugDescription
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v22 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
  v21 = [v22 debugDescription];
  v13 = [v21 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v20 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  v19 = [v20 debugDescription];
  v4 = [v19 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v15 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
  v14 = [v15 debugDescription];
  v5 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v6 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
  v7 = [v6 debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
  v10 = [v9 debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [v17 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t inputMin = %@\n\t inputMax = %@\n\t outputMin = %@\n\t outputMax = %@\n}", v16, self, v13, v4, v5, v8, v11];

  return v18;
}

- (id)buildExpressionWithContext:(id)a3 error:(id *)a4
{
  v92[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_respondsToSelector();
  v8 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
  v9 = v8;
  if (v7)
  {
    v82 = 0;
    v10 = &v82;
    v11 = [v6 buildExpression:v8 error:&v82];
  }

  else
  {
    v81 = 0;
    v10 = &v81;
    v11 = [v8 buildExpressionWithContext:v6 error:&v81];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!a4)
    {
      v25 = 0;
      goto LABEL_39;
    }

    v20 = MEMORY[0x1E696ABC0];
    v91[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v92[0] = v21;
    v92[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v91[1] = v22;
    v91[2] = v23;
    v92[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *a4 = v25 = 0;
    v14 = v13;
    goto LABEL_37;
  }

  v14 = _Block_copy(v12);

  v15 = objc_opt_respondsToSelector();
  v16 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
  v17 = v16;
  if (v15)
  {
    v80 = 0;
    v18 = &v80;
    v19 = [v6 buildExpression:v16 error:&v80];
  }

  else
  {
    v79 = 0;
    v18 = &v79;
    v19 = [v16 buildExpressionWithContext:v6 error:&v79];
  }

  v26 = v19;
  v27 = *v18;

  if (v26)
  {
    v21 = _Block_copy(v26);

    v28 = objc_opt_respondsToSelector();
    v29 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
    v30 = v29;
    if (v28)
    {
      v78 = 0;
      v31 = &v78;
      v32 = [v6 buildExpression:v29 error:&v78];
    }

    else
    {
      v77 = 0;
      v31 = &v77;
      v32 = [v29 buildExpressionWithContext:v6 error:&v77];
    }

    v38 = v32;
    v24 = *v31;

    if (!v38)
    {
      if (!a4)
      {
        v25 = 0;
        goto LABEL_37;
      }

      v44 = MEMORY[0x1E696ABC0];
      v87[0] = *MEMORY[0x1E696A578];
      v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v46 = *MEMORY[0x1E696A588];
      v88[0] = v45;
      v88[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v47 = *MEMORY[0x1E696AA08];
      v87[1] = v46;
      v87[2] = v47;
      v88[2] = v24;
      v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:3];
      [v44 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v48];
      *a4 = v25 = 0;
      v34 = v24;
      goto LABEL_35;
    }

    v34 = _Block_copy(v38);

    v39 = objc_opt_respondsToSelector();
    v40 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
    v41 = v40;
    if (v39)
    {
      v76 = 0;
      v42 = &v76;
      v43 = [v6 buildExpression:v40 error:&v76];
    }

    else
    {
      v75 = 0;
      v42 = &v75;
      v43 = [v40 buildExpressionWithContext:v6 error:&v75];
    }

    v49 = v43;
    v37 = *v42;

    if (v49)
    {
      v45 = _Block_copy(v49);

      v50 = objc_opt_respondsToSelector();
      v51 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
      v52 = v51;
      if (v50)
      {
        v74 = 0;
        v53 = &v74;
        v54 = [v6 buildExpression:v51 error:&v74];
      }

      else
      {
        v73 = 0;
        v53 = &v73;
        v54 = [v51 buildExpressionWithContext:v6 error:&v73];
      }

      v58 = v54;
      v48 = *v53;

      if (v58)
      {
        v59 = _Block_copy(v58);

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __95__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
        aBlock[3] = &unk_1E8415308;
        v68 = v14;
        v69 = v21;
        v70 = v34;
        v37 = v45;
        v71 = v37;
        v72 = v59;
        v48 = v59;
        v25 = _Block_copy(aBlock);

        v57 = v68;
      }

      else
      {
        if (!a4)
        {
          v25 = 0;
          goto LABEL_35;
        }

        v66 = MEMORY[0x1E696ABC0];
        v83[0] = *MEMORY[0x1E696A578];
        v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
        v60 = *MEMORY[0x1E696A588];
        v84[0] = v57;
        v84[1] = @"The 'outputMaxExpression' sub-expression failed to build.";
        v61 = *MEMORY[0x1E696AA08];
        v83[1] = v60;
        v83[2] = v61;
        v84[2] = v48;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:3];
        *a4 = [v66 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v62];

        v25 = 0;
        v37 = v45;
      }
    }

    else
    {
      if (!a4)
      {
        v25 = 0;
        goto LABEL_36;
      }

      v65 = MEMORY[0x1E696ABC0];
      v85[0] = *MEMORY[0x1E696A578];
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v55 = *MEMORY[0x1E696A588];
      v86[0] = v48;
      v86[1] = @"The 'outputMinExpression' sub-expression failed to build.";
      v56 = *MEMORY[0x1E696AA08];
      v85[1] = v55;
      v85[2] = v56;
      v86[2] = v37;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:3];
      [v65 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v57];
      *a4 = v25 = 0;
    }

    v45 = v37;
LABEL_35:

    v37 = v45;
    goto LABEL_36;
  }

  if (a4)
  {
    v33 = MEMORY[0x1E696ABC0];
    v89[0] = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v35 = *MEMORY[0x1E696A588];
    v90[0] = v34;
    v90[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v36 = *MEMORY[0x1E696AA08];
    v89[1] = v35;
    v89[2] = v36;
    v90[2] = v27;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v37];
    *a4 = v25 = 0;
    v21 = v27;
LABEL_36:

    v24 = v34;
LABEL_37:

    v27 = v21;
    goto LABEL_38;
  }

  v25 = 0;
LABEL_38:

  v13 = v14;
LABEL_39:

  v63 = *MEMORY[0x1E69E9840];

  return v25;
}

double __95__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  v3 = (*(a1[5] + 16))();
  v4 = (*(a1[6] + 16))();
  v5 = (*(a1[7] + 16))();
  return v5 + fabs((v2 - v3) / (v4 - v3)) * ((*(a1[8] + 16))() - v5);
}

- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5
{
  v97[5] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v61 = a4;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v86[3] = 0;
  v85[0] = 0;
  v85[1] = v85;
  v85[2] = 0x2020000000;
  v85[3] = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x2020000000;
  v84[3] = 0;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2020000000;
  v83[3] = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x2020000000;
  v82[3] = 0;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
    v9 = v81;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v81[3] = &unk_1E8415330;
    v81[5] = v86;
    v81[6] = v85;
    v81[7] = v84;
    v81[8] = v83;
    v81[9] = v82;
    v81[4] = v61;
    v80 = 0;
    v10 = &v80;
    v11 = [v7 buildReactiveExpression:v8 consumer:v81 error:&v80];
  }

  else
  {
    v8 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputExpression];
    v9 = v79;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v79[3] = &unk_1E8415330;
    v79[5] = v86;
    v79[6] = v85;
    v79[7] = v84;
    v79[8] = v83;
    v79[9] = v82;
    v79[4] = v61;
    v78 = 0;
    v10 = &v78;
    v11 = [v8 buildReactiveExpressionWithContext:v7 consumer:v79 error:&v78];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!a5)
    {
      v23 = 0;
      goto LABEL_43;
    }

    v18 = MEMORY[0x1E696ABC0];
    v95[0] = *MEMORY[0x1E696A578];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v20 = *MEMORY[0x1E696A588];
    v96[0] = v19;
    v96[1] = @"The 'inputExpression' sub-expression failed to build.";
    v21 = *MEMORY[0x1E696AA08];
    v95[1] = v20;
    v95[2] = v21;
    v96[2] = v13;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
    [v18 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v22];
    *a5 = v23 = 0;
    goto LABEL_41;
  }

  v97[0] = v12;
  if (objc_opt_respondsToSelector())
  {
    v14 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
    v15 = v77;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v77[3] = &unk_1E8415330;
    v77[5] = v85;
    v77[6] = v86;
    v77[7] = v84;
    v77[8] = v83;
    v77[9] = v82;
    v77[4] = v61;
    v76 = 0;
    v16 = &v76;
    v17 = [v7 buildReactiveExpression:v14 consumer:v77 error:&v76];
  }

  else
  {
    v14 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMinExpression];
    v15 = v75;
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v75[3] = &unk_1E8415330;
    v75[5] = v85;
    v75[6] = v86;
    v75[7] = v84;
    v75[8] = v83;
    v75[9] = v82;
    v75[4] = v61;
    v74 = 0;
    v16 = &v74;
    v17 = [v14 buildReactiveExpressionWithContext:v7 consumer:v75 error:&v74];
  }

  v19 = v17;
  v24 = (v15 + 4);
  v25 = *v16;

  if (v19)
  {

    v97[1] = v19;
    if (objc_opt_respondsToSelector())
    {
      v26 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
      v27 = v73;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
      v73[3] = &unk_1E8415330;
      v73[5] = v84;
      v73[6] = v86;
      v73[7] = v85;
      v73[8] = v83;
      v73[9] = v82;
      v73[4] = v61;
      v72 = 0;
      v28 = &v72;
      v29 = [v7 buildReactiveExpression:v26 consumer:v73 error:&v72];
    }

    else
    {
      v26 = [(GCGenericDeviceDataInterpolateExpressionModel *)self inputMaxExpression];
      v27 = v71;
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
      v71[3] = &unk_1E8415330;
      v71[5] = v84;
      v71[6] = v86;
      v71[7] = v85;
      v71[8] = v83;
      v71[9] = v82;
      v71[4] = v61;
      v70 = 0;
      v28 = &v70;
      v29 = [v26 buildReactiveExpressionWithContext:v7 consumer:v71 error:&v70];
    }

    v31 = v29;
    v22 = *v28;

    if (!v31)
    {
      if (!a5)
      {
        v23 = 0;
        goto LABEL_40;
      }

      v38 = MEMORY[0x1E696ABC0];
      v91[0] = *MEMORY[0x1E696A578];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v39 = *MEMORY[0x1E696A588];
      v92[0] = v34;
      v92[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v40 = *MEMORY[0x1E696AA08];
      v91[1] = v39;
      v91[2] = v40;
      v92[2] = v22;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:3];
      [v38 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v41];
      *a5 = v23 = 0;
      goto LABEL_37;
    }

    v97[2] = v31;
    if (objc_opt_respondsToSelector())
    {
      v35 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
      v36 = v69;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7;
      v69[3] = &unk_1E8415330;
      v69[5] = v83;
      v69[6] = v86;
      v69[7] = v85;
      v69[8] = v84;
      v69[9] = v82;
      v69[4] = v61;
      v68 = 0;
      v37 = &v68;
      v59 = [v7 buildReactiveExpression:v35 consumer:v69 error:&v68];
    }

    else
    {
      v35 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMinExpression];
      v36 = v67;
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8;
      v67[3] = &unk_1E8415330;
      v67[5] = v83;
      v67[6] = v86;
      v67[7] = v85;
      v67[8] = v84;
      v67[9] = v82;
      v67[4] = v61;
      v66 = 0;
      v37 = &v66;
      v59 = [v35 buildReactiveExpressionWithContext:v7 consumer:v67 error:&v66];
    }

    v42 = (v36 + 4);
    v34 = *v37;

    if (v59)
    {

      v97[3] = v59;
      if (objc_opt_respondsToSelector())
      {
        v43 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
        v44 = v65;
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9;
        v65[3] = &unk_1E8415330;
        v65[5] = v82;
        v65[6] = v86;
        v65[7] = v85;
        v65[8] = v84;
        v65[9] = v83;
        v65[4] = v61;
        v64 = 0;
        v45 = &v64;
        v46 = [v7 buildReactiveExpression:v43 consumer:v65 error:&v64];
      }

      else
      {
        v43 = [(GCGenericDeviceDataInterpolateExpressionModel *)self outputMaxExpression];
        v44 = v63;
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10;
        v63[3] = &unk_1E8415330;
        v63[5] = v82;
        v63[6] = v86;
        v63[7] = v85;
        v63[8] = v84;
        v63[9] = v83;
        v63[4] = v61;
        v62 = 0;
        v45 = &v62;
        v46 = [v43 buildReactiveExpressionWithContext:v7 consumer:v63 error:&v62];
      }

      v51 = v46;
      v52 = (v44 + 4);
      v41 = *v45;

      v34 = v59;
      if (v51)
      {

        v97[4] = v51;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:5];
        v41 = v51;
LABEL_36:
        v22 = v31;
LABEL_37:

        v31 = v22;
LABEL_38:
        v25 = v19;
        goto LABEL_39;
      }

      if (!a5)
      {
LABEL_35:
        v23 = 0;
        goto LABEL_36;
      }

      v53 = MEMORY[0x1E696ABC0];
      v87[0] = *MEMORY[0x1E696A578];
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v54 = *MEMORY[0x1E696A588];
      v88[0] = v50;
      v88[1] = @"The 'outputMaxExpression' sub-expression failed to build.";
      v55 = *MEMORY[0x1E696AA08];
      v87[1] = v54;
      v87[2] = v55;
      v88[2] = v41;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:v87 count:3];
      [v53 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v56];
      *a5 = v34 = v59;
    }

    else
    {
      if (!a5)
      {
        v23 = 0;
        goto LABEL_38;
      }

      v47 = MEMORY[0x1E696ABC0];
      v89[0] = *MEMORY[0x1E696A578];
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v48 = *MEMORY[0x1E696A588];
      v90[0] = v41;
      v90[1] = @"The 'outputMinExpression' sub-expression failed to build.";
      v49 = *MEMORY[0x1E696AA08];
      v89[1] = v48;
      v89[2] = v49;
      v90[2] = v34;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:v89 count:3];
      *a5 = [v47 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v50];
    }

    goto LABEL_35;
  }

  if (a5)
  {
    v30 = MEMORY[0x1E696ABC0];
    v93[0] = *MEMORY[0x1E696A578];
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v32 = *MEMORY[0x1E696A588];
    v94[0] = v31;
    v94[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v33 = *MEMORY[0x1E696AA08];
    v93[1] = v32;
    v93[2] = v33;
    v94[2] = v25;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v94 forKeys:v93 count:3];
    [v30 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v34];
    *a5 = v23 = 0;
LABEL_39:

    v22 = v31;
    v19 = v25;
LABEL_40:
    v13 = v12;
LABEL_41:

    v25 = v19;
    v12 = v13;
    goto LABEL_42;
  }

  v23 = 0;
LABEL_42:

  v13 = v12;
LABEL_43:

  _Block_object_dispose(v82, 8);
  _Block_object_dispose(v83, 8);
  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v85, 8);
  _Block_object_dispose(v86, 8);

  v57 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[6] + 8) + 24);
  v3 = (*(*(a1[5] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[6] + 8) + 24);
  v3 = (*(*(a1[5] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[7] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[5] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[5] + 8) + 24) - v2);
  v4 = *(*(a1[8] + 8) + 24);
  return (*(a1[4] + 16))(a1[4], v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[5] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[5] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[9] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[9] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[5] + 8) + 24) - v4));
}

uint64_t __112__GCGenericDeviceDataInterpolateExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = (*(*(a1[6] + 8) + 24) - v2) / (*(*(a1[8] + 8) + 24) - v2);
  v4 = *(*(a1[9] + 8) + 24);
  return (*(a1[4] + 16))(v4 + fabs(v3) * (*(*(a1[5] + 8) + 24) - v4));
}

@end