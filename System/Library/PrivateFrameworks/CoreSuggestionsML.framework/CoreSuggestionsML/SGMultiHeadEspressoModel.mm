@interface SGMultiHeadEspressoModel
+ (id)classifierWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality;
+ (id)makeStringForShape:(unint64_t)shape[10];
+ (unint64_t)getNumParametersFromShape:(unint64_t)shape[10] rank:(unint64_t)rank;
- (SGMultiHeadEspressoModel)initWithEspressoContext:(void *)context espressoPlan:(void *)plan espressoModel:(id)model inputName:(id)name inputNumParameters:(unint64_t)parameters headDimensionality:(id)dimensionality;
- (id)predict:(id)predict;
- (id)predict:(id)predict heads:(id)heads;
- (void)dealloc;
@end

@implementation SGMultiHeadEspressoModel

- (id)predict:(id)predict
{
  headDimensionality = self->_headDimensionality;
  predictCopy = predict;
  allKeys = [(NSDictionary *)headDimensionality allKeys];
  v7 = [(SGMultiHeadEspressoModel *)self predict:predictCopy heads:allKeys];

  return v7;
}

- (id)predict:(id)predict heads:(id)heads
{
  v80 = *MEMORY[0x277D85DE8];
  predictCopy = predict;
  headsCopy = heads;
  if (![headsCopy count])
  {
    v21 = MEMORY[0x277CBEC10];
    goto LABEL_45;
  }

  v64 = predictCopy;
  v8 = objc_opt_new();
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v63 = headsCopy;
  v9 = headsCopy;
  v10 = [v9 countByEnumeratingWithState:&v67 objects:v79 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v67 + 1) + 8 * i);
        v15 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v14];

        if (v15)
        {
          [v8 addObject:v14];
        }

        else
        {
          v16 = sgLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v76 = v14;
            _os_log_impl(&dword_24799E000, v16, OS_LOG_TYPE_INFO, "Could not validate existence of head %@ in model", buf, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v67 objects:v79 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v17 = [v8 count];
    v18 = sgLogHandle();
    v19 = v18;
    if (v17 >= 9)
    {
      predictCopy = v64;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v20 = [v8 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v76 = v20;
        v77 = 2048;
        v78 = 8;
        _os_log_fault_impl(&dword_24799E000, v19, OS_LOG_TYPE_FAULT, "Running inference on heads %@ but max heads for inference is %lu", buf, 0x16u);
      }

      goto LABEL_43;
    }

    predictCopy = v64;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = [v8 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v76 = v22;
      _os_log_impl(&dword_24799E000, v19, OS_LOG_TYPE_INFO, "Running multi-head inference on heads %@", buf, 0xCu);
    }

    v19 = objc_opt_new();
    v23 = objc_autoreleasePoolPush();
    [(NSString *)self->_inputName cStringUsingEncoding:4];
    plan = self->_espressoModel.plan;
    v25 = *&self->_espressoModel.network_index;
    v26 = espresso_network_bind_buffer();
    if (v26)
    {
      v27 = v26;
      v28 = sgLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        inputName = self->_inputName;
        *buf = 138412546;
        v76 = inputName;
        v77 = 1024;
        LODWORD(v78) = v27;
        _os_log_fault_impl(&dword_24799E000, v28, OS_LOG_TYPE_FAULT, "Could not bind the input buffer to layer %@ in espresso plan, status code %d", buf, 0x12u);
      }

      goto LABEL_42;
    }

    [v64 sparseVectorToDense:0 length:self->_inputNumParameters];
    bzero(buf, 0x540uLL);
    if ([v8 count])
    {
      context = v23;
      v30 = 0;
      v31 = 0;
      v32 = buf;
      *&v29 = 138412546;
      v62 = v29;
      do
      {
        v33 = [v8 objectAtIndexedSubscript:{v31, v62}];
        [v33 cStringUsingEncoding:4];
        v34 = self->_espressoModel.plan;
        v35 = *&self->_espressoModel.network_index;
        v36 = espresso_network_bind_buffer();
        if (v36)
        {
          v37 = v36;
          v38 = sgLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            *v71 = v62;
            v72 = v33;
            v73 = 1024;
            v74 = v37;
            _os_log_fault_impl(&dword_24799E000, v38, OS_LOG_TYPE_FAULT, "Could not bind the output buffer to layer %@ in espresso plan, status code %d", v71, 0x12u);
          }

          v30 = 1;
        }

        v39 = objc_alloc(MEMORY[0x277CBEB18]);
        v40 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v33];
        v41 = [v39 initWithCapacity:{objc_msgSend(v40, "unsignedIntegerValue")}];
        [v19 setObject:v41 forKeyedSubscript:v33];

        ++v31;
        v32 += 168;
      }

      while (v31 < [v8 count]);
      v23 = context;
      if (v30)
      {
        v42 = sgLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
        {
          *v71 = 0;
          v43 = "Could not bind output buffer to network given output names";
          v44 = v42;
          v45 = 2;
LABEL_56:
          _os_log_fault_impl(&dword_24799E000, v44, OS_LOG_TYPE_FAULT, v43, v71, v45);
          goto LABEL_41;
        }

        goto LABEL_41;
      }
    }

    espressoPlan = self->_espressoPlan;
    v47 = espresso_plan_execute_sync();
    if (v47)
    {
      v48 = v47;
      v42 = sgLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        *v71 = 67109120;
        LODWORD(v72) = v48;
        v43 = "Could not execute espresso plan, status code %d";
        v44 = v42;
        v45 = 8;
        goto LABEL_56;
      }

