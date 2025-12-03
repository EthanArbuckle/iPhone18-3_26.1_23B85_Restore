@interface CHE5MLUtilities
+ (__IOSurface)createInputSurfaceForMultiArray:(id)array;
+ (id)createInputSurfacesForFeatureProvider:(id)provider;
+ (id)featureProviderForE5RTOutputs:(id)outputs functionDescriptor:(id)descriptor dataType:(int64_t)type error:(id *)error;
+ (id)multiArrayForOutput:(id)output inNamedObjects:(id)objects functionDescriptor:(id)descriptor dataType:(int64_t)type error:(id *)error;
+ (id)newE5RTExecutionOutputsForFunctionDescriptor:(id)descriptor error:(id *)error;
+ (id)newInputsForFunctionDescriptor:(id)descriptor surfaces:(id)surfaces error:(id *)error;
@end

@implementation CHE5MLUtilities

+ (__IOSurface)createInputSurfaceForMultiArray:(id)array
{
  v61 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  if (objc_msgSend_dataType(arrayCopy, v4, v5, v6, v7, v8) == 65568)
  {
    v14 = objc_msgSend_count(arrayCopy, v9, v10, v11, v12, v13);
    v17 = sub_18377EA64(v14, 1, 2, 2 * v14, v15, v16);
    v22 = IOSurfaceLock(v17, 0, 0);
    if (v22)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v23 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      goto LABEL_6;
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = sub_1839662EC;
    v56[3] = &unk_1E6DE05A0;
    v56[4] = 4 * v14;
    v56[5] = v17;
    v56[6] = v14;
    objc_msgSend_getBytesWithHandler_(arrayCopy, v18, v56, v19, v20, v21);
    v42 = IOSurfaceUnlock(v17, 0, 0);
    if (v42)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v23 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v47 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v43, v42, v44, v45, v46);
        *buf = 134218242;
        v58 = v17;
        v59 = 2112;
        v60 = v47;
        _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "Could not unlock IOSurfaceRef %p (%@)", buf, 0x16u);
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (objc_msgSend_dataType(arrayCopy, v9, v10, v11, v12, v13) != 131104)
    {
LABEL_24:
      v17 = 0;
      goto LABEL_25;
    }

    v34 = objc_msgSend_count(arrayCopy, v29, v30, v31, v32, v33);
    v35 = 4 * v34;
    v17 = sub_18377EA64(v34, 1, 4, 4 * v34, v36, v37);
    v22 = IOSurfaceLock(v17, 0, 0);
    if (v22)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v23 = qword_1EA84DC50[0];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

LABEL_6:
      v28 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v24, v22, v25, v26, v27);
      *buf = 134218242;
      v58 = v17;
      v59 = 2112;
      v60 = v28;
      _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "Could not lock IOSurfaceRef %p (%@)", buf, 0x16u);

LABEL_23:
      goto LABEL_24;
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = sub_183966574;
    v55[3] = &unk_1E6DE05C0;
    v55[4] = v35;
    v55[5] = v17;
    objc_msgSend_getBytesWithHandler_(arrayCopy, v38, v55, v39, v40, v41);
    v48 = IOSurfaceUnlock(v17, 0, 0);
    if (v48)
    {
      if (qword_1EA84DC48 != -1)
      {
        dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
      }

      v23 = qword_1EA84DC50[0];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v49, v48, v50, v51, v52);
        *buf = 134218242;
        v58 = v17;
        v59 = 2112;
        v60 = v53;
        _os_log_impl(&dword_18366B000, v23, OS_LOG_TYPE_ERROR, "Could not unlock IOSurfaceRef %p (%@)", buf, 0x16u);
      }

      goto LABEL_23;
    }
  }

LABEL_25:

  return v17;
}

+ (id)createInputSurfacesForFeatureProvider:(id)provider
{
  v58 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v9 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5, v6, v7, v8);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = objc_msgSend_featureNames(providerCopy, v10, v11, v12, v13, v14);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v53, v57, 16, v16);
  if (v21)
  {
    v22 = *v54;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v54 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v53 + 1) + 8 * i);
        v25 = objc_msgSend_featureValueForName_(providerCopy, v17, v24, v18, v19, v20);
        v31 = objc_msgSend_multiArrayValue(v25, v26, v27, v28, v29, v30);

        InputSurfaceForMultiArray = objc_msgSend_createInputSurfaceForMultiArray_(CHE5MLUtilities, v32, v31, v33, v34, v35);
        if (!InputSurfaceForMultiArray)
        {

          v50 = 0;
          goto LABEL_11;
        }

        v41 = objc_msgSend_valueWithPointer_(MEMORY[0x1E696B098], v36, InputSurfaceForMultiArray, v38, v39, v40);
        objc_msgSend_setObject_forKeyedSubscript_(v9, v42, v41, v24, v43, v44);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v53, v57, 16, v20);
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v50 = objc_msgSend_copy(v9, v45, v46, v47, v48, v49);
LABEL_11:

  return v50;
}

