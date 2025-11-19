@interface GESSAlgAdaptiveCubeInferenceExtended
- (BOOL)run:(id)a3 deform:(id)a4 weight:(id)a5 outputMesh:(id)a6;
- (id)returnReport;
@end

@implementation GESSAlgAdaptiveCubeInferenceExtended

- (id)returnReport
{
  v3 = objc_alloc_init(GESSAlgAdaptiveCubeInferenceReport);
  objc_msgSend_setTotalTime_(v3, v4, v5, v6, self->totalTime_);
  objc_msgSend_setDataConvertTime_(v3, v7, v8, v9, self->report_.time_data_convert);
  objc_msgSend_setConstructVerticesAndFacesTime_(v3, v10, v11, v12, self->report_.time_construct_vertices_faces);
  objc_msgSend_setConstructMeshTime_(v3, v13, v14, v15, self->constructMeshTime_);

  return v3;
}

- (BOOL)run:(id)a3 deform:(id)a4 weight:(id)a5 outputMesh:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (GESSEnvMLXAvailable_0())
  {
    strcpy(v16, "*kNKZ^C\\Oi_HO");
    v15 = sub_24BCBD2F0(v16);
    sub_24BE73EB8();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 0;
}

@end