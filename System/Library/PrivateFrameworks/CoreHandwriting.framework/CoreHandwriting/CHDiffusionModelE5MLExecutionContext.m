@interface CHDiffusionModelE5MLExecutionContext
- (id)predictionFromFeatureProvider:(id)a3 error:(id *)a4;
@end

@implementation CHDiffusionModelE5MLExecutionContext

- (id)predictionFromFeatureProvider:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = objc_msgSend_createInputSurfacesForFeatureProvider_(CHE5MLUtilities, a2, a3, a4, v4, v5);
  v14 = objc_msgSend_functionDescriptor(self, v9, v10, v11, v12, v13);
  v17 = objc_msgSend_newInputsForFunctionDescriptor_surfaces_error_(CHE5MLUtilities, v15, v14, v8, a4, v16);

  v48 = v17;
  v21 = objc_msgSend_predictionFromInputObjects_error_(self, v18, v17, a4, v19, v20);
  if (v21)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v22 = v8;
    v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v49, v53, 16, v24);
    if (v29)
    {
      v30 = *v50;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v50 != v30)
          {
            objc_enumerationMutation(v22);
          }

          v32 = objc_msgSend_objectForKeyedSubscript_(v22, v25, *(*(&v49 + 1) + 8 * i), v26, v27, v28);
          v38 = objc_msgSend_pointerValue(v32, v33, v34, v35, v36, v37);

          CFRelease(v38);
        }

        v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v49, v53, 16, v28);
      }

      while (v29);
    }

    v44 = objc_msgSend_functionDescriptor(self, v39, v40, v41, v42, v43);
    v46 = objc_msgSend_featureProviderForE5RTOutputs_functionDescriptor_dataType_error_(CHE5MLUtilities, v45, v21, v44, 65568, a4);
  }

  else
  {
    v46 = 0;
  }

  return v46;
}

@end