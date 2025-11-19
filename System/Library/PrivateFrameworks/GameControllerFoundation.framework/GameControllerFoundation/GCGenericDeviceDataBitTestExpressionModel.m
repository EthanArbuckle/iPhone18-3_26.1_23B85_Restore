@interface GCGenericDeviceDataBitTestExpressionModel
- (BOOL)isEqual:(id)a3;
- (GCGenericDeviceDataBitTestExpressionModel)initWithCoder:(id)a3;
- (id)buildExpressionWithContext:(id)a3 error:(id *)a4;
- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCGenericDeviceDataBitTestExpressionModel

- (GCGenericDeviceDataBitTestExpressionModel)initWithCoder:(id)a3
{
  v15.receiver = self;
  v15.super_class = GCGenericDeviceDataBitTestExpressionModel;
  v3 = a3;
  v4 = [(GCGenericDeviceDataProcessorExpressionModel *)&v15 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"inputExpression", v15.receiver, v15.super_class}];
  inputExpression = v4->_inputExpression;
  v4->_inputExpression = v5;

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"maskExpression"];
  maskExpression = v4->_maskExpression;
  v4->_maskExpression = v7;

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"trueExpression"];
  trueExpression = v4->_trueExpression;
  v4->_trueExpression = v9;

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"falseExpression"];
  falseExpression = v4->_falseExpression;
  v4->_falseExpression = v11;

  v13 = [v3 decodeBoolForKey:@"partialMatch"];
  v4->_partialMatch = v13;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = GCGenericDeviceDataBitTestExpressionModel;
  v4 = a3;
  [(GCGenericDeviceDataProcessorExpressionModel *)&v9 encodeWithCoder:v4];
  v5 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression:v9.receiver];
  [v4 encodeObject:v5 forKey:@"inputExpression"];

  v6 = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  [v4 encodeObject:v6 forKey:@"maskExpression"];

  v7 = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  [v4 encodeObject:v7 forKey:@"trueExpression"];

  v8 = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
  [v4 encodeObject:v8 forKey:@"falseExpression"];

  [v4 encodeBool:-[GCGenericDeviceDataBitTestExpressionModel partialMatch](self forKey:{"partialMatch"), @"partialMatch"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = GCGenericDeviceDataBitTestExpressionModel;
  if ([(GCGenericDeviceDataProcessorExpressionModel *)&v16 isEqual:v4])
  {
    v5 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
    v6 = [v4 inputExpression];
    if ([v5 isEqual:v6])
    {
      v7 = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
      v8 = [v4 maskExpression];
      if ([v7 isEqual:v8])
      {
        v9 = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
        v10 = [v4 trueExpression];
        if ([v9 isEqual:v10])
        {
          v11 = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
          v12 = [v4 falseExpression];
          if ([v11 isEqual:v12])
          {
            v13 = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
            v14 = v13 ^ [v4 partialMatch] ^ 1;
          }

          else
          {
            LOBYTE(v14) = 0;
          }
        }

        else
        {
          LOBYTE(v14) = 0;
        }
      }

      else
      {
        LOBYTE(v14) = 0;
      }
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (id)description
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
  v18 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
  v17 = [v18 description];
  v3 = [v17 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v16 = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  v4 = [v16 description];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v6 = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  v7 = [v6 description];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
  v10 = [v9 description];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v15 stringWithFormat:@"(bit-test %i\n\t%@\n\t%@\n\t%@\n\t%@\n)", v14, v3, v5, v8, v11];

  return v12;
}

- (id)debugDescription
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v14 = NSStringFromClass(v3);
  v19 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
  v18 = [v19 debugDescription];
  v4 = [v18 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v17 = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  v15 = [v17 debugDescription];
  v5 = [v15 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v6 = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  v7 = [v6 debugDescription];
  v8 = [v7 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v9 = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
  v10 = [v9 debugDescription];
  v11 = [v10 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
  v12 = [v16 stringWithFormat:@"<%@ %p> {\n\t input = %@\n\t mask = %@\n\t trueExpression = %@\n\t falseExpression = %@\n\t partialMatch = %i\n}", v14, self, v4, v5, v8, v11, -[GCGenericDeviceDataBitTestExpressionModel partialMatch](self, "partialMatch")];

  return v12;
}

- (id)buildExpressionWithContext:(id)a3 error:(id *)a4
{
  v78[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_respondsToSelector();
  v8 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
  v9 = v8;
  if (v7)
  {
    v70 = 0;
    v10 = &v70;
    v11 = [v6 buildExpression:v8 error:&v70];
  }

  else
  {
    v69 = 0;
    v10 = &v69;
    v11 = [v8 buildExpressionWithContext:v6 error:&v69];
  }

  v12 = v11;
  v13 = *v10;

  if (!v12)
  {
    if (!a4)
    {
      v25 = 0;
      goto LABEL_31;
    }

    v20 = MEMORY[0x1E696ABC0];
    v77[0] = *MEMORY[0x1E696A578];
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v22 = *MEMORY[0x1E696A588];
    v78[0] = v21;
    v78[1] = @"The 'inputExpression' sub-expression failed to build.";
    v23 = *MEMORY[0x1E696AA08];
    v77[1] = v22;
    v77[2] = v23;
    v78[2] = v13;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:3];
    [v20 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v24];
    *a4 = v25 = 0;
    v14 = v13;
    goto LABEL_29;
  }

  v14 = _Block_copy(v12);

  v15 = objc_opt_respondsToSelector();
  v16 = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
  v17 = v16;
  if (v15)
  {
    v68 = 0;
    v18 = &v68;
    v19 = [v6 buildExpression:v16 error:&v68];
  }

  else
  {
    v67 = 0;
    v18 = &v67;
    v19 = [v16 buildExpressionWithContext:v6 error:&v67];
  }

  v26 = v19;
  v27 = *v18;

  if (!v26)
  {
    if (!a4)
    {
      v25 = 0;
      goto LABEL_30;
    }

    v33 = MEMORY[0x1E696ABC0];
    v75[0] = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v35 = *MEMORY[0x1E696A588];
    v76[0] = v34;
    v76[1] = @"The 'maskExpression' sub-expression failed to build.";
    v36 = *MEMORY[0x1E696AA08];
    v75[1] = v35;
    v75[2] = v36;
    v76[2] = v27;
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:3];
    [v33 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v37];
    *a4 = v25 = 0;
    v21 = v27;
    goto LABEL_28;
  }

  v21 = _Block_copy(v26);

  v28 = objc_opt_respondsToSelector();
  v29 = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
  v30 = v29;
  if (v28)
  {
    v66 = 0;
    v31 = &v66;
    v32 = [v6 buildExpression:v29 error:&v66];
  }

  else
  {
    v65 = 0;
    v31 = &v65;
    v32 = [v29 buildExpressionWithContext:v6 error:&v65];
  }

  v38 = v32;
  v24 = *v31;

  if (v38)
  {
    v34 = _Block_copy(v38);

    v39 = objc_opt_respondsToSelector();
    v40 = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
    v41 = v40;
    if (v39)
    {
      v64 = 0;
      v42 = &v64;
      v43 = [v6 buildExpression:v40 error:&v64];
    }

    else
    {
      v63 = 0;
      v42 = &v63;
      v43 = [v40 buildExpressionWithContext:v6 error:&v63];
    }

    v48 = v43;
    v37 = *v42;

    if (v48)
    {
      v49 = _Block_copy(v48);

      v50 = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __91__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke;
      aBlock[3] = &unk_1E8413A30;
      v58 = v14;
      v59 = v21;
      v62 = v50;
      v24 = v34;
      v60 = v24;
      v61 = v49;
      v37 = v49;
      v25 = _Block_copy(aBlock);

      v47 = v58;
    }

    else
    {
      if (!a4)
      {
        v25 = 0;
        goto LABEL_28;
      }

      v51 = MEMORY[0x1E696ABC0];
      v71[0] = *MEMORY[0x1E696A578];
      v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
      v52 = *MEMORY[0x1E696A588];
      v72[0] = v47;
      v72[1] = @"The 'falseExpression' sub-expression failed to build.";
      v53 = *MEMORY[0x1E696AA08];
      v71[1] = v52;
      v71[2] = v53;
      v72[2] = v37;
      v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];
      *a4 = [v51 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v54];

      v25 = 0;
      v24 = v34;
    }
  }

  else
  {
    if (!a4)
    {
      v25 = 0;
      goto LABEL_29;
    }

    v44 = MEMORY[0x1E696ABC0];
    v73[0] = *MEMORY[0x1E696A578];
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v45 = *MEMORY[0x1E696A588];
    v74[0] = v37;
    v74[1] = @"The 'trueExpression' sub-expression failed to build.";
    v46 = *MEMORY[0x1E696AA08];
    v73[1] = v45;
    v73[2] = v46;
    v74[2] = v24;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:3];
    [v44 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v47];
    *a4 = v25 = 0;
  }

  v34 = v24;
LABEL_28:

  v24 = v34;
LABEL_29:

  v27 = v21;
LABEL_30:

  v13 = v14;
LABEL_31:

  v55 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __91__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildExpressionWithContext_error___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = rint((*(*(a1 + 40) + 16))());
  v4 = v3 & rint(v2);
  if (v4)
  {
    v5 = 48;
  }

  else
  {
    v5 = 56;
  }

  if (v4 == v3)
  {
    v6 = 48;
  }

  else
  {
    v6 = 56;
  }

  if (*(a1 + 64))
  {
    v6 = v5;
  }

  v7 = *(*(a1 + v6) + 16);

  return v7();
}

- (id)buildReactiveExpressionWithContext:(id)a3 consumer:(id)a4 error:(id *)a5
{
  v90[4] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v53 = a4;
  v81[0] = 0;
  v81[1] = v81;
  v81[2] = 0x2020000000;
  v81[3] = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v80[3] = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v79[3] = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v8 = [(GCGenericDeviceDataBitTestExpressionModel *)self partialMatch];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
    v10 = v76;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke;
    v76[3] = &unk_1E8413A58;
    v76[5] = v81;
    v76[4] = v53;
    v76[6] = v80;
    v77 = v8;
    v76[7] = v79;
    v76[8] = v78;
    v11 = &v75;
    v75 = 0;
    v12 = [v7 buildReactiveExpression:v9 consumer:v76 error:&v75];
  }

  else
  {
    v9 = [(GCGenericDeviceDataBitTestExpressionModel *)self inputExpression];
    v10 = v73;
    v73[0] = MEMORY[0x1E69E9820];
    v73[1] = 3221225472;
    v73[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2;
    v73[3] = &unk_1E8413A58;
    v73[5] = v81;
    v73[4] = v53;
    v73[6] = v80;
    v74 = v8;
    v73[7] = v79;
    v73[8] = v78;
    v11 = &v72;
    v72 = 0;
    v12 = [v9 buildReactiveExpressionWithContext:v7 consumer:v73 error:&v72];
  }

  v13 = v12;
  v14 = *v11;

  if (!v13)
  {
    if (!a5)
    {
      v24 = 0;
      goto LABEL_34;
    }

    v19 = MEMORY[0x1E696ABC0];
    v88[0] = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v21 = *MEMORY[0x1E696A588];
    v89[0] = v20;
    v89[1] = @"The 'inputExpression' sub-expression failed to build.";
    v22 = *MEMORY[0x1E696AA08];
    v88[1] = v21;
    v88[2] = v22;
    v89[2] = v14;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:3];
    [v19 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v23];
    *a5 = v24 = 0;
    goto LABEL_32;
  }

  v90[0] = v13;
  if (objc_opt_respondsToSelector())
  {
    v15 = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
    v16 = v70;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3;
    v70[3] = &unk_1E8413A58;
    v70[5] = v80;
    v70[4] = v53;
    v70[6] = v81;
    v71 = v8;
    v70[7] = v79;
    v70[8] = v78;
    v17 = &v69;
    v69 = 0;
    v18 = [v7 buildReactiveExpression:v15 consumer:v70 error:&v69];
  }

  else
  {
    v15 = [(GCGenericDeviceDataBitTestExpressionModel *)self maskExpression];
    v16 = v67;
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4;
    v67[3] = &unk_1E8413A58;
    v67[5] = v80;
    v67[4] = v53;
    v67[6] = v81;
    v68 = v8;
    v67[7] = v79;
    v67[8] = v78;
    v17 = &v66;
    v66 = 0;
    v18 = [v15 buildReactiveExpressionWithContext:v7 consumer:v67 error:&v66];
  }

  v20 = v18;
  v25 = (v16 + 4);
  v26 = *v17;

  if (!v20)
  {
    if (!a5)
    {
      v24 = 0;
      goto LABEL_33;
    }

    v30 = MEMORY[0x1E696ABC0];
    v86[0] = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v31 = *MEMORY[0x1E696A588];
    v87[0] = v23;
    v87[1] = @"The 'maskExpression' sub-expression failed to build.";
    v32 = *MEMORY[0x1E696AA08];
    v86[1] = v31;
    v86[2] = v32;
    v87[2] = v26;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:3];
    [v30 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v33];
    *a5 = v24 = 0;
    goto LABEL_30;
  }

  v90[1] = v20;
  if (objc_opt_respondsToSelector())
  {
    v27 = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
    v28 = v64;
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5;
    v64[3] = &unk_1E8413A58;
    v64[5] = v79;
    v64[4] = v53;
    v64[6] = v81;
    v65 = v8;
    v64[7] = v80;
    v64[8] = v78;
    v29 = &v63;
    v63 = 0;
    v51 = [v7 buildReactiveExpression:v27 consumer:v64 error:&v63];
  }

  else
  {
    v27 = [(GCGenericDeviceDataBitTestExpressionModel *)self trueExpression];
    v28 = v61;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6;
    v61[3] = &unk_1E8413A58;
    v61[5] = v79;
    v61[4] = v53;
    v61[6] = v81;
    v62 = v8;
    v61[7] = v80;
    v61[8] = v78;
    v29 = &v60;
    v60 = 0;
    v51 = [v27 buildReactiveExpressionWithContext:v7 consumer:v61 error:&v60];
  }

  v34 = (v28 + 4);
  v23 = *v29;

  if (!v51)
  {
    if (!a5)
    {
      v24 = 0;
      goto LABEL_31;
    }

    v39 = MEMORY[0x1E696ABC0];
    v84[0] = *MEMORY[0x1E696A578];
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v40 = *MEMORY[0x1E696A588];
    v85[0] = v33;
    v85[1] = @"The 'trueExpression' sub-expression failed to build.";
    v41 = *MEMORY[0x1E696AA08];
    v84[1] = v40;
    v84[2] = v41;
    v85[2] = v23;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:3];
    *a5 = [v39 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v42];
    goto LABEL_27;
  }

  v90[2] = v51;
  if (objc_opt_respondsToSelector())
  {
    v35 = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
    v36 = v58;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7;
    v58[3] = &unk_1E8413A58;
    v58[5] = v78;
    v58[4] = v53;
    v58[6] = v81;
    v59 = v8;
    v58[7] = v80;
    v58[8] = v79;
    v37 = &v57;
    v57 = 0;
    v38 = [v7 buildReactiveExpression:v35 consumer:v58 error:&v57];
  }

  else
  {
    v35 = [(GCGenericDeviceDataBitTestExpressionModel *)self falseExpression];
    v36 = v55;
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8;
    v55[3] = &unk_1E8413A58;
    v55[5] = v78;
    v55[4] = v53;
    v55[6] = v81;
    v56 = v8;
    v55[7] = v80;
    v55[8] = v79;
    v37 = &v54;
    v54 = 0;
    v38 = [v35 buildReactiveExpressionWithContext:v7 consumer:v55 error:&v54];
  }

  v43 = v38;
  v44 = (v36 + 4);
  v33 = *v37;

  v23 = v51;
  if (!v43)
  {
    if (!a5)
    {
LABEL_28:
      v24 = 0;
      goto LABEL_29;
    }

    v45 = MEMORY[0x1E696ABC0];
    v82[0] = *MEMORY[0x1E696A578];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to build expression closure for '%@'.", objc_opt_class()];
    v46 = *MEMORY[0x1E696A588];
    v83[0] = v42;
    v83[1] = @"The 'falseExpression' sub-expression failed to build.";
    v47 = *MEMORY[0x1E696AA08];
    v82[1] = v46;
    v82[2] = v47;
    v83[2] = v33;
    v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v83 forKeys:v82 count:3];
    [v45 errorWithDomain:@"GCGenericDeviceError" code:2 userInfo:v48];
    *a5 = v23 = v51;

LABEL_27:
    goto LABEL_28;
  }

  v90[3] = v43;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:4];
  v33 = v43;