LABEL_41:

LABEL_42:
      objc_autoreleasePoolPop(v23);
LABEL_43:
      v21 = 0;
      goto LABEL_44;
    }

    contexta = v23;
    if ([v8 count])
    {
      v51 = 0;
      do
      {
        v52 = [v8 objectAtIndexedSubscript:v51];
        v53 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v52];
        unsignedIntegerValue = [v53 unsignedIntegerValue];

        if (unsignedIntegerValue)
        {
          v56 = 0;
          do
          {
            LODWORD(v55) = *(*&buf[168 * v51] + 4 * v56);
            v57 = [MEMORY[0x277CCABB0] numberWithFloat:v55];
            v58 = [v19 objectForKeyedSubscript:v52];
            [v58 setObject:v57 atIndexedSubscript:v56];

            ++v56;
            v59 = [(NSDictionary *)self->_headDimensionality objectForKeyedSubscript:v52];
            unsignedIntegerValue2 = [v59 unsignedIntegerValue];
          }

          while (v56 < unsignedIntegerValue2);
        }

        ++v51;
      }

      while (v51 < [v8 count]);
    }

    objc_autoreleasePoolPop(contexta);
    v19 = v19;
    v21 = v19;
  }

  else
  {
    v19 = sgLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_24799E000, v19, OS_LOG_TYPE_FAULT, "No available heads were found for inference", buf, 2u);
    }

    v21 = 0;
  }

  predictCopy = v64;
LABEL_44:

  headsCopy = v63;
LABEL_45:

  v49 = *MEMORY[0x277D85DE8];

  return v21;
}