+ (id)newInputsForFunctionDescriptor:(id)descriptor surfaces:(id)surfaces error:(id *)error
{
  v147 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  surfacesCopy = surfaces;
  v128 = descriptorCopy;
  v132 = objc_alloc_init(MEMORY[0x1E69DF940]);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v12 = objc_msgSend_allInputs(descriptorCopy, v7, v8, v9, v10, v11);
  obj = v12;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v134, v146, 16, v14);
  if (v20)
  {
    v130 = *v135;
    while (2)
    {
      v21 = 0;
      do
      {
        if (*v135 != v130)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v134 + 1) + 8 * v21);
        v23 = objc_msgSend_name(v22, v15, v16, v17, v18, v19);
        v28 = objc_msgSend_objectForKeyedSubscript_(surfacesCopy, v24, v23, v25, v26, v27);
        v34 = objc_msgSend_pointerValue(v28, v29, v30, v31, v32, v33);

        Height = IOSurfaceGetHeight(v34);
        BytesPerRow = IOSurfaceGetBytesPerRow(v34);
        v42 = objc_msgSend_strides(v22, v37, v38, v39, v40, v41);
        v43 = v42;
        v49 = BytesPerRow * Height;
        LOBYTE(Height) = v49 == *objc_msgSend_byteOffsets(v42, v44, v45, v46, v47, v48);

        if ((Height & 1) == 0)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v55 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v61 = objc_msgSend_strides(v22, v56, v57, v58, v59, v60);
            v62 = v61;
            v68 = *objc_msgSend_byteOffsets(v61, v63, v64, v65, v66, v67);
            *buf = 134218498;
            v139 = v49;
            v140 = 2048;
            v141 = v68;
            v142 = 2112;
            v143 = v23;
            _os_log_impl(&dword_18366B000, v55, OS_LOG_TYPE_ERROR, "Size mismatch! IOSurface bytes: %ld, input descriptor bytes: %ld for input %@", buf, 0x20u);
          }
        }

        v69 = objc_msgSend_strides(v22, v50, v51, v52, v53, v54);
        v70 = v69;
        v76 = v49 == *objc_msgSend_byteOffsets(v69, v71, v72, v73, v74, v75);

        if (!v76)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v82 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v82, OS_LOG_TYPE_FAULT))
          {
            v88 = objc_msgSend_strides(v22, v83, v84, v85, v86, v87);
            v89 = v88;
            v95 = *objc_msgSend_byteOffsets(v88, v90, v91, v92, v93, v94);
            *buf = 134218498;
            v139 = v49;
            v140 = 2048;
            v141 = v95;
            v142 = 2112;
            v143 = v23;
            _os_log_impl(&dword_18366B000, v82, OS_LOG_TYPE_FAULT, "Size mismatch! IOSurface bytes: %ld, input descriptor bytes: %ld for input %@", buf, 0x20u);
          }
        }

        v96 = 0;
        v97 = 1;
        while (1)
        {
          v98 = objc_msgSend_shape(v22, v77, v78, v79, v80, v81);
          v104 = v96 < objc_msgSend_rank(v98, v99, v100, v101, v102, v103);

          if (!v104)
          {
            break;
          }

          v110 = objc_msgSend_shape(v22, v105, v106, v107, v108, v109);
          v111 = v110;
          v117 = *(objc_msgSend_sizes(v110, v112, v113, v114, v115, v116) + 8 * v96);

          v97 *= v117;
          ++v96;
        }

        if (v49 != IOSurfaceGetBytesPerElement(v34) * v97)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v118 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            BytesPerElement = IOSurfaceGetBytesPerElement(v34);
            *buf = 134218754;
            v139 = v49;
            v140 = 2048;
            v141 = v97;
            v142 = 2048;
            v143 = BytesPerElement;
            v144 = 2112;
            v145 = v23;
            _os_log_impl(&dword_18366B000, v118, OS_LOG_TYPE_ERROR, "Size mismatch! IOSurface bytes: %ld does not match tensor descriptor shape product %zu*%zu for input %@", buf, 0x2Au);
          }
        }

        if (v49 != IOSurfaceGetBytesPerElement(v34) * v97)
        {
          if (qword_1EA84DC48 != -1)
          {
            dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
          }

          v122 = qword_1EA84DC50[0];
          if (os_log_type_enabled(v122, OS_LOG_TYPE_FAULT))
          {
            v123 = IOSurfaceGetBytesPerElement(v34);
            *buf = 134218754;
            v139 = v49;
            v140 = 2048;
            v141 = v97;
            v142 = 2048;
            v143 = v123;
            v144 = 2112;
            v145 = v23;
            _os_log_impl(&dword_18366B000, v122, OS_LOG_TYPE_FAULT, "Size mismatch! IOSurface bytes: %ld does not match tensor descriptor shape product %zu*%zu for input %@", buf, 0x2Au);
          }
        }

        v124 = objc_msgSend_assignSurface_toName_error_(v132, v120, v34, v23, error, v121);

        if (!v124)
        {

          v126 = 0;
          v125 = v132;
          goto LABEL_38;
        }

        ++v21;
      }

      while (v21 != v20);
      v12 = obj;
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v134, v146, 16, v19);
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v125 = v132;
  v126 = v132;