LABEL_29:
  v26 = v20;
LABEL_30:

  v20 = v26;
LABEL_31:
  v14 = v13;
LABEL_32:

  v26 = v20;
  v13 = v14;
LABEL_33:

  v14 = v13;
LABEL_34:

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v79, 8);
  _Block_object_dispose(v80, 8);
  _Block_object_dispose(v81, 8);

  v49 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 48) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 40) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_2(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 48) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 40) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_3(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 40) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_4(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 40) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 56;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_5(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 40;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 40;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_6(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 40;
  }

  else
  {
    v4 = 64;
  }

  if (v3 == v2)
  {
    v5 = 40;
  }

  else
  {
    v5 = 64;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_7(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 64;
  }

  else
  {
    v4 = 40;
  }

  if (v3 == v2)
  {
    v5 = 64;
  }

  else
  {
    v5 = 40;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

uint64_t __108__GCGenericDeviceDataBitTestExpressionModel_Compilation__buildReactiveExpressionWithContext_consumer_error___block_invoke_8(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v2 = rint(*(*(*(a1 + 56) + 8) + 24));
  v3 = v2 & rint(*(*(*(a1 + 48) + 8) + 24));
  if (v3)
  {
    v4 = 64;
  }

  else
  {
    v4 = 40;
  }

  if (v3 == v2)
  {
    v5 = 64;
  }

  else
  {
    v5 = 40;
  }

  if (*(a1 + 72))
  {
    v5 = v4;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + v5) + 8) + 24));
}

@end