- (SGMultiHeadEspressoModel)initWithEspressoContext:(void *)context espressoPlan:(void *)plan espressoModel:(id)model inputName:(id)name inputNumParameters:(unint64_t)parameters headDimensionality:(id)dimensionality
{
  v10 = *&model.var1;
  var0 = model.var0;
  nameCopy = name;
  dimensionalityCopy = dimensionality;
  v20.receiver = self;
  v20.super_class = SGMultiHeadEspressoModel;
  v17 = [(SGMultiHeadEspressoModel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_espressoPlan = plan;
    v17->_espressoContext = context;
    v17->_espressoModel.plan = var0;
    *&v17->_espressoModel.network_index = v10;
    objc_storeStrong(&v17->_inputName, name);
    v18->_inputNumParameters = parameters;
    objc_storeStrong(&v18->_headDimensionality, dimensionality);
  }

  return v18;
}

- (void)dealloc
{
  espressoPlan = self->_espressoPlan;
  espresso_plan_destroy();
  espressoContext = self->_espressoContext;
  espresso_context_destroy();
  v5.receiver = self;
  v5.super_class = SGMultiHeadEspressoModel;
  [(SGMultiHeadEspressoModel *)&v5 dealloc];
}

+ (id)classifierWithEspressoModelFile:(id)file inputName:(id)name headDimensionality:(id)dimensionality
{
  v126 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  nameCopy = name;
  dimensionalityCopy = dimensionality;
  v10 = espresso_create_context();
  if (!v10)
  {
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v17 = "Could not create espresso context";
LABEL_10:
    v18 = v16;
    v19 = 2;
    goto LABEL_11;
  }

  v11 = v10;
  plan = espresso_create_plan();
  if (!plan)
  {
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v17 = "Could not create espresso plan";
    goto LABEL_10;
  }

  v13 = plan;
  v89 = 0;
  v90 = 0;
  [fileCopy UTF8String];
  v14 = espresso_plan_add_network();
  if (v14)
  {
    v15 = v14;
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      *&buf[4] = fileCopy;
      *&buf[12] = 1024;
      *&buf[14] = 65568;
      *&buf[18] = 1024;
      *&buf[20] = v15;
      v17 = "Could not add espresso network from file %@ with storage type %05x, status code %d";
      v18 = v16;
      v19 = 24;
LABEL_11:
      _os_log_fault_impl(&dword_24799E000, v18, OS_LOG_TYPE_FAULT, v17, buf, v19);
    }

LABEL_32:

LABEL_33:
    v34 = 0;
    goto LABEL_34;
  }

  [nameCopy cStringUsingEncoding:4];
  v20 = espresso_network_declare_input();
  if (v20)
  {
    v21 = v20;
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 138412546;
    *&buf[4] = nameCopy;
    *&buf[12] = 1024;
    *&buf[14] = v21;
    v17 = "Could not declare espresso network input %@, status code %d";
    v18 = v16;
    v19 = 18;
    goto LABEL_11;
  }

  v73 = v11;
  v88 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  v22 = dimensionalityCopy;
  v23 = [v22 countByEnumeratingWithState:&v85 objects:v125 count:16];
  if (v23)
  {
    v24 = v23;
    v75 = nameCopy;
    v77 = fileCopy;
    v25 = 0;
    v26 = *v86;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v86 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v85 + 1) + 8 * i);
        [v28 cStringUsingEncoding:4];
        v29 = espresso_network_declare_output();
        if (v29)
        {
          v30 = v29;
          v31 = sgLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            *&buf[4] = v28;
            *&buf[12] = 1024;
            *&buf[14] = v30;
            _os_log_fault_impl(&dword_24799E000, v31, OS_LOG_TYPE_FAULT, "Could not declare espresso network output %@, status code %d", buf, 0x12u);
          }

          v25 = 1;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v85 objects:v125 count:16];
    }

    while (v24);

    nameCopy = v75;
    fileCopy = v77;
    if (v25)
    {
      v16 = sgLogHandle();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v17 = "Espresso multi head model did not have all declared heads";
      goto LABEL_10;
    }
  }

  else
  {
  }

  v32 = espresso_plan_build();
  if (v32)
  {
    v33 = v32;
    v16 = sgLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 67109120;
    *&buf[4] = v33;
    v17 = "Could not build espresso plan, status code %d";
    v18 = v16;
    v19 = 8;
    goto LABEL_11;
  }

  context = objc_autoreleasePoolPush();
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  memset(buf, 0, sizeof(buf));
  [nameCopy cStringUsingEncoding:4];
  v37 = espresso_network_bind_buffer();
  if (v37)
  {
    v38 = v37;
    v39 = sgLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      *v103 = 138412546;
      *&v103[4] = nameCopy;
      *&v103[12] = 1024;
      *&v103[14] = v38;
      v40 = "Could not bind the input buffer to layer %@ in espresso plan during initialization, status code %d";
LABEL_76:
      _os_log_fault_impl(&dword_24799E000, v39, OS_LOG_TYPE_FAULT, v40, v103, 0x12u);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v84 = 0;
  memset(v114, 0, sizeof(v114));
  v41 = espresso_buffer_unpack_tensor_shape();
  if (v41)
  {
    v42 = v41;
    v39 = sgLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      *v103 = 138412546;
      *&v103[4] = nameCopy;
      *&v103[12] = 1024;
      *&v103[14] = v42;
      v40 = "Unable to get input shape to layer %@ in espresso plan during initialization, status code %d";
      goto LABEL_76;
    }

LABEL_42:

    objc_autoreleasePoolPop(context);
    goto LABEL_33;
  }

  v74 = dimensionalityCopy;
  v78 = fileCopy;
  v43 = [SGMultiHeadEspressoModel getNumParametersFromShape:v114 rank:v84];
  v44 = sgLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    v69 = [SGMultiHeadEspressoModel makeStringForShape:v114];
    *v103 = 138413058;
    *&v103[4] = nameCopy;
    *&v103[12] = 2048;
    *&v103[14] = v84;
    *&v103[22] = 2112;
    *&v103[24] = v69;
    LOWORD(v104) = 2048;
    *(&v104 + 2) = v43;
    _os_log_debug_impl(&dword_24799E000, v44, OS_LOG_TYPE_DEBUG, "Input layer %@ has rank %zu, shape %@, num parameters %tu", v103, 0x2Au);
  }

  v76 = nameCopy;

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v45 = v22;
  v46 = [v45 countByEnumeratingWithState:&v80 objects:v113 count:16];
  if (!v46)
  {

    goto LABEL_74;
  }

  v47 = v46;
  v71 = v43;
  v48 = 0;
  v49 = *v81;
  do
  {
    for (j = 0; j != v47; ++j)
    {
      if (*v81 != v49)
      {
        objc_enumerationMutation(v45);
      }

      v51 = *(*(&v80 + 1) + 8 * j);
      v52 = [v45 objectForKeyedSubscript:v51];
      v112 = 0;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      memset(v103, 0, sizeof(v103));
      [v51 cStringUsingEncoding:4];
      v53 = espresso_network_bind_buffer();
      if (!v53)
      {
        v101 = 0u;
        v102 = 0u;
        v100 = 0u;
        memset(v99, 0, sizeof(v99));
        v56 = espresso_buffer_unpack_tensor_shape();
        if (v56)
        {
          v57 = v56;
          v58 = sgLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
          {
            *v91 = 138412546;
            v92 = v51;
            v93 = 1024;
            LODWORD(v94) = v57;
            v59 = v58;
            v60 = "Unable to get output shape to layer %@ in espresso plan during initialization, status code %d";
            v61 = 18;
            goto LABEL_63;
          }

          goto LABEL_64;
        }

        v79 = v48;
        v62 = [SGMultiHeadEspressoModel getNumParametersFromShape:v99 rank:0];
        unsignedIntegerValue = [v52 unsignedIntegerValue];
        v64 = sgLogHandle();
        v58 = v64;
        if (unsignedIntegerValue == v62)
        {
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v66 = [SGMultiHeadEspressoModel makeStringForShape:v99];
            *v91 = 138413058;
            v92 = v51;
            v93 = 2048;
            v94 = 0;
            v95 = 2112;
            v96 = v66;
            v97 = 2048;
            v98 = v62;
            _os_log_debug_impl(&dword_24799E000, v58, OS_LOG_TYPE_DEBUG, "Output layer %@ has rank %zu, shape %@, num parameters %tu", v91, 0x2Au);
          }

          v48 = v79;
        }

        else
        {
          if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
          {
            unsignedIntegerValue2 = [v52 unsignedIntegerValue];
            *v91 = 138412802;
            v92 = v51;
            v93 = 2048;
            v94 = unsignedIntegerValue2;
            v95 = 2048;
            v96 = v62;
            v59 = v58;
            v60 = "Output layer %@ has expected dimensionality %lu but has actual dimensionality %lu";
            v61 = 32;
LABEL_63:
            _os_log_fault_impl(&dword_24799E000, v59, OS_LOG_TYPE_FAULT, v60, v91, v61);
          }

LABEL_64:
          v48 = 1;
        }

        goto LABEL_66;
      }

      v54 = v53;
      v55 = sgLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        *v99 = 138412546;
        *&v99[4] = v51;
        *&v99[12] = 1024;
        *&v99[14] = v54;
        _os_log_fault_impl(&dword_24799E000, v55, OS_LOG_TYPE_FAULT, "Could not bind the output buffer to layer %@ in espresso plan during initialization, status code %d", v99, 0x12u);
      }

      v48 = 1;