LABEL_38:

  return v126;
}

+ (id)multiArrayForOutput:(id)output inNamedObjects:(id)objects functionDescriptor:(id)descriptor dataType:(int64_t)type error:(id *)error
{
  outputCopy = output;
  objectsCopy = objects;
  descriptorCopy = descriptor;
  v17 = descriptorCopy;
  if (type == 65568)
  {
    v18 = objc_msgSend_outputNamed_error_(descriptorCopy, v14, outputCopy, error, v15, v16);
    v24 = v18;
    if (v18)
    {
      v51 = objc_msgSend_shape(v18, v19, v20, v21, v22, v23);
      v30 = objc_msgSend_strides(v24, v25, v26, v27, v28, v29);
      v36 = objc_msgSend_dataType(v24, v31, v32, v33, v34, v35);
      v57 = 0;
      v58 = &v57;
      v59 = 0x3032000000;
      v60 = sub_183967290;
      v61 = sub_1839672A0;
      v62 = 0;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = sub_1839672A8;
      v52[3] = &unk_1E6DE0608;
      v56 = v36;
      v37 = v51;
      v53 = v37;
      v38 = v30;
      v54 = v38;
      v55 = &v57;
      v39 = MEMORY[0x1865E6810](v52);
      v45 = objc_msgSend_name(v24, v40, v41, v42, v43, v44);
      OnlyDataForName_usingBlock_error = objc_msgSend_accessReadOnlyDataForName_usingBlock_error_(objectsCopy, v46, v45, v39, error, v47);

      if (OnlyDataForName_usingBlock_error)
      {
        v49 = v58[5];
      }

      else
      {
        v49 = 0;
      }

      _Block_object_dispose(&v57, 8);
    }

    else
    {
      v49 = 0;
    }
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

+ (id)featureProviderForE5RTOutputs:(id)outputs functionDescriptor:(id)descriptor dataType:(int64_t)type error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  outputsCopy = outputs;
  descriptorCopy = descriptor;
  v15 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11, v12, v13, v14);
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v21 = objc_msgSend_allOutputs(descriptorCopy, v16, v17, v18, v19, v20);
  obj = v21;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v62, v66, 16, v23);
  if (v29)
  {
    v31 = *v63;
    *&v30 = 138412290;
    v59 = v30;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = objc_msgSend_name(*(*(&v62 + 1) + 8 * i), v24, v25, v26, v27, v28, v59);
        v35 = objc_msgSend_multiArrayForOutput_inNamedObjects_functionDescriptor_dataType_error_(CHE5MLUtilities, v34, v33, outputsCopy, descriptorCopy, type, error);
        objc_msgSend_setObject_forKeyedSubscript_(v15, v36, v35, v33, v37, v38);
        v39 = v35;
        v45 = objc_msgSend_dataPointer(v35, v40, v41, v42, v43, v44);
        v51 = objc_msgSend_count(v35, v46, v47, v48, v49, v50);
        if (v51)
        {
          v52 = 4 * v51;
          do
          {
            v45 += 4;
            v52 -= 4;
          }

          while (v52);
        }
      }

      v21 = obj;
      v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v62, v66, 16, v28);
    }

    while (v29);
  }

  v53 = objc_alloc(MEMORY[0x1E695FE48]);
  v57 = objc_msgSend_initWithDictionary_error_(v53, v54, v15, 0, v55, v56);

  return v57;
}

+ (id)newE5RTExecutionOutputsForFunctionDescriptor:(id)descriptor error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  v6 = objc_alloc_init(MEMORY[0x1E69DF940]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = objc_msgSend_allOutputs(descriptorCopy, v7, v8, v9, v10, v11, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v23, v27, 16, v14);
  if (v18)
  {
    v19 = *v24;
    while (2)
    {
      v20 = 0;
      do
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v12);
        }

        if ((objc_msgSend_E5RTExecutionContextAssignNewTensorInstanceToNamedObjects_error_(*(*(&v23 + 1) + 8 * v20), v15, v6, error, v16, v17) & 1) == 0)
        {

          v21 = 0;
          goto LABEL_11;
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v23, v27, 16, v17);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v21 = v6;
LABEL_11:

  return v21;
}

@end