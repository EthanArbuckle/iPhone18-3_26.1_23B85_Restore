@interface GESSAlgInverseRenderExtended
- (BOOL)run:(id)run mvps:(id)mvps imageSets:(id)sets outputMesh:(id)mesh;
- (id)returnReport;
@end

@implementation GESSAlgInverseRenderExtended

- (BOOL)run:(id)run mvps:(id)mvps imageSets:(id)sets outputMesh:(id)mesh
{
  v31 = *MEMORY[0x277D85DE8];
  runCopy = run;
  mvpsCopy = mvps;
  setsCopy = sets;
  meshCopy = mesh;
  std::chrono::system_clock::now();
  if ((GESSEnvMLXAvailable_0() & 1) != 0 && (objc_msgSend_valid(runCopy, v13, v14, v15) & 1) != 0 && objc_msgSend_meshType(runCopy, v16, v17, v18) == 1)
  {
    v22 = objc_msgSend_count(mvpsCopy, v19, v20, v21);
    if (v22 == objc_msgSend_count(setsCopy, v23, v24, v25))
    {
      strcpy(v29, ">wl[PZ[L");
      v30 = sub_24BD09B90(v29);
      sub_24BE73EB8();
    }
  }

  self->success_ = 0;

  v26 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgInverseRenderReport);
  objc_msgSend_setTotalTime_(v3, v4, v5, v6, self->totalTime_);
  objc_msgSend_setParameterizeTime_(v3, v7, v8, v9, self->parameterizeTime_);
  objc_msgSend_setDataConvertTime_(v3, v10, v11, v12, self->dataConvertTime_);
  objc_msgSend_setSuccess_(v3, v13, self->success_, v14);
  self = (self + 72);
  objc_msgSend_setTextureOptimizationPreparationTime_(v3, v15, v16, v17, *&self->super.super.isa);
  objc_msgSend_setTextureOptimizationTime_(v3, v18, v19, v20, *&self->super._progress_callback);
  objc_msgSend_setBuildMaterialMapsTime_(v3, v21, v22, v23, *&self->super._error_callback);

  return v3;
}

@end