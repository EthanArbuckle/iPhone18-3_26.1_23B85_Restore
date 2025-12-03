@interface GCGenericDeviceDataSDLHatFunctionExpressionModel
- (BOOL)isEqual:(id)equal;
- (GCGenericDeviceDataSDLHatFunctionExpressionModel)initWithCoder:(id)coder;
- (id)buildExpressionWithContext:(id)context error:(id *)error;
- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCGenericDeviceDataSDLHatFunctionExpressionModel

- (GCGenericDeviceDataSDLHatFunctionExpressionModel)initWithCoder:(id)coder
{
  v18.receiver = self;
  v18.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModel;
  coderCopy = coder;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v18 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v18.receiver, v18.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMinExpression"];
  inputMinExpression = v4->_inputMinExpression;
  v4->_inputMinExpression = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inputMaxExpression"];
  inputMaxExpression = v4->_inputMaxExpression;
  v4->_inputMaxExpression = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maskExpression"];
  maskExpression = v4->_maskExpression;
  v4->_maskExpression = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trueExpression"];
  trueExpression = v4->_trueExpression;
  v4->_trueExpression = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"falseExpression"];

  falseExpression = v4->_falseExpression;
  v4->_falseExpression = v15;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModel;
  coderCopy = coder;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v11 encodeWithCoder:coderCopy];
  v5 = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"inputExpression"];

  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  [coderCopy encodeObject:inputMinExpression forKey:@"inputMinExpression"];

  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
  [coderCopy encodeObject:inputMaxExpression forKey:@"inputMaxExpression"];

  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
  [coderCopy encodeObject:maskExpression forKey:@"maskExpression"];

  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
  [coderCopy encodeObject:trueExpression forKey:@"trueExpression"];

  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
  [coderCopy encodeObject:falseExpression forKey:@"falseExpression"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v23.receiver = self;
  v23.super_class = GCGenericDeviceDataSDLHatFunctionExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v23 isEqual:equalCopy])
  {
    inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
    inputExpression2 = [equalCopy inputExpression];
    if ([inputExpression isEqual:inputExpression2])
    {
      inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
      inputMinExpression2 = [equalCopy inputMinExpression];
      if ([inputMinExpression isEqual:inputMinExpression2])
      {
        inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
        inputMaxExpression2 = [equalCopy inputMaxExpression];
        if ([inputMaxExpression isEqual:inputMaxExpression2])
        {
          maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
          maskExpression2 = [equalCopy maskExpression];
          if ([maskExpression isEqual:maskExpression2])
          {
            v21 = maskExpression;
            trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
            trueExpression2 = [equalCopy trueExpression];
            v22 = trueExpression;
            v15 = trueExpression;
            v16 = trueExpression2;
            if ([v15 isEqual:trueExpression2])
            {
              falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
              falseExpression2 = [equalCopy falseExpression];
              v17 = [falseExpression isEqual:falseExpression2];
            }

            else
            {
              v17 = 0;
            }

            maskExpression = v21;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
  v22 = [inputExpression description];
  v15 = [v22 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  v20 = [inputMinExpression description];
  v12 = [v20 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
  v16 = [inputMaxExpression description];
  v3 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
  v13 = [maskExpression description];
  v4 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
  v6 = [trueExpression description];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
  v9 = [falseExpression description];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v18 = [v17 stringWithFormat:@"(sdl-hat-function\n\t%@\n\t%@\n\t%@\n\t%@\n\t%@\n\t%@\n)", v15, v12, v3, v4, v7, v10];

  return v18;
}

- (id)debugDescription
{
  v20 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
  v24 = [inputExpression debugDescription];
  v15 = [v24 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  v22 = [inputMinExpression debugDescription];
  v13 = [v22 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
  v17 = [inputMaxExpression debugDescription];
  v12 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
  v14 = [maskExpression debugDescription];
  v4 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
  v6 = [trueExpression debugDescription];
  v7 = [v6 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
  v9 = [falseExpression debugDescription];
  v10 = [v9 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v21 = [v20 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t inputMin = %@\n\t inputMax = %@\n\t mask = %@\n\t true = %@\n\t false = %@\n}", v18, self, v15, v13, v12, v4, v7, v10];

  return v21;
}

- (id)buildExpressionWithContext:(id)context error:(id *)error
{
  v111[3] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_opt_respondsToSelector();
  inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
  v9 = inputExpression;
  if (v7)
  {
    v99 = 0;
    v10 = &v99;
    v11 = [contextCopy buildExpression:inputExpression error:&v99];
  }

  else
  {
    v98 = 0;
    v10 = &v98;
    v11 = [inputExpression buildExpressionWithContext:contextCopy error:&v98];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!error)
    {
      v25 = 0;
      goto LABEL_48;
    }

    v20 = MEMORY[0x1E696ABC0];
    v110[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v111[0] = v21;
    v111[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v110[1] = v22;
    v110[2] = v23;
    v111[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v111 forKeys:v110 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *error = v25 = 0;
    v14 = v13;
    goto LABEL_46;
  }

  v14 = _Block_copy(v12);

  v15 = objc_opt_respondsToSelector();
  inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
  v17 = inputMinExpression;
  if (v15)
  {
    v97 = 0;
    v18 = &v97;
    v19 = [contextCopy buildExpression:inputMinExpression error:&v97];
  }

  else
  {
    v96 = 0;
    v18 = &v96;
    v19 = [inputMinExpression buildExpressionWithContext:contextCopy error:&v96];
  }

  v26 = v19;
  v27 = *v18;

  if (v26)
  {
    v21 = _Block_copy(v26);

    v28 = objc_opt_respondsToSelector();
    inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
    v30 = inputMaxExpression;
    if (v28)
    {
      v95 = 0;
      v31 = &v95;
      v32 = [contextCopy buildExpression:inputMaxExpression error:&v95];
    }

    else
    {
      v94 = 0;
      v31 = &v94;
      v32 = [inputMaxExpression buildExpressionWithContext:contextCopy error:&v94];
    }

    v37 = v32;
    v24 = *v31;

    if (!v37)
    {
      if (!error)
      {
        v25 = 0;
LABEL_46:

        v27 = v21;
        goto LABEL_47;
      }

      v43 = MEMORY[0x1E696ABC0];
      v106[0] = *MEMORY[0x1E696A578];
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v45 = *MEMORY[0x1E696A588];
      v107[0] = v44;
      v107[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v46 = *MEMORY[0x1E696AA08];
      v106[1] = v45;
      v106[2] = v46;
      v107[2] = v24;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:3];
      v48 = v43;
      v49 = v44;
      [v48 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v47];
      *error = v25 = 0;
      goto LABEL_44;
    }

    v80 = _Block_copy(v37);

    v38 = objc_opt_respondsToSelector();
    maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
    v40 = maskExpression;
    if (v38)
    {
      v93 = 0;
      v41 = &v93;
      v42 = [contextCopy buildExpression:maskExpression error:&v93];
    }

    else
    {
      v92 = 0;
      v41 = &v92;
      v42 = [maskExpression buildExpressionWithContext:contextCopy error:&v92];
    }

    v50 = v42;
    v36 = *v41;

    if (!v50)
    {
      if (!error)
      {
        v25 = 0;
        v24 = v80;
        goto LABEL_45;
      }

      v56 = MEMORY[0x1E696ABC0];
      v104[0] = *MEMORY[0x1E696A578];
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v58 = *MEMORY[0x1E696A588];
      v105[0] = v57;
      v105[1] = @"The 'maskExpression' sub-expression failed to build.";
      v59 = *MEMORY[0x1E696AA08];
      v104[1] = v58;
      v104[2] = v59;
      v105[2] = v36;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
      [v56 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v60];
      *error = v25 = 0;
      v49 = v36;
      goto LABEL_43;
    }

    v79 = _Block_copy(v50);

    v51 = objc_opt_respondsToSelector();
    trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
    v53 = trueExpression;
    if (v51)
    {
      v91 = 0;
      v54 = &v91;
      v55 = [contextCopy buildExpression:trueExpression error:&v91];
    }

    else
    {
      v90 = 0;
      v54 = &v90;
      v55 = [trueExpression buildExpressionWithContext:contextCopy error:&v90];
    }

    v61 = v55;
    v47 = *v54;

    if (v61)
    {
      v57 = _Block_copy(v61);

      v62 = objc_opt_respondsToSelector();
      falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
      v64 = falseExpression;
      if (v62)
      {
        v89 = 0;
        v65 = &v89;
        v66 = [contextCopy buildExpression:falseExpression error:&v89];
      }

      else
      {
        v88 = 0;
        v65 = &v88;
        v66 = [falseExpression buildExpressionWithContext:contextCopy error:&v88];
      }

      v71 = v66;
      v60 = *v65;

      if (v71)
      {
        v72 = _Block_copy(v71);

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __98__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
        aBlock[3] = &unk_1E84147D8;
        v82 = v14;
        v83 = v21;
        v84 = v80;
        v49 = v79;
        v85 = v79;
        v47 = v57;
        v86 = v47;
        v87 = v72;
        v60 = v72;
        v25 = _Block_copy(aBlock);

        v70 = v82;
LABEL_42:

        v57 = v47;
LABEL_43:

        v47 = v57;
        v24 = v80;
LABEL_44:

        v36 = v49;
        goto LABEL_45;
      }

      if (!error)
      {
        v25 = 0;
        v49 = v79;
        goto LABEL_43;
      }

      v73 = MEMORY[0x1E696ABC0];
      v100[0] = *MEMORY[0x1E696A578];
      v70 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v74 = *MEMORY[0x1E696A588];
      v101[0] = v70;
      v101[1] = @"The 'falseExpression' sub-expression failed to build.";
      v75 = *MEMORY[0x1E696AA08];
      v100[1] = v74;
      v100[2] = v75;
      v101[2] = v60;
      v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:v100 count:3];
      *error = [v73 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v76];

      v25 = 0;
      v47 = v57;
    }

    else
    {
      if (!error)
      {
        v25 = 0;
        v49 = v79;
        v24 = v80;
        goto LABEL_44;
      }

      v67 = MEMORY[0x1E696ABC0];
      v102[0] = *MEMORY[0x1E696A578];
      v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v68 = *MEMORY[0x1E696A588];
      v103[0] = v60;
      v103[1] = @"The 'trueExpression' sub-expression failed to build.";
      v69 = *MEMORY[0x1E696AA08];
      v102[1] = v68;
      v102[2] = v69;
      v103[2] = v47;
      v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v103 forKeys:v102 count:3];
      [v67 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v70];
      *error = v25 = 0;
    }

    v49 = v79;
    goto LABEL_42;
  }

  if (error)
  {
    v33 = MEMORY[0x1E696ABC0];
    v108[0] = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v34 = *MEMORY[0x1E696A588];
    v109[0] = v24;
    v109[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v35 = *MEMORY[0x1E696AA08];
    v108[1] = v34;
    v108[2] = v35;
    v109[2] = v27;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v109 forKeys:v108 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v36];
    *error = v25 = 0;
    v21 = v27;
LABEL_45:

    goto LABEL_46;
  }

  v25 = 0;
LABEL_47:

  v13 = v14;
LABEL_48:

  v77 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __98__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(void *a1)
{
  v2 = (*(a1[4] + 16))();
  v3 = (*(a1[5] + 16))();
  v4 = (*(a1[6] + 16))();
  (*(a1[7] + 16))();
  (*(a1[8] + 16))();
  result = (*(a1[9] + 16))();
  v6 = v4 - v3 + 1.0;
  v7 = v2 - v3;
  if (v6 == 4.0)
  {
    v7 = v7 + v7;
  }

  else if (v6 != 8.0)
  {
    v7 = -1.0;
  }

  v8 = rint(v7);
  if (v8 <= 7)
  {
    v9 = qword_1D2CB2990[v8];
  }

  return result;
}

- (id)buildReactiveExpressionWithContext:(id)context consumer:(id)consumer error:(id *)error
{
  v113[6] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  consumerCopy = consumer;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v100[3] = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v99[3] = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x2020000000;
  v98[3] = 0;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v97[3] = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v96[3] = 0;
  v95[0] = 0;
  v95[1] = v95;
  v95[2] = 0x2020000000;
  v95[3] = 0;
  if (objc_opt_respondsToSelector())
  {
    inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
    v10 = v94;
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v94[3] = &unk_1E8414800;
    v94[5] = v100;
    v94[4] = consumerCopy;
    v94[6] = v98;
    v94[7] = v99;
    v94[8] = v97;
    v94[9] = v96;
    v94[10] = v95;
    v11 = &v93;
    v93 = 0;
    v12 = [contextCopy buildReactiveExpression:inputExpression consumer:v94 error:&v93];
  }

  else
  {
    inputExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputExpression];
    v10 = v92;
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v92[3] = &unk_1E8414800;
    v92[5] = v100;
    v92[4] = consumerCopy;
    v92[6] = v98;
    v92[7] = v99;
    v92[8] = v97;
    v92[9] = v96;
    v92[10] = v95;
    v11 = &v91;
    v91 = 0;
    v12 = [inputExpression buildReactiveExpressionWithContext:contextCopy consumer:v92 error:&v91];
  }

  v13 = v12;
  v14 = *v11;

  if (!v13)
  {
    if (!error)
    {
      v24 = 0;
      goto LABEL_51;
    }

    v19 = MEMORY[0x1E696ABC0];
    v111[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v21 = *MEMORY[0x1E696A588];
    v112[0] = v20;
    v112[1] = @"The 'inputExpression' sub-expression failed to build.";
    v22 = *MEMORY[0x1E696AA08];
    v111[1] = v21;
    v111[2] = v22;
    v112[2] = v14;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v112 forKeys:v111 count:3];
    [v19 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v23];
    *error = v24 = 0;
    goto LABEL_49;
  }

  v113[0] = v13;
  if (objc_opt_respondsToSelector())
  {
    inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
    v16 = v90;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v90[3] = &unk_1E8414800;
    v90[5] = v99;
    v90[4] = consumerCopy;
    v90[6] = v100;
    v90[7] = v98;
    v90[8] = v97;
    v90[9] = v96;
    v90[10] = v95;
    v17 = &v89;
    v89 = 0;
    v18 = [contextCopy buildReactiveExpression:inputMinExpression consumer:v90 error:&v89];
  }

  else
  {
    inputMinExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMinExpression];
    v16 = v88;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 3221225472;
    v88[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v88[3] = &unk_1E8414800;
    v88[5] = v99;
    v88[4] = consumerCopy;
    v88[6] = v100;
    v88[7] = v98;
    v88[8] = v97;
    v88[9] = v96;
    v88[10] = v95;
    v17 = &v87;
    v87 = 0;
    v18 = [inputMinExpression buildReactiveExpressionWithContext:contextCopy consumer:v88 error:&v87];
  }

  v20 = v18;
  v25 = (v16 + 4);
  v26 = *v17;

  if (v20)
  {

    v113[1] = v20;
    if (objc_opt_respondsToSelector())
    {
      inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
      v28 = v86;
      v86[0] = MEMORY[0x1E69E9820];
      v86[1] = 3221225472;
      v86[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
      v86[3] = &unk_1E8414800;
      v86[5] = v98;
      v86[4] = consumerCopy;
      v86[6] = v100;
      v86[7] = v99;
      v86[8] = v97;
      v86[9] = v96;
      v86[10] = v95;
      v29 = &v85;
      v85 = 0;
      v69 = [contextCopy buildReactiveExpression:inputMaxExpression consumer:v86 error:&v85];
    }

    else
    {
      inputMaxExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self inputMaxExpression];
      v28 = v84;
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
      v84[3] = &unk_1E8414800;
      v84[5] = v98;
      v84[4] = consumerCopy;
      v84[6] = v100;
      v84[7] = v99;
      v84[8] = v97;
      v84[9] = v96;
      v84[10] = v95;
      v29 = &v83;
      v83 = 0;
      v69 = [inputMaxExpression buildReactiveExpressionWithContext:contextCopy consumer:v84 error:&v83];
    }

    v23 = *v29;

    if (!v69)
    {
      if (!error)
      {
        v24 = 0;
LABEL_48:
        v14 = v13;
LABEL_49:

        v26 = v20;
        v13 = v14;
        goto LABEL_50;
      }

      v37 = MEMORY[0x1E696ABC0];
      v107[0] = *MEMORY[0x1E696A578];
      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v38 = *MEMORY[0x1E696A588];
      v108[0] = v68;
      v108[1] = @"The 'inputMaxExpression' sub-expression failed to build.";
      v39 = *MEMORY[0x1E696AA08];
      v107[1] = v38;
      v107[2] = v39;
      v108[2] = v23;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v108 forKeys:v107 count:3];
      [v37 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v40];
      *error = v24 = 0;
      goto LABEL_45;
    }

    v113[2] = v69;
    if (objc_opt_respondsToSelector())
    {
      maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
      v35 = v82;
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7;
      v82[3] = &unk_1E8414800;
      v82[5] = v97;
      v82[4] = consumerCopy;
      v82[6] = v100;
      v82[7] = v98;
      v82[8] = v99;
      v82[9] = v96;
      v82[10] = v95;
      v36 = &v81;
      v81 = 0;
      v68 = [contextCopy buildReactiveExpression:maskExpression consumer:v82 error:&v81];
    }

    else
    {
      maskExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self maskExpression];
      v35 = v80;
      v80[0] = MEMORY[0x1E69E9820];
      v80[1] = 3221225472;
      v80[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8;
      v80[3] = &unk_1E8414800;
      v80[5] = v97;
      v80[4] = consumerCopy;
      v80[6] = v100;
      v80[7] = v98;
      v80[8] = v99;
      v80[9] = v96;
      v80[10] = v95;
      v36 = &v79;
      v79 = 0;
      v68 = [maskExpression buildReactiveExpressionWithContext:contextCopy consumer:v80 error:&v79];
    }

    v41 = (v35 + 4);
    v33 = *v36;

    if (!v68)
    {
      if (!error)
      {
        v24 = 0;
        goto LABEL_46;
      }

      v45 = MEMORY[0x1E696ABC0];
      v105[0] = *MEMORY[0x1E696A578];
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v47 = *MEMORY[0x1E696A588];
      v106[0] = v46;
      v106[1] = @"The 'maskExpression' sub-expression failed to build.";
      v48 = *MEMORY[0x1E696AA08];
      v105[1] = v47;
      v105[2] = v48;
      v106[2] = v33;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];
      [v45 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v49];
      *error = v24 = 0;
      goto LABEL_43;
    }

    v113[3] = v68;
    if (objc_opt_respondsToSelector())
    {
      trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
      v43 = v78;
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9;
      v78[3] = &unk_1E8414800;
      v78[5] = v96;
      v78[4] = consumerCopy;
      v78[6] = v100;
      v78[7] = v98;
      v78[8] = v99;
      v78[9] = v97;
      v78[10] = v95;
      v44 = &v77;
      v77 = 0;
      v67 = [contextCopy buildReactiveExpression:trueExpression consumer:v78 error:&v77];
    }

    else
    {
      trueExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self trueExpression];
      v43 = v76;
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10;
      v76[3] = &unk_1E8414800;
      v76[5] = v96;
      v76[4] = consumerCopy;
      v76[6] = v100;
      v76[7] = v98;
      v76[8] = v99;
      v76[9] = v97;
      v76[10] = v95;
      v44 = &v75;
      v75 = 0;
      v67 = [trueExpression buildReactiveExpressionWithContext:contextCopy consumer:v76 error:&v75];
    }

    v50 = (v43 + 4);
    v40 = *v44;

    if (v67)
    {

      v113[4] = v67;
      if (objc_opt_respondsToSelector())
      {
        falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
        v52 = v74;
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_11;
        v74[3] = &unk_1E8414800;
        v74[5] = v95;
        v74[4] = consumerCopy;
        v74[6] = v100;
        v74[7] = v98;
        v74[8] = v99;
        v74[9] = v97;
        v74[10] = v96;
        v53 = &v73;
        v73 = 0;
        v54 = [contextCopy buildReactiveExpression:falseExpression consumer:v74 error:&v73];
      }

      else
      {
        falseExpression = [(GCGenericDeviceDataSDLHatFunctionExpressionModel *)self falseExpression];
        v52 = v72;
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_12;
        v72[3] = &unk_1E8414800;
        v72[5] = v95;
        v72[4] = consumerCopy;
        v72[6] = v100;
        v72[7] = v98;
        v72[8] = v99;
        v72[9] = v97;
        v72[10] = v96;
        v53 = &v71;
        v71 = 0;
        v54 = [falseExpression buildReactiveExpressionWithContext:contextCopy consumer:v72 error:&v71];
      }

      v59 = v54;
      v60 = (v52 + 4);
      v49 = *v53;

      v46 = v67;
      if (v59)
      {

        v113[5] = v59;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:6];
        v49 = v59;
LABEL_42:
        v33 = v68;
LABEL_43:

        v40 = v46;
        v68 = v33;
LABEL_44:
        v23 = v69;
LABEL_45:

        v33 = v68;
        v69 = v23;
LABEL_46:
        v26 = v20;
        goto LABEL_47;
      }

      if (!error)
      {
        v24 = 0;
        goto LABEL_42;
      }

      v61 = MEMORY[0x1E696ABC0];
      v101[0] = *MEMORY[0x1E696A578];
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v62 = *MEMORY[0x1E696A588];
      v102[0] = v58;
      v102[1] = @"The 'falseExpression' sub-expression failed to build.";
      v63 = *MEMORY[0x1E696AA08];
      v101[1] = v62;
      v101[2] = v63;
      v102[2] = v49;
      v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];
      [v61 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v64];
      *error = v40 = v67;
    }

    else
    {
      if (!error)
      {
        v24 = 0;
        goto LABEL_44;
      }

      v55 = MEMORY[0x1E696ABC0];
      v103[0] = *MEMORY[0x1E696A578];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v56 = *MEMORY[0x1E696A588];
      v104[0] = v49;
      v104[1] = @"The 'trueExpression' sub-expression failed to build.";
      v57 = *MEMORY[0x1E696AA08];
      v103[1] = v56;
      v103[2] = v57;
      v104[2] = v40;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:3];
      *error = [v55 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v58];
    }

    v24 = 0;
    v46 = v40;
    goto LABEL_42;
  }

  if (error)
  {
    v30 = MEMORY[0x1E696ABC0];
    v109[0] = *MEMORY[0x1E696A578];
    v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v31 = *MEMORY[0x1E696A588];
    v110[0] = v69;
    v110[1] = @"The 'inputMinExpression' sub-expression failed to build.";
    v32 = *MEMORY[0x1E696AA08];
    v109[1] = v31;
    v109[2] = v32;
    v110[2] = v26;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:3];
    [v30 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v33];
    *error = v24 = 0;
LABEL_47:

    v23 = v69;
    v20 = v26;
    goto LABEL_48;
  }

  v24 = 0;
LABEL_50:

  v14 = v13;
LABEL_51:

  _Block_object_dispose(v95, 8);
  _Block_object_dispose(v96, 8);
  _Block_object_dispose(v97, 8);
  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v99, 8);
  _Block_object_dispose(v100, 8);

  v65 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v3 = a1[4];
  v4 = *(*(a1[7] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24) - v4 + 1.0;
  v6 = *(*(a1[5] + 8) + 24) - v4;
  if (v5 == 4.0)
  {
    v6 = v6 + v6;
  }

  else if (v5 != 8.0)
  {
    v6 = -1.0;
  }

  v7 = rint(v6);
  if (v7 > 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1D2CB2990[v7];
  }

  v9 = (rint(*(*(a1[8] + 8) + 24)) & v8) == 0;
  v10 = 9;
  if (v9)
  {
    v10 = 10;
  }

  return (*(v3 + 16))(*(*(a1[v10] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v3 = a1[4];
  v4 = *(*(a1[7] + 8) + 24);
  v5 = *(*(a1[6] + 8) + 24) - v4 + 1.0;
  v6 = *(*(a1[5] + 8) + 24) - v4;
  if (v5 == 4.0)
  {
    v6 = v6 + v6;
  }

  else if (v5 != 8.0)
  {
    v6 = -1.0;
  }

  v7 = rint(v6);
  if (v7 > 7)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1D2CB2990[v7];
  }

  v9 = (rint(*(*(a1[8] + 8) + 24)) & v8) == 0;
  v10 = 9;
  if (v9)
  {
    v10 = 10;
  }

  return (*(v3 + 16))(*(*(a1[v10] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = *(*(a1[5] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[7] + 8) + 24);
  v3 = *(*(a1[5] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[8] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[5] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[5] + 8) + 24)) & v6) == 0;
  v8 = 9;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_9(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 5;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_10(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 5;
  if (v7)
  {
    v8 = 10;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_11(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 10;
  if (v7)
  {
    v8 = 5;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

uint64_t __115__GCGenericDeviceDataSDLHatFunctionExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_12(void *a1, double a2)
{
  *(*(a1[5] + 8) + 24) = a2;
  v2 = *(*(a1[8] + 8) + 24);
  v3 = *(*(a1[7] + 8) + 24) - v2 + 1.0;
  v4 = *(*(a1[6] + 8) + 24) - v2;
  if (v3 == 4.0)
  {
    v4 = v4 + v4;
  }

  else if (v3 != 8.0)
  {
    v4 = -1.0;
  }

  v5 = rint(v4);
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1D2CB2990[v5];
  }

  v7 = (rint(*(*(a1[9] + 8) + 24)) & v6) == 0;
  v8 = 10;
  if (v7)
  {
    v8 = 5;
  }

  return (*(a1[4] + 16))(a1[4], *(*(a1[v8] + 8) + 24));
}

@end