LABEL_66:
    }

    v47 = [v45 countByEnumeratingWithState:&v80 objects:v113 count:16];
  }

  while (v47);

  v43 = v71;
  if ((v48 & 1) == 0)
  {
LABEL_74:
    objc_autoreleasePoolPop(context);
    v68 = [SGMultiHeadEspressoModel alloc];
    v70 = v45;
    nameCopy = v76;
    v34 = [(SGMultiHeadEspressoModel *)v68 initWithEspressoContext:v73 espressoPlan:v13 espressoModel:v89 inputName:v90 inputNumParameters:v76 headDimensionality:v43, v70];
    fileCopy = v78;
    dimensionalityCopy = v74;
    goto LABEL_34;
  }

  v67 = sgLogHandle();
  fileCopy = v78;
  dimensionalityCopy = v74;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_FAULT))
  {
    *v103 = 0;
    _os_log_fault_impl(&dword_24799E000, v67, OS_LOG_TYPE_FAULT, "Espresso multi head model output dimensionality did not match that expected", v103, 2u);
  }

  objc_autoreleasePoolPop(context);
  v34 = 0;
  nameCopy = v76;
LABEL_34:

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (unint64_t)getNumParametersFromShape:(unint64_t)shape[10] rank:(unint64_t)rank
{
  if (!rank)
  {
    return 0;
  }

  rankCopy = 10;
  if (rank < 0xA)
  {
    rankCopy = rank;
  }

  result = 1;
  do
  {
    v6 = *shape++;
    result *= v6;
    --rankCopy;
  }

  while (rankCopy);
  return result;
}

+ (id)makeStringForShape:(unint64_t)shape[10]
{
  v4 = objc_opt_new();
  [v4 appendString:@"{"];
  for (i = 0; i != 10; ++i)
  {
    [v4 appendFormat:@" %zu", shape[i]];
  }

  [v4 appendString:@" }"];

  return v4;
}

@end